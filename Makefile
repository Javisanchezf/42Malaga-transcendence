# Nombre del contenedor Redis
REDIS_CONTAINER_NAME = redis_container


all: run

# Comando para ejecutar Redis en segundo plano
run_redis:
	@echo "Iniciando Redis..."
	docker run -d --name $(REDIS_CONTAINER_NAME) -p 6379:6379 redis

# Comando para ejecutar el servidor Daphne
run_daphne:
	@echo "Iniciando el servidor Daphne..."
	daphne -p 8000 transcendence.asgi:application

# Comando para limpiar y cerrar todo
clean:
	@echo "Deteniendo y eliminando el contenedor Redis..."
	docker stop $(REDIS_CONTAINER_NAME) || true
	docker rm $(REDIS_CONTAINER_NAME) || true

# Comando para ejecutar ambos: Redis y Daphne
run: run_redis run_daphne
	@echo "Redis y Daphne están ejecutándose."

.PHONY: run run_redis run_daphne clean

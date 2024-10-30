ASGI (Asynchronous Server Gateway Interface) es un estándar moderno para manejar conexiones asíncronas (incluyendo WebSockets) en Django. A diferencia de WSGI (Web Server Gateway Interface), que maneja únicamente HTTP, ASGI puede manejar múltiples tipos de conexiones, incluyendo WebSockets.
  

  pip install channels
  pip install channels_redis
  pip install daphne

  docker run -p 6379:6379 redis
  daphne -p 8000 transcendence.asgi:application
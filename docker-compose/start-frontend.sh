#!/bin/bash
echo "🎨 Building and starting Frontend Engineer Services..."

# Build React app only
docker-compose -f base.yml -f frontend.yml build react-app

# Start all services (base + frontend) in detached mode
docker-compose -f base.yml -f frontend.yml up -d

echo "✅ Frontend services started!"
echo "📊 Available services:"
echo "  - PostgreSQL: localhost:5432"
echo "  - Redis: localhost:6379"
echo "  - Memcached: localhost:11211"
echo "  - Selenium Hub: localhost:4444"
echo "  - Chrome Node: Available via Selenium Hub"
echo "  - Firefox Node: Available via Selenium Hub"
echo "  - React App: localhost:3000"

echo ""
echo "🔧 To stop: docker-compose -f base.yml -f frontend.yml down"
echo "📝 To view logs: docker-compose -f base.yml -f frontend.yml logs -f [service]"
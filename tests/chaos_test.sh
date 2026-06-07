#!/bin/bash

echo "=================================="
echo " CHAOS TEST STARTED"
echo "=================================="

echo ""
echo "1. Simulating Node Failure..."
docker stop node3

sleep 10

echo ""
echo "2. Restoring Node..."
docker start node3

sleep 5

echo ""
echo "3. Simulating Network Partition..."
docker network disconnect distributed-consensus-engine_default node4

sleep 10

echo ""
echo "4. Reconnecting Node4..."
docker network connect distributed-consensus-engine_default node4

sleep 5

echo ""
echo "5. Verifying Cluster Status..."
docker ps

echo ""
echo "=================================="
echo " CHAOS TEST COMPLETED"
echo "=================================="

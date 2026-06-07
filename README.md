# Distributed Consensus Engine

## Fundamentals of Distributed Systems

### Student Details

**Name:** Aishwarya
**Course:** Fundamentals of Distributed Systems

---

## Project Overview

This project demonstrates the basic concepts of distributed consensus and fault tolerance. The objective of the project is to simulate how multiple distributed nodes agree on a transaction even in the presence of failures and malicious behavior.

The implementation includes:

* Leader Election
* Paxos Consensus Protocol
* PBFT (Practical Byzantine Fault Tolerance)
* Byzantine Adversary Simulation
* Docker-based Deployment
* Chaos Testing

---

## Project Structure

```text
distributed-consensus-engine/
│
├── src/
│   ├── node.py
│   ├── client.py
│   ├── adversary.py
│   └── crypto_utils.py
│
├── tests/
│   └── chaos_test.sh
│
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
└── README.md
```

---

## Leader Election

Initially, five nodes are created in the cluster. The node with the highest ID is selected as the leader. The leader coordinates the consensus process and handles incoming transactions.

In case of leader failure, a new leader is elected from the remaining active nodes.

---

## Paxos Consensus

The Paxos implementation follows four phases:

1. Prepare
2. Promise
3. Accept
4. Accepted

The leader sends prepare messages to follower nodes. Once a majority of nodes respond positively, the transaction is accepted and committed.

Example transaction:

```text
TX001 : Pay Rs 100
```

---

## PBFT Implementation

PBFT is implemented to demonstrate Byzantine fault tolerance.

The protocol executes the following phases:

* Pre-Prepare
* Prepare
* Commit

Nodes validate messages before committing transactions. This helps prevent invalid or malicious transactions from affecting the system.

---

## Byzantine Adversary

A dedicated adversary node is used to simulate malicious behavior.

The adversary sends conflicting messages and invalid transactions. The system detects the malicious activity and ignores the faulty node.

---

## Docker Deployment

Docker and Docker Compose are used to simulate multiple distributed nodes.

To build and run the project:

```bash
docker compose up --build
```

To view containers:

```bash
docker ps -a
```

---

## Chaos Testing

Chaos testing is performed to simulate failures in the distributed environment.

The following scenarios are tested:

* Node failure
* Node recovery
* Network partition
* Cluster status verification

The objective is to verify that the system continues functioning even when faults occur.

---

## How to Run

### Run Client

```bash
python src/client.py
```

### Run Paxos Simulation

```bash
python src/node.py
```

### Run PBFT Simulation

```bash
python src/adversary.py
```

### Run Chaos Test

```bash
bash tests/chaos_test.sh
```

---

## Conclusion

This project helped me understand the concepts of distributed systems, leader election, consensus protocols, fault tolerance, and containerized deployment. Through Paxos, PBFT, and chaos testing, the project demonstrates how distributed systems maintain consistency and reliability in the presence of failures.

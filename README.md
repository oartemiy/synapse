# Synapse

A collaborative platform for organizing and conducting scientific research together.

> **Status:** early development — project initialization.

## About

Synapse helps research teams work together in one place: manage research projects,
share materials and results, coordinate tasks, and keep a shared history of the work.

## Tech Stack

- **Language:** Go 1.27
- **Linting:** golangci-lint v2
- **CI:** GitHub Actions
- **Infrastructure:** Docker *(planned)*

## Requirements

- [Go](https://go.dev/dl/) 1.27+
- [golangci-lint](https://golangci-lint.run/) v2
- [Make](https://www.gnu.org/software/make/)
- [Docker](https://www.docker.com/) *(for local infrastructure, later)*

## Getting Started

```bash
git clone https://github.com/<username>/synapse.git
cd synapse
make help
```

## Project Structure

```
.
├── cmd/
│   └── synapse/     # application entry point
├── internal/        # private application code
├── deployments/     # Dockerfiles, docker-compose, environment configs
├── docs/            # documentation, architecture, specifications
├── Makefile
└── go.mod
```

## Development

| Command      | Description                 |
|--------------|-----------------------------|
| `make build` | Build the binary into `bin/`|
| `make run`   | Run the service             |
| `make test`  | Run tests                   |
| `make lint`  | Run linters                 |
| `make fmt`   | Format the code             |
| `make tidy`  | Tidy `go.mod` / `go.sum`    |

## Roadmap

- [x] Project initialization
- [ ] Architecture & requirements
- [ ] Core domain model
- [ ] API
- [ ] Persistence layer
- [ ] Authentication & access control
- [ ] Deployment

# Containerized React App
This project demonstrates how to package and optimize a modern React application for production using Docker. It leverages multi-stage builds to create a lightweight, high-performance container that serves static assets via Nginx.

## Key Features
- Multi-Stage Docker Build: Separates the build environment from the production runtime to keep the final image size minimal.

- Nginx Integration: Uses Nginx as a production-grade web server to serve the React build folder.

- Layer Caching: Optimized Dockerfile instructions to ensure faster subsequent builds by caching dependencies.

- Production Ready: A streamlined configuration that removes development overhead and focuses on performance.

## Getting Started
Prerequisites
Docker installed on your machine.

Build and Run
Build the image:

```Bash
docker build -t react-app-image .
```
Run the container:

```Bash
docker run -p 8080:80 react-app-image
```

Open http://localhost:8080 in your browser.

## What I Learnt
- Building and Shipping: To build and ship a React app from a single Dockerfile, consolidating the entire workflow into a repeatable process.

- Multi-Stage Builds: How different base images can be used for different stages of our build & ship process—using a heavy Node.js image for building the app and a lightweight Nginx image for the final production environment.

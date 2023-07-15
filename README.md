# Hello!

This is an example app demonstrating how to deploy @3kmfi6hp/nodejs-proxy program on Fly.io

## APP

```
npm i -g @3kmfi6hp/nodejs-proxy
npx @3kmfi6hp/nodejs-proxy
```

### fly.toml

A fairly standard `fly.toml` configuration, except for the `cmd` override:

```toml
[experimental]
cmd = "npx @3kmfi6hp/nodejs-proxy" # should be the name of the binary you want to run
```

### Dockerfile

The most efficient way to create a Docker image for a Rust app is a simple Dockerfile.

Our `Dockerfile` is heavily commented, but here's a short rundown:

#### .dockerignore

You definitely want to ignore `/target` since this can get pretty hefty, adding to the build context's size, and slow down builds significantly.

## Deploy

```
fly launch
```


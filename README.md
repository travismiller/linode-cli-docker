# Linode CLI in Docker

A simple project for building and running the [Linode CLI](https://www.linode.com/docs/products/tools/cli/) in Docker.

## Build

When built, the [Dockerfile](./Dockerfile) specifies a `linode` user and runs the `linode-cli` command as that user.

```console
$ make build
```

## Usage

A shell script is provided to conveniently opperate the built Docker image.

```console
$ bin/linode-cli
```

## Configure

Running the configure command stores the CLI configuration in the [.config](./.config) directory.

```console
$ bin/linode-cli configure
```

Optionally specify the `LINODE_CLI_TOKEN` environment variable to use the access token from the environment instead of the configuration file.

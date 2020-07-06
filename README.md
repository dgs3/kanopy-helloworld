# web-app

This Helm Chart built for Kanopy manages Deployments. It is used to run daemons/long-running services.

For detailed information about Kubernetes Deployments refer to the upstream documentation:

- https://kubernetes.io/docs/tasks/run-application/run-stateless-application-deployment/
- https://kubernetes.io/docs/concepts/workloads/controllers/deployment/

Most [Twelve-factor](https://12factor.net/) applications can be deployed with web-app. Kanopy namespaces are using this chart for services such as:

- Web applications
- Services exposing a REST or gRPC API
- Slack and Github bots
- etc.

## Contents

- [app.py](app.py) sample Python Flask web app.
- [requirements.txt](requirements.txt) Python packages to be installed at image build time.
- [Dockerfile](./Dockerfile) for building an image that contains project code.
- [environments/staging.yaml](environments/staging.yaml) for defining Helm configuration values. This is known as a Helm `values` file.
- [.drone.yml](.drone.yml) for defining our deployment pipeline.

See [10gen/web-app/README.md](https://github.com/10gen/helm-charts/blob/master/charts/web-app/) for all configuration options, and [environments/staging.yaml](environments/staging.yaml) for a working example.

## Repository template

The [hello-flask](https://github.com/10gen/hello-flask) repository is a Python Flask template that includes Kanopy-specific environment configuration.
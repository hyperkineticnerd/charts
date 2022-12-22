# HyperKineticNerd Helm Charts

## Libraries

`openshift` is intended to help helm chart developers with accessing certain resources found in openshift, like OpenShift Routes/Ingress.

## Applications

`librenms` deploys an OpenShift-compatible install of LibreNMS.

`rrdcached` deploys a RRD Pod on OpenShift for use with applications. Currently used by LibreNMS.

## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

  helm repo add hkn https://hyperkineticnerd.github.io/charts

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
hkn` to see the charts.

To install the <chart-name> chart:

    helm install my-<chart-name> <alias>/<chart-name>

To uninstall the chart:

    helm delete my-<chart-name>

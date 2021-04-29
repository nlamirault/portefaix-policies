# Policies

## low
* [portefaix-M0001](#portefaix-m0001)
* [portefaix-M0002](#portefaix-m0002)
* [portefaix-M0003](#portefaix-m0003)

## medium
* [portefaix-C0001](#portefaix-c0001)
* [portefaix-C0002](#portefaix-c0002)
* [portefaix-C0003](#portefaix-c0003)
* [portefaix-C0004](#portefaix-c0004)
* [portefaix-C0005](#portefaix-c0005)
* [portefaix-C0006](#portefaix-c0006)
* [portefaix-C0007](#portefaix-c0007)

## portefaix-C0001

**Category:** Best Practices

**Severity:** medium

**Description:** The ':latest' tag is mutable and can lead to unexpected errors if the image changes. A best practice is to use an immutable tag that maps to a specific version of an application pod.

## portefaix-C0002

**Category:** Best Practices

**Severity:** medium

**Description:** Liveness probe need to be configured to correctly manage a pods lifecycle during deployments, restarts, and upgrades. For each pod, a periodic `livenessProbe` is performed by the kubelet to determine if the pod's containers are running or need to be restarted

## portefaix-C0003

**Category:** Best Practices

**Severity:** medium

**Description:** Readiness probe need to be configured to correctly manage a pods lifecycle during deployments, restarts, and upgrades. For each pod, a `readinessProbe` is used by services and deployments to determine if the pod is ready to receive network traffic.

## portefaix-C0004

**Category:** BestPractices

**Severity:** medium

**Description:** Disallow using secrets from environment variables which are visible in resource definitions.

## portefaix-C0005

**Category:** BestPractices

**Severity:** medium

**Description:** Capabilities permit privileged actions without giving full root access. All capabilities should be dropped from a pod, with only those required added back.

## portefaix-C0006

**Category:** BestPractices

**Severity:** medium

**Description:** Privilege escalation, such as via set-user-ID or set-group-ID file mode, should not be allowed.

## portefaix-C0007

**Category:** BestPractices

**Severity:** medium

**Description:** Check that liveness and readiness probes are not set to the same values.

## portefaix-M0001

**Category:** Best Practices

**Severity:** low

**Description:** Metadata must set recommanded Kubernetes labels See: https://kubernetes.io/docs/concepts/overview/working-with-objects/common-labels

## portefaix-M0002

**Category:** Best Practices

**Severity:** low

**Description:** Metadata should have all the expected a8r.io annotations See: https://ambassadorlabs.github.io/k8s-for-humans/

## portefaix-M0003

**Category:** Best Practices

**Severity:** low

**Description:** Metadata should have Portefaix annotations
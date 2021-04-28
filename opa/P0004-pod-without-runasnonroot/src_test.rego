# Copyright (C) 2021 Nicolas Lamirault <nicolas.lamirault@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

package pod_run_as_nonroot

test_runasnonroot_true {
	pod := {
		"kind": "Pod",
		"metadata": {"name": "test-pod"},
		"spec": {"securityContext": {"runAsNonRoot": true}},
	}

	pod_run_as_non_root(pod)
}

test_runasnonroot_null {
	pod := {
		"kind": "Pod",
		"metadata": {"name": "test-pod"},
	}

	not pod_run_as_non_root(pod)
}

test_runasnonroot_false {
	pod := {
		"kind": "Pod",
		"metadata": {"name": "test-pod"},
		"spec": {"securityContext": {"runAsNonRoot": false}},
	}

	not pod_run_as_non_root(pod)
}
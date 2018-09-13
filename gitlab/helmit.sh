# add repository (needed for dependencies)
helm repo add lwolf-charts http://charts.lwolf.org

# get dependencies
helm dep build

# First run it with --debug --dry-run to check that everything is fine.
helm install -f values-test.yaml . --namespace=gitlab --debug --dry-run

# Next install it.
helm install -f values-test.yaml . --namespace=gitlab

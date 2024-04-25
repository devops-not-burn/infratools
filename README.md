![Linter status](https://github.com/devops-not-burn/infratools/actions/workflows/lint.yaml/badge.svg)  
![Push status](https://github.com/devops-not-burn/infratools/actions/workflows/push.yaml/badge.svg)  

# Docker infraimage

Docker-образ с базово необходимым инфраструктурным туллингом  
Список компонентов:  

* curl
* grpcurl
* wget
* bash
* jq
* yq
* gum
* netcat-openbsd

Образ доступен по имени ```mrgreyves/infratools:${RELEASE-TAG}```, а актуальный тег вы можете посмотреть в релизах ^_^  

Как запустить в k8s:  
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: infratools
spec:
  containers:
  - name: infratools
    image: mrgreyves/infratools:latest
    command: ["sleep", "infinity"]
    resources:
      requests:
        memory: "64Mi"
        cpu: "250m"
      limits:
        memory: "128Mi"
        cpu: "250m"
```

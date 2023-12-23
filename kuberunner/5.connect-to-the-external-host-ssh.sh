COMMAND="{{ BASEENCODE(capsule.command, "UTF-8") }}"

if [[ ! -z "{{ BASEENCODE(capsule.resource, "UTF-8") }}" ]]; then 
    RESOURCE="{{ BASEENCODE(capsule.resource, "UTF-8") }}"
else
    RESOURCE="$(echo | base64)"
fi

if [[ ! -z "{{ BASEENCODE(capsule.name, "UTF-8") }}" ]]; then 
    NAME="{{ BASEENCODE(capsule.name, "UTF-8") }}"
else
    NAME="$(echo | base64)"
fi

if [[ ! -z "{{ BASEENCODE(capsule.args, "UTF-8") }}" ]]; then 
    ARGS="{{ BASEENCODE(capsule.args, "UTF-8") }}"
else
    ARGS="$(echo | base64)"
fi

if [[ ! -z "{{ BASEENCODE(capsule.namespace, "UTF-8") }}" ]]; then 
    NAMESPACE="{{ BASEENCODE(CONCAT("-n ",capsule.namespace), "UTF-8") }}"
else
    NAMESPACE="$(echo | base64)"
fi

if [[ ! -z "{{ BASEENCODE(capsule.yaml, "UTF-8") }}" ]]; then 
    YAML="{{ BASEENCODE(capsule.yaml, "UTF-8") }}"
else
    YAML="$(echo | base64)"
fi

if [[ ! -z "{{ BASEENCODE(capsule.isjson, "UTF-8") }}" ]]; then 
    ISJSON="{{ BASEENCODE(capsule.isjson, "UTF-8") }}"
else
    ISJSON="$(echo false | base64)"
fi

./krunner/krunner $COMMAND $RESOURCE $NAME $ARGS $NAMESPACE $YAML $ISJSON
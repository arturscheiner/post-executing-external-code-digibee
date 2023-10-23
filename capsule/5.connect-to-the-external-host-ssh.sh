COMMAND="{{ BASEENCODE(capsule.engine, "UTF-8") }}"

if [[ ! -z "{{ BASEENCODE(capsule.args, "UTF-8") }}" ]]; then 
    ARGS="{{ BASEENCODE(capsule.args, "UTF-8") }}"
else
    ARGS="$(echo | base64)"
fi

EXT="{{ BASEENCODE(capsule.ext, "UTF-8") }}"
CODE="{{ BASEENCODE(capsule.code, "UTF-8") }}"

if [[ ! -z "{{ BASEENCODE(capsule.isjson, "UTF-8") }}" ]]; then 
    ISJSON="{{ BASEENCODE(capsule.isjson, "UTF-8") }}"
else
    ISJSON="$(echo false | base64)"
fi

if [[ ! -z "{{ BASEENCODE(capsule.codeargs, "UTF-8") }}" ]]; then 
    CODEARGS="{{ BASEENCODE(capsule.codeargs, "UTF-8") }}"
else
    CODEARGS="$(echo | base64)"
fi

./crunner/crunner $COMMAND $ARGS $EXT $CODE $ISJSON $CODEARGS
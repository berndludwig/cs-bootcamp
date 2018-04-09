namespace: demo
flow:
  name: CreateVM
  workflow:
    - uuid:
        do:
          io.cloudslang.demo.uuid: []
        publish:
          - uuid: '${"Bernd-"+uuid}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      uuid:
        x: 157
        y: 146
        navigate:
          f9c9ec73-8d36-f676-a8aa-a3cd7e9459bc:
            targetId: 486bd4cc-430c-f4d4-424c-d4bfa9ed9da2
            port: SUCCESS
            vertices:
              - x: 299
                y: 170
              - x: 364
                y: 177
              - x: 392
                y: 176
    results:
      SUCCESS:
        486bd4cc-430c-f4d4-424c-d4bfa9ed9da2:
          x: 439
          y: 152

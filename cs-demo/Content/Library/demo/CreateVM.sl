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
          - FAILURE: FAILURE
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
          fc132a4d-6191-98d3-51eb-0dd0a44c29a7:
            targetId: 64a1dc30-c7cc-70e5-c777-03a45ada1b7c
            port: FAILURE
          f9c9ec73-8d36-f676-a8aa-a3cd7e9459bc:
            targetId: 486bd4cc-430c-f4d4-424c-d4bfa9ed9da2
            port: SUCCESS
            vertices:
              - x: 299
                y: 170
              - x: 364
                y: 177
    results:
      SUCCESS:
        486bd4cc-430c-f4d4-424c-d4bfa9ed9da2:
          x: 439
          y: 152
      FAILURE:
        64a1dc30-c7cc-70e5-c777-03a45ada1b7c:
          x: 416
          y: 333

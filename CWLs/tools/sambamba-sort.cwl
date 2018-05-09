class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com'
id: sambamba_sort
baseCommand:
  - sambamba
  - sort
inputs:
  - id: input
    type: File
    inputBinding:
      position: 0
  - id: out_name
    type: string
    inputBinding:
      position: 1
      prefix: '--out'
outputs:
  - id: output
    type: File?
    outputBinding:
      glob: $(inputs.out_name)
label: sambamba sort
requirements:
  - class: InlineJavascriptRequirement

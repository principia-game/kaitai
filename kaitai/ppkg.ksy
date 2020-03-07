meta:
  id: ppkg
  file-extension: ppkg
  endian: le
seq:
  - id: version
    type: u1
  - id: unknown_e621ad
    type: u4
    doc: Seems to always be 0.
  - id: name
    type: str
    size: 0xFF
    encoding: UTF-8
  - id: levels_unlocked
    type: u1
    doc: The amount of incomplete levels that are available at a time. Default is 2.
  - id: unknown_798b9a
    type: u1
    doc: Seems to always be 0.
  - id: unknown_8fe981
    type: u1
    doc: Is 1 for puzzle packages, 0 for the adventure introduction package
  - id: levels
    type: u1
  - id: level_id
    type: u4
    repeat: expr
    repeat-expr: levels
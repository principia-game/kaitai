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
  - id: level_behavior
    type: u1
    doc: >
      Different ways Principia handles level order and autoloading.
      0 - No autoplaying, the level select menu is the default menu and you go back to this menu when a level is completed.
      1 - Principia automatically plays the first level in the package. On level completion, you go back to this first level. Can be used for a custom level selection level.
      2 - Principia automatically plays the first level in the package. On level completion, it goes to the next level in the package.
  - id: unknown_8fe981
    type: u1
    doc: Is 1 for puzzle packages, 0 for the adventure introduction package
  - id: levels
    type: u1
  - id: level_id
    type: u4
    repeat: expr
    repeat-expr: levels
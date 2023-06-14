type
  Dict = ref object of RootObj
    keys: seq[string]
    values: seq[string]

proc dict(): Dict =
  result = new(Dict)
  result.keys = @[]
  result.values = @[]

proc addValue(dict: var Dict; key, value: string) =
  dict.keys.add(key)
  dict.values.add(value)

proc getValue(dict: Dict; key: string): string =
  var index = dict.keys.find(key)
  if index >= 0:
    result = dict.values[index]
  else:
    result = ""

(selector) ->
  tag = false
  id = false
  selector = selector or ''
  cn = selector.split '.'
  tag = cn[0] if selector[0] != '.'
  cn.splice 0, 1
  tag = false if tag == ''
  if tag != false and -1 != tag.indexOf '#'
    _tag = tag.split '#'
    tag = _tag[0]
    id = _tag[1]
  if id == false
    for c, i in cn
      _id = c.split '#'
      if _id[1]
        id = _id[1]
        cn[i] = _id[0]
        break

  tag: tag
  id: id
  classList: cn
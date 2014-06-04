globalize = (name, object)->
  global?[name] = object
  window?[name] = object

React.export = (component)->
  {displayName} = component.originalSpec
  globalize displayName, component

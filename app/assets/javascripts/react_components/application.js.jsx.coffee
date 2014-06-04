###* @jsx React.DOM ###

React.export Application = React.createClass

  getInitialState: ->
    random:  Math.floor(Math.random() * 1e10)
    elapsed: 0

  tick: -> @setState elapsed: @state.elapsed + 1

  componentDidMount: -> @interval = setInterval(@tick, 1000)

  componentWillUnmount: -> clearInterval @interval

  render: ->
      `<div>
        <h1>{this.props.title}</h1>
        <p>{this.props.description}</p>
        <div><code>Random number: {this.state.random}</code></div>
        <div><code>Elapsed time: {this.state.elapsed}</code></div>
      </div>`

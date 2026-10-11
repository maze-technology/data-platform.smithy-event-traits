$version: "2"

namespace tech.maze.events

/// Marks a structure as an event payload.
/// Runtime envelopes use the Java CloudEvents SDK; this trait drives codegen
/// (`type` → EventTypes constants) and documents topic/version in specs.
@trait(selector: "structure")
structure event {
    /// Event type string (also used as CloudEvents `type` at runtime).
    @required
    type: String

    /// Optional semantic version of this event payload shape.
    version: String

    /// Optional transport topic (e.g., Kafka topic).
    topic: String
}

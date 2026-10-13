$version: "2"

namespace tech.maze.events

/// Marks a structure as an event payload.
/// Runtime envelopes use the Java CloudEvents SDK; this trait drives codegen
/// (`type` → EventTypes constants). Transport topics are configured via env
/// (e.g. ASSETS_FETCH_RESPONSE_TOPIC), not on this trait.
@trait(selector: "structure")
structure event {
    /// Event type string (also used as CloudEvents `type` at runtime).
    @required
    type: String
}

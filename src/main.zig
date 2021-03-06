const std = @import("std");
const ArrayList = std.ArrayList;
const Allocator = std.mem.Allocator;

const comp = @import("comp.zig");
const line = @import("line.zig");
const math = @import("math.zig");
const rand = @import("rand.zig");

const Id = u64;

pub fn main() anyerror!void {
    var allocator = std.heap.page_allocator;
    var c = comp.Comp(u64).init(allocator);

    try c.insert(0, 10);
    try c.insert(1, 11);

    var iter = c.iter();
    std.log.info("rustrl comp {}", .{iter.next()});
    std.log.info("rustrl comp {}", .{iter.next()});

    var l = line.Line.new(line.Pos.new(0, 0), line.Pos.new(10, 10), true);
    std.log.info("rustrl line {}", .{l.step()});
}

test "full test set" {
    _ = @import("comp.zig");
    _ = @import("line.zig");
    _ = @import("math.zig");
    _ = @import("rand.zig");
}

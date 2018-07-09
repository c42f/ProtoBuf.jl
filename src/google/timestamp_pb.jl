# syntax: proto3
using Compat
using ProtoBuf
import ProtoBuf.meta

mutable struct Timestamp <: ProtoType
    seconds::Int64
    nanos::Int32
    Timestamp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Timestamp

export Timestamp

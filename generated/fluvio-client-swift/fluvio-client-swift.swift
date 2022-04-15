
public class TopicProducer: TopicProducerRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$TopicProducer$_free(ptr)
        }
    }
}
public class TopicProducerRefMut: TopicProducerRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class TopicProducerRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension TopicProducerRef {
    public func send(_ key: UnsafeBufferPointer<UInt8>, _ value: UnsafeBufferPointer<UInt8>) {
        __swift_bridge__$TopicProducer$send(ptr, key.toFfiSlice(), value.toFfiSlice())
    }
}
extension TopicProducer: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_TopicProducer$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_TopicProducer$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: TopicProducer) {
        __swift_bridge__$Vec_TopicProducer$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_TopicProducer$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (TopicProducer(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<TopicProducerRef> {
        let pointer = __swift_bridge__$Vec_TopicProducer$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return TopicProducerRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<TopicProducerRefMut> {
        let pointer = __swift_bridge__$Vec_TopicProducer$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return TopicProducerRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_TopicProducer$len(vecPtr)
    }
}


public class Fluvio: FluvioRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$Fluvio$_free(ptr)
        }
    }
}
extension Fluvio {
    public convenience init<GenericToRustStr: ToRustStr>(_ profile: GenericToRustStr) {
        self.init(ptr: profile.toRustStr({ profileAsRustStr in
            __swift_bridge__$Fluvio$connect(profileAsRustStr)
        }))
    }
}
public class FluvioRefMut: FluvioRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class FluvioRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension FluvioRef {
    public func topic_producer<GenericToRustStr: ToRustStr>(_ topic: GenericToRustStr) -> TopicProducer {
        return topic.toRustStr({ topicAsRustStr in
            TopicProducer(ptr: __swift_bridge__$Fluvio$topic_producer(ptr, topicAsRustStr))
        })
    }
}
extension Fluvio: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_Fluvio$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_Fluvio$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Fluvio) {
        __swift_bridge__$Vec_Fluvio$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_Fluvio$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (Fluvio(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<FluvioRef> {
        let pointer = __swift_bridge__$Vec_Fluvio$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return FluvioRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<FluvioRefMut> {
        let pointer = __swift_bridge__$Vec_Fluvio$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return FluvioRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_Fluvio$len(vecPtr)
    }
}




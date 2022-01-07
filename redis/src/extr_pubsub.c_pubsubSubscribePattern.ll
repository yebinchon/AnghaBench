; ModuleID = '/home/carl/AnghaBench/redis/src/extr_pubsub.c_pubsubSubscribePattern.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_pubsub.c_pubsubSubscribePattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, i32 }

@server = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pubsubSubscribePattern(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = call i32* @listSearchKey(i32 %9, %struct.TYPE_14__* %10)
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = call i32 @listAddNodeTail(i32 %16, %struct.TYPE_14__* %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = call i32 @incrRefCount(%struct.TYPE_14__* %19)
  %21 = call %struct.TYPE_14__* @zmalloc(i32 16)
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %6, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = call i32 @getDecodedObject(%struct.TYPE_14__* %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %28, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 0), align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = call i32 @listAddNodeTail(i32 %29, %struct.TYPE_14__* %30)
  br label %32

32:                                               ; preds = %13, %2
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = call i32 @addReplyPubsubPatSubscribed(%struct.TYPE_15__* %33, %struct.TYPE_14__* %34)
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32* @listSearchKey(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @listAddNodeTail(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @incrRefCount(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @zmalloc(i32) #1

declare dso_local i32 @getDecodedObject(%struct.TYPE_14__*) #1

declare dso_local i32 @addReplyPubsubPatSubscribed(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

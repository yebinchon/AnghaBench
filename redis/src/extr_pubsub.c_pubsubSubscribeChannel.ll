; ModuleID = '/home/carl/AnghaBench/redis/src/extr_pubsub.c_pubsubSubscribeChannel.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_pubsub.c_pubsubSubscribeChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@DICT_OK = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pubsubSubscribeChannel(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @dictAdd(i32 %10, i32* %11, i32* null)
  %13 = load i64, i64* @DICT_OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @incrRefCount(i32* %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32* @dictFind(i32 %18, i32* %19)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = call i32* (...) @listCreate()
  store i32* %24, i32** %6, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @dictAdd(i32 %25, i32* %26, i32* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @incrRefCount(i32* %29)
  br label %34

31:                                               ; preds = %15
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @dictGetVal(i32* %32)
  store i32* %33, i32** %6, align 8
  br label %34

34:                                               ; preds = %31, %23
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = call i32 @listAddNodeTail(i32* %35, %struct.TYPE_6__* %36)
  br label %38

38:                                               ; preds = %34, %2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @addReplyPubsubSubscribed(%struct.TYPE_6__* %39, i32* %40)
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i64 @dictAdd(i32, i32*, i32*) #1

declare dso_local i32 @incrRefCount(i32*) #1

declare dso_local i32* @dictFind(i32, i32*) #1

declare dso_local i32* @listCreate(...) #1

declare dso_local i32* @dictGetVal(i32*) #1

declare dso_local i32 @listAddNodeTail(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @addReplyPubsubSubscribed(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

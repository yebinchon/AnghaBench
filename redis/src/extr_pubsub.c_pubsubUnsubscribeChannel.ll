; ModuleID = '/home/carl/AnghaBench/redis/src/extr_pubsub.c_pubsubUnsubscribeChannel.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_pubsub.c_pubsubUnsubscribeChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@DICT_OK = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pubsubUnsubscribeChannel(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @incrRefCount(i32* %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @dictDelete(i32 %15, i32* %16)
  %18 = load i64, i64* @DICT_OK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @dictFind(i32 %21, i32* %22)
  store i32* %23, i32** %7, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @serverAssertWithInfo(%struct.TYPE_7__* %24, i32* null, i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i32* @dictGetVal(i32* %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = call i32* @listSearchKey(i32* %31, %struct.TYPE_7__* %32)
  store i32* %33, i32** %9, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @serverAssertWithInfo(%struct.TYPE_7__* %34, i32* null, i32 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @listDelNode(i32* %39, i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @listLength(i32* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %20
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 4
  %47 = load i32*, i32** %5, align 8
  %48 = call i64 @dictDelete(i32 %46, i32* %47)
  br label %49

49:                                               ; preds = %45, %20
  br label %50

50:                                               ; preds = %49, %3
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @addReplyPubsubUnsubscribed(%struct.TYPE_7__* %54, i32* %55)
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @decrRefCount(i32* %58)
  %60 = load i32, i32* %10, align 4
  ret i32 %60
}

declare dso_local i32 @incrRefCount(i32*) #1

declare dso_local i64 @dictDelete(i32, i32*) #1

declare dso_local i32* @dictFind(i32, i32*) #1

declare dso_local i32 @serverAssertWithInfo(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32* @dictGetVal(i32*) #1

declare dso_local i32* @listSearchKey(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @listDelNode(i32*, i32*) #1

declare dso_local i64 @listLength(i32*) #1

declare dso_local i32 @addReplyPubsubUnsubscribed(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @decrRefCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

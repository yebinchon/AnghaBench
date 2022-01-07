; ModuleID = '/home/carl/AnghaBench/redis/src/extr_blocked.c_serveClientsBlockedOnKeyByModule.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_blocked.c_serveClientsBlockedOnKeyByModule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }

@BLOCKED_MODULE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serveClientsBlockedOnKeyByModule(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32* @dictFind(i32 %12, i32 %15)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %58

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @dictGetVal(i32* %20)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @listLength(i32* %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %54, %53, %45, %19
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %5, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = call %struct.TYPE_13__* @listFirst(i32* %29)
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %6, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %7, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = call i32 @listDelNode(i32* %34, %struct.TYPE_13__* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %39 = call i32 @listAddNodeTail(i32* %37, %struct.TYPE_14__* %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BLOCKED_MODULE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  br label %24

46:                                               ; preds = %28
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @moduleTryServeClientBlockedOnKey(%struct.TYPE_14__* %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %24

54:                                               ; preds = %46
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = call i32 @moduleUnblockClient(%struct.TYPE_14__* %55)
  br label %24

57:                                               ; preds = %24
  br label %58

58:                                               ; preds = %57, %1
  ret void
}

declare dso_local i32* @dictFind(i32, i32) #1

declare dso_local i32* @dictGetVal(i32*) #1

declare dso_local i32 @listLength(i32*) #1

declare dso_local %struct.TYPE_13__* @listFirst(i32*) #1

declare dso_local i32 @listDelNode(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @listAddNodeTail(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @moduleTryServeClientBlockedOnKey(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @moduleUnblockClient(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

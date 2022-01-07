; ModuleID = '/home/carl/AnghaBench/redis/src/extr_blocked.c_unblockClient.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_blocked.c_unblockClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@BLOCKED_LIST = common dso_local global i64 0, align 8
@BLOCKED_ZSET = common dso_local global i64 0, align 8
@BLOCKED_STREAM = common dso_local global i64 0, align 8
@BLOCKED_WAIT = common dso_local global i64 0, align 8
@BLOCKED_MODULE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Unknown btype in unblockClient().\00", align 1
@server = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@CLIENT_BLOCKED = common dso_local global i32 0, align 4
@BLOCKED_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unblockClient(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BLOCKED_LIST, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BLOCKED_ZSET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BLOCKED_STREAM, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %8, %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = call i32 @unblockClientWaitingData(%struct.TYPE_9__* %21)
  br label %52

23:                                               ; preds = %14
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BLOCKED_WAIT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = call i32 @unblockClientWaitingReplicas(%struct.TYPE_9__* %30)
  br label %51

32:                                               ; preds = %23
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BLOCKED_MODULE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = call i64 @moduleClientIsBlockedOnKeys(%struct.TYPE_9__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = call i32 @unblockClientWaitingData(%struct.TYPE_9__* %43)
  br label %45

45:                                               ; preds = %42, %38
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = call i32 @unblockClientFromModule(%struct.TYPE_9__* %46)
  br label %50

48:                                               ; preds = %32
  %49 = call i32 @serverPanic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  br label %51

51:                                               ; preds = %50, %29
  br label %52

52:                                               ; preds = %51, %20
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 1), align 8
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 1), align 8
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @CLIENT_BLOCKED, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i64, i64* @BLOCKED_NONE, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %72 = call i32 @queueClientForReprocessing(%struct.TYPE_9__* %71)
  ret void
}

declare dso_local i32 @unblockClientWaitingData(%struct.TYPE_9__*) #1

declare dso_local i32 @unblockClientWaitingReplicas(%struct.TYPE_9__*) #1

declare dso_local i64 @moduleClientIsBlockedOnKeys(%struct.TYPE_9__*) #1

declare dso_local i32 @unblockClientFromModule(%struct.TYPE_9__*) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i32 @queueClientForReprocessing(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

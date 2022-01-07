; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_beforeSleep.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_beforeSleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32*, i64, i64, i32 }
%struct.aeEventLoop = type { i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ACTIVE_EXPIRE_CYCLE_FAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"REPLCONF\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"GETACK\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @beforeSleep(%struct.aeEventLoop* %0) #0 {
  %2 = alloca %struct.aeEventLoop*, align 8
  %3 = alloca [3 x i32*], align 16
  store %struct.aeEventLoop* %0, %struct.aeEventLoop** %2, align 8
  %4 = load %struct.aeEventLoop*, %struct.aeEventLoop** %2, align 8
  %5 = call i32 @UNUSED(%struct.aeEventLoop* %4)
  %6 = call i32 (...) @tlsProcessPendingData()
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 8), align 8
  %8 = call i32 (...) @tlsHasPendingData()
  %9 = call i32 @aeSetDontWait(i32 %7, i32 %8)
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 (...) @clusterBeforeSleep()
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @ACTIVE_EXPIRE_CYCLE_FAST, align 4
  %22 = call i32 @activeExpireCycle(i32 %21)
  br label %23

23:                                               ; preds = %20, %17, %14
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = call i32* @createStringObject(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %28 = getelementptr inbounds [3 x i32*], [3 x i32*]* %3, i64 0, i64 0
  store i32* %27, i32** %28, align 16
  %29 = call i32* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %30 = getelementptr inbounds [3 x i32*], [3 x i32*]* %3, i64 0, i64 1
  store i32* %29, i32** %30, align 8
  %31 = call i32* @createStringObject(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %32 = getelementptr inbounds [3 x i32*], [3 x i32*]* %3, i64 0, i64 2
  store i32* %31, i32** %32, align 16
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %35 = getelementptr inbounds [3 x i32*], [3 x i32*]* %3, i64 0, i64 0
  %36 = call i32 @replicationFeedSlaves(i32 %33, i32 %34, i32** %35, i32 3)
  %37 = getelementptr inbounds [3 x i32*], [3 x i32*]* %3, i64 0, i64 0
  %38 = load i32*, i32** %37, align 16
  %39 = call i32 @decrRefCount(i32* %38)
  %40 = getelementptr inbounds [3 x i32*], [3 x i32*]* %3, i64 0, i64 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @decrRefCount(i32* %41)
  %43 = getelementptr inbounds [3 x i32*], [3 x i32*]* %3, i64 0, i64 2
  %44 = load i32*, i32** %43, align 16
  %45 = call i32 @decrRefCount(i32* %44)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  br label %46

46:                                               ; preds = %26, %23
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %48 = call i64 @listLength(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 (...) @processClientsWaitingReplicas()
  br label %52

52:                                               ; preds = %50, %46
  %53 = call i64 (...) @moduleCount()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (...) @moduleHandleBlockedClients()
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %59 = call i64 @listLength(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 (...) @processUnblockedClients()
  br label %63

63:                                               ; preds = %61, %57
  %64 = call i32 @flushAppendOnlyFile(i32 0)
  %65 = call i32 (...) @handleClientsWithPendingWritesUsingThreads()
  %66 = call i32 (...) @freeClientsInAsyncFreeQueue()
  %67 = call i64 (...) @moduleCount()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 (...) @moduleReleaseGIL()
  br label %71

71:                                               ; preds = %69, %63
  ret void
}

declare dso_local i32 @UNUSED(%struct.aeEventLoop*) #1

declare dso_local i32 @tlsProcessPendingData(...) #1

declare dso_local i32 @aeSetDontWait(i32, i32) #1

declare dso_local i32 @tlsHasPendingData(...) #1

declare dso_local i32 @clusterBeforeSleep(...) #1

declare dso_local i32 @activeExpireCycle(i32) #1

declare dso_local i32* @createStringObject(i8*, i32) #1

declare dso_local i32 @replicationFeedSlaves(i32, i32, i32**, i32) #1

declare dso_local i32 @decrRefCount(i32*) #1

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @processClientsWaitingReplicas(...) #1

declare dso_local i64 @moduleCount(...) #1

declare dso_local i32 @moduleHandleBlockedClients(...) #1

declare dso_local i32 @processUnblockedClients(...) #1

declare dso_local i32 @flushAppendOnlyFile(i32) #1

declare dso_local i32 @handleClientsWithPendingWritesUsingThreads(...) #1

declare dso_local i32 @freeClientsInAsyncFreeQueue(...) #1

declare dso_local i32 @moduleReleaseGIL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

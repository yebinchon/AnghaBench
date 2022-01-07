; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_waitCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_waitCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i64, i64, i32 }

@server = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str = private unnamed_addr constant [209 x i8] c"WAIT cannot be used with replica instances. Please also note that since Redis 4.0 if a replica is configured to be writable (which is not the default) writes to replicas are just local and are not propagated.\00", align 1
@C_OK = common dso_local global i64 0, align 8
@UNIT_MILLISECONDS = common dso_local global i32 0, align 4
@CLIENT_MULTI = common dso_local global i32 0, align 4
@BLOCKED_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @waitCommand(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 1), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = call i32 @addReplyError(%struct.TYPE_12__* %13, i8* getelementptr inbounds ([209 x i8], [209 x i8]* @.str, i64 0, i64 0))
  br label %77

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @getLongFromObjectOrReply(%struct.TYPE_12__* %16, i32 %21, i64* %4, i32* null)
  %23 = load i64, i64* @C_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %77

26:                                               ; preds = %15
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UNIT_MILLISECONDS, align 4
  %34 = call i64 @getTimeoutFromObjectOrReply(%struct.TYPE_12__* %27, i32 %32, i32* %3, i32 %33)
  %35 = load i64, i64* @C_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %77

38:                                               ; preds = %26
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @replicationCountAcksByOffset(i64 %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %38
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CLIENT_MULTI, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46, %38
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @addReplyLongLong(%struct.TYPE_12__* %54, i64 %55)
  br label %77

57:                                               ; preds = %46
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  store i64 %66, i64* %69, align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %72 = call i32 @listAddNodeTail(i32 %70, %struct.TYPE_12__* %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = load i32, i32* @BLOCKED_WAIT, align 4
  %75 = call i32 @blockClient(%struct.TYPE_12__* %73, i32 %74)
  %76 = call i32 (...) @replicationRequestAckFromSlaves()
  br label %77

77:                                               ; preds = %57, %53, %37, %25, %12
  ret void
}

declare dso_local i32 @addReplyError(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_12__*, i32, i64*, i32*) #1

declare dso_local i64 @getTimeoutFromObjectOrReply(%struct.TYPE_12__*, i32, i32*, i32) #1

declare dso_local i64 @replicationCountAcksByOffset(i64) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @listAddNodeTail(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @blockClient(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @replicationRequestAckFromSlaves(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

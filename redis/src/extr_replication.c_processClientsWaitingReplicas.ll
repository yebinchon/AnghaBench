; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_processClientsWaitingReplicas.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_processClientsWaitingReplicas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@server = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @processClientsWaitingReplicas() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store i32 0, i32* %2, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 4
  %8 = call i32 @listRewind(i32 %7, i32* %3)
  br label %9

9:                                                ; preds = %62, %0
  %10 = call %struct.TYPE_9__* @listNext(i32* %3)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %4, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %63

12:                                               ; preds = %9
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %5, align 8
  %16 = load i64, i64* %1, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %12
  %19 = load i64, i64* %1, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %19, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %26, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = call i32 @unblockClient(%struct.TYPE_10__* %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @addReplyLongLong(%struct.TYPE_10__* %35, i32 %36)
  br label %62

38:                                               ; preds = %25, %18, %12
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @replicationCountAcksByOffset(i64 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %44, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %38
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %1, align 8
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = call i32 @unblockClient(%struct.TYPE_10__* %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @addReplyLongLong(%struct.TYPE_10__* %58, i32 %59)
  br label %61

61:                                               ; preds = %50, %38
  br label %62

62:                                               ; preds = %61, %32
  br label %9

63:                                               ; preds = %9
  ret void
}

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_9__* @listNext(i32*) #1

declare dso_local i32 @unblockClient(%struct.TYPE_10__*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @replicationCountAcksByOffset(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

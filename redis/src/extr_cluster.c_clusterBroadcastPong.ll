; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterBroadcastPong.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterBroadcastPong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_9__* }

@server = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@myself = common dso_local global %struct.TYPE_9__* null, align 8
@CLUSTER_BROADCAST_LOCAL_SLAVES = common dso_local global i32 0, align 4
@CLUSTERMSG_TYPE_PONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterBroadcastPong(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @dictGetSafeIterator(i32 %9)
  store i32* %10, i32** %3, align 8
  br label %11

11:                                               ; preds = %68, %66, %31, %22, %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @dictNext(i32* %12)
  store i32* %13, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %74

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.TYPE_9__* @dictGetVal(i32* %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %5, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %11

23:                                               ; preds = %15
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %26 = icmp eq %struct.TYPE_9__* %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = call i64 @nodeInHandshake(%struct.TYPE_9__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23
  br label %11

32:                                               ; preds = %27
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @CLUSTER_BROADCAST_LOCAL_SLAVES, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %32
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = call i64 @nodeIsSlave(%struct.TYPE_9__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %50 = icmp eq %struct.TYPE_9__* %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = icmp eq %struct.TYPE_9__* %54, %57
  br label %59

59:                                               ; preds = %51, %45
  %60 = phi i1 [ true, %45 ], [ %58, %51 ]
  br label %61

61:                                               ; preds = %59, %40, %36
  %62 = phi i1 [ false, %40 ], [ false, %36 ], [ %60, %59 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %11

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %32
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CLUSTERMSG_TYPE_PONG, align 4
  %73 = call i32 @clusterSendPing(i32 %71, i32 %72)
  br label %11

74:                                               ; preds = %11
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @dictReleaseIterator(i32* %75)
  ret void
}

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_9__* @dictGetVal(i32*) #1

declare dso_local i64 @nodeInHandshake(%struct.TYPE_9__*) #1

declare dso_local i64 @nodeIsSlave(%struct.TYPE_9__*) #1

declare dso_local i32 @clusterSendPing(i32, i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

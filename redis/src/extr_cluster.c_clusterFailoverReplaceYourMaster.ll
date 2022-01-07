; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterFailoverReplaceYourMaster.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterFailoverReplaceYourMaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@myself = common dso_local global %struct.TYPE_5__* null, align 8
@CLUSTER_SLOTS = common dso_local global i32 0, align 4
@CLUSTER_BROADCAST_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterFailoverReplaceYourMaster() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @myself, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  store i32* %5, i32** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @myself, align 8
  %7 = call i64 @nodeIsMaster(%struct.TYPE_5__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32*, i32** %2, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %0
  br label %42

13:                                               ; preds = %9
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @myself, align 8
  %15 = call i32 @clusterSetNodeAsMaster(%struct.TYPE_5__* %14)
  %16 = call i32 (...) @replicationUnsetMaster()
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %33, %13
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @CLUSTER_SLOTS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* %1, align 4
  %24 = call i64 @clusterNodeGetSlotBit(i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @clusterDelSlot(i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @myself, align 8
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @clusterAddSlot(%struct.TYPE_5__* %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %17

36:                                               ; preds = %17
  %37 = call i32 (...) @clusterUpdateState()
  %38 = call i32 @clusterSaveConfigOrDie(i32 1)
  %39 = load i32, i32* @CLUSTER_BROADCAST_ALL, align 4
  %40 = call i32 @clusterBroadcastPong(i32 %39)
  %41 = call i32 (...) @resetManualFailover()
  br label %42

42:                                               ; preds = %36, %12
  ret void
}

declare dso_local i64 @nodeIsMaster(%struct.TYPE_5__*) #1

declare dso_local i32 @clusterSetNodeAsMaster(%struct.TYPE_5__*) #1

declare dso_local i32 @replicationUnsetMaster(...) #1

declare dso_local i64 @clusterNodeGetSlotBit(i32*, i32) #1

declare dso_local i32 @clusterDelSlot(i32) #1

declare dso_local i32 @clusterAddSlot(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @clusterUpdateState(...) #1

declare dso_local i32 @clusterSaveConfigOrDie(i32) #1

declare dso_local i32 @clusterBroadcastPong(i32) #1

declare dso_local i32 @resetManualFailover(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

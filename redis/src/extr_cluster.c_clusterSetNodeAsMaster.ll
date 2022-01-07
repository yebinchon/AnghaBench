; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterSetNodeAsMaster.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterSetNodeAsMaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }

@myself = common dso_local global %struct.TYPE_6__* null, align 8
@CLUSTER_NODE_MIGRATE_TO = common dso_local global i32 0, align 4
@CLUSTER_NODE_SLAVE = common dso_local global i32 0, align 4
@CLUSTER_NODE_MASTER = common dso_local global i32 0, align 4
@CLUSTER_TODO_SAVE_CONFIG = common dso_local global i32 0, align 4
@CLUSTER_TODO_UPDATE_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterSetNodeAsMaster(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = call i64 @nodeIsMaster(%struct.TYPE_6__* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %46

7:                                                ; preds = %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %7
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = call i32 @clusterNodeRemoveSlave(i32* %15, %struct.TYPE_6__* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @myself, align 8
  %20 = icmp ne %struct.TYPE_6__* %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = load i32, i32* @CLUSTER_NODE_MIGRATE_TO, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %21, %12
  br label %28

28:                                               ; preds = %27, %7
  %29 = load i32, i32* @CLUSTER_NODE_SLAVE, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @CLUSTER_NODE_MASTER, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* @CLUSTER_TODO_SAVE_CONFIG, align 4
  %43 = load i32, i32* @CLUSTER_TODO_UPDATE_STATE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @clusterDoBeforeSleep(i32 %44)
  br label %46

46:                                               ; preds = %28, %6
  ret void
}

declare dso_local i64 @nodeIsMaster(%struct.TYPE_6__*) #1

declare dso_local i32 @clusterNodeRemoveSlave(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @clusterDoBeforeSleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

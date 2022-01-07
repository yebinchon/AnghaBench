; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterSetMaster.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterSetMaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, %struct.TYPE_9__* }

@myself = common dso_local global %struct.TYPE_9__* null, align 8
@CLUSTER_NODE_MASTER = common dso_local global i32 0, align 4
@CLUSTER_NODE_MIGRATE_TO = common dso_local global i32 0, align 4
@CLUSTER_NODE_SLAVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterSetMaster(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %5 = icmp ne %struct.TYPE_9__* %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @serverAssert(i32 %6)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @serverAssert(i32 %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %15 = call i64 @nodeIsMaster(%struct.TYPE_9__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load i32, i32* @CLUSTER_NODE_MASTER, align 4
  %19 = load i32, i32* @CLUSTER_NODE_MIGRATE_TO, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* @CLUSTER_NODE_SLAVE, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = call i32 (...) @clusterCloseAllSlots()
  br label %44

32:                                               ; preds = %1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %42 = call i32 @clusterNodeRemoveSlave(%struct.TYPE_9__* %40, %struct.TYPE_9__* %41)
  br label %43

43:                                               ; preds = %37, %32
  br label %44

44:                                               ; preds = %43, %17
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %50 = call i32 @clusterNodeAddSlave(%struct.TYPE_9__* %48, %struct.TYPE_9__* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @replicationSetMaster(i32 %53, i32 %56)
  %58 = call i32 (...) @resetManualFailover()
  ret void
}

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i64 @nodeIsMaster(%struct.TYPE_9__*) #1

declare dso_local i32 @clusterCloseAllSlots(...) #1

declare dso_local i32 @clusterNodeRemoveSlave(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @clusterNodeAddSlave(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @replicationSetMaster(i32, i32) #1

declare dso_local i32 @resetManualFailover(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

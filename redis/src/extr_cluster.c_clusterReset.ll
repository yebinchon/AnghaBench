; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterReset.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i64 }

@myself = common dso_local global %struct.TYPE_11__* null, align 8
@EMPTYDB_NO_FLAGS = common dso_local global i32 0, align 4
@CLUSTER_SLOTS = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"configEpoch set to 0 via CLUSTER RESET HARD\00", align 1
@CLUSTER_NAMELEN = common dso_local global i32 0, align 4
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Node hard reset, now I'm %.40s\00", align 1
@CLUSTER_TODO_SAVE_CONFIG = common dso_local global i32 0, align 4
@CLUSTER_TODO_UPDATE_STATE = common dso_local global i32 0, align 4
@CLUSTER_TODO_FSYNC_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterReset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** @myself, align 8
  %9 = call i64 @nodeIsSlave(%struct.TYPE_11__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @myself, align 8
  %13 = call i32 @clusterSetNodeAsMaster(%struct.TYPE_11__* %12)
  %14 = call i32 (...) @replicationUnsetMaster()
  %15 = load i32, i32* @EMPTYDB_NO_FLAGS, align 4
  %16 = call i32 @emptyDb(i32 -1, i32 %15, i32* null)
  br label %17

17:                                               ; preds = %11, %1
  %18 = call i32 (...) @clusterCloseAllSlots()
  %19 = call i32 (...) @resetManualFailover()
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %27, %17
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @CLUSTER_SLOTS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @clusterDelSlot(i32 %25)
  br label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %20

30:                                               ; preds = %20
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0), align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32* @dictGetSafeIterator(i32 %33)
  store i32* %34, i32** %3, align 8
  br label %35

35:                                               ; preds = %46, %45, %30
  %36 = load i32*, i32** %3, align 8
  %37 = call i32* @dictNext(i32* %36)
  store i32* %37, i32** %4, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i32*, i32** %4, align 8
  %41 = call %struct.TYPE_11__* @dictGetVal(i32* %40)
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %6, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** @myself, align 8
  %44 = icmp eq %struct.TYPE_11__* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %35

46:                                               ; preds = %39
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = call i32 @clusterDelNode(%struct.TYPE_11__* %47)
  br label %35

49:                                               ; preds = %35
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @dictReleaseIterator(i32* %50)
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %87

54:                                               ; preds = %49
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0), align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0), align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** @myself, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @LL_WARNING, align 4
  %62 = call i32 (i32, i8*, ...) @serverLog(i32 %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** @myself, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %67 = call i32 @sdsnewlen(i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0), align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @dictDelete(i32 %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @sdsfree(i32 %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** @myself, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %79 = call i32 @getRandomHexChars(i32 %77, i32 %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** @myself, align 8
  %81 = call i32 @clusterAddNode(%struct.TYPE_11__* %80)
  %82 = load i32, i32* @LL_NOTICE, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** @myself, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, ...) @serverLog(i32 %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %54, %49
  %88 = load i32, i32* @CLUSTER_TODO_SAVE_CONFIG, align 4
  %89 = load i32, i32* @CLUSTER_TODO_UPDATE_STATE, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @CLUSTER_TODO_FSYNC_CONFIG, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @clusterDoBeforeSleep(i32 %92)
  ret void
}

declare dso_local i64 @nodeIsSlave(%struct.TYPE_11__*) #1

declare dso_local i32 @clusterSetNodeAsMaster(%struct.TYPE_11__*) #1

declare dso_local i32 @replicationUnsetMaster(...) #1

declare dso_local i32 @emptyDb(i32, i32, i32*) #1

declare dso_local i32 @clusterCloseAllSlots(...) #1

declare dso_local i32 @resetManualFailover(...) #1

declare dso_local i32 @clusterDelSlot(i32) #1

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_11__* @dictGetVal(i32*) #1

declare dso_local i32 @clusterDelNode(%struct.TYPE_11__*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @sdsnewlen(i32, i32) #1

declare dso_local i32 @dictDelete(i32, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @getRandomHexChars(i32, i32) #1

declare dso_local i32 @clusterAddNode(%struct.TYPE_11__*) #1

declare dso_local i32 @clusterDoBeforeSleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

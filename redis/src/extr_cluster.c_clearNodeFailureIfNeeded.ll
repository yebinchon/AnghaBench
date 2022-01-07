; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clearNodeFailureIfNeeded.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clearNodeFailureIfNeeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }

@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Clear FAIL state for node %.40s: %s is reachable again.\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"replica\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"master without slots\00", align 1
@CLUSTER_NODE_FAIL = common dso_local global i32 0, align 4
@CLUSTER_TODO_UPDATE_STATE = common dso_local global i32 0, align 4
@CLUSTER_TODO_SAVE_CONFIG = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@CLUSTER_FAIL_UNDO_TIME_MULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [101 x i8] c"Clear FAIL state for node %.40s: is reachable again and nobody is serving its slots after some time.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clearNodeFailureIfNeeded(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = call i32 (...) @mstime()
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = call i32 @nodeFailed(%struct.TYPE_7__* %5)
  %7 = call i32 @serverAssert(i32 %6)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = call i64 @nodeIsSlave(%struct.TYPE_7__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @LL_NOTICE, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = call i64 @nodeIsSlave(%struct.TYPE_7__* %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %17, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %25)
  %27 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @CLUSTER_TODO_UPDATE_STATE, align 4
  %34 = load i32, i32* @CLUSTER_TODO_SAVE_CONFIG, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @clusterDoBeforeSleep(i32 %35)
  br label %37

37:                                               ; preds = %16, %11
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = call i64 @nodeIsMaster(%struct.TYPE_7__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %37
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %41
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %47, %50
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 4
  %53 = load i32, i32* @CLUSTER_FAIL_UNDO_TIME_MULT, align 4
  %54 = mul nsw i32 %52, %53
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %46
  %57 = load i32, i32* @LL_NOTICE, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %57, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @CLUSTER_TODO_UPDATE_STATE, align 4
  %69 = load i32, i32* @CLUSTER_TODO_SAVE_CONFIG, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @clusterDoBeforeSleep(i32 %70)
  br label %72

72:                                               ; preds = %56, %46, %41, %37
  ret void
}

declare dso_local i32 @mstime(...) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @nodeFailed(%struct.TYPE_7__*) #1

declare dso_local i64 @nodeIsSlave(%struct.TYPE_7__*) #1

declare dso_local i32 @serverLog(i32, i8*, i32, ...) #1

declare dso_local i32 @clusterDoBeforeSleep(i32) #1

declare dso_local i64 @nodeIsMaster(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

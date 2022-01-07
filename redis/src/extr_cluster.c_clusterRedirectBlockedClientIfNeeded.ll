; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterRedirectBlockedClientIfNeeded.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterRedirectBlockedClientIfNeeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32**, i32** }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@CLIENT_BLOCKED = common dso_local global i32 0, align 4
@BLOCKED_LIST = common dso_local global i64 0, align 8
@BLOCKED_ZSET = common dso_local global i64 0, align 8
@BLOCKED_STREAM = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@CLUSTER_FAIL = common dso_local global i64 0, align 8
@CLUSTER_REDIR_DOWN_STATE = common dso_local global i32 0, align 4
@myself = common dso_local global i32* null, align 8
@CLUSTER_REDIR_DOWN_UNBOUND = common dso_local global i32 0, align 4
@CLUSTER_REDIR_MOVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clusterRedirectBlockedClientIfNeeded(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CLIENT_BLOCKED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %103

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BLOCKED_LIST, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BLOCKED_ZSET, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BLOCKED_STREAM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %103

33:                                               ; preds = %27, %21, %15
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CLUSTER_FAIL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = load i32, i32* @CLUSTER_REDIR_DOWN_STATE, align 4
  %42 = call i32 @clusterRedirectClient(%struct.TYPE_12__* %40, i32* null, i32 0, i32 %41)
  store i32 1, i32* %2, align 4
  br label %104

43:                                               ; preds = %33
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32* @dictGetIterator(i32 %47)
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32* @dictNext(i32* %49)
  store i32* %50, i32** %4, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %100

52:                                               ; preds = %43
  %53 = load i32*, i32** %4, align 8
  %54 = call %struct.TYPE_11__* @dictGetKey(i32* %53)
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %6, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @sdslen(i64 %61)
  %63 = call i32 @keyHashSlot(i8* %58, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** @myself, align 8
  %73 = icmp ne i32* %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %52
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %99

83:                                               ; preds = %74
  %84 = load i32*, i32** %8, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = load i32, i32* @CLUSTER_REDIR_DOWN_UNBOUND, align 4
  %89 = call i32 @clusterRedirectClient(%struct.TYPE_12__* %87, i32* null, i32 0, i32 %88)
  br label %96

90:                                               ; preds = %83
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @CLUSTER_REDIR_MOVED, align 4
  %95 = call i32 @clusterRedirectClient(%struct.TYPE_12__* %91, i32* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %86
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @dictReleaseIterator(i32* %97)
  store i32 1, i32* %2, align 4
  br label %104

99:                                               ; preds = %74, %52
  br label %100

100:                                              ; preds = %99, %43
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @dictReleaseIterator(i32* %101)
  br label %103

103:                                              ; preds = %100, %27, %1
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %96, %39
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @clusterRedirectClient(%struct.TYPE_12__*, i32*, i32, i32) #1

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_11__* @dictGetKey(i32*) #1

declare dso_local i32 @keyHashSlot(i8*, i32) #1

declare dso_local i32 @sdslen(i64) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

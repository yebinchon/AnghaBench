; ModuleID = '/home/carl/AnghaBench/redis/src/extr_blocked.c_serveClientsBlockedOnSortedSetKey.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_blocked.c_serveClientsBlockedOnSortedSetKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.redisCommand*, %struct.redisCommand* }
%struct.redisCommand = type { i32 }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@BLOCKED_ZSET = common dso_local global i64 0, align 8
@bzpopminCommand = common dso_local global i64 0, align 8
@ZSET_MIN = common dso_local global i32 0, align 4
@ZSET_MAX = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@PROPAGATE_AOF = common dso_local global i32 0, align 4
@PROPAGATE_REPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serveClientsBlockedOnSortedSetKey(i32* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32*], align 16
  %13 = alloca %struct.redisCommand*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32* @dictFind(i32 %18, i32* %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %131

25:                                               ; preds = %2
  %26 = load i32*, i32** %5, align 8
  %27 = call i32* @dictGetVal(i32* %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @listLength(i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @zsetLength(i32* %30)
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %94, %52, %25
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %7, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i1 [ false, %32 ], [ %38, %36 ]
  br i1 %40, label %41, label %130

41:                                               ; preds = %39
  %42 = load i32*, i32** %6, align 8
  %43 = call %struct.TYPE_18__* @listFirst(i32* %42)
  store %struct.TYPE_18__* %43, %struct.TYPE_18__** %9, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  store %struct.TYPE_19__* %46, %struct.TYPE_19__** %10, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BLOCKED_ZSET, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %41
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %55 = call i32 @listDelNode(i32* %53, %struct.TYPE_18__* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %58 = call i32 @listAddNodeTail(i32* %56, %struct.TYPE_19__* %57)
  br label %32

59:                                               ; preds = %41
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = icmp ne %struct.TYPE_15__* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @bzpopminCommand, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @ZSET_MIN, align 4
  br label %76

74:                                               ; preds = %64, %59
  %75 = load i32, i32* @ZSET_MAX, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %11, align 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %79 = call i32 @unblockClient(%struct.TYPE_19__* %78)
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @genericZpopCommand(%struct.TYPE_19__* %80, i32** %82, i32 1, i32 %83, i32 1, i32* null)
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, -1
  store i64 %86, i64* %8, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @ZSET_MIN, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %76
  %91 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 1), align 8
  br label %94

92:                                               ; preds = %76
  %93 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 0), align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi %struct.redisCommand* [ %91, %90 ], [ %93, %92 ]
  store %struct.redisCommand* %95, %struct.redisCommand** %13, align 8
  %96 = load %struct.redisCommand*, %struct.redisCommand** %13, align 8
  %97 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.redisCommand*, %struct.redisCommand** %13, align 8
  %100 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strlen(i32 %101)
  %103 = call i32* @createStringObject(i32 %98, i32 %102)
  %104 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 0
  store i32* %103, i32** %104, align 16
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 1
  store i32* %107, i32** %108, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @incrRefCount(i32* %111)
  %113 = load %struct.redisCommand*, %struct.redisCommand** %13, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 0
  %120 = load i32, i32* @PROPAGATE_AOF, align 4
  %121 = load i32, i32* @PROPAGATE_REPL, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @propagate(%struct.redisCommand* %113, i32 %118, i32** %119, i32 2, i32 %122)
  %124 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 0
  %125 = load i32*, i32** %124, align 16
  %126 = call i32 @decrRefCount(i32* %125)
  %127 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 1
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @decrRefCount(i32* %128)
  br label %32

130:                                              ; preds = %39
  br label %131

131:                                              ; preds = %130, %2
  ret void
}

declare dso_local i32* @dictFind(i32, i32*) #1

declare dso_local i32* @dictGetVal(i32*) #1

declare dso_local i32 @listLength(i32*) #1

declare dso_local i64 @zsetLength(i32*) #1

declare dso_local %struct.TYPE_18__* @listFirst(i32*) #1

declare dso_local i32 @listDelNode(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @listAddNodeTail(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @unblockClient(%struct.TYPE_19__*) #1

declare dso_local i32 @genericZpopCommand(%struct.TYPE_19__*, i32**, i32, i32, i32, i32*) #1

declare dso_local i32* @createStringObject(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @incrRefCount(i32*) #1

declare dso_local i32 @propagate(%struct.redisCommand*, i32, i32**, i32, i32) #1

declare dso_local i32 @decrRefCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

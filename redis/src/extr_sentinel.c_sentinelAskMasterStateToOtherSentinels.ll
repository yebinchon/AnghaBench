; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelAskMasterStateToOtherSentinels.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelAskMasterStateToOtherSentinels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i32, i32, i64, %struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32 }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@SENTINEL_ASK_PERIOD = common dso_local global i32 0, align 4
@SRI_MASTER_DOWN = common dso_local global i32 0, align 4
@SRI_S_DOWN = common dso_local global i32 0, align 4
@SENTINEL_ASK_FORCED = common dso_local global i32 0, align 4
@sentinelReceiveIsMasterDownReply = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s is-master-down-by-addr %s %s %llu %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"SENTINEL\00", align 1
@sentinel = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@SENTINEL_FAILOVER_STATE_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelAskMasterStateToOtherSentinels(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32* @dictGetIterator(i32 %13)
  store i32* %14, i32** %5, align 8
  br label %15

15:                                               ; preds = %119, %73, %59, %51, %2
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @dictNext(i32* %16)
  store i32* %17, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %120

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = call %struct.TYPE_11__* @dictGetVal(i32* %20)
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %7, align 8
  %22 = call i32 (...) @mstime()
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SENTINEL_ASK_PERIOD, align 4
  %29 = mul nsw i32 %28, 5
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %19
  %32 = load i32, i32* @SRI_MASTER_DOWN, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @sdsfree(i32* %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 5
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %31, %19
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SRI_S_DOWN, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %15

52:                                               ; preds = %44
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %15

60:                                               ; preds = %52
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @SENTINEL_ASK_FORCED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = call i32 (...) @mstime()
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %66, %69
  %71 = load i32, i32* @SENTINEL_ASK_PERIOD, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %15

74:                                               ; preds = %65, %60
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ll2string(i8* %75, i32 32, i32 %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @sentinelReceiveIsMasterDownReply, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %90 = call i32 @sentinelInstanceMapCommand(%struct.TYPE_11__* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sentinel, i32 0, i32 1), align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SENTINEL_FAILOVER_STATE_NONE, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %74
  %104 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sentinel, i32 0, i32 0), align 8
  br label %106

105:                                              ; preds = %74
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi i8* [ %104, %103 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %105 ]
  %108 = call i32 @redisAsyncCommand(i32 %86, i32 %87, %struct.TYPE_11__* %88, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %95, i8* %96, i32 %97, i8* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @C_OK, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %112, %106
  br label %15

120:                                              ; preds = %15
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @dictReleaseIterator(i32* %121)
  ret void
}

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_11__* @dictGetVal(i32*) #1

declare dso_local i32 @mstime(...) #1

declare dso_local i32 @sdsfree(i32*) #1

declare dso_local i32 @ll2string(i8*, i32, i32) #1

declare dso_local i32 @redisAsyncCommand(i32, i32, %struct.TYPE_11__*, i8*, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @sentinelInstanceMapCommand(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

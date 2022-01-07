; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelStartFailover.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelStartFailover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i8*, i8*, i64, i32 }

@SRI_MASTER = common dso_local global i32 0, align 4
@SENTINEL_FAILOVER_STATE_WAIT_START = common dso_local global i32 0, align 4
@SRI_FAILOVER_IN_PROGRESS = common dso_local global i32 0, align 4
@sentinel = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"+new-epoch\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"+try-failover\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%@\00", align 1
@SENTINEL_MAX_DESYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelStartFailover(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @SRI_MASTER, align 4
  %7 = and i32 %5, %6
  %8 = call i32 @serverAssert(i32 %7)
  %9 = load i32, i32* @SENTINEL_FAILOVER_STATE_WAIT_START, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @SRI_FAILOVER_IN_PROGRESS, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sentinel, i32 0, i32 0), align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sentinel, i32 0, i32 0), align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @LL_WARNING, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sentinel, i32 0, i32 0), align 8
  %24 = call i32 (i32, i8*, %struct.TYPE_5__*, i8*, ...) @sentinelEvent(i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @LL_WARNING, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = call i32 (i32, i8*, %struct.TYPE_5__*, i8*, ...) @sentinelEvent(i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_5__* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i8* (...) @mstime()
  %29 = call i32 (...) @rand()
  %30 = load i32, i32* @SENTINEL_MAX_DESYNC, align 4
  %31 = srem i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %28, i64 %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = call i8* (...) @mstime()
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  ret void
}

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @sentinelEvent(i32, i8*, %struct.TYPE_5__*, i8*, ...) #1

declare dso_local i8* @mstime(...) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

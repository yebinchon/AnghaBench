; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelFailoverWaitStart.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelFailoverWaitStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@sentinel = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SRI_FORCE_FAILOVER = common dso_local global i32 0, align 4
@SENTINEL_ELECTION_TIMEOUT = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"-failover-abort-not-elected\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%@\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"+elected-leader\00", align 1
@SENTINEL_SIMFAILURE_CRASH_AFTER_ELECTION = common dso_local global i32 0, align 4
@SENTINEL_FAILOVER_STATE_SELECT_SLAVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"+failover-state-select-slave\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelFailoverWaitStart(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @sentinelGetLeader(%struct.TYPE_7__* %6, i32 %9)
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sentinel, i32 0, i32 1), align 4
  %16 = call i64 @strcasecmp(i8* %14, i32 %15)
  %17 = icmp eq i64 %16, 0
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i1 [ false, %1 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @sdsfree(i8* %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SRI_FORCE_FAILOVER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @SENTINEL_ELECTION_TIMEOUT, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %32
  %44 = call i32 (...) @mstime()
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  %49 = load i32, i32* %5, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i32, i32* @LL_WARNING, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = call i32 @sentinelEvent(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = call i32 @sentinelAbortFailover(%struct.TYPE_7__* %55)
  br label %57

57:                                               ; preds = %51, %43
  br label %78

58:                                               ; preds = %25, %18
  %59 = load i32, i32* @LL_WARNING, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = call i32 @sentinelEvent(i32 %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_7__* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sentinel, i32 0, i32 0), align 4
  %63 = load i32, i32* @SENTINEL_SIMFAILURE_CRASH_AFTER_ELECTION, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = call i32 (...) @sentinelSimFailureCrash()
  br label %68

68:                                               ; preds = %66, %58
  %69 = load i32, i32* @SENTINEL_FAILOVER_STATE_SELECT_SLAVE, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = call i32 (...) @mstime()
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @LL_WARNING, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = call i32 @sentinelEvent(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_7__* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %68, %57
  ret void
}

declare dso_local i8* @sentinelGetLeader(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @strcasecmp(i8*, i32) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @mstime(...) #1

declare dso_local i32 @sentinelEvent(i32, i8*, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @sentinelAbortFailover(%struct.TYPE_7__*) #1

declare dso_local i32 @sentinelSimFailureCrash(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

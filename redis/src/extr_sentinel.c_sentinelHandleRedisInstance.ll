; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelHandleRedisInstance.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelHandleRedisInstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }

@sentinel = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@SENTINEL_TILT_PERIOD = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"-tilt\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"#tilt mode exited\00", align 1
@SRI_MASTER = common dso_local global i32 0, align 4
@SRI_SLAVE = common dso_local global i32 0, align 4
@SENTINEL_ASK_FORCED = common dso_local global i32 0, align 4
@SENTINEL_NO_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelHandleRedisInstance(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %3 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %4 = call i32 @sentinelReconnectInstance(%struct.TYPE_12__* %3)
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %6 = call i32 @sentinelSendPeriodicCommands(%struct.TYPE_12__* %5)
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sentinel, i32 0, i32 1), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = call i64 (...) @mstime()
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sentinel, i32 0, i32 0), align 8
  %12 = sub nsw i64 %10, %11
  %13 = load i64, i64* @SENTINEL_TILT_PERIOD, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %54

16:                                               ; preds = %9
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sentinel, i32 0, i32 1), align 8
  %17 = load i32, i32* @LL_WARNING, align 4
  %18 = call i32 @sentinelEvent(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = call i32 @sentinelCheckSubjectivelyDown(%struct.TYPE_12__* %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SRI_MASTER, align 4
  %26 = load i32, i32* @SRI_SLAVE, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %19
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SRI_MASTER, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = call i32 @sentinelCheckObjectivelyDown(%struct.TYPE_12__* %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %42 = call i64 @sentinelStartFailoverIfNeeded(%struct.TYPE_12__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = load i32, i32* @SENTINEL_ASK_FORCED, align 4
  %47 = call i32 @sentinelAskMasterStateToOtherSentinels(%struct.TYPE_12__* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %50 = call i32 @sentinelFailoverStateMachine(%struct.TYPE_12__* %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %52 = load i32, i32* @SENTINEL_NO_FLAGS, align 4
  %53 = call i32 @sentinelAskMasterStateToOtherSentinels(%struct.TYPE_12__* %51, i32 %52)
  br label %54

54:                                               ; preds = %15, %48, %31
  ret void
}

declare dso_local i32 @sentinelReconnectInstance(%struct.TYPE_12__*) #1

declare dso_local i32 @sentinelSendPeriodicCommands(%struct.TYPE_12__*) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i32 @sentinelEvent(i32, i8*, i32*, i8*) #1

declare dso_local i32 @sentinelCheckSubjectivelyDown(%struct.TYPE_12__*) #1

declare dso_local i32 @sentinelCheckObjectivelyDown(%struct.TYPE_12__*) #1

declare dso_local i64 @sentinelStartFailoverIfNeeded(%struct.TYPE_12__*) #1

declare dso_local i32 @sentinelAskMasterStateToOtherSentinels(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @sentinelFailoverStateMachine(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

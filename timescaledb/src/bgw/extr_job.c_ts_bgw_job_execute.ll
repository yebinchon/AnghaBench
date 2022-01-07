; ModuleID = '/home/carl/AnghaBench/timescaledb/src/bgw/extr_job.c_ts_bgw_job_execute.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/bgw/extr_job.c_ts_bgw_job_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@make_interval = common dso_local global i32 0, align 4
@ts_telemetry_main_wrapper = common dso_local global i32 0, align 4
@TELEMETRY_INITIAL_NUM_RUNS = common dso_local global i32 0, align 4
@ts_cm_functions = common dso_local global %struct.TYPE_10__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown job type \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_bgw_job_execute(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %45 [
    i32 129, label %9
    i32 131, label %28
    i32 132, label %28
    i32 133, label %28
    i32 134, label %28
    i32 130, label %34
    i32 128, label %37
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @make_interval, align 4
  %11 = call i32 @Int32GetDatum(i32 0)
  %12 = call i32 @Int32GetDatum(i32 0)
  %13 = call i32 @Int32GetDatum(i32 0)
  %14 = call i32 @Int32GetDatum(i32 0)
  %15 = call i32 @Int32GetDatum(i32 1)
  %16 = call i32 @Int32GetDatum(i32 0)
  %17 = call i32 @Float8GetDatum(i32 0)
  %18 = call i32 @DirectFunctionCall7(i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = call i32* @DatumGetIntervalP(i32 %18)
  store i32* %19, i32** %5, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = load i32, i32* @ts_telemetry_main_wrapper, align 4
  %22 = load i32, i32* @TELEMETRY_INITIAL_NUM_RUNS, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @ts_bgw_job_run_and_set_next_start(%struct.TYPE_9__* %20, i32 %21, i32 %22, i32* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @pfree(i32* %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %47

28:                                               ; preds = %1, %1, %1, %1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ts_cm_functions, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = call i32 %31(%struct.TYPE_9__* %32)
  store i32 %33, i32* %2, align 4
  br label %47

34:                                               ; preds = %1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = call i32 @unknown_job_type_hook(%struct.TYPE_9__* %35)
  store i32 %36, i32* %2, align 4
  br label %47

37:                                               ; preds = %1
  %38 = load i32, i32* @ERROR, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @NameStr(i32 %42)
  %44 = call i32 @elog(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %1, %37
  %46 = call i32 @Assert(i32 0)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %34, %28, %9
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32* @DatumGetIntervalP(i32) #1

declare dso_local i32 @DirectFunctionCall7(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @Float8GetDatum(i32) #1

declare dso_local i32 @ts_bgw_job_run_and_set_next_start(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @unknown_job_type_hook(%struct.TYPE_9__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

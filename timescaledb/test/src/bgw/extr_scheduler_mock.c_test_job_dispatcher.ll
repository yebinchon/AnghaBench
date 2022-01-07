; ModuleID = '/home/carl/AnghaBench/timescaledb/test/src/bgw/extr_scheduler_mock.c_test_job_dispatcher.c'
source_filename = "/home/carl/AnghaBench/timescaledb/test/src/bgw/extr_scheduler_mock.c_test_job_dispatcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@make_interval = common dso_local global i32 0, align 4
@test_job_4 = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unrecognized test job type: %s %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @test_job_dispatcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_job_dispatcher(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = call i32 (...) @ts_register_emit_log_hook()
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @NameStr(i32 %9)
  %11 = call i32 @strdup(i32 %10)
  %12 = call i32 @ts_bgw_log_set_application_name(i32 %11)
  %13 = call i32 (...) @StartTransactionCommand()
  %14 = call i32 (...) @ts_params_get()
  %15 = call i32 (...) @CommitTransactionCommand()
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @get_test_job_type_from_name(i32* %18)
  switch i32 %19, label %57 [
    i32 134, label %20
    i32 133, label %22
    i32 132, label %24
    i32 131, label %26
    i32 130, label %41
    i32 129, label %43
    i32 128, label %45
  ]

20:                                               ; preds = %1
  %21 = call i32 (...) @test_job_1()
  store i32 %21, i32* %2, align 4
  br label %58

22:                                               ; preds = %1
  %23 = call i32 (...) @test_job_2_error()
  store i32 %23, i32* %2, align 4
  br label %58

24:                                               ; preds = %1
  %25 = call i32 (...) @test_job_3_long()
  store i32 %25, i32* %2, align 4
  br label %58

26:                                               ; preds = %1
  %27 = load i32, i32* @make_interval, align 4
  %28 = call i32 @Int32GetDatum(i32 0)
  %29 = call i32 @Int32GetDatum(i32 0)
  %30 = call i32 @Int32GetDatum(i32 0)
  %31 = call i32 @Int32GetDatum(i32 0)
  %32 = call i32 @Int32GetDatum(i32 0)
  %33 = call i32 @Int32GetDatum(i32 0)
  %34 = call i32 @Float8GetDatum(double 2.000000e-01)
  %35 = call i32 @DirectFunctionCall7(i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = call i32* @DatumGetIntervalP(i32 %35)
  store i32* %36, i32** %4, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = load i32, i32* @test_job_4, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @ts_bgw_job_run_and_set_next_start(%struct.TYPE_6__* %37, i32 %38, i32 3, i32* %39)
  store i32 %40, i32* %2, align 4
  br label %58

41:                                               ; preds = %1
  %42 = call i32 (...) @test_job_5_lock()
  store i32 %42, i32* %2, align 4
  br label %58

43:                                               ; preds = %1
  %44 = call i32 (...) @test_job_6_lock_notxn()
  store i32 %44, i32* %2, align 4
  br label %58

45:                                               ; preds = %1
  %46 = load i32, i32* @ERROR, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @NameStr(i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = call i32 @get_test_job_type_from_name(i32* %54)
  %56 = call i32 @elog(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %55)
  br label %57

57:                                               ; preds = %45, %1
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %43, %41, %26, %24, %22, %20
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @ts_register_emit_log_hook(...) #1

declare dso_local i32 @ts_bgw_log_set_application_name(i32) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @ts_params_get(...) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

declare dso_local i32 @get_test_job_type_from_name(i32*) #1

declare dso_local i32 @test_job_1(...) #1

declare dso_local i32 @test_job_2_error(...) #1

declare dso_local i32 @test_job_3_long(...) #1

declare dso_local i32* @DatumGetIntervalP(i32) #1

declare dso_local i32 @DirectFunctionCall7(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @Float8GetDatum(double) #1

declare dso_local i32 @ts_bgw_job_run_and_set_next_start(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @test_job_5_lock(...) #1

declare dso_local i32 @test_job_6_lock_notxn(...) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/timescaledb/test/src/bgw/extr_scheduler_mock.c_test_job_3_long.c'
source_filename = "/home/carl/AnghaBench/timescaledb/test/src/bgw/extr_scheduler_mock.c_test_job_3_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prev_signal_func = common dso_local global i32* null, align 8
@SIGTERM = common dso_local global i32 0, align 4
@log_terminate_signal = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Before sleep job 3\00", align 1
@pg_sleep = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"After sleep job 3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_job_3_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_job_3_long() #0 {
  %1 = call i32 (...) @BackgroundWorkerBlockSignals()
  %2 = load i32*, i32** @prev_signal_func, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @SIGTERM, align 4
  %6 = load i32, i32* @log_terminate_signal, align 4
  %7 = call i32* @pqsignal(i32 %5, i32 %6)
  store i32* %7, i32** @prev_signal_func, align 8
  br label %8

8:                                                ; preds = %4, %0
  %9 = call i32 (...) @BackgroundWorkerUnblockSignals()
  %10 = load i32, i32* @WARNING, align 4
  %11 = call i32 @elog(i32 %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @pg_sleep, align 4
  %13 = call i32 @Float8GetDatum(x86_fp80 0xK3FFE8000000000000000)
  %14 = call i32 @DirectFunctionCall1(i32 %12, i32 %13)
  %15 = load i32, i32* @WARNING, align 4
  %16 = call i32 @elog(i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @BackgroundWorkerBlockSignals(...) #1

declare dso_local i32* @pqsignal(i32, i32) #1

declare dso_local i32 @BackgroundWorkerUnblockSignals(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @Float8GetDatum(x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

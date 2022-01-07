; ModuleID = '/home/carl/AnghaBench/timescaledb/src/bgw/extr_scheduler.c_ts_bgw_scheduler_process.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/bgw/extr_scheduler.c_ts_bgw_scheduler_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DT_NOEND = common dso_local global i64 0, align 8
@CurrentMemoryContext = common dso_local global i32 0, align 4
@scheduled_jobs = common dso_local global i32 0, align 4
@jobs_list_needs_update = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"database scheduler starting for database %d\00", align 1
@MyDatabaseId = common dso_local global i32 0, align 4
@ProcDiePending = common dso_local global i32 0, align 4
@ts_shutdown_bgw = common dso_local global i64 0, align 8
@got_SIGHUP = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_bgw_scheduler_process(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = call i64 (...) @ts_timer_get_current_timestamp()
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* @DT_NOEND, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %11, i32* %7, align 4
  %12 = call i32 (...) @StartTransactionCommand()
  %13 = load i32, i32* @scheduled_jobs, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @ts_update_scheduled_jobs_list(i32 %13, i32 %14)
  store i32 %15, i32* @scheduled_jobs, align 4
  %16 = call i32 (...) @CommitTransactionCommand()
  store i32 0, i32* @jobs_list_needs_update, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @TimestampTzPlusMilliseconds(i64 %20, i32 %21)
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* @DEBUG1, align 4
  %25 = load i32, i32* @MyDatabaseId, align 4
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 @ereport(i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %69, %23
  %29 = load i64, i64* %6, align 8
  %30 = call i64 (...) @ts_timer_get_current_timestamp()
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* @ProcDiePending, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* @ts_shutdown_bgw, align 8
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %35, %32, %28
  %40 = phi i1 [ false, %32 ], [ false, %28 ], [ %38, %35 ]
  br i1 %40, label %41, label %71

41:                                               ; preds = %39
  %42 = load i64, i64* %6, align 8
  store i64 %42, i64* %8, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @start_scheduled_jobs(i32 %43)
  %45 = load i64, i64* %8, align 8
  %46 = call i32 (...) @earliest_time_to_start_next_job()
  %47 = call i64 @least_timestamp(i64 %45, i32 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 (...) @earliest_job_timeout()
  %50 = call i64 @least_timestamp(i64 %48, i32 %49)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @ts_timer_wait(i64 %51)
  %53 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %54 = load i32, i32* @got_SIGHUP, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  store i32 0, i32* @got_SIGHUP, align 4
  %57 = load i32, i32* @PGC_SIGHUP, align 4
  %58 = call i32 @ProcessConfigFile(i32 %57)
  br label %59

59:                                               ; preds = %56, %41
  %60 = call i32 (...) @AcceptInvalidationMessages()
  %61 = load i32, i32* @jobs_list_needs_update, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = call i32 (...) @StartTransactionCommand()
  %65 = load i32, i32* @scheduled_jobs, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ts_update_scheduled_jobs_list(i32 %65, i32 %66)
  store i32 %67, i32* @scheduled_jobs, align 4
  %68 = call i32 (...) @CommitTransactionCommand()
  store i32 0, i32* @jobs_list_needs_update, align 4
  br label %69

69:                                               ; preds = %63, %59
  %70 = call i32 (...) @check_for_stopped_and_timed_out_jobs()
  br label %28

71:                                               ; preds = %39
  %72 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %73 = call i32 (...) @wait_for_all_jobs_to_shutdown()
  %74 = call i32 (...) @check_for_stopped_and_timed_out_jobs()
  ret void
}

declare dso_local i64 @ts_timer_get_current_timestamp(...) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @ts_update_scheduled_jobs_list(i32, i32) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

declare dso_local i64 @TimestampTzPlusMilliseconds(i64, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @start_scheduled_jobs(i32) #1

declare dso_local i64 @least_timestamp(i64, i32) #1

declare dso_local i32 @earliest_time_to_start_next_job(...) #1

declare dso_local i32 @earliest_job_timeout(...) #1

declare dso_local i32 @ts_timer_wait(i64) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @ProcessConfigFile(i32) #1

declare dso_local i32 @AcceptInvalidationMessages(...) #1

declare dso_local i32 @check_for_stopped_and_timed_out_jobs(...) #1

declare dso_local i32 @wait_for_all_jobs_to_shutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/timescaledb/src/bgw/extr_scheduler.c_scheduled_ts_bgw_job_start.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/bgw/extr_scheduler.c_scheduled_ts_bgw_job_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@JOB_STATE_STARTED = common dso_local global i64 0, align 8
@JOB_STATE_SCHEDULED = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unexpected bgworker state %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32 (i32*)*)* @scheduled_ts_bgw_job_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scheduled_ts_bgw_job_start(%struct.TYPE_4__* %0, i32 (i32*)* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32 (i32*)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 (i32*)* %1, i32 (i32*)** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = load i64, i64* @JOB_STATE_STARTED, align 8
  %9 = call i32 @scheduled_bgw_job_transition_state_to(%struct.TYPE_4__* %7, i64 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @JOB_STATE_STARTED, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load i32 (i32*)*, i32 (i32*)** %4, align 8
  %24 = icmp ne i32 (i32*)* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load i32 (i32*)*, i32 (i32*)** %4, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 %26(i32* %29)
  br label %31

31:                                               ; preds = %25, %16
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @WaitForBackgroundWorkerStartup(i32* %34, i32* %5)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %50 [
    i32 130, label %37
    i32 129, label %39
    i32 128, label %40
    i32 131, label %46
  ]

37:                                               ; preds = %31
  %38 = call i32 (...) @bgw_scheduler_on_postmaster_death()
  br label %50

39:                                               ; preds = %31
  br label %50

40:                                               ; preds = %31
  %41 = call i32 (...) @StartTransactionCommand()
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = load i64, i64* @JOB_STATE_SCHEDULED, align 8
  %44 = call i32 @scheduled_bgw_job_transition_state_to(%struct.TYPE_4__* %42, i64 %43)
  %45 = call i32 (...) @CommitTransactionCommand()
  br label %50

46:                                               ; preds = %31
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @elog(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %15, %31, %46, %40, %39, %37
  ret void
}

declare dso_local i32 @scheduled_bgw_job_transition_state_to(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @WaitForBackgroundWorkerStartup(i32*, i32*) #1

declare dso_local i32 @bgw_scheduler_on_postmaster_death(...) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

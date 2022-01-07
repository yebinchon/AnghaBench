; ModuleID = '/home/carl/AnghaBench/timescaledb/src/bgw/extr_job_stat.c_ts_bgw_job_stat_mark_start.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/bgw/extr_job_stat.c_ts_bgw_job_stat_mark_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bgw_job_stat_tuple_mark_start = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@BGW_JOB_STAT = common dso_local global i32 0, align 4
@ShareRowExclusiveLock = common dso_local global i32 0, align 4
@DT_NOBEGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_bgw_job_stat_mark_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @bgw_job_stat_tuple_mark_start, align 4
  %6 = load i32, i32* @RowExclusiveLock, align 4
  %7 = call i32 @bgw_job_stat_scan_job_id(i32 %4, i32 %5, i32* null, i32* null, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %1
  %10 = call i32 (...) @ts_catalog_get()
  %11 = load i32, i32* @BGW_JOB_STAT, align 4
  %12 = call i32 @catalog_get_table_id(i32 %10, i32 %11)
  %13 = load i32, i32* @ShareRowExclusiveLock, align 4
  %14 = call i32 @heap_open(i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @bgw_job_stat_tuple_mark_start, align 4
  %17 = load i32, i32* @RowExclusiveLock, align 4
  %18 = call i32 @bgw_job_stat_scan_job_id(i32 %15, i32 %16, i32* null, i32* null, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %9
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @DT_NOBEGIN, align 4
  %24 = call i32 @bgw_job_stat_insert_relation(i32 %21, i32 %22, i32 1, i32 %23)
  br label %25

25:                                               ; preds = %20, %9
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @ShareRowExclusiveLock, align 4
  %28 = call i32 @heap_close(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @bgw_job_stat_scan_job_id(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @catalog_get_table_id(i32, i32) #1

declare dso_local i32 @ts_catalog_get(...) #1

declare dso_local i32 @bgw_job_stat_insert_relation(i32, i32, i32, i32) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

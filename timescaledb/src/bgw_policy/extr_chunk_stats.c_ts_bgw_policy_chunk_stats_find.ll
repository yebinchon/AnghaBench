; ModuleID = '/home/carl/AnghaBench/timescaledb/src/bgw_policy/extr_chunk_stats.c_ts_bgw_policy_chunk_stats_find.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/bgw_policy/extr_chunk_stats.c_ts_bgw_policy_chunk_stats_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Anum_bgw_policy_chunk_stats_job_id_chunk_id_idx_job_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@Anum_bgw_policy_chunk_stats_job_id_chunk_id_idx_chunk_id = common dso_local global i32 0, align 4
@BGW_POLICY_CHUNK_STATS = common dso_local global i32 0, align 4
@BGW_POLICY_CHUNK_STATS_JOB_ID_CHUNK_ID_IDX = common dso_local global i32 0, align 4
@bgw_policy_chunk_stats_tuple_found = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@BGW_POLICY_CHUNK_STATS_TABLE_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_bgw_policy_chunk_stats_find(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %6, align 8
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %8 = load i32, i32* @Anum_bgw_policy_chunk_stats_job_id_chunk_id_idx_job_id, align 4
  %9 = load i32, i32* @BTEqualStrategyNumber, align 4
  %10 = load i32, i32* @F_INT4EQ, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @Int32GetDatum(i32 %11)
  %13 = call i32 @ScanKeyInit(i32* %7, i32 %8, i32 %9, i32 %10, i32 %12)
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %15 = load i32, i32* @Anum_bgw_policy_chunk_stats_job_id_chunk_id_idx_chunk_id, align 4
  %16 = load i32, i32* @BTEqualStrategyNumber, align 4
  %17 = load i32, i32* @F_INT4EQ, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @Int32GetDatum(i32 %18)
  %20 = call i32 @ScanKeyInit(i32* %14, i32 %15, i32 %16, i32 %17, i32 %19)
  %21 = load i32, i32* @BGW_POLICY_CHUNK_STATS, align 4
  %22 = load i32, i32* @BGW_POLICY_CHUNK_STATS_JOB_ID_CHUNK_ID_IDX, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %24 = load i32, i32* @bgw_policy_chunk_stats_tuple_found, align 4
  %25 = load i32, i32* @AccessShareLock, align 4
  %26 = load i32, i32* @BGW_POLICY_CHUNK_STATS_TABLE_NAME, align 4
  %27 = call i32 @ts_catalog_scan_one(i32 %21, i32 %22, i32* %23, i32 2, i32 %24, i32 %25, i32 %26, i32** %6)
  %28 = load i32*, i32** %6, align 8
  ret i32* %28
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @ts_catalog_scan_one(i32, i32, i32*, i32, i32, i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/timescaledb/src/bgw_policy/extr_chunk_stats.c_ts_bgw_policy_chunk_stats_delete_row_only_by_job_id.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/bgw_policy/extr_chunk_stats.c_ts_bgw_policy_chunk_stats_delete_row_only_by_job_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Anum_bgw_policy_chunk_stats_job_id_chunk_id_idx_job_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@BGW_POLICY_CHUNK_STATS = common dso_local global i32 0, align 4
@BGW_POLICY_CHUNK_STATS_JOB_ID_CHUNK_ID_IDX = common dso_local global i32 0, align 4
@ts_bgw_policy_delete_row_only_tuple_found = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_bgw_policy_chunk_stats_delete_row_only_by_job_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x i32], align 4
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  %5 = load i32, i32* @Anum_bgw_policy_chunk_stats_job_id_chunk_id_idx_job_id, align 4
  %6 = load i32, i32* @BTEqualStrategyNumber, align 4
  %7 = load i32, i32* @F_INT4EQ, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @Int32GetDatum(i32 %8)
  %10 = call i32 @ScanKeyInit(i32* %4, i32 %5, i32 %6, i32 %7, i32 %9)
  %11 = load i32, i32* @BGW_POLICY_CHUNK_STATS, align 4
  %12 = load i32, i32* @BGW_POLICY_CHUNK_STATS_JOB_ID_CHUNK_ID_IDX, align 4
  %13 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  %14 = load i32, i32* @ts_bgw_policy_delete_row_only_tuple_found, align 4
  %15 = load i32, i32* @RowExclusiveLock, align 4
  %16 = call i32 @ts_catalog_scan_all(i32 %11, i32 %12, i32* %13, i32 1, i32 %14, i32 %15, i32* null)
  ret void
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @ts_catalog_scan_all(i32, i32, i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

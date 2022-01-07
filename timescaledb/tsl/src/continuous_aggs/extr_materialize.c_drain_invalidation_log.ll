; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_materialize.c_drain_invalidation_log.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_materialize.c_drain_invalidation_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32** }

@PG_INT64_MAX = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@Anum_continuous_aggs_hypertable_invalidation_log_idx_hypertable_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@CONTINUOUS_AGGS_HYPERTABLE_INVALIDATION_LOG = common dso_local global i32 0, align 4
@CONTINUOUS_AGGS_HYPERTABLE_INVALIDATION_LOG_IDX = common dso_local global i32 0, align 4
@scan_take_invalidation_tuple = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32**)* @drain_invalidation_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain_invalidation_log(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca [1 x i32], align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %8 = load i32, i32* @PG_INT64_MAX, align 4
  store i32 %8, i32* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %10 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %12 = load i32**, i32*** %4, align 8
  store i32** %12, i32*** %11, align 8
  %13 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %14 = load i32, i32* @Anum_continuous_aggs_hypertable_invalidation_log_idx_hypertable_id, align 4
  %15 = load i32, i32* @BTEqualStrategyNumber, align 4
  %16 = load i32, i32* @F_INT4EQ, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @Int32GetDatum(i32 %17)
  %19 = call i32 @ScanKeyInit(i32* %13, i32 %14, i32 %15, i32 %16, i32 %18)
  %20 = load i32, i32* @CONTINUOUS_AGGS_HYPERTABLE_INVALIDATION_LOG, align 4
  %21 = load i32, i32* @CONTINUOUS_AGGS_HYPERTABLE_INVALIDATION_LOG_IDX, align 4
  %22 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %23 = load i32, i32* @scan_take_invalidation_tuple, align 4
  %24 = load i32, i32* @RowExclusiveLock, align 4
  %25 = call i32 @ts_catalog_scan_all(i32 %20, i32 %21, i32* %22, i32 1, i32 %23, i32 %24, %struct.TYPE_3__* %5)
  ret void
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @ts_catalog_scan_all(i32, i32, i32*, i32, i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

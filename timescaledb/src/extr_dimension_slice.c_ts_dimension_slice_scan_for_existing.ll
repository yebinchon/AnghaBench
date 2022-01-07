; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_dimension_slice.c_ts_dimension_slice_scan_for_existing.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_dimension_slice.c_ts_dimension_slice_scan_for_existing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start = common dso_local global i32 0, align 4
@F_INT8EQ = common dso_local global i32 0, align 4
@Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end = common dso_local global i32 0, align 4
@DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX = common dso_local global i32 0, align 4
@dimension_slice_fill = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @ts_dimension_slice_scan_for_existing(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca [3 x i32], align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %5 = load i32, i32* @Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id, align 4
  %6 = load i32, i32* @BTEqualStrategyNumber, align 4
  %7 = load i32, i32* @F_INT4EQ, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @Int32GetDatum(i32 %11)
  %13 = call i32 @ScanKeyInit(i32* %4, i32 %5, i32 %6, i32 %7, i32 %12)
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  %15 = load i32, i32* @Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start, align 4
  %16 = load i32, i32* @BTEqualStrategyNumber, align 4
  %17 = load i32, i32* @F_INT8EQ, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @Int64GetDatum(i32 %21)
  %23 = call i32 @ScanKeyInit(i32* %14, i32 %15, i32 %16, i32 %17, i32 %22)
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  %25 = load i32, i32* @Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end, align 4
  %26 = load i32, i32* @BTEqualStrategyNumber, align 4
  %27 = load i32, i32* @F_INT8EQ, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @Int64GetDatum(i32 %31)
  %33 = call i32 @ScanKeyInit(i32* %24, i32 %25, i32 %26, i32 %27, i32 %32)
  %34 = load i32, i32* @DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX, align 4
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %36 = load i32, i32* @dimension_slice_fill, align 4
  %37 = load i32, i32* @AccessShareLock, align 4
  %38 = load i32, i32* @CurrentMemoryContext, align 4
  %39 = call i32 @dimension_slice_scan_limit_internal(i32 %34, i32* %35, i32 3, i32 %36, %struct.TYPE_7__** %2, i32 1, i32 %37, i32 %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %40
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @Int64GetDatum(i32) #1

declare dso_local i32 @dimension_slice_scan_limit_internal(i32, i32*, i32, i32, %struct.TYPE_7__**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

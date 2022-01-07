; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_dimension_slice.c_ts_dimension_slice_scan_limit.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_dimension_slice.c_ts_dimension_slice_scan_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIMENSION_VEC_DEFAULT_SIZE = common dso_local global i32 0, align 4
@Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start = common dso_local global i32 0, align 4
@BTLessEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT8LE = common dso_local global i32 0, align 4
@Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end = common dso_local global i32 0, align 4
@BTGreaterStrategyNumber = common dso_local global i32 0, align 4
@F_INT8GT = common dso_local global i32 0, align 4
@DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX = common dso_local global i32 0, align 4
@dimension_vec_tuple_found = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_dimension_slice_scan_limit(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  br label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @DIMENSION_VEC_DEFAULT_SIZE, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = call i32* @ts_dimension_vec_create(i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @REMAP_LAST_COORDINATE(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %21 = load i32, i32* @Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id, align 4
  %22 = load i32, i32* @BTEqualStrategyNumber, align 4
  %23 = load i32, i32* @F_INT4EQ, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @Int32GetDatum(i32 %24)
  %26 = call i32 @ScanKeyInit(i32* %20, i32 %21, i32 %22, i32 %23, i32 %25)
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %28 = load i32, i32* @Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start, align 4
  %29 = load i32, i32* @BTLessEqualStrategyNumber, align 4
  %30 = load i32, i32* @F_INT8LE, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @Int64GetDatum(i32 %31)
  %33 = call i32 @ScanKeyInit(i32* %27, i32 %28, i32 %29, i32 %30, i32 %32)
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %35 = load i32, i32* @Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end, align 4
  %36 = load i32, i32* @BTGreaterStrategyNumber, align 4
  %37 = load i32, i32* @F_INT8GT, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @Int64GetDatum(i32 %38)
  %40 = call i32 @ScanKeyInit(i32* %34, i32 %35, i32 %36, i32 %37, i32 %39)
  %41 = load i32, i32* @DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %43 = load i32, i32* @dimension_vec_tuple_found, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @AccessShareLock, align 4
  %46 = load i32, i32* @CurrentMemoryContext, align 4
  %47 = call i32 @dimension_slice_scan_limit_internal(i32 %41, i32* %42, i32 3, i32 %43, i32** %8, i32 %44, i32 %45, i32 %46)
  %48 = call i32* @ts_dimension_vec_sort(i32** %8)
  ret i32* %48
}

declare dso_local i32* @ts_dimension_vec_create(i32) #1

declare dso_local i32 @REMAP_LAST_COORDINATE(i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @Int64GetDatum(i32) #1

declare dso_local i32 @dimension_slice_scan_limit_internal(i32, i32*, i32, i32, i32**, i32, i32, i32) #1

declare dso_local i32* @ts_dimension_vec_sort(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

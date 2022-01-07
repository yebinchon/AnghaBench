; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_dimension_slice.c_ts_dimension_slice_scan_by_dimension_before_point.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_dimension_slice.c_ts_dimension_slice_scan_by_dimension_before_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIMENSION_VEC_DEFAULT_SIZE = common dso_local global i32 0, align 4
@Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start = common dso_local global i32 0, align 4
@BTLessStrategyNumber = common dso_local global i32 0, align 4
@F_INT8LT = common dso_local global i32 0, align 4
@Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end = common dso_local global i32 0, align 4
@DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX = common dso_local global i32 0, align 4
@dimension_vec_tuple_found = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_dimension_slice_scan_by_dimension_before_point(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  br label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @DIMENSION_VEC_DEFAULT_SIZE, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = call i32* @ts_dimension_vec_create(i32 %20)
  store i32* %21, i32** %12, align 8
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %23 = load i32, i32* @Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id, align 4
  %24 = load i32, i32* @BTEqualStrategyNumber, align 4
  %25 = load i32, i32* @F_INT4EQ, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @Int32GetDatum(i32 %26)
  %28 = call i32 @ScanKeyInit(i32* %22, i32 %23, i32 %24, i32 %25, i32 %27)
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %30 = load i32, i32* @Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start, align 4
  %31 = load i32, i32* @BTLessStrategyNumber, align 4
  %32 = load i32, i32* @F_INT8LT, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @Int64GetDatum(i32 %33)
  %35 = call i32 @ScanKeyInit(i32* %29, i32 %30, i32 %31, i32 %32, i32 %34)
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %37 = load i32, i32* @Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end, align 4
  %38 = load i32, i32* @BTLessStrategyNumber, align 4
  %39 = load i32, i32* @F_INT8LT, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @Int64GetDatum(i32 %40)
  %42 = call i32 @ScanKeyInit(i32* %36, i32 %37, i32 %38, i32 %39, i32 %41)
  %43 = load i32, i32* @DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %45 = load i32, i32* @dimension_vec_tuple_found, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @AccessShareLock, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @dimension_slice_scan_limit_direction_internal(i32 %43, i32* %44, i32 3, i32 %45, i32** %12, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = call i32* @ts_dimension_vec_sort(i32** %12)
  ret i32* %51
}

declare dso_local i32* @ts_dimension_vec_create(i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @Int64GetDatum(i32) #1

declare dso_local i32 @dimension_slice_scan_limit_direction_internal(i32, i32*, i32, i32, i32**, i32, i32, i32, i32) #1

declare dso_local i32* @ts_dimension_vec_sort(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_dimension_slice.c_ts_dimension_slice_scan_by_dimension.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_dimension_slice.c_ts_dimension_slice_scan_by_dimension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIMENSION_VEC_DEFAULT_SIZE = common dso_local global i32 0, align 4
@Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX = common dso_local global i32 0, align 4
@dimension_vec_tuple_found = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_dimension_slice_scan_by_dimension(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x i32], align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @DIMENSION_VEC_DEFAULT_SIZE, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = call i32* @ts_dimension_vec_create(i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %17 = load i32, i32* @Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id, align 4
  %18 = load i32, i32* @BTEqualStrategyNumber, align 4
  %19 = load i32, i32* @F_INT4EQ, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @Int32GetDatum(i32 %20)
  %22 = call i32 @ScanKeyInit(i32* %16, i32 %17, i32 %18, i32 %19, i32 %21)
  %23 = load i32, i32* @DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX, align 4
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %25 = load i32, i32* @dimension_vec_tuple_found, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @AccessShareLock, align 4
  %28 = load i32, i32* @CurrentMemoryContext, align 4
  %29 = call i32 @dimension_slice_scan_limit_internal(i32 %23, i32* %24, i32 1, i32 %25, i32** %6, i32 %26, i32 %27, i32 %28)
  %30 = call i32* @ts_dimension_vec_sort(i32** %6)
  ret i32* %30
}

declare dso_local i32* @ts_dimension_vec_create(i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @dimension_slice_scan_limit_internal(i32, i32*, i32, i32, i32**, i32, i32, i32) #1

declare dso_local i32* @ts_dimension_vec_sort(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

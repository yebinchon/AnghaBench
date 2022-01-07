; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_dimension_slice.c_dimension_slice_scan_with_strategies.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_dimension_slice.c_dimension_slice_scan_with_strategies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i64 0, align 8
@F_INT4EQ = common dso_local global i32 0, align 4
@InvalidStrategy = common dso_local global i64 0, align 8
@INTEGER_BTREE_FAM_OID = common dso_local global i32 0, align 4
@INT8OID = common dso_local global i32 0, align 4
@Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start = common dso_local global i32 0, align 4
@PG_INT64_MAX = common dso_local global i64 0, align 8
@Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end = common dso_local global i32 0, align 4
@DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i64, i8*, i32, i32)* @dimension_slice_scan_with_strategies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dimension_slice_scan_with_strategies(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [3 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 1, i32* %18, align 4
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %24 = load i32, i32* @Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id, align 4
  %25 = load i64, i64* @BTEqualStrategyNumber, align 8
  %26 = load i32, i32* @F_INT4EQ, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @Int32GetDatum(i32 %27)
  %29 = call i32 @ScanKeyInit(i32* %23, i32 %24, i64 %25, i32 %26, i32 %28)
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @InvalidStrategy, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %8
  %34 = load i32, i32* @INTEGER_BTREE_FAM_OID, align 4
  %35 = load i32, i32* @INT8OID, align 4
  %36 = load i32, i32* @INT8OID, align 4
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @get_opfamily_member(i32 %34, i32 %35, i32 %36, i64 %37)
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %19, align 4
  %40 = call i32 @get_opcode(i32 %39)
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = call i32 @OidIsValid(i32 %41)
  %43 = call i32 @Assert(i32 %42)
  %44 = load i32, i32* %18, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %18, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 %46
  %48 = load i32, i32* @Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start, align 4
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* %20, align 4
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @Int64GetDatum(i64 %51)
  %53 = call i32 @ScanKeyInit(i32* %47, i32 %48, i64 %49, i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %33, %8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @InvalidStrategy, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %90

58:                                               ; preds = %54
  %59 = load i32, i32* @INTEGER_BTREE_FAM_OID, align 4
  %60 = load i32, i32* @INT8OID, align 4
  %61 = load i32, i32* @INT8OID, align 4
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @get_opfamily_member(i32 %59, i32 %60, i32 %61, i64 %62)
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* %21, align 4
  %65 = call i32 @get_opcode(i32 %64)
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* %22, align 4
  %67 = call i32 @OidIsValid(i32 %66)
  %68 = call i32 @Assert(i32 %67)
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @PG_INT64_MAX, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %58
  %73 = load i64, i64* %13, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i64 @REMAP_LAST_COORDINATE(i64 %75)
  store i64 %76, i64* %13, align 8
  br label %79

77:                                               ; preds = %58
  %78 = load i64, i64* @PG_INT64_MAX, align 8
  store i64 %78, i64* %13, align 8
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i32, i32* %18, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %18, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 %82
  %84 = load i32, i32* @Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end, align 4
  %85 = load i64, i64* %12, align 8
  %86 = load i32, i32* %22, align 4
  %87 = load i64, i64* %13, align 8
  %88 = call i32 @Int64GetDatum(i64 %87)
  %89 = call i32 @ScanKeyInit(i32* %83, i32 %84, i64 %85, i32 %86, i32 %88)
  br label %90

90:                                               ; preds = %79, %54
  %91 = load i32, i32* @DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX, align 4
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* @AccessShareLock, align 4
  %98 = load i32, i32* @CurrentMemoryContext, align 4
  %99 = call i32 @dimension_slice_scan_limit_internal(i32 %91, i32* %92, i32 %93, i32 %94, i8* %95, i32 %96, i32 %97, i32 %98)
  ret void
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @get_opfamily_member(i32, i32, i32, i64) #1

declare dso_local i32 @get_opcode(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @Int64GetDatum(i64) #1

declare dso_local i64 @REMAP_LAST_COORDINATE(i64) #1

declare dso_local i32 @dimension_slice_scan_limit_internal(i32, i32*, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunk_delete_by_name.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunk_delete_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Anum_chunk_schema_name_idx_schema_name = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@namein = common dso_local global i32 0, align 4
@Anum_chunk_schema_name_idx_table_name = common dso_local global i32 0, align 4
@CHUNK_SCHEMA_NAME_INDEX = common dso_local global i32 0, align 4
@chunk_tuple_delete = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_chunk_delete_by_name(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %9 = load i32, i32* @Anum_chunk_schema_name_idx_schema_name, align 4
  %10 = load i32, i32* @BTEqualStrategyNumber, align 4
  %11 = load i32, i32* @F_NAMEEQ, align 4
  %12 = load i32, i32* @namein, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @CStringGetDatum(i8* %13)
  %15 = call i32 @DirectFunctionCall1(i32 %12, i32 %14)
  %16 = call i32 @ScanKeyInit(i32* %8, i32 %9, i32 %10, i32 %11, i32 %15)
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %18 = load i32, i32* @Anum_chunk_schema_name_idx_table_name, align 4
  %19 = load i32, i32* @BTEqualStrategyNumber, align 4
  %20 = load i32, i32* @F_NAMEEQ, align 4
  %21 = load i32, i32* @namein, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @CStringGetDatum(i8* %22)
  %24 = call i32 @DirectFunctionCall1(i32 %21, i32 %23)
  %25 = call i32 @ScanKeyInit(i32* %17, i32 %18, i32 %19, i32 %20, i32 %24)
  %26 = load i32, i32* @CHUNK_SCHEMA_NAME_INDEX, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %28 = load i32, i32* @chunk_tuple_delete, align 4
  %29 = load i32, i32* @ForwardScanDirection, align 4
  %30 = load i32, i32* @RowExclusiveLock, align 4
  %31 = load i32, i32* @CurrentMemoryContext, align 4
  %32 = call i32 @chunk_scan_internal(i32 %26, i32* %27, i32 2, i32 %28, i32* %6, i32 0, i32 %29, i32 %30, i32 %31)
  ret i32 %32
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @chunk_scan_internal(i32, i32*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunk_get_by_name_with_memory_context.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunk_get_by_name_with_memory_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Anum_chunk_schema_name_idx_schema_name = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@Anum_chunk_schema_name_idx_table_name = common dso_local global i32 0, align 4
@CHUNK_SCHEMA_NAME_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_chunk_get_by_name_with_memory_context(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @namestrcpy(i32* %11, i8* %14)
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @namestrcpy(i32* %12, i8* %16)
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %19 = load i32, i32* @Anum_chunk_schema_name_idx_schema_name, align 4
  %20 = load i32, i32* @BTEqualStrategyNumber, align 4
  %21 = load i32, i32* @F_NAMEEQ, align 4
  %22 = call i32 @NameGetDatum(i32* %11)
  %23 = call i32 @ScanKeyInit(i32* %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %25 = load i32, i32* @Anum_chunk_schema_name_idx_table_name, align 4
  %26 = load i32, i32* @BTEqualStrategyNumber, align 4
  %27 = load i32, i32* @F_NAMEEQ, align 4
  %28 = call i32 @NameGetDatum(i32* %12)
  %29 = call i32 @ScanKeyInit(i32* %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @CHUNK_SCHEMA_NAME_INDEX, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32* @chunk_scan_find(i32 %30, i32* %31, i32 2, i32 %32, i32 %33, i32 %34)
  ret i32* %35
}

declare dso_local i32 @namestrcpy(i32*, i8*) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @NameGetDatum(i32*) #1

declare dso_local i32* @chunk_scan_find(i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

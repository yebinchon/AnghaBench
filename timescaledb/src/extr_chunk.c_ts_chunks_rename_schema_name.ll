; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunks_rename_schema_name.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunks_rename_schema_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32, i32*, i32, i32 }

@ForwardScanDirection = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@chunk_rename_schema_name = common dso_local global i32 0, align 4
@CHUNK = common dso_local global i32 0, align 4
@CHUNK_SCHEMA_NAME_INDEX = common dso_local global i32 0, align 4
@Anum_chunk_schema_name_idx_schema_name = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_chunks_rename_schema_name(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x i32], align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i32* (...) @ts_catalog_get()
  store i32* %9, i32** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %14 = load i32, i32* @ForwardScanDirection, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %16 = load i32, i32* @RowExclusiveLock, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %18 = load i32, i32* @chunk_rename_schema_name, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  %20 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  store i32* %20, i32** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @CHUNK, align 4
  %24 = load i32, i32* @CHUNK_SCHEMA_NAME_INDEX, align 4
  %25 = call i32 @catalog_get_index(i32* %22, i32 %23, i32 %24)
  store i32 %25, i32* %21, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 7
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @CHUNK, align 4
  %29 = call i32 @catalog_get_table_id(i32* %27, i32 %28)
  store i32 %29, i32* %26, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @namestrcpy(i32* %5, i8* %30)
  %32 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %33 = load i32, i32* @Anum_chunk_schema_name_idx_schema_name, align 4
  %34 = load i32, i32* @BTEqualStrategyNumber, align 4
  %35 = load i32, i32* @F_NAMEEQ, align 4
  %36 = call i32 @NameGetDatum(i32* %5)
  %37 = call i32 @ScanKeyInit(i32* %32, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = call i32 @ts_scanner_scan(%struct.TYPE_3__* %8)
  ret void
}

declare dso_local i32* @ts_catalog_get(...) #1

declare dso_local i32 @catalog_get_index(i32*, i32, i32) #1

declare dso_local i32 @catalog_get_table_id(i32*, i32) #1

declare dso_local i32 @namestrcpy(i32*, i8*) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @NameGetDatum(i32*) #1

declare dso_local i32 @ts_scanner_scan(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

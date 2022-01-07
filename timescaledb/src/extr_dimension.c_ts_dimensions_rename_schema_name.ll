; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_dimension.c_ts_dimensions_rename_schema_name.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_dimension.c_ts_dimensions_rename_schema_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8**, i32, i32, i32, i32*, i32, i32 }

@ForwardScanDirection = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@dimension_rename_schema_name = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@DIMENSION = common dso_local global i32 0, align 4
@Anum_dimension_partitioning_func_schema = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@Anum_dimension_integer_now_func_schema = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_dimensions_rename_schema_name(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x i32], align 4
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i8*], align 16
  %9 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = call i32* (...) @ts_catalog_get()
  store i32* %10, i32** %7, align 8
  %11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 1
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %17 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  store i8** %17, i8*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %19 = load i32, i32* @ForwardScanDirection, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %21 = load i32, i32* @RowExclusiveLock, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  %23 = load i32, i32* @dimension_rename_schema_name, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 5
  %25 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  store i32* %25, i32** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 6
  %27 = load i32, i32* @InvalidOid, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 7
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @DIMENSION, align 4
  %31 = call i32 @catalog_get_table_id(i32* %29, i32 %30)
  store i32 %31, i32* %28, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @namestrcpy(i32* %5, i8* %32)
  %34 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %35 = load i32, i32* @Anum_dimension_partitioning_func_schema, align 4
  %36 = load i32, i32* @BTEqualStrategyNumber, align 4
  %37 = load i32, i32* @F_NAMEEQ, align 4
  %38 = call i32 @NameGetDatum(i32* %5)
  %39 = call i32 @ScanKeyInit(i32* %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = call i32 @ts_scanner_scan(%struct.TYPE_3__* %9)
  %41 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %42 = load i32, i32* @Anum_dimension_integer_now_func_schema, align 4
  %43 = load i32, i32* @BTEqualStrategyNumber, align 4
  %44 = load i32, i32* @F_NAMEEQ, align 4
  %45 = call i32 @NameGetDatum(i32* %5)
  %46 = call i32 @ScanKeyInit(i32* %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = call i32 @ts_scanner_scan(%struct.TYPE_3__* %9)
  ret void
}

declare dso_local i32* @ts_catalog_get(...) #1

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

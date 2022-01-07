; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_metadata.c_metadata_get_value_internal.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_metadata.c_metadata_get_value_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_5__*, i32, i32*, i32, i32 }

@ForwardScanDirection = common dso_local global i32 0, align 4
@metadata_tuple_get_value = common dso_local global i32 0, align 4
@METADATA = common dso_local global i32 0, align 4
@METADATA_PKEY_IDX = common dso_local global i32 0, align 4
@Anum_metadata_key = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32)* @metadata_get_value_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metadata_get_value_internal(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [1 x i32], align 4
  %12 = alloca %struct.TYPE_5__, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %17, align 4
  %19 = call i32* (...) @ts_catalog_get()
  store i32* %19, i32** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %22 = load i32, i32* @ForwardScanDirection, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %27 = load i32, i32* @metadata_tuple_get_value, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 5
  %29 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  store i32* %29, i32** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* @METADATA, align 4
  %33 = load i32, i32* @METADATA_PKEY_IDX, align 4
  %34 = call i32 @catalog_get_index(i32* %31, i32 %32, i32 %33)
  store i32 %34, i32* %30, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 7
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* @METADATA, align 4
  %38 = call i32 @catalog_get_table_id(i32* %36, i32 %37)
  store i32 %38, i32* %35, align 4
  %39 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %40 = load i32, i32* @Anum_metadata_key, align 4
  %41 = load i32, i32* @BTEqualStrategyNumber, align 4
  %42 = load i32, i32* @F_NAMEEQ, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @convert_type_to_name(i32 %43, i32 %44)
  %46 = call i32 @ScanKeyInit(i32* %39, i32 %40, i32 %41, i32 %42, i32 %45)
  %47 = call i32 @ts_scanner_scan(%struct.TYPE_4__* %14)
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* null, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %5
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %5
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  ret i32 %56
}

declare dso_local i32* @ts_catalog_get(...) #1

declare dso_local i32 @catalog_get_index(i32*, i32, i32) #1

declare dso_local i32 @catalog_get_table_id(i32*, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @convert_type_to_name(i32, i32) #1

declare dso_local i32 @ts_scanner_scan(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

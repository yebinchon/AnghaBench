; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_dimension_slice.c_dimension_slice_scan_limit_direction_internal.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_dimension_slice.c_dimension_slice_scan_limit_direction_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32, i32, i32, i32*, i32, i32 }

@DIMENSION_SLICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32, i8*, i32, i32, i32, i32)* @dimension_slice_scan_limit_direction_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dimension_slice_scan_limit_direction_internal(i32 %0, i32* %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = call i32* (...) @ts_catalog_get()
  store i32* %21, i32** %19, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %25 = load i8*, i8** %14, align 8
  store i8* %25, i8** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %29 = load i32, i32* %18, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %33 = load i32, i32* %17, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 7
  %37 = load i32*, i32** %11, align 8
  store i32* %37, i32** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 8
  %39 = load i32*, i32** %19, align 8
  %40 = load i32, i32* @DIMENSION_SLICE, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @catalog_get_index(i32* %39, i32 %40, i32 %41)
  store i32 %42, i32* %38, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 9
  %44 = load i32*, i32** %19, align 8
  %45 = load i32, i32* @DIMENSION_SLICE, align 4
  %46 = call i32 @catalog_get_table_id(i32* %44, i32 %45)
  store i32 %46, i32* %43, align 4
  %47 = call i32 @ts_scanner_scan(%struct.TYPE_3__* %20)
  ret i32 %47
}

declare dso_local i32* @ts_catalog_get(...) #1

declare dso_local i32 @catalog_get_index(i32*, i32, i32) #1

declare dso_local i32 @catalog_get_table_id(i32*, i32) #1

declare dso_local i32 @ts_scanner_scan(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

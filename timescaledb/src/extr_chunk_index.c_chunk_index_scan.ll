; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_chunk_index_scan.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_chunk_index_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32, i32, i32*, i32, i32 }

@ForwardScanDirection = common dso_local global i32 0, align 4
@CHUNK_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32, i32, i8*, i32)* @chunk_index_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_index_scan(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = call i32* (...) @ts_catalog_get()
  store i32* %17, i32** %15, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %21 = load i8*, i8** %13, align 8
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %23 = load i32, i32* @ForwardScanDirection, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 6
  %31 = load i32*, i32** %9, align 8
  store i32* %31, i32** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 7
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* @CHUNK_INDEX, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @catalog_get_index(i32* %33, i32 %34, i32 %35)
  store i32 %36, i32* %32, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 8
  %38 = load i32*, i32** %15, align 8
  %39 = load i32, i32* @CHUNK_INDEX, align 4
  %40 = call i32 @catalog_get_table_id(i32* %38, i32 %39)
  store i32 %40, i32* %37, align 4
  %41 = call i32 @ts_scanner_scan(%struct.TYPE_3__* %16)
  ret i32 %41
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

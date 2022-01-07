; ModuleID = '/home/carl/AnghaBench/timescaledb/src/bgw/extr_job.c_ts_bgw_job_get_all.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/bgw/extr_job.c_ts_bgw_job_get_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32 }

@NIL = common dso_local global i32* null, align 8
@ForwardScanDirection = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@bgw_job_accum_tuple_found = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@BGW_JOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_bgw_job_get_all(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32* (...) @ts_catalog_get()
  store i32* %8, i32** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %10 = load i64, i64* %3, align 8
  store i64 %10, i64* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %12 = load i32*, i32** @NIL, align 8
  store i32* %12, i32** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %16 = load i32, i32* @ForwardScanDirection, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %18 = load i32, i32* @AccessShareLock, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %20 = load i32, i32* @bgw_job_accum_tuple_found, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  %23 = load i32, i32* @InvalidOid, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @BGW_JOB, align 4
  %27 = call i32 @catalog_get_table_id(i32* %25, i32 %26)
  store i32 %27, i32* %24, align 4
  %28 = call i32 @ts_scanner_scan(%struct.TYPE_4__* %7)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  ret i32* %30
}

declare dso_local i32* @ts_catalog_get(...) #1

declare dso_local i32 @catalog_get_table_id(i32*, i32) #1

declare dso_local i32 @ts_scanner_scan(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_ts_hypertable_id_to_relid.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_ts_hypertable_id_to_relid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32, i32*, i32, i32 }

@InvalidOid = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@hypertable_tuple_get_relid = common dso_local global i32 0, align 4
@HYPERTABLE = common dso_local global i32 0, align 4
@HYPERTABLE_ID_INDEX = common dso_local global i32 0, align 4
@Anum_hypertable_pkey_idx_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_hypertable_id_to_relid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x i32], align 4
  %6 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i32* (...) @ts_catalog_get()
  store i32* %7, i32** %3, align 8
  %8 = load i32, i32* @InvalidOid, align 4
  store i32 %8, i32* %4, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %11 = load i32, i32* @ForwardScanDirection, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %13 = load i32, i32* @AccessShareLock, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  store i32* %4, i32** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %16 = load i32, i32* @hypertable_tuple_get_relid, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  store i32* %18, i32** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @HYPERTABLE, align 4
  %22 = load i32, i32* @HYPERTABLE_ID_INDEX, align 4
  %23 = call i32 @catalog_get_index(i32* %20, i32 %21, i32 %22)
  store i32 %23, i32* %19, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @HYPERTABLE, align 4
  %27 = call i32 @catalog_get_table_id(i32* %25, i32 %26)
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %29 = load i32, i32* @Anum_hypertable_pkey_idx_id, align 4
  %30 = load i32, i32* @BTEqualStrategyNumber, align 4
  %31 = load i32, i32* @F_INT4EQ, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @Int32GetDatum(i32 %32)
  %34 = call i32 @ScanKeyInit(i32* %28, i32 %29, i32 %30, i32 %31, i32 %33)
  %35 = call i32 @ts_scanner_scan(%struct.TYPE_3__* %6)
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32* @ts_catalog_get(...) #1

declare dso_local i32 @catalog_get_index(i32*, i32, i32) #1

declare dso_local i32 @catalog_get_table_id(i32*, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @ts_scanner_scan(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_dimension.c_ts_dimension_scan.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_dimension.c_ts_dimension_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@Anum_dimension_hypertable_id_column_name_idx_hypertable_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@dimension_tuple_found = common dso_local global i32 0, align 4
@DIMENSION_HYPERTABLE_ID_COLUMN_NAME_IDX = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@cmp_dimension_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ts_dimension_scan(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca [1 x i32], align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.TYPE_5__* @hyperspace_create(i32 %11, i32 %12, i32 %13, i32 %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %9, align 8
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %17 = load i32, i32* @Anum_dimension_hypertable_id_column_name_idx_hypertable_id, align 4
  %18 = load i32, i32* @BTEqualStrategyNumber, align 4
  %19 = load i32, i32* @F_INT4EQ, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @Int32GetDatum(i32 %20)
  %22 = call i32 @ScanKeyInit(i32* %16, i32 %17, i32 %18, i32 %19, i32 %21)
  %23 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %24 = load i32, i32* @dimension_tuple_found, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @DIMENSION_HYPERTABLE_ID_COLUMN_NAME_IDX, align 4
  %28 = load i32, i32* @AccessShareLock, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @dimension_scan_internal(i32* %23, i32 1, i32 %24, %struct.TYPE_5__* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @cmp_dimension_id, align 4
  %38 = call i32 @qsort(i32 %33, i32 %36, i32 4, i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  ret %struct.TYPE_5__* %39
}

declare dso_local %struct.TYPE_5__* @hyperspace_create(i32, i32, i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @dimension_scan_internal(i32*, i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @qsort(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

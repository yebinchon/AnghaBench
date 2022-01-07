; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_ts_chunk_index_get_mappings.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_ts_chunk_index_get_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@Anum_chunk_index_hypertable_id_hypertable_index_name_idx_hypertable_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@Anum_chunk_index_hypertable_id_hypertable_index_name_idx_hypertable_index_name = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@namein = common dso_local global i32 0, align 4
@CHUNK_INDEX_HYPERTABLE_ID_HYPERTABLE_INDEX_NAME_IDX = common dso_local global i32 0, align 4
@chunk_index_collect = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_chunk_index_get_mappings(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i8* @get_rel_name(i32 %8)
  store i8* %9, i8** %6, align 8
  %10 = load i32*, i32** @NIL, align 8
  store i32* %10, i32** %7, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %12 = load i32, i32* @Anum_chunk_index_hypertable_id_hypertable_index_name_idx_hypertable_id, align 4
  %13 = load i32, i32* @BTEqualStrategyNumber, align 4
  %14 = load i32, i32* @F_INT4EQ, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @Int32GetDatum(i32 %18)
  %20 = call i32 @ScanKeyInit(i32* %11, i32 %12, i32 %13, i32 %14, i32 %19)
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %22 = load i32, i32* @Anum_chunk_index_hypertable_id_hypertable_index_name_idx_hypertable_index_name, align 4
  %23 = load i32, i32* @BTEqualStrategyNumber, align 4
  %24 = load i32, i32* @F_NAMEEQ, align 4
  %25 = load i32, i32* @namein, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @CStringGetDatum(i8* %26)
  %28 = call i32 @DirectFunctionCall1(i32 %25, i32 %27)
  %29 = call i32 @ScanKeyInit(i32* %21, i32 %22, i32 %23, i32 %24, i32 %28)
  %30 = load i32, i32* @CHUNK_INDEX_HYPERTABLE_ID_HYPERTABLE_INDEX_NAME_IDX, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %32 = load i32, i32* @chunk_index_collect, align 4
  %33 = load i32, i32* @AccessShareLock, align 4
  %34 = call i32 @chunk_index_scan(i32 %30, i32* %31, i32 2, i32 %32, i32* null, i32** %7, i32 %33)
  %35 = load i32*, i32** %7, align 8
  ret i32* %35
}

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @chunk_index_scan(i32, i32*, i32, i32, i32*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

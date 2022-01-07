; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_ts_chunk_index_rename_parent.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_ts_chunk_index_rename_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i8*, i32 }

@Anum_chunk_index_hypertable_id_hypertable_index_name_idx_hypertable_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@Anum_chunk_index_hypertable_id_hypertable_index_name_idx_hypertable_index_name = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@CHUNK_INDEX_HYPERTABLE_ID_HYPERTABLE_INDEX_NAME_IDX = common dso_local global i32 0, align 4
@chunk_index_tuple_rename = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_chunk_index_rename_parent(%struct.TYPE_7__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i8* @get_rel_name(i32 %10)
  store i8* %11, i8** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %13 = load i8*, i8** %8, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %18 = load i32, i32* @Anum_chunk_index_hypertable_id_hypertable_index_name_idx_hypertable_id, align 4
  %19 = load i32, i32* @BTEqualStrategyNumber, align 4
  %20 = load i32, i32* @F_INT4EQ, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @Int32GetDatum(i32 %24)
  %26 = call i32 @ScanKeyInit(i32* %17, i32 %18, i32 %19, i32 %20, i32 %25)
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %28 = load i32, i32* @Anum_chunk_index_hypertable_id_hypertable_index_name_idx_hypertable_index_name, align 4
  %29 = load i32, i32* @BTEqualStrategyNumber, align 4
  %30 = load i32, i32* @F_NAMEEQ, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @CStringGetDatum(i8* %31)
  %33 = call i32 @ScanKeyInit(i32* %27, i32 %28, i32 %29, i32 %30, i32 %32)
  %34 = load i32, i32* @CHUNK_INDEX_HYPERTABLE_ID_HYPERTABLE_INDEX_NAME_IDX, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %36 = load i32, i32* @chunk_index_tuple_rename, align 4
  %37 = call i32 @chunk_index_scan_update(i32 %34, i32* %35, i32 2, i32 %36, i32* null, %struct.TYPE_8__* %9)
  ret i32 %37
}

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @chunk_index_scan_update(i32, i32*, i32, i32, i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

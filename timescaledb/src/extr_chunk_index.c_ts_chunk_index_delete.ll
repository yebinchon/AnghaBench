; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_ts_chunk_index_delete.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_ts_chunk_index_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@Anum_chunk_index_chunk_id_index_name_idx_chunk_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@Anum_chunk_index_chunk_id_index_name_idx_index_name = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@namein = common dso_local global i32 0, align 4
@CHUNK_INDEX_CHUNK_ID_INDEX_NAME_IDX = common dso_local global i32 0, align 4
@chunk_index_tuple_delete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_chunk_index_delete(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i8* @get_rel_name(i32 %10)
  store i8* %11, i8** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %15 = load i32, i32* @Anum_chunk_index_chunk_id_index_name_idx_chunk_id, align 4
  %16 = load i32, i32* @BTEqualStrategyNumber, align 4
  %17 = load i32, i32* @F_INT4EQ, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @Int32GetDatum(i32 %21)
  %23 = call i32 @ScanKeyInit(i32* %14, i32 %15, i32 %16, i32 %17, i32 %22)
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %25 = load i32, i32* @Anum_chunk_index_chunk_id_index_name_idx_index_name, align 4
  %26 = load i32, i32* @BTEqualStrategyNumber, align 4
  %27 = load i32, i32* @F_NAMEEQ, align 4
  %28 = load i32, i32* @namein, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @CStringGetDatum(i8* %29)
  %31 = call i32 @DirectFunctionCall1(i32 %28, i32 %30)
  %32 = call i32 @ScanKeyInit(i32* %24, i32 %25, i32 %26, i32 %27, i32 %31)
  %33 = load i32, i32* @CHUNK_INDEX_CHUNK_ID_INDEX_NAME_IDX, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %35 = load i32, i32* @chunk_index_tuple_delete, align 4
  %36 = call i32 @chunk_index_scan_update(i32 %33, i32* %34, i32 2, i32 %35, i32* null, %struct.TYPE_7__* %9)
  ret i32 %36
}

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @chunk_index_scan_update(i32, i32*, i32, i32, i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

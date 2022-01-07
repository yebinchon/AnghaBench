; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_ts_chunk_index_delete_by_chunk_id.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_ts_chunk_index_delete_by_chunk_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@Anum_chunk_index_chunk_id_index_name_idx_chunk_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@CHUNK_INDEX_CHUNK_ID_INDEX_NAME_IDX = common dso_local global i32 0, align 4
@chunk_index_tuple_delete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_chunk_index_delete_by_chunk_id(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x i32], align 4
  %6 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %10 = load i32, i32* @Anum_chunk_index_chunk_id_index_name_idx_chunk_id, align 4
  %11 = load i32, i32* @BTEqualStrategyNumber, align 4
  %12 = load i32, i32* @F_INT4EQ, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @Int32GetDatum(i32 %13)
  %15 = call i32 @ScanKeyInit(i32* %9, i32 %10, i32 %11, i32 %12, i32 %14)
  %16 = load i32, i32* @CHUNK_INDEX_CHUNK_ID_INDEX_NAME_IDX, align 4
  %17 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %18 = load i32, i32* @chunk_index_tuple_delete, align 4
  %19 = call i32 @chunk_index_scan_update(i32 %16, i32* %17, i32 1, i32 %18, i32* null, %struct.TYPE_3__* %6)
  ret i32 %19
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @chunk_index_scan_update(i32, i32*, i32, i32, i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

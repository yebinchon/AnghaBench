; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunk_set_compressed_chunk.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunk_set_compressed_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@Anum_chunk_idx_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@INVALID_CHUNK_ID = common dso_local global i32 0, align 4
@CHUNK_ID_INDEX = common dso_local global i32 0, align 4
@chunk_set_compressed_id_in_tuple = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_chunk_set_compressed_chunk(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1 x i32], align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %10 = load i32, i32* @Anum_chunk_idx_id, align 4
  %11 = load i32, i32* @BTEqualStrategyNumber, align 4
  %12 = load i32, i32* @F_INT4EQ, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @Int32GetDatum(i32 %16)
  %18 = call i32 @ScanKeyInit(i32* %9, i32 %10, i32 %11, i32 %12, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @INVALID_CHUNK_ID, align 4
  store i32 %22, i32* %7, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, i32* @CHUNK_ID_INDEX, align 4
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %28 = load i32, i32* @chunk_set_compressed_id_in_tuple, align 4
  %29 = load i32, i32* @ForwardScanDirection, align 4
  %30 = load i32, i32* @RowExclusiveLock, align 4
  %31 = load i32, i32* @CurrentMemoryContext, align 4
  %32 = call i64 @chunk_scan_internal(i32 %26, i32* %27, i32 1, i32 %28, i32* %7, i32 0, i32 %29, i32 %30, i32 %31)
  %33 = icmp sgt i64 %32, 0
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i64 @chunk_scan_internal(i32, i32*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

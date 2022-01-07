; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_chunk_update_form.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_chunk_update_form.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@Anum_chunk_idx_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@CHUNK_ID_INDEX = common dso_local global i32 0, align 4
@chunk_tuple_update_schema_and_table = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @chunk_update_form to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_update_form(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca [1 x i32], align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  %5 = load i32, i32* @Anum_chunk_idx_id, align 4
  %6 = load i32, i32* @BTEqualStrategyNumber, align 4
  %7 = load i32, i32* @F_INT4EQ, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ScanKeyInit(i32* %4, i32 %5, i32 %6, i32 %7, i32 %10)
  %12 = load i32, i32* @CHUNK_ID_INDEX, align 4
  %13 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  %14 = load i32, i32* @chunk_tuple_update_schema_and_table, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = load i32, i32* @ForwardScanDirection, align 4
  %17 = load i32, i32* @AccessShareLock, align 4
  %18 = load i32, i32* @CurrentMemoryContext, align 4
  %19 = call i64 @chunk_scan_internal(i32 %12, i32* %13, i32 1, i32 %14, %struct.TYPE_4__* %15, i32 0, i32 %16, i32 %17, i32 %18)
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @chunk_scan_internal(i32, i32*, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

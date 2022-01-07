; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_init_scan_by_hypertable_id.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_init_scan_by_hypertable_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CHUNK = common dso_local global i32 0, align 4
@CHUNK_HYPERTABLE_ID_INDEX = common dso_local global i32 0, align 4
@Anum_chunk_hypertable_id_idx_hypertable_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @init_scan_by_hypertable_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_scan_by_hypertable_id(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @ts_catalog_get()
  %6 = load i32, i32* @CHUNK, align 4
  %7 = load i32, i32* @CHUNK_HYPERTABLE_ID_INDEX, align 4
  %8 = call i32 @catalog_get_index(i32 %5, i32 %6, i32 %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = load i32, i32* @Anum_chunk_hypertable_id_idx_hypertable_id, align 4
  %14 = load i32, i32* @BTEqualStrategyNumber, align 4
  %15 = load i32, i32* @F_INT4EQ, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @Int32GetDatum(i32 %16)
  %18 = call i32 @ts_scan_iterator_scan_key_init(%struct.TYPE_6__* %12, i32 %13, i32 %14, i32 %15, i32 %17)
  ret void
}

declare dso_local i32 @catalog_get_index(i32, i32, i32) #1

declare dso_local i32 @ts_catalog_get(...) #1

declare dso_local i32 @ts_scan_iterator_scan_key_init(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

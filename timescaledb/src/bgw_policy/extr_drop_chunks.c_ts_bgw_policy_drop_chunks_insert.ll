; ModuleID = '/home/carl/AnghaBench/timescaledb/src/bgw_policy/extr_drop_chunks.c_ts_bgw_policy_drop_chunks_insert.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/bgw_policy/extr_drop_chunks.c_ts_bgw_policy_drop_chunks_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BGW_POLICY_DROP_CHUNKS = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_bgw_policy_drop_chunks_insert(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call i32* (...) @ts_catalog_get()
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @BGW_POLICY_DROP_CHUNKS, align 4
  %8 = call i32 @catalog_get_table_id(i32* %6, i32 %7)
  %9 = load i32, i32* @RowExclusiveLock, align 4
  %10 = call i32 @heap_open(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @ts_bgw_policy_drop_chunks_insert_with_relation(i32 %11, i32* %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @RowExclusiveLock, align 4
  %16 = call i32 @heap_close(i32 %14, i32 %15)
  ret void
}

declare dso_local i32* @ts_catalog_get(...) #1

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @catalog_get_table_id(i32*, i32) #1

declare dso_local i32 @ts_bgw_policy_drop_chunks_insert_with_relation(i32, i32*) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_insert.c_cache_inval_htab_write.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_insert.c_cache_inval_htab_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@continuous_aggs_cache_inval_htab = common dso_local global i32 0, align 4
@CONTINUOUS_AGGS_INVALIDATION_THRESHOLD = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cache_inval_htab_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_inval_htab_write() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @continuous_aggs_cache_inval_htab, align 4
  %5 = call i64 @hash_get_num_entries(i32 %4)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %23

8:                                                ; preds = %0
  %9 = call i32* (...) @ts_catalog_get()
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @CONTINUOUS_AGGS_INVALIDATION_THRESHOLD, align 4
  %12 = call i32 @catalog_get_table_id(i32* %10, i32 %11)
  %13 = load i32, i32* @AccessShareLock, align 4
  %14 = call i32 @LockRelationOid(i32 %12, i32 %13)
  %15 = load i32, i32* @continuous_aggs_cache_inval_htab, align 4
  %16 = call i32 @hash_seq_init(i32* %1, i32 %15)
  br label %17

17:                                               ; preds = %20, %8
  %18 = call i32* @hash_seq_search(i32* %1)
  store i32* %18, i32** %2, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @cache_inval_entry_write(i32* %21)
  br label %17

23:                                               ; preds = %7, %17
  ret void
}

declare dso_local i64 @hash_get_num_entries(i32) #1

declare dso_local i32* @ts_catalog_get(...) #1

declare dso_local i32 @LockRelationOid(i32, i32) #1

declare dso_local i32 @catalog_get_table_id(i32*, i32) #1

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local i32* @hash_seq_search(i32*) #1

declare dso_local i32 @cache_inval_entry_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

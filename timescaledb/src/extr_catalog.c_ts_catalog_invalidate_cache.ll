; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_catalog.c_ts_catalog_invalidate_cache.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_catalog.c_ts_catalog_invalidate_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMD_UPDATE = common dso_local global i32 0, align 4
@CMD_DELETE = common dso_local global i32 0, align 4
@CACHE_TYPE_HYPERTABLE = common dso_local global i32 0, align 4
@CACHE_TYPE_BGW_JOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_catalog_invalidate_cache(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = call i32* (...) @ts_catalog_get()
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @catalog_get_table(i32* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %41 [
    i32 133, label %13
    i32 132, label %13
    i32 129, label %13
    i32 128, label %28
    i32 130, label %28
    i32 134, label %34
    i32 131, label %40
  ]

13:                                               ; preds = %2, %2, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CMD_UPDATE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @CMD_DELETE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17, %13
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @CACHE_TYPE_HYPERTABLE, align 4
  %24 = call i32 @ts_catalog_get_cache_proxy_id(i32* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @CacheInvalidateRelcacheByRelid(i32 %25)
  br label %27

27:                                               ; preds = %21, %17
  br label %42

28:                                               ; preds = %2, %2
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @CACHE_TYPE_HYPERTABLE, align 4
  %31 = call i32 @ts_catalog_get_cache_proxy_id(i32* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @CacheInvalidateRelcacheByRelid(i32 %32)
  br label %42

34:                                               ; preds = %2
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @CACHE_TYPE_BGW_JOB, align 4
  %37 = call i32 @ts_catalog_get_cache_proxy_id(i32* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @CacheInvalidateRelcacheByRelid(i32 %38)
  br label %42

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %2, %40
  br label %42

42:                                               ; preds = %41, %34, %28, %27
  ret void
}

declare dso_local i32* @ts_catalog_get(...) #1

declare dso_local i32 @catalog_get_table(i32*, i32) #1

declare dso_local i32 @ts_catalog_get_cache_proxy_id(i32*, i32) #1

declare dso_local i32 @CacheInvalidateRelcacheByRelid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

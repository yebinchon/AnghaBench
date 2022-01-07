; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_cache_invalidate.c_cache_invalidate_callback.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_cache_invalidate.c_cache_invalidate_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CACHE_TYPE_HYPERTABLE = common dso_local global i32 0, align 4
@CACHE_TYPE_BGW_JOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @cache_invalidate_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_invalidate_callback(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @ts_extension_invalidate(i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (...) @cache_invalidate_all()
  br label %32

11:                                               ; preds = %2
  %12 = call i32 (...) @ts_extension_is_loaded()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  br label %32

15:                                               ; preds = %11
  %16 = call i32* (...) @ts_catalog_get()
  store i32* %16, i32** %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @CACHE_TYPE_HYPERTABLE, align 4
  %20 = call i64 @ts_catalog_get_cache_proxy_id(i32* %18, i32 %19)
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 (...) @ts_hypertable_cache_invalidate_callback()
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i64, i64* %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @CACHE_TYPE_BGW_JOB, align 4
  %28 = call i64 @ts_catalog_get_cache_proxy_id(i32* %26, i32 %27)
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 (...) @ts_bgw_job_cache_invalidate_callback()
  br label %32

32:                                               ; preds = %9, %14, %30, %24
  ret void
}

declare dso_local i64 @ts_extension_invalidate(i64) #1

declare dso_local i32 @cache_invalidate_all(...) #1

declare dso_local i32 @ts_extension_is_loaded(...) #1

declare dso_local i32* @ts_catalog_get(...) #1

declare dso_local i64 @ts_catalog_get_cache_proxy_id(i32*, i32) #1

declare dso_local i32 @ts_hypertable_cache_invalidate_callback(...) #1

declare dso_local i32 @ts_bgw_job_cache_invalidate_callback(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

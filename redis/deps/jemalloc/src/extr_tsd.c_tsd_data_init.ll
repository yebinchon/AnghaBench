; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_tsd.c_tsd_data_init.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_tsd.c_tsd_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tsd_data_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsd_data_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @tsd_rtree_ctxp_get_unsafe(i32* %3)
  %5 = call i32 @rtree_ctx_data_init(i32 %4)
  %6 = load i64, i64* @config_debug, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %13

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = ptrtoint i32* %10 to i64
  %12 = trunc i64 %11 to i32
  br label %13

13:                                               ; preds = %9, %8
  %14 = phi i32 [ 0, %8 ], [ %12, %9 ]
  %15 = load i32*, i32** %2, align 8
  %16 = call i32* @tsd_offset_statep_get(i32* %15)
  store i32 %14, i32* %16, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @tsd_tcache_enabled_data_init(i32* %17)
  ret i32 %18
}

declare dso_local i32 @rtree_ctx_data_init(i32) #1

declare dso_local i32 @tsd_rtree_ctxp_get_unsafe(i32*) #1

declare dso_local i32* @tsd_offset_statep_get(i32*) #1

declare dso_local i32 @tsd_tcache_enabled_data_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

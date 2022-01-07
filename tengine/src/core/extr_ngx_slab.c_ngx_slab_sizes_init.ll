; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_slab.c_ngx_slab_sizes_init.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_slab.c_ngx_slab_sizes_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ngx_pagesize = common dso_local global i32 0, align 4
@ngx_slab_max_size = common dso_local global i32 0, align 4
@ngx_slab_exact_size = common dso_local global i32 0, align 4
@ngx_slab_exact_shift = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_slab_sizes_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ngx_pagesize, align 4
  %3 = sdiv i32 %2, 2
  store i32 %3, i32* @ngx_slab_max_size, align 4
  %4 = load i32, i32* @ngx_pagesize, align 4
  %5 = sext i32 %4 to i64
  %6 = udiv i64 %5, 64
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* @ngx_slab_exact_size, align 4
  %8 = load i32, i32* @ngx_slab_exact_size, align 4
  store i32 %8, i32* %1, align 4
  br label %9

9:                                                ; preds = %14, %0
  %10 = load i32, i32* %1, align 4
  %11 = ashr i32 %10, 1
  store i32 %11, i32* %1, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13
  %15 = load i32, i32* @ngx_slab_exact_shift, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @ngx_slab_exact_shift, align 4
  br label %9

17:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

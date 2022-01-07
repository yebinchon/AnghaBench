; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/wasm/extr_wrap.c_pageBounds.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/wasm/extr_wrap.c_pageBounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i32 0, align 4
@lastPage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, float)* @pageBounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pageBounds(i32* %0, i32 %1, float %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store float %2, float* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @loadPage(i32* %7, i32 %8)
  %10 = load i32, i32* @ctx, align 4
  %11 = load i32, i32* @lastPage, align 4
  %12 = call i32 @fz_bound_page(i32 %10, i32 %11)
  %13 = load float, float* %6, align 4
  %14 = fdiv float %13, 7.200000e+01
  %15 = load float, float* %6, align 4
  %16 = fdiv float %15, 7.200000e+01
  %17 = call i32 @fz_scale(float %14, float %16)
  %18 = call i32 @fz_transform_rect(i32 %12, i32 %17)
  %19 = call i32 @fz_round_rect(i32 %18)
  ret i32 %19
}

declare dso_local i32 @loadPage(i32*, i32) #1

declare dso_local i32 @fz_round_rect(i32) #1

declare dso_local i32 @fz_transform_rect(i32, i32) #1

declare dso_local i32 @fz_bound_page(i32, i32) #1

declare dso_local i32 @fz_scale(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

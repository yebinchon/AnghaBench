; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/smooth/extr_ftsmooth.c_ft_smooth_render.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/smooth/extr_ftsmooth.c_ft_smooth_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FT_RENDER_MODE_LIGHT = common dso_local global i64 0, align 8
@FT_RENDER_MODE_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i32*)* @ft_smooth_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ft_smooth_render(i32 %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @FT_RENDER_MODE_LIGHT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i64, i64* @FT_RENDER_MODE_NORMAL, align 8
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %12, %4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i64, i64* @FT_RENDER_MODE_NORMAL, align 8
  %20 = call i32 @ft_smooth_render_generic(i32 %15, i32 %16, i64 %17, i32* %18, i64 %19)
  ret i32 %20
}

declare dso_local i32 @ft_smooth_render_generic(i32, i32, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

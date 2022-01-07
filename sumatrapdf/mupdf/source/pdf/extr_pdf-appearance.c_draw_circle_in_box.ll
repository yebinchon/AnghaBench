; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_draw_circle_in_box.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_draw_circle_in_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float, float, float, float, float)* @draw_circle_in_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_circle_in_box(i32* %0, i32* %1, float %2, float %3, float %4, float %5, float %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  %19 = load float, float* %13, align 4
  %20 = load float, float* %11, align 4
  %21 = fsub float %19, %20
  %22 = fdiv float %21, 2.000000e+00
  %23 = load float, float* %10, align 4
  %24 = fsub float %22, %23
  store float %24, float* %15, align 4
  %25 = load float, float* %14, align 4
  %26 = load float, float* %12, align 4
  %27 = fsub float %25, %26
  %28 = fdiv float %27, 2.000000e+00
  %29 = load float, float* %10, align 4
  %30 = fsub float %28, %29
  store float %30, float* %16, align 4
  %31 = load float, float* %11, align 4
  %32 = load float, float* %10, align 4
  %33 = fadd float %31, %32
  %34 = load float, float* %15, align 4
  %35 = fadd float %33, %34
  store float %35, float* %17, align 4
  %36 = load float, float* %12, align 4
  %37 = load float, float* %10, align 4
  %38 = fadd float %36, %37
  %39 = load float, float* %16, align 4
  %40 = fadd float %38, %39
  store float %40, float* %18, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load float, float* %15, align 4
  %44 = load float, float* %16, align 4
  %45 = load float, float* %17, align 4
  %46 = load float, float* %18, align 4
  %47 = call i32 @draw_circle(i32* %41, i32* %42, float %43, float %44, float %45, float %46)
  ret void
}

declare dso_local i32 @draw_circle(i32*, i32*, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

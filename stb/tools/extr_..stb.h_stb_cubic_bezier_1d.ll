; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_cubic_bezier_1d.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_cubic_bezier_1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @stb_cubic_bezier_1d(float %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %12 = load float, float* %6, align 4
  %13 = fsub float 1.000000e+00, %12
  store float %13, float* %11, align 4
  %14 = load float, float* %11, align 4
  %15 = load float, float* %11, align 4
  %16 = fmul float %14, %15
  %17 = load float, float* %11, align 4
  %18 = fmul float %16, %17
  %19 = load float, float* %7, align 4
  %20 = fmul float %18, %19
  %21 = load float, float* %11, align 4
  %22 = fmul float 3.000000e+00, %21
  %23 = load float, float* %11, align 4
  %24 = fmul float %22, %23
  %25 = load float, float* %6, align 4
  %26 = fmul float %24, %25
  %27 = load float, float* %8, align 4
  %28 = fmul float %26, %27
  %29 = fadd float %20, %28
  %30 = load float, float* %11, align 4
  %31 = fmul float 3.000000e+00, %30
  %32 = load float, float* %6, align 4
  %33 = fmul float %31, %32
  %34 = load float, float* %6, align 4
  %35 = fmul float %33, %34
  %36 = load float, float* %9, align 4
  %37 = fmul float %35, %36
  %38 = fadd float %29, %37
  %39 = load float, float* %6, align 4
  %40 = load float, float* %6, align 4
  %41 = fmul float %39, %40
  %42 = load float, float* %6, align 4
  %43 = fmul float %41, %42
  %44 = load float, float* %10, align 4
  %45 = fmul float %43, %44
  %46 = fadd float %38, %45
  ret float %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

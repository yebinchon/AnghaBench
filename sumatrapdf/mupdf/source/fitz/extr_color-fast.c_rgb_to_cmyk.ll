; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_rgb_to_cmyk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_rgb_to_cmyk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float*, float*)* @rgb_to_cmyk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgb_to_cmyk(i32* %0, i32* %1, float* %2, float* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %13 = load float*, float** %7, align 8
  %14 = getelementptr inbounds float, float* %13, i64 0
  %15 = load float, float* %14, align 4
  %16 = fsub float 1.000000e+00, %15
  store float %16, float* %9, align 4
  %17 = load float*, float** %7, align 8
  %18 = getelementptr inbounds float, float* %17, i64 1
  %19 = load float, float* %18, align 4
  %20 = fsub float 1.000000e+00, %19
  store float %20, float* %10, align 4
  %21 = load float*, float** %7, align 8
  %22 = getelementptr inbounds float, float* %21, i64 2
  %23 = load float, float* %22, align 4
  %24 = fsub float 1.000000e+00, %23
  store float %24, float* %11, align 4
  %25 = load float, float* %9, align 4
  %26 = load float, float* %10, align 4
  %27 = load float, float* %11, align 4
  %28 = call float @fz_min(float %26, float %27)
  %29 = call float @fz_min(float %25, float %28)
  store float %29, float* %12, align 4
  %30 = load float, float* %9, align 4
  %31 = load float, float* %12, align 4
  %32 = fsub float %30, %31
  %33 = load float*, float** %8, align 8
  %34 = getelementptr inbounds float, float* %33, i64 0
  store float %32, float* %34, align 4
  %35 = load float, float* %10, align 4
  %36 = load float, float* %12, align 4
  %37 = fsub float %35, %36
  %38 = load float*, float** %8, align 8
  %39 = getelementptr inbounds float, float* %38, i64 1
  store float %37, float* %39, align 4
  %40 = load float, float* %11, align 4
  %41 = load float, float* %12, align 4
  %42 = fsub float %40, %41
  %43 = load float*, float** %8, align 8
  %44 = getelementptr inbounds float, float* %43, i64 2
  store float %42, float* %44, align 4
  %45 = load float, float* %12, align 4
  %46 = load float*, float** %8, align 8
  %47 = getelementptr inbounds float, float* %46, i64 3
  store float %45, float* %47, align 4
  ret void
}

declare dso_local float @fz_min(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

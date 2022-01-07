; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_cmyk_to_rgb.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_cmyk_to_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float*, float*)* @cmyk_to_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmyk_to_rgb(i32* %0, i32* %1, float* %2, float* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %9 = load float*, float** %7, align 8
  %10 = getelementptr inbounds float, float* %9, i64 0
  %11 = load float, float* %10, align 4
  %12 = load float*, float** %7, align 8
  %13 = getelementptr inbounds float, float* %12, i64 3
  %14 = load float, float* %13, align 4
  %15 = fadd float %11, %14
  %16 = call i32 @fz_min(i32 1, float %15)
  %17 = sub nsw i32 1, %16
  %18 = sitofp i32 %17 to float
  %19 = load float*, float** %8, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  store float %18, float* %20, align 4
  %21 = load float*, float** %7, align 8
  %22 = getelementptr inbounds float, float* %21, i64 1
  %23 = load float, float* %22, align 4
  %24 = load float*, float** %7, align 8
  %25 = getelementptr inbounds float, float* %24, i64 3
  %26 = load float, float* %25, align 4
  %27 = fadd float %23, %26
  %28 = call i32 @fz_min(i32 1, float %27)
  %29 = sub nsw i32 1, %28
  %30 = sitofp i32 %29 to float
  %31 = load float*, float** %8, align 8
  %32 = getelementptr inbounds float, float* %31, i64 1
  store float %30, float* %32, align 4
  %33 = load float*, float** %7, align 8
  %34 = getelementptr inbounds float, float* %33, i64 2
  %35 = load float, float* %34, align 4
  %36 = load float*, float** %7, align 8
  %37 = getelementptr inbounds float, float* %36, i64 3
  %38 = load float, float* %37, align 4
  %39 = fadd float %35, %38
  %40 = call i32 @fz_min(i32 1, float %39)
  %41 = sub nsw i32 1, %40
  %42 = sitofp i32 %41 to float
  %43 = load float*, float** %8, align 8
  %44 = getelementptr inbounds float, float* %43, i64 2
  store float %42, float* %44, align 4
  ret void
}

declare dso_local i32 @fz_min(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_is_dark_fill_color.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_is_dark_fill_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @pdf_is_dark_fill_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdf_is_dark_fill_color(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [4 x float], align 16
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 0
  %11 = call i32 @pdf_annot_color(i32* %8, i32* %9, i32* %7, float* %10)
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %13 [
    i32 1, label %14
    i32 3, label %17
    i32 4, label %29
  ]

13:                                               ; preds = %2
  store float 1.000000e+00, float* %6, align 4
  br label %48

14:                                               ; preds = %2
  %15 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 0
  %16 = load float, float* %15, align 16
  store float %16, float* %6, align 4
  br label %48

17:                                               ; preds = %2
  %18 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 0
  %19 = load float, float* %18, align 16
  %20 = fmul float %19, 0x3FD3333340000000
  %21 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 1
  %22 = load float, float* %21, align 4
  %23 = fmul float %22, 0x3FE2E147A0000000
  %24 = fadd float %20, %23
  %25 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 2
  %26 = load float, float* %25, align 8
  %27 = fmul float %26, 0x3FBC28F5C0000000
  %28 = fadd float %24, %27
  store float %28, float* %6, align 4
  br label %48

29:                                               ; preds = %2
  %30 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 0
  %31 = load float, float* %30, align 16
  %32 = fmul float %31, 0x3FD3333340000000
  %33 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 1
  %34 = load float, float* %33, align 4
  %35 = fmul float %34, 0x3FE2E147A0000000
  %36 = fadd float %32, %35
  %37 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 2
  %38 = load float, float* %37, align 8
  %39 = fmul float %38, 0x3FBC28F5C0000000
  %40 = fadd float %36, %39
  %41 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 3
  %42 = load float, float* %41, align 4
  %43 = fadd float %40, %42
  store float %43, float* %6, align 4
  %44 = load float, float* %6, align 4
  %45 = call i32 @fz_min(float %44, i32 1)
  %46 = sub nsw i32 1, %45
  %47 = sitofp i32 %46 to float
  store float %47, float* %6, align 4
  br label %48

48:                                               ; preds = %29, %17, %14, %13
  %49 = load float, float* %6, align 4
  %50 = fcmp olt float %49, 2.500000e-01
  %51 = zext i1 %50 to i32
  ret i32 %51
}

declare dso_local i32 @pdf_annot_color(i32*, i32*, i32*, float*) #1

declare dso_local i32 @fz_min(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

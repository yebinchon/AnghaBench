; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_color_rgb.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_color_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, float*)* @pdf_annot_color_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdf_annot_color_rgb(i32* %0, i32* %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store float* %2, float** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %13 = call i32 @pdf_annot_color_imp(i32* %10, i32* %11, i32* %9, float* %12)
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %22 = load float, float* %21, align 16
  %23 = load float*, float** %7, align 8
  %24 = getelementptr inbounds float, float* %23, i64 2
  store float %22, float* %24, align 4
  %25 = load float*, float** %7, align 8
  %26 = getelementptr inbounds float, float* %25, i64 1
  store float %22, float* %26, align 4
  %27 = load float*, float** %7, align 8
  %28 = getelementptr inbounds float, float* %27, i64 0
  store float %22, float* %28, align 4
  br label %81

29:                                               ; preds = %17
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %34 = load float, float* %33, align 16
  %35 = load float*, float** %7, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  store float %34, float* %36, align 4
  %37 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 1
  %38 = load float, float* %37, align 4
  %39 = load float*, float** %7, align 8
  %40 = getelementptr inbounds float, float* %39, i64 1
  store float %38, float* %40, align 4
  %41 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 2
  %42 = load float, float* %41, align 8
  %43 = load float*, float** %7, align 8
  %44 = getelementptr inbounds float, float* %43, i64 2
  store float %42, float* %44, align 4
  br label %80

45:                                               ; preds = %29
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %79

48:                                               ; preds = %45
  %49 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %50 = load float, float* %49, align 16
  %51 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 3
  %52 = load float, float* %51, align 4
  %53 = fadd float %50, %52
  %54 = call i32 @fz_min(i32 1, float %53)
  %55 = sub nsw i32 1, %54
  %56 = sitofp i32 %55 to float
  %57 = load float*, float** %7, align 8
  %58 = getelementptr inbounds float, float* %57, i64 0
  store float %56, float* %58, align 4
  %59 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 1
  %60 = load float, float* %59, align 4
  %61 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 3
  %62 = load float, float* %61, align 4
  %63 = fadd float %60, %62
  %64 = call i32 @fz_min(i32 1, float %63)
  %65 = sub nsw i32 1, %64
  %66 = sitofp i32 %65 to float
  %67 = load float*, float** %7, align 8
  %68 = getelementptr inbounds float, float* %67, i64 1
  store float %66, float* %68, align 4
  %69 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 2
  %70 = load float, float* %69, align 8
  %71 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 3
  %72 = load float, float* %71, align 4
  %73 = fadd float %70, %72
  %74 = call i32 @fz_min(i32 1, float %73)
  %75 = sub nsw i32 1, %74
  %76 = sitofp i32 %75 to float
  %77 = load float*, float** %7, align 8
  %78 = getelementptr inbounds float, float* %77, i64 2
  store float %76, float* %78, align 4
  br label %79

79:                                               ; preds = %48, %45
  br label %80

80:                                               ; preds = %79, %32
  br label %81

81:                                               ; preds = %80, %20
  br label %82

82:                                               ; preds = %81
  store i32 1, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %16
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @pdf_annot_color_imp(i32*, i32*, i32*, float*) #1

declare dso_local i32 @fz_min(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

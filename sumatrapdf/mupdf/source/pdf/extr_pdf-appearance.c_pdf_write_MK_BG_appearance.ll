; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_MK_BG_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_MK_BG_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%g g\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%g %g %g rg\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%g %g %g %g k\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @pdf_write_MK_BG_appearance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdf_write_MK_BG_appearance(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %13 = call i32 @pdf_annot_MK_BG(i32* %10, i32* %11, i32* %9, float* %12)
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %15 [
    i32 1, label %16
    i32 3, label %22
    i32 4, label %34
  ]

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %20 = load float, float* %19, align 16
  %21 = call i32 (i32*, i32*, i8*, float, ...) @fz_append_printf(i32* %17, i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), float %20)
  br label %49

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %26 = load float, float* %25, align 16
  %27 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 1
  %28 = load float, float* %27, align 4
  %29 = fpext float %28 to double
  %30 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 2
  %31 = load float, float* %30, align 8
  %32 = fpext float %31 to double
  %33 = call i32 (i32*, i32*, i8*, float, ...) @fz_append_printf(i32* %23, i32* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), float %26, double %29, double %32)
  br label %49

34:                                               ; preds = %3
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %38 = load float, float* %37, align 16
  %39 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 1
  %40 = load float, float* %39, align 4
  %41 = fpext float %40 to double
  %42 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 2
  %43 = load float, float* %42, align 8
  %44 = fpext float %43 to double
  %45 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 3
  %46 = load float, float* %45, align 4
  %47 = fpext float %46 to double
  %48 = call i32 (i32*, i32*, i8*, float, ...) @fz_append_printf(i32* %35, i32* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), float %38, double %41, double %44, double %47)
  br label %49

49:                                               ; preds = %34, %22, %16
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %15
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @pdf_annot_MK_BG(i32*, i32*, i32*, float*) #1

declare dso_local i32 @fz_append_printf(i32*, i32*, i8*, float, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

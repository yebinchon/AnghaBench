; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_print_default_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_print_default_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"/%s %g Tf %g %g %g rg\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/%s %g Tf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_print_default_appearance(i32* %0, i8* %1, i32 %2, i8* %3, float %4, float* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store float %4, float* %11, align 4
  store float* %5, float** %12, align 8
  %13 = load float*, float** %12, align 8
  %14 = getelementptr inbounds float, float* %13, i64 0
  %15 = load float, float* %14, align 4
  %16 = fcmp ogt float %15, 0.000000e+00
  br i1 %16, label %27, label %17

17:                                               ; preds = %6
  %18 = load float*, float** %12, align 8
  %19 = getelementptr inbounds float, float* %18, i64 1
  %20 = load float, float* %19, align 4
  %21 = fcmp ogt float %20, 0.000000e+00
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load float*, float** %12, align 8
  %24 = getelementptr inbounds float, float* %23, i64 2
  %25 = load float, float* %24, align 4
  %26 = fcmp ogt float %25, 0.000000e+00
  br i1 %26, label %27, label %45

27:                                               ; preds = %22, %17, %6
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load float, float* %11, align 4
  %32 = load float*, float** %12, align 8
  %33 = getelementptr inbounds float, float* %32, i64 0
  %34 = load float, float* %33, align 4
  %35 = fpext float %34 to double
  %36 = load float*, float** %12, align 8
  %37 = getelementptr inbounds float, float* %36, i64 1
  %38 = load float, float* %37, align 4
  %39 = fpext float %38 to double
  %40 = load float*, float** %12, align 8
  %41 = getelementptr inbounds float, float* %40, i64 2
  %42 = load float, float* %41, align 4
  %43 = fpext float %42 to double
  %44 = call i32 (i8*, i32, i8*, i8*, float, ...) @fz_snprintf(i8* %28, i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %30, float %31, double %35, double %39, double %43)
  br label %51

45:                                               ; preds = %22
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i8*, i8** %10, align 8
  %49 = load float, float* %11, align 4
  %50 = call i32 (i8*, i32, i8*, i8*, float, ...) @fz_snprintf(i8* %46, i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %48, float %49)
  br label %51

51:                                               ; preds = %45, %27
  ret void
}

declare dso_local i32 @fz_snprintf(i8*, i32, i8*, i8*, float, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

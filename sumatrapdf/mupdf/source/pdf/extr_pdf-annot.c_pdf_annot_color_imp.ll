; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_color_imp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_color_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, float*)* @pdf_annot_color_imp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_annot_color_imp(i32* %0, i32* %1, i32* %2, float* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store float* %3, float** %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @pdf_array_len(i32* %9, i32* %10)
  switch i32 %11, label %59 [
    i32 0, label %12
    i32 1, label %18
    i32 2, label %18
    i32 3, label %33
    i32 4, label %58
  ]

12:                                               ; preds = %4
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32*, i32** %7, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %15, %12
  br label %89

18:                                               ; preds = %4, %4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32*, i32** %7, align 8
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = load float*, float** %8, align 8
  %25 = icmp ne float* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call float @pdf_array_get_real(i32* %27, i32* %28, i32 0)
  %30 = load float*, float** %8, align 8
  %31 = getelementptr inbounds float, float* %30, i64 0
  store float %29, float* %31, align 4
  br label %32

32:                                               ; preds = %26, %23
  br label %89

33:                                               ; preds = %4
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32*, i32** %7, align 8
  store i32 3, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = load float*, float** %8, align 8
  %40 = icmp ne float* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call float @pdf_array_get_real(i32* %42, i32* %43, i32 0)
  %45 = load float*, float** %8, align 8
  %46 = getelementptr inbounds float, float* %45, i64 0
  store float %44, float* %46, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call float @pdf_array_get_real(i32* %47, i32* %48, i32 1)
  %50 = load float*, float** %8, align 8
  %51 = getelementptr inbounds float, float* %50, i64 1
  store float %49, float* %51, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call float @pdf_array_get_real(i32* %52, i32* %53, i32 2)
  %55 = load float*, float** %8, align 8
  %56 = getelementptr inbounds float, float* %55, i64 2
  store float %54, float* %56, align 4
  br label %57

57:                                               ; preds = %41, %38
  br label %89

58:                                               ; preds = %4
  br label %59

59:                                               ; preds = %4, %58
  %60 = load i32*, i32** %7, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32*, i32** %7, align 8
  store i32 4, i32* %63, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = load float*, float** %8, align 8
  %66 = icmp ne float* %65, null
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call float @pdf_array_get_real(i32* %68, i32* %69, i32 0)
  %71 = load float*, float** %8, align 8
  %72 = getelementptr inbounds float, float* %71, i64 0
  store float %70, float* %72, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call float @pdf_array_get_real(i32* %73, i32* %74, i32 1)
  %76 = load float*, float** %8, align 8
  %77 = getelementptr inbounds float, float* %76, i64 1
  store float %75, float* %77, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = call float @pdf_array_get_real(i32* %78, i32* %79, i32 2)
  %81 = load float*, float** %8, align 8
  %82 = getelementptr inbounds float, float* %81, i64 2
  store float %80, float* %82, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call float @pdf_array_get_real(i32* %83, i32* %84, i32 3)
  %86 = load float*, float** %8, align 8
  %87 = getelementptr inbounds float, float* %86, i64 3
  store float %85, float* %87, align 4
  br label %88

88:                                               ; preds = %67, %64
  br label %89

89:                                               ; preds = %88, %57, %32, %17
  ret void
}

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local float @pdf_array_get_real(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

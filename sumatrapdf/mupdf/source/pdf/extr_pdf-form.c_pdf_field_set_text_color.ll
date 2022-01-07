; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_field_set_text_color.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_field_set_text_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_field_set_text_color(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca float, align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca float, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @DA, align 4
  %17 = call i32 @PDF_NAME(i32 %16)
  %18 = call i32 @pdf_dict_get_inheritable(i32* %14, i32* %15, i32 %17)
  %19 = call i8* @pdf_to_str_buf(i32* %13, i32 %18)
  store i8* %19, i8** %12, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 0
  %23 = call i32 @pdf_parse_default_appearance(i32* %20, i8* %21, i8** %8, float* %9, float* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @pdf_array_len(i32* %24, i32* %25)
  switch i32 %26, label %27 [
    i32 1, label %31
    i32 3, label %38
    i32 4, label %51
  ]

27:                                               ; preds = %3
  %28 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 2
  store float 0.000000e+00, float* %28, align 4
  %29 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 1
  store float 0.000000e+00, float* %29, align 4
  %30 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 0
  store float 0.000000e+00, float* %30, align 4
  br label %85

31:                                               ; preds = %3
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call float @pdf_array_get_real(i32* %32, i32* %33, i32 0)
  %35 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 2
  store float %34, float* %35, align 4
  %36 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 1
  store float %34, float* %36, align 4
  %37 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 0
  store float %34, float* %37, align 4
  br label %85

38:                                               ; preds = %3
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call float @pdf_array_get_real(i32* %39, i32* %40, i32 0)
  %42 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 0
  store float %41, float* %42, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call float @pdf_array_get_real(i32* %43, i32* %44, i32 1)
  %46 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 1
  store float %45, float* %46, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call float @pdf_array_get_real(i32* %47, i32* %48, i32 2)
  %50 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 2
  store float %49, float* %50, align 4
  br label %85

51:                                               ; preds = %3
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call float @pdf_array_get_real(i32* %52, i32* %53, i32 3)
  store float %54, float* %11, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call float @pdf_array_get_real(i32* %55, i32* %56, i32 0)
  %58 = load float, float* %11, align 4
  %59 = fadd float %57, %58
  %60 = fptosi float %59 to i32
  %61 = call i32 @fz_min(i32 1, i32 %60)
  %62 = sub nsw i32 1, %61
  %63 = sitofp i32 %62 to float
  %64 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 0
  store float %63, float* %64, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call float @pdf_array_get_real(i32* %65, i32* %66, i32 1)
  %68 = load float, float* %11, align 4
  %69 = fadd float %67, %68
  %70 = fptosi float %69 to i32
  %71 = call i32 @fz_min(i32 1, i32 %70)
  %72 = sub nsw i32 1, %71
  %73 = sitofp i32 %72 to float
  %74 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 1
  store float %73, float* %74, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call float @pdf_array_get_real(i32* %75, i32* %76, i32 2)
  %78 = load float, float* %11, align 4
  %79 = fadd float %77, %78
  %80 = fptosi float %79 to i32
  %81 = call i32 @fz_min(i32 1, i32 %80)
  %82 = sub nsw i32 1, %81
  %83 = sitofp i32 %82 to float
  %84 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 2
  store float %83, float* %84, align 4
  br label %85

85:                                               ; preds = %51, %38, %31, %27
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %88 = load i8*, i8** %8, align 8
  %89 = load float, float* %9, align 4
  %90 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 0
  %91 = call i32 @pdf_print_default_appearance(i32* %86, i8* %87, i32 100, i8* %88, float %89, float* %90)
  %92 = load i32*, i32** %4, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* @DA, align 4
  %95 = call i32 @PDF_NAME(i32 %94)
  %96 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %97 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %98 = call i32 @strlen(i8* %97)
  %99 = call i32 @pdf_dict_put_string(i32* %92, i32* %93, i32 %95, i8* %96, i32 %98)
  %100 = load i32*, i32** %4, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @pdf_field_mark_dirty(i32* %100, i32* %101)
  ret void
}

declare dso_local i8* @pdf_to_str_buf(i32*, i32) #1

declare dso_local i32 @pdf_dict_get_inheritable(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_parse_default_appearance(i32*, i8*, i8**, float*, float*) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local float @pdf_array_get_real(i32*, i32*, i32) #1

declare dso_local i32 @fz_min(i32, i32) #1

declare dso_local i32 @pdf_print_default_appearance(i32*, i8*, i32, i8*, float, float*) #1

declare dso_local i32 @pdf_dict_put_string(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pdf_field_mark_dirty(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

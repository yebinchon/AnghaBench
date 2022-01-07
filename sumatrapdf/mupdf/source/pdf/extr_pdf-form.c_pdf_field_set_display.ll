; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_field_set_display.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_field_set_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Kids = common dso_local global i32 0, align 4
@PDF_ANNOT_IS_HIDDEN = common dso_local global i32 0, align 4
@PDF_ANNOT_IS_PRINT = common dso_local global i32 0, align 4
@PDF_ANNOT_IS_NO_VIEW = common dso_local global i32 0, align 4
@F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_field_set_display(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @Kids, align 4
  %16 = call i32 @PDF_NAME(i32 %15)
  %17 = call i32* @pdf_dict_get(i32* %13, i32* %14, i32 %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %60, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @PDF_ANNOT_IS_HIDDEN, align 4
  %22 = load i32, i32* @PDF_ANNOT_IS_PRINT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PDF_ANNOT_IS_NO_VIEW, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @F, align 4
  %29 = call i32 @PDF_NAME(i32 %28)
  %30 = call i32 @pdf_dict_get_int(i32* %26, i32* %27, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %50 [
    i32 128, label %35
    i32 131, label %39
    i32 129, label %43
    i32 130, label %49
  ]

35:                                               ; preds = %20
  %36 = load i32, i32* @PDF_ANNOT_IS_PRINT, align 4
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %50

39:                                               ; preds = %20
  %40 = load i32, i32* @PDF_ANNOT_IS_HIDDEN, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %50

43:                                               ; preds = %20
  %44 = load i32, i32* @PDF_ANNOT_IS_PRINT, align 4
  %45 = load i32, i32* @PDF_ANNOT_IS_NO_VIEW, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %50

49:                                               ; preds = %20
  br label %50

50:                                               ; preds = %20, %49, %43, %39, %35
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32* @pdf_new_int(i32* %51, i32 %52)
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @F, align 4
  %57 = call i32 @PDF_NAME(i32 %56)
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @pdf_dict_put_drop(i32* %54, i32* %55, i32 %57, i32* %58)
  br label %79

60:                                               ; preds = %3
  %61 = load i32*, i32** %4, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @pdf_array_len(i32* %61, i32* %62)
  store i32 %63, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %75, %60
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i32*, i32** %4, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32* @pdf_array_get(i32* %70, i32* %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  call void @pdf_field_set_display(i32* %69, i32* %73, i32 %74)
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %64

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78, %50
  ret void
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_dict_get_int(i32*, i32*, i32) #1

declare dso_local i32* @pdf_new_int(i32*, i32) #1

declare dso_local i32 @pdf_dict_put_drop(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

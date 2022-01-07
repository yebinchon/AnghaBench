; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_field_display.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_field_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Display_Visible = common dso_local global i32 0, align 4
@Kids = common dso_local global i32 0, align 4
@F = common dso_local global i32 0, align 4
@PDF_ANNOT_IS_HIDDEN = common dso_local global i32 0, align 4
@Display_Hidden = common dso_local global i32 0, align 4
@PDF_ANNOT_IS_PRINT = common dso_local global i32 0, align 4
@PDF_ANNOT_IS_NO_VIEW = common dso_local global i32 0, align 4
@Display_NoView = common dso_local global i32 0, align 4
@Display_NoPrint = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdf_field_display(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @Display_Visible, align 4
  store i32 %8, i32* %7, align 4
  br label %9

9:                                                ; preds = %16, %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @Kids, align 4
  %13 = call i32 @PDF_NAME(i32 %12)
  %14 = call i32* @pdf_dict_get(i32* %10, i32* %11, i32 %13)
  store i32* %14, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @pdf_array_get(i32* %17, i32* %18, i32 0)
  store i32* %19, i32** %4, align 8
  br label %9

20:                                               ; preds = %9
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @F, align 4
  %24 = call i32 @PDF_NAME(i32 %23)
  %25 = call i32 @pdf_dict_get_int(i32* %21, i32* %22, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PDF_ANNOT_IS_HIDDEN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @Display_Hidden, align 4
  store i32 %31, i32* %7, align 4
  br label %56

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PDF_ANNOT_IS_PRINT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @PDF_ANNOT_IS_NO_VIEW, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @Display_NoView, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %37
  br label %55

45:                                               ; preds = %32
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PDF_ANNOT_IS_NO_VIEW, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @Display_Hidden, align 4
  store i32 %51, i32* %7, align 4
  br label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @Display_NoPrint, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %52, %50
  br label %55

55:                                               ; preds = %54, %44
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_get_int(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

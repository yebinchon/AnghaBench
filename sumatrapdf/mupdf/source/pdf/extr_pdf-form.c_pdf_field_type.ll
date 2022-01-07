; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_field_type.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_field_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FT = common dso_local global i32 0, align 4
@Btn = common dso_local global i32 0, align 4
@PDF_BTN_FIELD_IS_PUSHBUTTON = common dso_local global i32 0, align 4
@PDF_WIDGET_TYPE_BUTTON = common dso_local global i32 0, align 4
@PDF_BTN_FIELD_IS_RADIO = common dso_local global i32 0, align 4
@PDF_WIDGET_TYPE_RADIOBUTTON = common dso_local global i32 0, align 4
@PDF_WIDGET_TYPE_CHECKBOX = common dso_local global i32 0, align 4
@Tx = common dso_local global i32 0, align 4
@PDF_WIDGET_TYPE_TEXT = common dso_local global i32 0, align 4
@Ch = common dso_local global i32 0, align 4
@PDF_CH_FIELD_IS_COMBO = common dso_local global i32 0, align 4
@PDF_WIDGET_TYPE_COMBOBOX = common dso_local global i32 0, align 4
@PDF_WIDGET_TYPE_LISTBOX = common dso_local global i32 0, align 4
@Sig = common dso_local global i32 0, align 4
@PDF_WIDGET_TYPE_SIGNATURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdf_field_type(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @FT, align 4
  %11 = call i32 @PDF_NAME(i32 %10)
  %12 = call i32* @pdf_dict_get_inheritable(i32* %8, i32* %9, i32 %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @pdf_field_flags(i32* %13, i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @Btn, align 4
  %19 = call i32 @PDF_NAME(i32 %18)
  %20 = call i64 @pdf_name_eq(i32* %16, i32* %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PDF_BTN_FIELD_IS_PUSHBUTTON, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @PDF_WIDGET_TYPE_BUTTON, align 4
  store i32 %28, i32* %3, align 4
  br label %74

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @PDF_BTN_FIELD_IS_RADIO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @PDF_WIDGET_TYPE_RADIOBUTTON, align 4
  store i32 %35, i32* %3, align 4
  br label %74

36:                                               ; preds = %29
  %37 = load i32, i32* @PDF_WIDGET_TYPE_CHECKBOX, align 4
  store i32 %37, i32* %3, align 4
  br label %74

38:                                               ; preds = %2
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @Tx, align 4
  %42 = call i32 @PDF_NAME(i32 %41)
  %43 = call i64 @pdf_name_eq(i32* %39, i32* %40, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @PDF_WIDGET_TYPE_TEXT, align 4
  store i32 %46, i32* %3, align 4
  br label %74

47:                                               ; preds = %38
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @Ch, align 4
  %51 = call i32 @PDF_NAME(i32 %50)
  %52 = call i64 @pdf_name_eq(i32* %48, i32* %49, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @PDF_CH_FIELD_IS_COMBO, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @PDF_WIDGET_TYPE_COMBOBOX, align 4
  store i32 %60, i32* %3, align 4
  br label %74

61:                                               ; preds = %54
  %62 = load i32, i32* @PDF_WIDGET_TYPE_LISTBOX, align 4
  store i32 %62, i32* %3, align 4
  br label %74

63:                                               ; preds = %47
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* @Sig, align 4
  %67 = call i32 @PDF_NAME(i32 %66)
  %68 = call i64 @pdf_name_eq(i32* %64, i32* %65, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @PDF_WIDGET_TYPE_SIGNATURE, align 4
  store i32 %71, i32* %3, align 4
  br label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @PDF_WIDGET_TYPE_BUTTON, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %70, %61, %59, %45, %36, %34, %27
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32* @pdf_dict_get_inheritable(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_field_flags(i32*, i32*) #1

declare dso_local i64 @pdf_name_eq(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_line_ending_from_name.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_line_ending_from_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@None = common dso_local global i32 0, align 4
@PDF_ANNOT_LE_NONE = common dso_local global i32 0, align 4
@Square = common dso_local global i32 0, align 4
@PDF_ANNOT_LE_SQUARE = common dso_local global i32 0, align 4
@Circle = common dso_local global i32 0, align 4
@PDF_ANNOT_LE_CIRCLE = common dso_local global i32 0, align 4
@Diamond = common dso_local global i32 0, align 4
@PDF_ANNOT_LE_DIAMOND = common dso_local global i32 0, align 4
@OpenArrow = common dso_local global i32 0, align 4
@PDF_ANNOT_LE_OPEN_ARROW = common dso_local global i32 0, align 4
@ClosedArrow = common dso_local global i32 0, align 4
@PDF_ANNOT_LE_CLOSED_ARROW = common dso_local global i32 0, align 4
@Butt = common dso_local global i32 0, align 4
@PDF_ANNOT_LE_BUTT = common dso_local global i32 0, align 4
@ROpenArrow = common dso_local global i32 0, align 4
@PDF_ANNOT_LE_R_OPEN_ARROW = common dso_local global i32 0, align 4
@RClosedArrow = common dso_local global i32 0, align 4
@PDF_ANNOT_LE_R_CLOSED_ARROW = common dso_local global i32 0, align 4
@Slash = common dso_local global i32 0, align 4
@PDF_ANNOT_LE_SLASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdf_line_ending_from_name(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* @None, align 4
  %9 = call i32 @PDF_NAME(i32 %8)
  %10 = call i64 @pdf_name_eq(i32* %6, i32* %7, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @PDF_ANNOT_LE_NONE, align 4
  store i32 %13, i32* %3, align 4
  br label %97

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @Square, align 4
  %18 = call i32 @PDF_NAME(i32 %17)
  %19 = call i64 @pdf_name_eq(i32* %15, i32* %16, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @PDF_ANNOT_LE_SQUARE, align 4
  store i32 %22, i32* %3, align 4
  br label %97

23:                                               ; preds = %14
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @Circle, align 4
  %27 = call i32 @PDF_NAME(i32 %26)
  %28 = call i64 @pdf_name_eq(i32* %24, i32* %25, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @PDF_ANNOT_LE_CIRCLE, align 4
  store i32 %31, i32* %3, align 4
  br label %97

32:                                               ; preds = %23
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @Diamond, align 4
  %36 = call i32 @PDF_NAME(i32 %35)
  %37 = call i64 @pdf_name_eq(i32* %33, i32* %34, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @PDF_ANNOT_LE_DIAMOND, align 4
  store i32 %40, i32* %3, align 4
  br label %97

41:                                               ; preds = %32
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @OpenArrow, align 4
  %45 = call i32 @PDF_NAME(i32 %44)
  %46 = call i64 @pdf_name_eq(i32* %42, i32* %43, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @PDF_ANNOT_LE_OPEN_ARROW, align 4
  store i32 %49, i32* %3, align 4
  br label %97

50:                                               ; preds = %41
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @ClosedArrow, align 4
  %54 = call i32 @PDF_NAME(i32 %53)
  %55 = call i64 @pdf_name_eq(i32* %51, i32* %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @PDF_ANNOT_LE_CLOSED_ARROW, align 4
  store i32 %58, i32* %3, align 4
  br label %97

59:                                               ; preds = %50
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @Butt, align 4
  %63 = call i32 @PDF_NAME(i32 %62)
  %64 = call i64 @pdf_name_eq(i32* %60, i32* %61, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @PDF_ANNOT_LE_BUTT, align 4
  store i32 %67, i32* %3, align 4
  br label %97

68:                                               ; preds = %59
  %69 = load i32*, i32** %4, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* @ROpenArrow, align 4
  %72 = call i32 @PDF_NAME(i32 %71)
  %73 = call i64 @pdf_name_eq(i32* %69, i32* %70, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @PDF_ANNOT_LE_R_OPEN_ARROW, align 4
  store i32 %76, i32* %3, align 4
  br label %97

77:                                               ; preds = %68
  %78 = load i32*, i32** %4, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* @RClosedArrow, align 4
  %81 = call i32 @PDF_NAME(i32 %80)
  %82 = call i64 @pdf_name_eq(i32* %78, i32* %79, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* @PDF_ANNOT_LE_R_CLOSED_ARROW, align 4
  store i32 %85, i32* %3, align 4
  br label %97

86:                                               ; preds = %77
  %87 = load i32*, i32** %4, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* @Slash, align 4
  %90 = call i32 @PDF_NAME(i32 %89)
  %91 = call i64 @pdf_name_eq(i32* %87, i32* %88, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @PDF_ANNOT_LE_SLASH, align 4
  store i32 %94, i32* %3, align 4
  br label %97

95:                                               ; preds = %86
  %96 = load i32, i32* @PDF_ANNOT_LE_NONE, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %93, %84, %75, %66, %57, %48, %39, %30, %21, %12
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @pdf_name_eq(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

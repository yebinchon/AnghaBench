; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-font.c_pdf_load_type0_font.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-font.c_pdf_load_type0_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DescendantFonts = common dso_local global i32 0, align 4
@FZ_ERROR_SYNTAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cid font is missing descendant fonts\00", align 1
@Subtype = common dso_local global i32 0, align 4
@Encoding = common dso_local global i32 0, align 4
@ToUnicode = common dso_local global i32 0, align 4
@CIDFontType0 = common dso_local global i32 0, align 4
@CIDFontType2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown cid font type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @pdf_load_type0_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pdf_load_type0_font(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* @DescendantFonts, align 4
  %16 = call i32 @PDF_NAME(i32 %15)
  %17 = call i32* @pdf_dict_get(i32* %13, i32* %14, i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %23 = call i32 @fz_throw(i32* %21, i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %20, %3
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32* @pdf_array_get(i32* %25, i32* %26, i32 0)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* @Subtype, align 4
  %31 = call i32 @PDF_NAME(i32 %30)
  %32 = call i32* @pdf_dict_get(i32* %28, i32* %29, i32 %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @Encoding, align 4
  %36 = call i32 @PDF_NAME(i32 %35)
  %37 = call i32* @pdf_dict_get(i32* %33, i32* %34, i32 %36)
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @ToUnicode, align 4
  %41 = call i32 @PDF_NAME(i32 %40)
  %42 = call i32* @pdf_dict_get(i32* %38, i32* %39, i32 %41)
  store i32* %42, i32** %12, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i64 @pdf_is_name(i32* %43, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %24
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* @CIDFontType0, align 4
  %51 = call i32 @PDF_NAME(i32 %50)
  %52 = call i64 @pdf_name_eq(i32* %48, i32* %49, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = call i32* @load_cid_font(i32* %55, i32* %56, i32* %57, i32* %58, i32* %59)
  store i32* %60, i32** %4, align 8
  br label %84

61:                                               ; preds = %47, %24
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call i64 @pdf_is_name(i32* %62, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* @CIDFontType2, align 4
  %70 = call i32 @PDF_NAME(i32 %69)
  %71 = call i64 @pdf_name_eq(i32* %67, i32* %68, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = call i32* @load_cid_font(i32* %74, i32* %75, i32* %76, i32* %77, i32* %78)
  store i32* %79, i32** %4, align 8
  br label %84

80:                                               ; preds = %66, %61
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %83 = call i32 @fz_throw(i32* %81, i32 %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %80, %73, %54
  %85 = load i32*, i32** %4, align 8
  ret i32* %85
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i64 @pdf_is_name(i32*, i32*) #1

declare dso_local i64 @pdf_name_eq(i32*, i32*, i32) #1

declare dso_local i32* @load_cid_font(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

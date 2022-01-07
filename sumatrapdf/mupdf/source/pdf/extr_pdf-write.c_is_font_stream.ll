; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_is_font_stream.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_is_font_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Type = common dso_local global i32 0, align 4
@Font = common dso_local global i32 0, align 4
@FontDescriptor = common dso_local global i32 0, align 4
@Length1 = common dso_local global i32 0, align 4
@Length2 = common dso_local global i32 0, align 4
@Length3 = common dso_local global i32 0, align 4
@Subtype = common dso_local global i32 0, align 4
@Type1C = common dso_local global i32 0, align 4
@CIDFontType0C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @is_font_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_font_stream(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* @Type, align 4
  %10 = call i32 @PDF_NAME(i32 %9)
  %11 = call i32* @pdf_dict_get(i32* %7, i32* %8, i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @Font, align 4
  %15 = call i32 @PDF_NAME(i32 %14)
  %16 = call i32 @pdf_name_eq(i32* %12, i32* %13, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %83

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @Type, align 4
  %23 = call i32 @PDF_NAME(i32 %22)
  %24 = call i32* @pdf_dict_get(i32* %20, i32* %21, i32 %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @FontDescriptor, align 4
  %28 = call i32 @PDF_NAME(i32 %27)
  %29 = call i32 @pdf_name_eq(i32* %25, i32* %26, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %83

32:                                               ; preds = %19
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @Length1, align 4
  %36 = call i32 @PDF_NAME(i32 %35)
  %37 = call i32* @pdf_dict_get(i32* %33, i32* %34, i32 %36)
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %83

40:                                               ; preds = %32
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @Length2, align 4
  %44 = call i32 @PDF_NAME(i32 %43)
  %45 = call i32* @pdf_dict_get(i32* %41, i32* %42, i32 %44)
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %83

48:                                               ; preds = %40
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @Length3, align 4
  %52 = call i32 @PDF_NAME(i32 %51)
  %53 = call i32* @pdf_dict_get(i32* %49, i32* %50, i32 %52)
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %83

56:                                               ; preds = %48
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @Subtype, align 4
  %60 = call i32 @PDF_NAME(i32 %59)
  %61 = call i32* @pdf_dict_get(i32* %57, i32* %58, i32 %60)
  store i32* %61, i32** %6, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @Type1C, align 4
  %65 = call i32 @PDF_NAME(i32 %64)
  %66 = call i32 @pdf_name_eq(i32* %62, i32* %63, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %83

69:                                               ; preds = %56
  %70 = load i32*, i32** %4, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* @Subtype, align 4
  %73 = call i32 @PDF_NAME(i32 %72)
  %74 = call i32* @pdf_dict_get(i32* %70, i32* %71, i32 %73)
  store i32* %74, i32** %6, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @CIDFontType0C, align 4
  %78 = call i32 @PDF_NAME(i32 %77)
  %79 = call i32 @pdf_name_eq(i32* %75, i32* %76, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %83

82:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %81, %68, %55, %47, %39, %31, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_name_eq(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

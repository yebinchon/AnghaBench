; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-font-add.c_pdf_add_simple_font_widths.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-font-add.c_pdf_add_simple_font_widths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Widths = common dso_local global i32 0, align 4
@FirstChar = common dso_local global i32 0, align 4
@LastChar = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i8**)* @pdf_add_simple_font_widths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_add_simple_font_widths(i32* %0, i32* %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca [256 x i32], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8** %4, i8*** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %59, %5
  %18 = load i32, i32* %13, align 4
  %19 = icmp slt i32 %18, 256
  br i1 %19, label %20, label %62

20:                                               ; preds = %17
  store i32 0, i32* %16, align 4
  %21 = load i8**, i8*** %10, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i8**, i8*** %10, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @fz_encode_character_by_glyph_name(i32* %28, i32* %29, i8* %34)
  store i32 %35, i32* %16, align 4
  br label %36

36:                                               ; preds = %27, %20
  %37 = load i32, i32* %16, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %15, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @fz_advance_glyph(i32* %46, i32* %47, i32 %48, i32 0)
  %50 = mul nsw i32 %49, 1000
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 %52
  store i32 %50, i32* %53, align 4
  br label %58

54:                                               ; preds = %36
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 %56
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %44
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %17

62:                                               ; preds = %17
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %14, align 4
  %67 = sub nsw i32 %65, %66
  %68 = add nsw i32 %67, 1
  %69 = call i32* @pdf_new_array(i32* %63, i32* %64, i32 %68)
  store i32* %69, i32** %12, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* @Widths, align 4
  %73 = call i32 @PDF_NAME(i32 %72)
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @pdf_dict_put_drop(i32* %70, i32* %71, i32 %73, i32* %74)
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %89, %62
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load i32*, i32** %6, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pdf_array_push_int(i32* %82, i32* %83, i32 %87)
  br label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %77

92:                                               ; preds = %77
  %93 = load i32*, i32** %6, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* @FirstChar, align 4
  %96 = call i32 @PDF_NAME(i32 %95)
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @pdf_dict_put_int(i32* %93, i32* %94, i32 %96, i32 %97)
  %99 = load i32*, i32** %6, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* @LastChar, align 4
  %102 = call i32 @PDF_NAME(i32 %101)
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @pdf_dict_put_int(i32* %99, i32* %100, i32 %102, i32 %103)
  ret void
}

declare dso_local i32 @fz_encode_character_by_glyph_name(i32*, i32*, i8*) #1

declare dso_local i32 @fz_advance_glyph(i32*, i32*, i32, i32) #1

declare dso_local i32* @pdf_new_array(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_put_drop(i32*, i32*, i32, i32*) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_array_push_int(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_put_int(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

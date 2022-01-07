; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfcreate.c_add_font_res.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfcreate.c_add_font_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i32 0, align 4
@Font = common dso_local global i32 0, align 4
@doc = common dso_local global i32 0, align 4
@PDF_SIMPLE_ENCODING_LATIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Latin\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Latn\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Greek\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Grek\00", align 1
@PDF_SIMPLE_ENCODING_GREEK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"Cyrillic\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Cyrl\00", align 1
@PDF_SIMPLE_ENCODING_CYRILLIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i8*)* @add_font_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_font_res(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i32, i32* @ctx, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i8* @fz_lookup_base14_font(i32 %15, i8* %16, i32* %10)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i32, i32* @ctx, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32* @fz_new_font_from_memory(i32 %21, i8* %22, i8* %23, i32 %24, i32 0, i32 0)
  store i32* %25, i32** %12, align 8
  br label %30

26:                                               ; preds = %4
  %27 = load i32, i32* @ctx, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32* @fz_new_font_from_file(i32 %27, i32* null, i8* %28, i32 0, i32 0)
  store i32* %29, i32** %12, align 8
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i32, i32* @ctx, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @Font, align 4
  %34 = call i32 @PDF_NAME(i32 %33)
  %35 = call i32* @pdf_dict_get(i32 %31, i32* %32, i32 %34)
  store i32* %35, i32** %13, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @ctx, align 4
  %40 = load i32, i32* @doc, align 4
  %41 = call i32* @pdf_new_dict(i32 %39, i32 %40, i32 10)
  store i32* %41, i32** %13, align 8
  %42 = load i32, i32* @ctx, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @Font, align 4
  %45 = call i32 @PDF_NAME(i32 %44)
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @pdf_dict_put_drop(i32 %42, i32* %43, i32 %45, i32* %46)
  br label %48

48:                                               ; preds = %38, %30
  %49 = load i32, i32* @PDF_SIMPLE_ENCODING_LATIN, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %85

52:                                               ; preds = %48
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* @PDF_SIMPLE_ENCODING_LATIN, align 4
  store i32 %61, i32* %11, align 4
  br label %84

62:                                               ; preds = %56
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* @PDF_SIMPLE_ENCODING_GREEK, align 4
  store i32 %71, i32* %11, align 4
  br label %83

72:                                               ; preds = %66
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76, %72
  %81 = load i32, i32* @PDF_SIMPLE_ENCODING_CYRILLIC, align 4
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %80, %76
  br label %83

83:                                               ; preds = %82, %70
  br label %84

84:                                               ; preds = %83, %60
  br label %85

85:                                               ; preds = %84, %48
  %86 = load i32, i32* @ctx, align 4
  %87 = load i32, i32* @doc, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32* @pdf_add_simple_font(i32 %86, i32 %87, i32* %88, i32 %89)
  store i32* %90, i32** %14, align 8
  %91 = load i32, i32* @ctx, align 4
  %92 = load i32*, i32** %13, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @pdf_dict_puts(i32 %91, i32* %92, i8* %93, i32* %94)
  %96 = load i32, i32* @ctx, align 4
  %97 = load i32*, i32** %14, align 8
  %98 = call i32 @pdf_drop_obj(i32 %96, i32* %97)
  %99 = load i32, i32* @ctx, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @fz_drop_font(i32 %99, i32* %100)
  ret void
}

declare dso_local i8* @fz_lookup_base14_font(i32, i8*, i32*) #1

declare dso_local i32* @fz_new_font_from_memory(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32* @fz_new_font_from_file(i32, i32*, i8*, i32, i32) #1

declare dso_local i32* @pdf_dict_get(i32, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32* @pdf_new_dict(i32, i32, i32) #1

declare dso_local i32 @pdf_dict_put_drop(i32, i32*, i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @pdf_add_simple_font(i32, i32, i32*, i32) #1

declare dso_local i32 @pdf_dict_puts(i32, i32*, i8*, i32*) #1

declare dso_local i32 @pdf_drop_obj(i32, i32*) #1

declare dso_local i32 @fz_drop_font(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

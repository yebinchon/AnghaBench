; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfcreate.c_add_cjkfont_res.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfcreate.c_add_cjkfont_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"sans\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"sans-serif\00", align 1
@ctx = common dso_local global i32 0, align 4
@Font = common dso_local global i32 0, align 4
@doc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i8*, i8*)* @add_cjkfont_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_cjkfont_res(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @fz_lookup_cjk_ordering_by_language(i8* %20)
  store i32 %21, i32* %14, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 1, i32* %15, align 4
  br label %30

29:                                               ; preds = %24, %5
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %33
  store i32 0, i32* %16, align 4
  br label %43

42:                                               ; preds = %37, %30
  store i32 1, i32* %16, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, i32* @ctx, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i8* @fz_lookup_cjk_font(i32 %44, i32 %45, i32* %12, i32* %13)
  store i8* %46, i8** %11, align 8
  %47 = load i32, i32* @ctx, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32* @fz_new_font_from_memory(i32 %47, i32* null, i8* %48, i32 %49, i32 %50, i32 0)
  store i32* %51, i32** %17, align 8
  %52 = load i32, i32* @ctx, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @Font, align 4
  %55 = call i32 @PDF_NAME(i32 %54)
  %56 = call i32* @pdf_dict_get(i32 %52, i32* %53, i32 %55)
  store i32* %56, i32** %18, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %69, label %59

59:                                               ; preds = %43
  %60 = load i32, i32* @ctx, align 4
  %61 = load i32, i32* @doc, align 4
  %62 = call i32* @pdf_new_dict(i32 %60, i32 %61, i32 10)
  store i32* %62, i32** %18, align 8
  %63 = load i32, i32* @ctx, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* @Font, align 4
  %66 = call i32 @PDF_NAME(i32 %65)
  %67 = load i32*, i32** %18, align 8
  %68 = call i32 @pdf_dict_put_drop(i32 %63, i32* %64, i32 %66, i32* %67)
  br label %69

69:                                               ; preds = %59, %43
  %70 = load i32, i32* @ctx, align 4
  %71 = load i32, i32* @doc, align 4
  %72 = load i32*, i32** %17, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32* @pdf_add_cjk_font(i32 %70, i32 %71, i32* %72, i32 %73, i32 %74, i32 %75)
  store i32* %76, i32** %19, align 8
  %77 = load i32, i32* @ctx, align 4
  %78 = load i32*, i32** %18, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i32*, i32** %19, align 8
  %81 = call i32 @pdf_dict_puts(i32 %77, i32* %78, i8* %79, i32* %80)
  %82 = load i32, i32* @ctx, align 4
  %83 = load i32*, i32** %19, align 8
  %84 = call i32 @pdf_drop_obj(i32 %82, i32* %83)
  %85 = load i32, i32* @ctx, align 4
  %86 = load i32*, i32** %17, align 8
  %87 = call i32 @fz_drop_font(i32 %85, i32* %86)
  ret void
}

declare dso_local i32 @fz_lookup_cjk_ordering_by_language(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @fz_lookup_cjk_font(i32, i32, i32*, i32*) #1

declare dso_local i32* @fz_new_font_from_memory(i32, i32*, i8*, i32, i32, i32) #1

declare dso_local i32* @pdf_dict_get(i32, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32* @pdf_new_dict(i32, i32, i32) #1

declare dso_local i32 @pdf_dict_put_drop(i32, i32*, i32, i32*) #1

declare dso_local i32* @pdf_add_cjk_font(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @pdf_dict_puts(i32, i32*, i8*, i32*) #1

declare dso_local i32 @pdf_drop_obj(i32, i32*) #1

declare dso_local i32 @fz_drop_font(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

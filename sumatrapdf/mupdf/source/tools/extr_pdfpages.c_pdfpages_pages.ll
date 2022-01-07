; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfpages.c_pdfpages_pages.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfpages.c_pdfpages_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"1-N\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"cannot authenticate password: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i8*, i8**, i32)* @pdfpages_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdfpages_pages(i32* %0, i32* %1, i8* %2, i8* %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %86, %6
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %89

21:                                               ; preds = %17
  %22 = load i32, i32* %13, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %7, align 8
  %26 = load i8**, i8*** %11, align 8
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @fz_is_page_range(i32* %25, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %74, label %33

33:                                               ; preds = %24, %21
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @showpages(i32* %37, i32* %38, i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 @pdf_drop_document(i32* %42, i32* %43)
  %45 = load i8**, i8*** %11, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %9, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @fz_write_printf(i32* %50, i32* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32* @pdf_open_document(i32* %54, i8* %55)
  store i32* %56, i32** %15, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = call i64 @pdf_needs_password(i32* %57, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %41
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @pdf_authenticate_password(i32* %62, i32* %63, i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @fz_throw(i32* %68, i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %67, %61
  br label %73

73:                                               ; preds = %72, %41
  store i32 1, i32* %13, align 4
  br label %86

74:                                               ; preds = %24
  %75 = load i32*, i32** %7, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load i8**, i8*** %11, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @showpages(i32* %75, i32* %76, i32* %77, i8* %82)
  %84 = load i32, i32* %16, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %16, align 4
  store i32 2, i32* %13, align 4
  br label %86

86:                                               ; preds = %74, %73
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %17

89:                                               ; preds = %17
  %90 = load i32, i32* %13, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32*, i32** %7, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @showpages(i32* %93, i32* %94, i32* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %92, %89
  %98 = load i32*, i32** %7, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = call i32 @pdf_drop_document(i32* %98, i32* %99)
  %101 = load i32, i32* %16, align 4
  ret i32 %101
}

declare dso_local i32 @fz_is_page_range(i32*, i8*) #1

declare dso_local i32 @showpages(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @pdf_drop_document(i32*, i32*) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, i8*) #1

declare dso_local i32* @pdf_open_document(i32*, i8*) #1

declare dso_local i64 @pdf_needs_password(i32*, i32*) #1

declare dso_local i32 @pdf_authenticate_password(i32*, i32*, i8*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showpathpage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showpathpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@ctx = common dso_local global i32 0, align 4
@doc = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"null\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @showpathpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showpathpage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1000 x i8], align 16
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %80

9:                                                ; preds = %1
  %10 = load i32, i32* @SEP, align 4
  %11 = call i8* @fz_strsep(i8** %2, i32 %10)
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %75

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @ctx, align 4
  %26 = load i32, i32* @doc, align 4
  %27 = call i32 @pdf_count_pages(i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %52, %24
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load i8*, i8** %2, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @fz_strlcpy(i8* %36, i8* %37, i32 1000)
  %39 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %40 = load i32, i32* @ctx, align 4
  %41 = load i32, i32* @doc, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @pdf_lookup_page_obj(i32 %40, i32 %41, i32 %42)
  %44 = call i32 @showpath(i8* %39, i32 %43)
  br label %51

45:                                               ; preds = %32
  %46 = load i32, i32* @ctx, align 4
  %47 = load i32, i32* @doc, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @pdf_lookup_page_obj(i32 %46, i32 %47, i32 %48)
  %50 = call i32 @showpath(i8* null, i32 %49)
  br label %51

51:                                               ; preds = %45, %35
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %28

55:                                               ; preds = %28
  br label %74

56:                                               ; preds = %20
  %57 = load i8*, i8** %3, align 8
  %58 = call i64 @isnumber(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i8*, i8** %2, align 8
  %62 = load i32, i32* @ctx, align 4
  %63 = load i32, i32* @doc, align 4
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @atoi(i8* %64)
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @pdf_lookup_page_obj(i32 %62, i32 %63, i32 %66)
  %68 = call i32 @showpath(i8* %61, i32 %67)
  br label %73

69:                                               ; preds = %56
  %70 = load i32, i32* @ctx, align 4
  %71 = load i32, i32* @out, align 4
  %72 = call i32 @fz_write_string(i32 %70, i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %69, %60
  br label %74

74:                                               ; preds = %73, %55
  br label %79

75:                                               ; preds = %14, %9
  %76 = load i32, i32* @ctx, align 4
  %77 = load i32, i32* @out, align 4
  %78 = call i32 @fz_write_string(i32 %76, i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %74
  br label %82

80:                                               ; preds = %1
  %81 = call i32 (...) @showpages()
  br label %82

82:                                               ; preds = %80, %79
  ret void
}

declare dso_local i8* @fz_strsep(i8**, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @pdf_count_pages(i32, i32) #1

declare dso_local i32 @fz_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @showpath(i8*, i32) #1

declare dso_local i32 @pdf_lookup_page_obj(i32, i32, i32) #1

declare dso_local i64 @isnumber(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fz_write_string(i32, i32, i8*) #1

declare dso_local i32 @showpages(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

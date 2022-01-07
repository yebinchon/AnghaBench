; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-lex.c_pdf_token_from_keyword.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-lex.c_pdf_token_from_keyword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"R\00", align 1
@PDF_TOK_R = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@PDF_TOK_TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"trailer\00", align 1
@PDF_TOK_TRAILER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@PDF_TOK_FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@PDF_TOK_NULL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@PDF_TOK_OBJ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"endobj\00", align 1
@PDF_TOK_ENDOBJ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"endstream\00", align 1
@PDF_TOK_ENDSTREAM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@PDF_TOK_STREAM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"startxref\00", align 1
@PDF_TOK_STARTXREF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"xref\00", align 1
@PDF_TOK_XREF = common dso_local global i32 0, align 4
@PDF_TOK_ERROR = common dso_local global i32 0, align 4
@PDF_TOK_KEYWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pdf_token_from_keyword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdf_token_from_keyword(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  switch i32 %6, label %81 [
    i32 82, label %7
    i32 116, label %14
    i32 102, label %27
    i32 110, label %34
    i32 111, label %41
    i32 101, label %48
    i32 115, label %61
    i32 120, label %74
  ]

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* @PDF_TOK_R, align 4
  store i32 %12, i32* %2, align 4
  br label %98

13:                                               ; preds = %7
  br label %81

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @PDF_TOK_TRUE, align 4
  store i32 %19, i32* %2, align 4
  br label %98

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @PDF_TOK_TRAILER, align 4
  store i32 %25, i32* %2, align 4
  br label %98

26:                                               ; preds = %20
  br label %81

27:                                               ; preds = %1
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @PDF_TOK_FALSE, align 4
  store i32 %32, i32* %2, align 4
  br label %98

33:                                               ; preds = %27
  br label %81

34:                                               ; preds = %1
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @PDF_TOK_NULL, align 4
  store i32 %39, i32* %2, align 4
  br label %98

40:                                               ; preds = %34
  br label %81

41:                                               ; preds = %1
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @PDF_TOK_OBJ, align 4
  store i32 %46, i32* %2, align 4
  br label %98

47:                                               ; preds = %41
  br label %81

48:                                               ; preds = %1
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @PDF_TOK_ENDOBJ, align 4
  store i32 %53, i32* %2, align 4
  br label %98

54:                                               ; preds = %48
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @PDF_TOK_ENDSTREAM, align 4
  store i32 %59, i32* %2, align 4
  br label %98

60:                                               ; preds = %54
  br label %81

61:                                               ; preds = %1
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @PDF_TOK_STREAM, align 4
  store i32 %66, i32* %2, align 4
  br label %98

67:                                               ; preds = %61
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @PDF_TOK_STARTXREF, align 4
  store i32 %72, i32* %2, align 4
  br label %98

73:                                               ; preds = %67
  br label %81

74:                                               ; preds = %1
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @PDF_TOK_XREF, align 4
  store i32 %79, i32* %2, align 4
  br label %98

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %1, %80, %73, %60, %47, %40, %33, %26, %13
  br label %82

82:                                               ; preds = %93, %81
  %83 = load i8*, i8** %3, align 8
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i8*, i8** %3, align 8
  %88 = load i8, i8* %87, align 1
  %89 = call i32 @fz_isprint(i8 signext %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @PDF_TOK_ERROR, align 4
  store i32 %92, i32* %2, align 4
  br label %98

93:                                               ; preds = %86
  %94 = load i8*, i8** %3, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %3, align 8
  br label %82

96:                                               ; preds = %82
  %97 = load i32, i32* @PDF_TOK_KEYWORD, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %91, %78, %71, %65, %58, %52, %45, %38, %31, %24, %18, %11
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fz_isprint(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

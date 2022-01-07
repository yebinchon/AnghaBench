; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap-parse.c_pdf_parse_codespace_range.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap-parse.c_pdf_parse_codespace_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@PDF_TOK_KEYWORD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"endcodespacerange\00", align 1
@PDF_TOK_STRING = common dso_local global i64 0, align 8
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"expected string or endcodespacerange\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_4__*)* @pdf_parse_codespace_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_parse_codespace_range(i32* %0, i32* %1, i32* %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  br label %12

12:                                               ; preds = %4, %66
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = call i64 @pdf_lex(i32* %13, i32* %14, %struct.TYPE_4__* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @PDF_TOK_KEYWORD, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strcmp(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %71

27:                                               ; preds = %20, %12
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @PDF_TOK_STRING, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pdf_code_from_string(i32 %34, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = call i64 @pdf_lex(i32* %39, i32* %40, %struct.TYPE_4__* %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @PDF_TOK_STRING, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %31
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pdf_code_from_string(i32 %49, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pdf_add_codespace(i32* %54, i32* %55, i32 %56, i32 %57, i32 %60)
  br label %63

62:                                               ; preds = %31
  br label %67

63:                                               ; preds = %46
  br label %65

64:                                               ; preds = %27
  br label %67

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65
  br label %12

67:                                               ; preds = %64, %62
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %70 = call i32 @fz_throw(i32* %68, i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %26
  ret void
}

declare dso_local i64 @pdf_lex(i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @pdf_code_from_string(i32, i32) #1

declare dso_local i32 @pdf_add_codespace(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

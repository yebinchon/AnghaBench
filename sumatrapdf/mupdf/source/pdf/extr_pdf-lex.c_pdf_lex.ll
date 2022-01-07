; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-lex.c_pdf_lex.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-lex.c_pdf_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@PDF_TOK_EOF = common dso_local global i32 0, align 4
@PDF_TOK_NAME = common dso_local global i32 0, align 4
@PDF_TOK_ERROR = common dso_local global i32 0, align 4
@PDF_TOK_OPEN_DICT = common dso_local global i32 0, align 4
@PDF_TOK_CLOSE_DICT = common dso_local global i32 0, align 4
@PDF_TOK_OPEN_ARRAY = common dso_local global i32 0, align 4
@PDF_TOK_CLOSE_ARRAY = common dso_local global i32 0, align 4
@PDF_TOK_OPEN_BRACE = common dso_local global i32 0, align 4
@PDF_TOK_CLOSE_BRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdf_lex(i32* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  br label %9

9:                                                ; preds = %3, %100
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @lex_byte(i32* %10, i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %88 [
    i32 130, label %14
    i32 128, label %16
    i32 37, label %20
    i32 47, label %24
    i32 40, label %30
    i32 41, label %35
    i32 60, label %37
    i32 62, label %57
    i32 91, label %74
    i32 93, label %76
    i32 123, label %78
    i32 125, label %80
    i32 129, label %82
  ]

14:                                               ; preds = %9
  %15 = load i32, i32* @PDF_TOK_EOF, align 4
  store i32 %15, i32* %4, align 4
  br label %101

16:                                               ; preds = %9
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @lex_white(i32* %17, i32* %18)
  br label %100

20:                                               ; preds = %9
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @lex_comment(i32* %21, i32* %22)
  br label %100

24:                                               ; preds = %9
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = call i32 @lex_name(i32* %25, i32* %26, %struct.TYPE_7__* %27)
  %29 = load i32, i32* @PDF_TOK_NAME, align 4
  store i32 %29, i32* %4, align 4
  br label %101

30:                                               ; preds = %9
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = call i32 @lex_string(i32* %31, i32* %32, %struct.TYPE_7__* %33)
  store i32 %34, i32* %4, align 4
  br label %101

35:                                               ; preds = %9
  %36 = load i32, i32* @PDF_TOK_ERROR, align 4
  store i32 %36, i32* %4, align 4
  br label %101

37:                                               ; preds = %9
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @lex_byte(i32* %38, i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 60
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @PDF_TOK_OPEN_DICT, align 4
  store i32 %44, i32* %4, align 4
  br label %101

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 130
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @fz_unread_byte(i32* %49, i32* %50)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = call i32 @lex_hex_string(i32* %53, i32* %54, %struct.TYPE_7__* %55)
  store i32 %56, i32* %4, align 4
  br label %101

57:                                               ; preds = %9
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @lex_byte(i32* %58, i32* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 62
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @PDF_TOK_CLOSE_DICT, align 4
  store i32 %64, i32* %4, align 4
  br label %101

65:                                               ; preds = %57
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 130
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @fz_unread_byte(i32* %69, i32* %70)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i32, i32* @PDF_TOK_ERROR, align 4
  store i32 %73, i32* %4, align 4
  br label %101

74:                                               ; preds = %9
  %75 = load i32, i32* @PDF_TOK_OPEN_ARRAY, align 4
  store i32 %75, i32* %4, align 4
  br label %101

76:                                               ; preds = %9
  %77 = load i32, i32* @PDF_TOK_CLOSE_ARRAY, align 4
  store i32 %77, i32* %4, align 4
  br label %101

78:                                               ; preds = %9
  %79 = load i32, i32* @PDF_TOK_OPEN_BRACE, align 4
  store i32 %79, i32* %4, align 4
  br label %101

80:                                               ; preds = %9
  %81 = load i32, i32* @PDF_TOK_CLOSE_BRACE, align 4
  store i32 %81, i32* %4, align 4
  br label %101

82:                                               ; preds = %9
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @lex_number(i32* %83, i32* %84, %struct.TYPE_7__* %85, i32 %86)
  store i32 %87, i32* %4, align 4
  br label %101

88:                                               ; preds = %9
  %89 = load i32*, i32** %5, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @fz_unread_byte(i32* %89, i32* %90)
  %92 = load i32*, i32** %5, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = call i32 @lex_name(i32* %92, i32* %93, %struct.TYPE_7__* %94)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pdf_token_from_keyword(i32 %98)
  store i32 %99, i32* %4, align 4
  br label %101

100:                                              ; preds = %20, %16
  br label %9

101:                                              ; preds = %88, %82, %80, %78, %76, %74, %72, %63, %52, %43, %35, %30, %24, %14
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @lex_byte(i32*, i32*) #1

declare dso_local i32 @lex_white(i32*, i32*) #1

declare dso_local i32 @lex_comment(i32*, i32*) #1

declare dso_local i32 @lex_name(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @lex_string(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @fz_unread_byte(i32*, i32*) #1

declare dso_local i32 @lex_hex_string(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @lex_number(i32*, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @pdf_token_from_keyword(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

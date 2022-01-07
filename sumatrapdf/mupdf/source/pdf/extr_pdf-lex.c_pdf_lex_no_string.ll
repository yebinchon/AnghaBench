; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-lex.c_pdf_lex_no_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-lex.c_pdf_lex_no_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

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
define dso_local i32 @pdf_lex_no_string(i32* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  br label %9

9:                                                ; preds = %3, %94
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @lex_byte(i32* %10, i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %82 [
    i32 130, label %14
    i32 128, label %16
    i32 37, label %20
    i32 47, label %24
    i32 40, label %30
    i32 41, label %32
    i32 60, label %34
    i32 62, label %51
    i32 91, label %68
    i32 93, label %70
    i32 123, label %72
    i32 125, label %74
    i32 129, label %76
  ]

14:                                               ; preds = %9
  %15 = load i32, i32* @PDF_TOK_EOF, align 4
  store i32 %15, i32* %4, align 4
  br label %95

16:                                               ; preds = %9
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @lex_white(i32* %17, i32* %18)
  br label %94

20:                                               ; preds = %9
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @lex_comment(i32* %21, i32* %22)
  br label %94

24:                                               ; preds = %9
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = call i32 @lex_name(i32* %25, i32* %26, %struct.TYPE_5__* %27)
  %29 = load i32, i32* @PDF_TOK_NAME, align 4
  store i32 %29, i32* %4, align 4
  br label %95

30:                                               ; preds = %9
  %31 = load i32, i32* @PDF_TOK_ERROR, align 4
  store i32 %31, i32* %4, align 4
  br label %95

32:                                               ; preds = %9
  %33 = load i32, i32* @PDF_TOK_ERROR, align 4
  store i32 %33, i32* %4, align 4
  br label %95

34:                                               ; preds = %9
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @lex_byte(i32* %35, i32* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 60
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @PDF_TOK_OPEN_DICT, align 4
  store i32 %41, i32* %4, align 4
  br label %95

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 130
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @fz_unread_byte(i32* %46, i32* %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32, i32* @PDF_TOK_ERROR, align 4
  store i32 %50, i32* %4, align 4
  br label %95

51:                                               ; preds = %9
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @lex_byte(i32* %52, i32* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 62
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @PDF_TOK_CLOSE_DICT, align 4
  store i32 %58, i32* %4, align 4
  br label %95

59:                                               ; preds = %51
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 130
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @fz_unread_byte(i32* %63, i32* %64)
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32, i32* @PDF_TOK_ERROR, align 4
  store i32 %67, i32* %4, align 4
  br label %95

68:                                               ; preds = %9
  %69 = load i32, i32* @PDF_TOK_OPEN_ARRAY, align 4
  store i32 %69, i32* %4, align 4
  br label %95

70:                                               ; preds = %9
  %71 = load i32, i32* @PDF_TOK_CLOSE_ARRAY, align 4
  store i32 %71, i32* %4, align 4
  br label %95

72:                                               ; preds = %9
  %73 = load i32, i32* @PDF_TOK_OPEN_BRACE, align 4
  store i32 %73, i32* %4, align 4
  br label %95

74:                                               ; preds = %9
  %75 = load i32, i32* @PDF_TOK_CLOSE_BRACE, align 4
  store i32 %75, i32* %4, align 4
  br label %95

76:                                               ; preds = %9
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @lex_number(i32* %77, i32* %78, %struct.TYPE_5__* %79, i32 %80)
  store i32 %81, i32* %4, align 4
  br label %95

82:                                               ; preds = %9
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @fz_unread_byte(i32* %83, i32* %84)
  %86 = load i32*, i32** %5, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %89 = call i32 @lex_name(i32* %86, i32* %87, %struct.TYPE_5__* %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pdf_token_from_keyword(i32 %92)
  store i32 %93, i32* %4, align 4
  br label %95

94:                                               ; preds = %20, %16
  br label %9

95:                                               ; preds = %82, %76, %74, %72, %70, %68, %66, %57, %49, %40, %32, %30, %24, %14
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @lex_byte(i32*, i32*) #1

declare dso_local i32 @lex_white(i32*, i32*) #1

declare dso_local i32 @lex_comment(i32*, i32*) #1

declare dso_local i32 @lex_name(i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @fz_unread_byte(i32*, i32*) #1

declare dso_local i32 @lex_number(i32*, i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @pdf_token_from_keyword(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap-parse.c_pdf_parse_cid_range.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap-parse.c_pdf_parse_cid_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@PDF_TOK_KEYWORD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"endcidrange\00", align 1
@PDF_TOK_STRING = common dso_local global i64 0, align 8
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"expected string or endcidrange\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"expected string\00", align 1
@PDF_TOK_INT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"expected integer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_4__*)* @pdf_parse_cid_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_parse_cid_range(i32* %0, i32* %1, i32* %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  br label %13

13:                                               ; preds = %4, %75
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = call i64 @pdf_lex(i32* %14, i32* %15, %struct.TYPE_4__* %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @PDF_TOK_KEYWORD, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcmp(i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  ret void

28:                                               ; preds = %21, %13
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @PDF_TOK_STRING, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %35 = call i32 @fz_throw(i32* %33, i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pdf_code_from_string(i32 %40, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = call i64 @pdf_lex(i32* %45, i32* %46, %struct.TYPE_4__* %47)
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @PDF_TOK_STRING, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %37
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %55 = call i32 @fz_throw(i32* %53, i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %37
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pdf_code_from_string(i32 %59, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = call i64 @pdf_lex(i32* %64, i32* %65, %struct.TYPE_4__* %66)
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @PDF_TOK_INT, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %56
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %74 = call i32 @fz_throw(i32* %72, i32 %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %56
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %12, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @pdf_map_range_to_range(i32* %79, i32* %80, i32 %81, i32 %82, i32 %83)
  br label %13
}

declare dso_local i64 @pdf_lex(i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @pdf_code_from_string(i32, i32) #1

declare dso_local i32 @pdf_map_range_to_range(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

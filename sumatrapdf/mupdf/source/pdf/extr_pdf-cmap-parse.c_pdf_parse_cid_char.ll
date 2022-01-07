; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap-parse.c_pdf_parse_cid_char.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap-parse.c_pdf_parse_cid_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@PDF_TOK_KEYWORD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"endcidchar\00", align 1
@PDF_TOK_STRING = common dso_local global i64 0, align 8
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"expected string or endcidchar\00", align 1
@PDF_TOK_INT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"expected integer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_4__*)* @pdf_parse_cid_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_parse_cid_char(i32* %0, i32* %1, i32* %2, %struct.TYPE_4__* %3) #0 {
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

12:                                               ; preds = %4, %55
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
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strcmp(i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  ret void

27:                                               ; preds = %20, %12
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @PDF_TOK_STRING, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %34 = call i32 @fz_throw(i32* %32, i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pdf_code_from_string(i32 %39, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = call i64 @pdf_lex(i32* %44, i32* %45, %struct.TYPE_4__* %46)
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @PDF_TOK_INT, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %36
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %54 = call i32 @fz_throw(i32* %52, i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %36
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @pdf_map_range_to_range(i32* %59, i32* %60, i32 %61, i32 %62, i32 %63)
  br label %12
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

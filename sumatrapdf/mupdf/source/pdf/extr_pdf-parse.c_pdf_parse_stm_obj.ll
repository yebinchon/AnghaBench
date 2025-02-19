; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-parse.c_pdf_parse_stm_obj.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-parse.c_pdf_parse_stm_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@PDF_TRUE = common dso_local global i32* null, align 8
@PDF_FALSE = common dso_local global i32* null, align 8
@PDF_NULL = common dso_local global i32* null, align 8
@FZ_ERROR_SYNTAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unknown token in object stream\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pdf_parse_stm_obj(i32* %0, i32* %1, i32* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %14 = call i32 @pdf_lex(i32* %11, i32* %12, %struct.TYPE_6__* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  switch i32 %15, label %61 [
    i32 132, label %16
    i32 131, label %22
    i32 134, label %28
    i32 130, label %34
    i32 129, label %40
    i32 128, label %49
    i32 136, label %51
    i32 133, label %53
    i32 135, label %55
  ]

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = call i32* @pdf_parse_array(i32* %17, i32* %18, i32* %19, %struct.TYPE_6__* %20)
  store i32* %21, i32** %5, align 8
  br label %65

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = call i32* @pdf_parse_dict(i32* %23, i32* %24, i32* %25, %struct.TYPE_6__* %26)
  store i32* %27, i32** %5, align 8
  br label %65

28:                                               ; preds = %4
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @pdf_new_name(i32* %29, i32 %32)
  store i32* %33, i32** %5, align 8
  br label %65

34:                                               ; preds = %4
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @pdf_new_real(i32* %35, i32 %38)
  store i32* %39, i32** %5, align 8
  br label %65

40:                                               ; preds = %4
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @pdf_new_string(i32* %41, i32 %44, i32 %47)
  store i32* %48, i32** %5, align 8
  br label %65

49:                                               ; preds = %4
  %50 = load i32*, i32** @PDF_TRUE, align 8
  store i32* %50, i32** %5, align 8
  br label %65

51:                                               ; preds = %4
  %52 = load i32*, i32** @PDF_FALSE, align 8
  store i32* %52, i32** %5, align 8
  br label %65

53:                                               ; preds = %4
  %54 = load i32*, i32** @PDF_NULL, align 8
  store i32* %54, i32** %5, align 8
  br label %65

55:                                               ; preds = %4
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @pdf_new_int(i32* %56, i32 %59)
  store i32* %60, i32** %5, align 8
  br label %65

61:                                               ; preds = %4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %64 = call i32 @fz_throw(i32* %62, i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %16, %22, %28, %34, %40, %49, %51, %53, %55, %61
  %66 = load i32*, i32** %5, align 8
  ret i32* %66
}

declare dso_local i32 @pdf_lex(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32* @pdf_parse_array(i32*, i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32* @pdf_parse_dict(i32*, i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32* @pdf_new_name(i32*, i32) #1

declare dso_local i32* @pdf_new_real(i32*, i32) #1

declare dso_local i32* @pdf_new_string(i32*, i32, i32) #1

declare dso_local i32* @pdf_new_int(i32*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

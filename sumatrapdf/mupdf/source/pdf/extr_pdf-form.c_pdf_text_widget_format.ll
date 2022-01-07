; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_text_widget_format.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_text_widget_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PDF_WIDGET_TX_FORMAT_NONE = common dso_local global i32 0, align 4
@AA = common dso_local global i32 0, align 4
@F = common dso_local global i32 0, align 4
@JS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"AFNumber_Format\00", align 1
@PDF_WIDGET_TX_FORMAT_NUMBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"AFSpecial_Format\00", align 1
@PDF_WIDGET_TX_FORMAT_SPECIAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"AFDate_FormatEx\00", align 1
@PDF_WIDGET_TX_FORMAT_DATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"AFTime_FormatEx\00", align 1
@PDF_WIDGET_TX_FORMAT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdf_text_widget_format(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %5, align 8
  %11 = load i32, i32* @PDF_WIDGET_TX_FORMAT_NONE, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AA, align 4
  %17 = call i32 @PDF_NAME(i32 %16)
  %18 = load i32, i32* @F, align 4
  %19 = call i32 @PDF_NAME(i32 %18)
  %20 = load i32, i32* @JS, align 4
  %21 = call i32 @PDF_NAME(i32 %20)
  %22 = call i32* @pdf_dict_getl(i32* %12, i32 %15, i32 %17, i32 %19, i32 %21, i32* null)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %59

25:                                               ; preds = %2
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i8* @pdf_load_stream_or_string_as_utf8(i32* %26, i32* %27)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @strstr(i8* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @PDF_WIDGET_TX_FORMAT_NUMBER, align 4
  store i32 %33, i32* %6, align 4
  br label %55

34:                                               ; preds = %25
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @strstr(i8* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @PDF_WIDGET_TX_FORMAT_SPECIAL, align 4
  store i32 %39, i32* %6, align 4
  br label %54

40:                                               ; preds = %34
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 @strstr(i8* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @PDF_WIDGET_TX_FORMAT_DATE, align 4
  store i32 %45, i32* %6, align 4
  br label %53

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @strstr(i8* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @PDF_WIDGET_TX_FORMAT_TIME, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %46
  br label %53

53:                                               ; preds = %52, %44
  br label %54

54:                                               ; preds = %53, %38
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i32*, i32** %3, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @fz_free(i32* %56, i8* %57)
  br label %59

59:                                               ; preds = %55, %2
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32* @pdf_dict_getl(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i8* @pdf_load_stream_or_string_as_utf8(i32*, i32*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @fz_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

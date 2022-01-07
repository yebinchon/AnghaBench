; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-clean.c_pdf_redact_page.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-clean.c_pdf_redact_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@Subtype = common dso_local global i32 0, align 4
@Redact = common dso_local global i32 0, align 4
@pdf_redact_end_page = common dso_local global i32* null, align 8
@pdf_redact_text_filter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdf_redact_page(i32* %0, %struct.TYPE_12__* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %14, %4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call %struct.TYPE_13__* @pdf_first_annot(i32* %19, i32* %20)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %9, align 8
  br label %22

22:                                               ; preds = %38, %18
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %24 = icmp ne %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @Subtype, align 4
  %31 = call i64 @PDF_NAME(i32 %30)
  %32 = call i64 @pdf_dict_get(i32* %26, i32 %29, i64 %31)
  %33 = load i32, i32* @Redact, align 4
  %34 = call i64 @PDF_NAME(i32 %33)
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 1, i32* %10, align 4
  br label %37

37:                                               ; preds = %36, %25
  br label %38

38:                                               ; preds = %37
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %41 = call %struct.TYPE_13__* @pdf_next_annot(i32* %39, %struct.TYPE_13__* %40)
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %9, align 8
  br label %22

42:                                               ; preds = %22
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %54

52:                                               ; preds = %45
  %53 = load i32*, i32** @pdf_redact_end_page, align 8
  br label %54

54:                                               ; preds = %52, %51
  %55 = phi i32* [ null, %51 ], [ %53, %52 ]
  %56 = load i32, i32* @pdf_redact_text_filter, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @pdf_filter_page_contents(i32* %46, %struct.TYPE_12__* %47, i32* %48, i32* null, i32* %55, i32 %56, i32* null, i32* %57, i32 1, i32 1)
  br label %59

59:                                               ; preds = %54, %42
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call %struct.TYPE_13__* @pdf_first_annot(i32* %60, i32* %61)
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %9, align 8
  br label %63

63:                                               ; preds = %89, %59
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %65 = icmp ne %struct.TYPE_13__* %64, null
  br i1 %65, label %66, label %90

66:                                               ; preds = %63
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @Subtype, align 4
  %72 = call i64 @PDF_NAME(i32 %71)
  %73 = call i64 @pdf_dict_get(i32* %67, i32 %70, i64 %72)
  %74 = load i32, i32* @Redact, align 4
  %75 = call i64 @PDF_NAME(i32 %74)
  %76 = icmp eq i64 %73, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %66
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %81 = call i32 @pdf_delete_annot(i32* %78, i32* %79, %struct.TYPE_13__* %80)
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call %struct.TYPE_13__* @pdf_first_annot(i32* %82, i32* %83)
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %9, align 8
  br label %89

85:                                               ; preds = %66
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = call %struct.TYPE_13__* @pdf_next_annot(i32* %86, %struct.TYPE_13__* %87)
  store %struct.TYPE_13__* %88, %struct.TYPE_13__** %9, align 8
  br label %89

89:                                               ; preds = %85, %77
  br label %63

90:                                               ; preds = %63
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %10, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_13__* @pdf_first_annot(i32*, i32*) #1

declare dso_local i64 @pdf_dict_get(i32*, i32, i64) #1

declare dso_local i64 @PDF_NAME(i32) #1

declare dso_local %struct.TYPE_13__* @pdf_next_annot(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @pdf_filter_page_contents(i32*, %struct.TYPE_12__*, i32*, i32*, i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @pdf_delete_annot(i32*, i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

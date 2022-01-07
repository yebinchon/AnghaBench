; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-clean.c_pdf_filter_annot_contents.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-clean.c_pdf_filter_annot_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@AP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_filter_annot_contents(i32* %0, i32* %1, %struct.TYPE_3__* %2, i32* %3, i32* %4, i32* %5, i32* %6, i8* %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %25 = load i32*, i32** %11, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AP, align 4
  %30 = call i32 @PDF_NAME(i32 %29)
  %31 = call i32* @pdf_dict_get(i32* %25, i32 %28, i32 %30)
  store i32* %31, i32** %21, align 8
  %32 = load i32*, i32** %21, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %10
  br label %65

35:                                               ; preds = %10
  %36 = load i32*, i32** %11, align 8
  %37 = load i32*, i32** %21, align 8
  %38 = call i32 @pdf_dict_len(i32* %36, i32* %37)
  store i32 %38, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %39

39:                                               ; preds = %62, %35
  %40 = load i32, i32* %22, align 4
  %41 = load i32, i32* %23, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %21, align 8
  %46 = load i32, i32* %22, align 4
  %47 = call i32* @pdf_dict_get_val(i32* %44, i32* %45, i32 %46)
  store i32* %47, i32** %24, align 8
  %48 = load i32*, i32** %24, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %62

51:                                               ; preds = %43
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %24, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = load i32*, i32** %17, align 8
  %58 = load i8*, i8** %18, align 8
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %20, align 4
  %61 = call i32 @pdf_clean_stream_object(i32* %52, i32* %53, i32* %54, i32* null, i32* %55, i32 1, i32* %56, i32* %57, i8* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %51, %50
  %63 = load i32, i32* %22, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %22, align 4
  br label %39

65:                                               ; preds = %34, %39
  ret void
}

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_dict_len(i32*, i32*) #1

declare dso_local i32* @pdf_dict_get_val(i32*, i32*, i32) #1

declare dso_local i32 @pdf_clean_stream_object(i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

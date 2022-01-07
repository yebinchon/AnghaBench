; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_ink_list_stroke_vertex.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_ink_list_stroke_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8*, i8* }

@InkList = common dso_local global i32 0, align 4
@ink_list_subtypes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i8*, i8* } @pdf_annot_ink_list_stroke_vertex(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = load i32, i32* @InkList, align 4
  %17 = call i32 @PDF_NAME(i32 %16)
  %18 = load i32, i32* @ink_list_subtypes, align 4
  %19 = call i32 @check_allowed_subtypes(i32* %14, %struct.TYPE_8__* %15, i32 %17, i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @InkList, align 4
  %25 = call i32 @PDF_NAME(i32 %24)
  %26 = call i32* @pdf_dict_get(i32* %20, i32 %23, i32 %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32* @pdf_array_get(i32* %27, i32* %28, i32 %29)
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pdf_page_transform(i32* %31, i32 %34, i32* null, i32* %12)
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %38, 2
  %40 = add nsw i32 %39, 0
  %41 = call i8* @pdf_array_get_real(i32* %36, i32* %37, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, 2
  %47 = add nsw i32 %46, 1
  %48 = call i8* @pdf_array_get_real(i32* %43, i32* %44, i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %12, align 4
  %51 = bitcast %struct.TYPE_9__* %13 to { i8*, i8* }*
  %52 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %51, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call { i8*, i8* } @fz_transform_point(i8* %53, i8* %55, i32 %50)
  %57 = bitcast %struct.TYPE_9__* %5 to { i8*, i8* }*
  %58 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %57, i32 0, i32 0
  %59 = extractvalue { i8*, i8* } %56, 0
  store i8* %59, i8** %58, align 8
  %60 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %57, i32 0, i32 1
  %61 = extractvalue { i8*, i8* } %56, 1
  store i8* %61, i8** %60, align 8
  %62 = bitcast %struct.TYPE_9__* %5 to { i8*, i8* }*
  %63 = load { i8*, i8* }, { i8*, i8* }* %62, align 8
  ret { i8*, i8* } %63
}

declare dso_local i32 @check_allowed_subtypes(i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i32 @pdf_page_transform(i32*, i32, i32*, i32*) #1

declare dso_local i8* @pdf_array_get_real(i32*, i32*, i32) #1

declare dso_local { i8*, i8* } @fz_transform_point(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

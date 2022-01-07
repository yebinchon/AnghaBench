; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_vertex.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8*, i8* }

@Vertices = common dso_local global i32 0, align 4
@vertices_subtypes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i8*, i8* } @pdf_annot_vertex(i32* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = load i32, i32* @Vertices, align 4
  %14 = call i32 @PDF_NAME(i32 %13)
  %15 = load i32, i32* @vertices_subtypes, align 4
  %16 = call i32 @check_allowed_subtypes(i32* %11, %struct.TYPE_8__* %12, i32 %14, i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @Vertices, align 4
  %22 = call i32 @PDF_NAME(i32 %21)
  %23 = call i32* @pdf_dict_get(i32* %17, i32 %20, i32 %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pdf_page_transform(i32* %24, i32 %27, i32* null, i32* %9)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 2
  %33 = call i8* @pdf_array_get_real(i32* %29, i32* %30, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 %37, 2
  %39 = add nsw i32 %38, 1
  %40 = call i8* @pdf_array_get_real(i32* %35, i32* %36, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = bitcast %struct.TYPE_9__* %10 to { i8*, i8* }*
  %44 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %43, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call { i8*, i8* } @fz_transform_point(i8* %45, i8* %47, i32 %42)
  %49 = bitcast %struct.TYPE_9__* %4 to { i8*, i8* }*
  %50 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %49, i32 0, i32 0
  %51 = extractvalue { i8*, i8* } %48, 0
  store i8* %51, i8** %50, align 8
  %52 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %49, i32 0, i32 1
  %53 = extractvalue { i8*, i8* } %48, 1
  store i8* %53, i8** %52, align 8
  %54 = bitcast %struct.TYPE_9__* %4 to { i8*, i8* }*
  %55 = load { i8*, i8* }, { i8*, i8* }* %54, align 8
  ret { i8*, i8* } %55
}

declare dso_local i32 @check_allowed_subtypes(i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @pdf_page_transform(i32*, i32, i32*, i32*) #1

declare dso_local i8* @pdf_array_get_real(i32*, i32*, i32) #1

declare dso_local { i8*, i8* } @fz_transform_point(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

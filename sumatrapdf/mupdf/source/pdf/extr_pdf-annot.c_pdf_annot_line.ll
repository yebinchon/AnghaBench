; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_line.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8*, i8* }

@L = common dso_local global i32 0, align 4
@line_subtypes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_annot_line(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = load i32, i32* @L, align 4
  %16 = call i32 @PDF_NAME(i32 %15)
  %17 = load i32, i32* @line_subtypes, align 4
  %18 = call i32 @check_allowed_subtypes(i32* %13, %struct.TYPE_9__* %14, i32 %16, i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pdf_page_transform(i32* %19, i32 %22, i32* null, i32* %9)
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @L, align 4
  %29 = call i32 @PDF_NAME(i32 %28)
  %30 = call i32* @pdf_dict_get(i32* %24, i32 %27, i32 %29)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i8* @pdf_array_get_real(i32* %31, i32* %32, i32 0)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i8* @pdf_array_get_real(i32* %36, i32* %37, i32 1)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i8* @pdf_array_get_real(i32* %41, i32* %42, i32 2)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i8* @pdf_array_get_real(i32* %46, i32* %47, i32 3)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = bitcast %struct.TYPE_10__* %52 to { i8*, i8* }*
  %55 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %54, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call { i8*, i8* } @fz_transform_point(i8* %56, i8* %58, i32 %53)
  %60 = bitcast %struct.TYPE_10__* %11 to { i8*, i8* }*
  %61 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %60, i32 0, i32 0
  %62 = extractvalue { i8*, i8* } %59, 0
  store i8* %62, i8** %61, align 8
  %63 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %60, i32 0, i32 1
  %64 = extractvalue { i8*, i8* } %59, 1
  store i8* %64, i8** %63, align 8
  %65 = bitcast %struct.TYPE_10__* %51 to i8*
  %66 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 16, i1 false)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = bitcast %struct.TYPE_10__* %68 to { i8*, i8* }*
  %71 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %70, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call { i8*, i8* } @fz_transform_point(i8* %72, i8* %74, i32 %69)
  %76 = bitcast %struct.TYPE_10__* %12 to { i8*, i8* }*
  %77 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %76, i32 0, i32 0
  %78 = extractvalue { i8*, i8* } %75, 0
  store i8* %78, i8** %77, align 8
  %79 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %76, i32 0, i32 1
  %80 = extractvalue { i8*, i8* } %75, 1
  store i8* %80, i8** %79, align 8
  %81 = bitcast %struct.TYPE_10__* %67 to i8*
  %82 = bitcast %struct.TYPE_10__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 16, i1 false)
  ret void
}

declare dso_local i32 @check_allowed_subtypes(i32*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_page_transform(i32*, i32, i32*, i32*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i8* @pdf_array_get_real(i32*, i32*, i32) #1

declare dso_local { i8*, i8* } @fz_transform_point(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

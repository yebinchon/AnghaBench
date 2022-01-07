; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_set_annot_line.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_set_annot_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@L = common dso_local global i32 0, align 4
@line_subtypes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_set_annot_line(i32* %0, %struct.TYPE_11__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__, align 4
  %13 = alloca %struct.TYPE_12__, align 4
  %14 = bitcast %struct.TYPE_12__* %5 to i64*
  store i64 %2, i64* %14, align 4
  %15 = bitcast %struct.TYPE_12__* %6 to i64*
  store i64 %3, i64* %15, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = load i32, i32* @L, align 4
  %19 = call i32 @PDF_NAME(i32 %18)
  %20 = load i32, i32* @line_subtypes, align 4
  %21 = call i32 @check_allowed_subtypes(i32* %16, %struct.TYPE_11__* %17, i32 %19, i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = call i32 @pdf_page_transform(i32* %22, %struct.TYPE_13__* %25, i32* null, i32* %9)
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @fz_invert_matrix(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = bitcast %struct.TYPE_12__* %5 to i64*
  %31 = load i64, i64* %30, align 4
  %32 = call i64 @fz_transform_point(i64 %31, i32 %29)
  %33 = bitcast %struct.TYPE_12__* %12 to i64*
  store i64 %32, i64* %33, align 4
  %34 = bitcast %struct.TYPE_12__* %5 to i8*
  %35 = bitcast %struct.TYPE_12__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 8, i1 false)
  %36 = load i32, i32* %10, align 4
  %37 = bitcast %struct.TYPE_12__* %6 to i64*
  %38 = load i64, i64* %37, align 4
  %39 = call i64 @fz_transform_point(i64 %38, i32 %36)
  %40 = bitcast %struct.TYPE_12__* %13 to i64*
  store i64 %39, i64* %40, align 4
  %41 = bitcast %struct.TYPE_12__* %6 to i8*
  %42 = bitcast %struct.TYPE_12__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 8, i1 false)
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32* @pdf_new_array(i32* %43, i32 %48, i32 4)
  store i32* %49, i32** %11, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @L, align 4
  %55 = call i32 @PDF_NAME(i32 %54)
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @pdf_dict_put_drop(i32* %50, i32 %53, i32 %55, i32* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pdf_array_push_real(i32* %58, i32* %59, i32 %61)
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pdf_array_push_real(i32* %63, i32* %64, i32 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pdf_array_push_real(i32* %68, i32* %69, i32 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pdf_array_push_real(i32* %73, i32* %74, i32 %76)
  %78 = load i32*, i32** %7, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %80 = call i32 @pdf_dirty_annot(i32* %78, %struct.TYPE_11__* %79)
  ret void
}

declare dso_local i32 @check_allowed_subtypes(i32*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_page_transform(i32*, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @fz_invert_matrix(i32) #1

declare dso_local i64 @fz_transform_point(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @pdf_new_array(i32*, i32, i32) #1

declare dso_local i32 @pdf_dict_put_drop(i32*, i32, i32, i32*) #1

declare dso_local i32 @pdf_array_push_real(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dirty_annot(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

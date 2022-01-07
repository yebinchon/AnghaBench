; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_set_annot_vertex.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_set_annot_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@Vertices = common dso_local global i32 0, align 4
@vertices_subtypes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_set_annot_vertex(i32* %0, %struct.TYPE_8__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__, align 4
  %13 = bitcast %struct.TYPE_9__* %5 to i64*
  store i64 %3, i64* %13, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = load i32, i32* @Vertices, align 4
  %17 = call i32 @PDF_NAME(i32 %16)
  %18 = load i32, i32* @vertices_subtypes, align 4
  %19 = call i32 @check_allowed_subtypes(i32* %14, %struct.TYPE_8__* %15, i32 %17, i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pdf_page_transform(i32* %20, i32 %23, i32* null, i32* %9)
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @fz_invert_matrix(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = bitcast %struct.TYPE_9__* %5 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = call i64 @fz_transform_point(i64 %29, i32 %27)
  %31 = bitcast %struct.TYPE_9__* %12 to i64*
  store i64 %30, i64* %31, align 4
  %32 = bitcast %struct.TYPE_9__* %5 to i8*
  %33 = bitcast %struct.TYPE_9__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 8, i1 false)
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @Vertices, align 4
  %39 = call i32 @PDF_NAME(i32 %38)
  %40 = call i32* @pdf_dict_get(i32* %34, i32 %37, i32 %39)
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %43, 2
  %45 = add nsw i32 %44, 0
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pdf_new_real(i32* %46, i32 %48)
  %50 = call i32 @pdf_array_put_drop(i32* %41, i32* %42, i32 %45, i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %8, align 4
  %54 = mul nsw i32 %53, 2
  %55 = add nsw i32 %54, 1
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pdf_new_real(i32* %56, i32 %58)
  %60 = call i32 @pdf_array_put_drop(i32* %51, i32* %52, i32 %55, i32 %59)
  ret void
}

declare dso_local i32 @check_allowed_subtypes(i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_page_transform(i32*, i32, i32*, i32*) #1

declare dso_local i32 @fz_invert_matrix(i32) #1

declare dso_local i64 @fz_transform_point(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @pdf_array_put_drop(i32*, i32*, i32, i32) #1

declare dso_local i32 @pdf_new_real(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

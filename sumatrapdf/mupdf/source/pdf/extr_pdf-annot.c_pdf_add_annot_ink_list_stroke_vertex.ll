; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_add_annot_ink_list_stroke_vertex.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_add_annot_ink_list_stroke_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@InkList = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_add_annot_ink_list_stroke_vertex(i32* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = bitcast %struct.TYPE_8__* %4 to i64*
  store i64 %2, i64* %12, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pdf_page_transform(i32* %13, i32 %16, i32* null, i32* %7)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @fz_invert_matrix(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @InkList, align 4
  %25 = call i32 @PDF_NAME(i32 %24)
  %26 = call i32* @pdf_dict_get(i32* %20, i32 %23, i32 %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @pdf_array_len(i32* %29, i32* %30)
  %32 = sub nsw i64 %31, 1
  %33 = call i32* @pdf_array_get(i32* %27, i32* %28, i64 %32)
  store i32* %33, i32** %10, align 8
  %34 = load i32, i32* %8, align 4
  %35 = bitcast %struct.TYPE_8__* %4 to i64*
  %36 = load i64, i64* %35, align 4
  %37 = call i64 @fz_transform_point(i64 %36, i32 %34)
  %38 = bitcast %struct.TYPE_8__* %11 to i64*
  store i64 %37, i64* %38, align 4
  %39 = bitcast %struct.TYPE_8__* %4 to i8*
  %40 = bitcast %struct.TYPE_8__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 8, i1 false)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pdf_array_push_real(i32* %41, i32* %42, i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pdf_array_push_real(i32* %46, i32* %47, i32 %49)
  ret void
}

declare dso_local i32 @pdf_page_transform(i32*, i32, i32*, i32*) #1

declare dso_local i32 @fz_invert_matrix(i32) #1

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i64) #1

declare dso_local i64 @pdf_array_len(i32*, i32*) #1

declare dso_local i64 @fz_transform_point(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pdf_array_push_real(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_add_annot_vertex.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_add_annot_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32 }

@Vertices = common dso_local global i32 0, align 4
@vertices_subtypes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_add_annot_vertex(i32* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_11__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = bitcast %struct.TYPE_11__* %4 to i64*
  store i64 %2, i64* %12, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = load i32, i32* @Vertices, align 4
  %21 = call i32 @PDF_NAME(i32 %20)
  %22 = load i32, i32* @vertices_subtypes, align 4
  %23 = call i32 @check_allowed_subtypes(i32* %18, %struct.TYPE_10__* %19, i32 %21, i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = call i32 @pdf_page_transform(i32* %24, %struct.TYPE_12__* %27, i32* null, i32* %8)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @fz_invert_matrix(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @Vertices, align 4
  %36 = call i32 @PDF_NAME(i32 %35)
  %37 = call i32* @pdf_dict_get(i32* %31, i32 %34, i32 %36)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @pdf_is_array(i32* %38, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %3
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32* @pdf_new_array(i32* %43, i32* %44, i32 32)
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @Vertices, align 4
  %51 = call i32 @PDF_NAME(i32 %50)
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @pdf_dict_put_drop(i32* %46, i32 %49, i32 %51, i32* %52)
  br label %54

54:                                               ; preds = %42, %3
  %55 = load i32, i32* %9, align 4
  %56 = bitcast %struct.TYPE_11__* %4 to i64*
  %57 = load i64, i64* %56, align 4
  %58 = call i64 @fz_transform_point(i64 %57, i32 %55)
  %59 = bitcast %struct.TYPE_11__* %11 to i64*
  store i64 %58, i64* %59, align 4
  %60 = bitcast %struct.TYPE_11__* %4 to i8*
  %61 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 8, i1 false)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pdf_array_push_real(i32* %62, i32* %63, i32 %65)
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pdf_array_push_real(i32* %67, i32* %68, i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = call i32 @pdf_dirty_annot(i32* %72, %struct.TYPE_10__* %73)
  ret void
}

declare dso_local i32 @check_allowed_subtypes(i32*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_page_transform(i32*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @fz_invert_matrix(i32) #1

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @pdf_is_array(i32*, i32*) #1

declare dso_local i32* @pdf_new_array(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_put_drop(i32*, i32, i32, i32*) #1

declare dso_local i64 @fz_transform_point(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pdf_array_push_real(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dirty_annot(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

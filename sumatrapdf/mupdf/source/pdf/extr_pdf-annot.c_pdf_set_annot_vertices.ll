; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_set_annot_vertices.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_set_annot_vertices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32 }

@Vertices = common dso_local global i32 0, align 4
@vertices_subtypes = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid number of vertices\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_set_annot_vertices(i32* %0, %struct.TYPE_10__* %1, i32 %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_11__, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = load i32, i32* @Vertices, align 4
  %24 = call i32 @PDF_NAME(i32 %23)
  %25 = load i32, i32* @vertices_subtypes, align 4
  %26 = call i32 @check_allowed_subtypes(i32* %21, %struct.TYPE_10__* %22, i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29, %4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %35 = call i32 @fz_throw(i32* %33, i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = call i32 @pdf_page_transform(i32* %37, %struct.TYPE_12__* %40, i32* null, i32* %10)
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @fz_invert_matrix(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %46, 2
  %48 = call i32* @pdf_new_array(i32* %44, i32* %45, i32 %47)
  store i32* %48, i32** %12, align 8
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %75, %36
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %49
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i64 %56
  %58 = load i32, i32* %11, align 4
  %59 = bitcast %struct.TYPE_11__* %57 to i64*
  %60 = load i64, i64* %59, align 4
  %61 = call i64 @fz_transform_point(i64 %60, i32 %58)
  %62 = bitcast %struct.TYPE_11__* %15 to i64*
  store i64 %61, i64* %62, align 4
  %63 = bitcast %struct.TYPE_11__* %13 to i8*
  %64 = bitcast %struct.TYPE_11__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 8, i1 false)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pdf_array_push_real(i32* %65, i32* %66, i32 %68)
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pdf_array_push_real(i32* %70, i32* %71, i32 %73)
  br label %75

75:                                               ; preds = %53
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %49

78:                                               ; preds = %49
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @Vertices, align 4
  %84 = call i32 @PDF_NAME(i32 %83)
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @pdf_dict_put_drop(i32* %79, i32 %82, i32 %84, i32* %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %89 = call i32 @pdf_dirty_annot(i32* %87, %struct.TYPE_10__* %88)
  ret void
}

declare dso_local i32 @check_allowed_subtypes(i32*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @pdf_page_transform(i32*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @fz_invert_matrix(i32) #1

declare dso_local i32* @pdf_new_array(i32*, i32*, i32) #1

declare dso_local i64 @fz_transform_point(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pdf_array_push_real(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_put_drop(i32*, i32, i32, i32*) #1

declare dso_local i32 @pdf_dirty_annot(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

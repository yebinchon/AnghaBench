; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_add_annot_quad_point.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_add_annot_quad_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@QuadPoints = common dso_local global i32 0, align 4
@quad_point_subtypes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_add_annot_quad_point(i32* %0, %struct.TYPE_18__* %1, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = load i32, i32* @QuadPoints, align 4
  %19 = call i32 @PDF_NAME(i32 %18)
  %20 = load i32, i32* @quad_point_subtypes, align 4
  %21 = call i32 @check_allowed_subtypes(i32* %16, %struct.TYPE_18__* %17, i32 %19, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = call i32 @pdf_page_transform(i32* %22, %struct.TYPE_20__* %25, i32* null, i32* %7)
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @fz_invert_matrix(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @QuadPoints, align 4
  %34 = call i32 @PDF_NAME(i32 %33)
  %35 = call i32* @pdf_dict_get(i32* %29, i32 %32, i32 %34)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @pdf_is_array(i32* %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %3
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32* @pdf_new_array(i32* %41, i32* %42, i32 8)
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @QuadPoints, align 4
  %49 = call i32 @PDF_NAME(i32 %48)
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @pdf_dict_put_drop(i32* %44, i32 %47, i32 %49, i32* %50)
  br label %52

52:                                               ; preds = %40, %3
  %53 = load i32, i32* %8, align 4
  call void @fz_transform_quad(%struct.TYPE_19__* sret %10, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %2, i32 %53)
  %54 = bitcast %struct.TYPE_19__* %2 to i8*
  %55 = bitcast %struct.TYPE_19__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 4 %55, i64 32, i1 false)
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pdf_array_push_real(i32* %56, i32* %57, i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @pdf_array_push_real(i32* %62, i32* %63, i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pdf_array_push_real(i32* %68, i32* %69, i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @pdf_array_push_real(i32* %74, i32* %75, i32 %78)
  %80 = load i32*, i32** %4, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pdf_array_push_real(i32* %80, i32* %81, i32 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @pdf_array_push_real(i32* %86, i32* %87, i32 %90)
  %92 = load i32*, i32** %4, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @pdf_array_push_real(i32* %92, i32* %93, i32 %96)
  %98 = load i32*, i32** %4, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @pdf_array_push_real(i32* %98, i32* %99, i32 %102)
  %104 = load i32*, i32** %4, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %106 = call i32 @pdf_dirty_annot(i32* %104, %struct.TYPE_18__* %105)
  ret void
}

declare dso_local i32 @check_allowed_subtypes(i32*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_page_transform(i32*, %struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i32 @fz_invert_matrix(i32) #1

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @pdf_is_array(i32*, i32*) #1

declare dso_local i32* @pdf_new_array(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_put_drop(i32*, i32, i32, i32*) #1

declare dso_local void @fz_transform_quad(%struct.TYPE_19__* sret, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pdf_array_push_real(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dirty_annot(i32*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

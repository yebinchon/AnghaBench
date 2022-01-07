; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_set_annot_quad_points.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_set_annot_quad_points.c"
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
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid number of quadrilaterals\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_set_annot_quad_points(i32* %0, %struct.TYPE_18__* %1, i32 %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_19__, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__, align 4
  %16 = alloca %struct.TYPE_19__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %8, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %24 = load i32, i32* @QuadPoints, align 4
  %25 = call i32 @PDF_NAME(i32 %24)
  %26 = load i32, i32* @quad_point_subtypes, align 4
  %27 = call i32 @check_allowed_subtypes(i32* %22, %struct.TYPE_18__* %23, i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %32 = icmp ne %struct.TYPE_19__* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30, %4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %36 = call i32 @fz_throw(i32* %34, i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = call i32 @pdf_page_transform(i32* %38, %struct.TYPE_20__* %41, i32* null, i32* %10)
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @fz_invert_matrix(i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32* @pdf_new_array(i32* %45, i32* %46, i32 %47)
  store i32* %48, i32** %12, align 8
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %111, %37
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %114

53:                                               ; preds = %49
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i64 %56
  %58 = load i32, i32* %11, align 4
  %59 = bitcast %struct.TYPE_19__* %16 to i8*
  %60 = bitcast %struct.TYPE_19__* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 4 %60, i64 32, i1 false)
  call void @fz_transform_quad(%struct.TYPE_19__* sret %15, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %16, i32 %58)
  %61 = bitcast %struct.TYPE_19__* %13 to i8*
  %62 = bitcast %struct.TYPE_19__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 32, i1 false)
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pdf_array_push_real(i32* %63, i32* %64, i32 %67)
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pdf_array_push_real(i32* %69, i32* %70, i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pdf_array_push_real(i32* %75, i32* %76, i32 %79)
  %81 = load i32*, i32** %5, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @pdf_array_push_real(i32* %81, i32* %82, i32 %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pdf_array_push_real(i32* %87, i32* %88, i32 %91)
  %93 = load i32*, i32** %5, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @pdf_array_push_real(i32* %93, i32* %94, i32 %97)
  %99 = load i32*, i32** %5, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @pdf_array_push_real(i32* %99, i32* %100, i32 %103)
  %105 = load i32*, i32** %5, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @pdf_array_push_real(i32* %105, i32* %106, i32 %109)
  br label %111

111:                                              ; preds = %53
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %14, align 4
  br label %49

114:                                              ; preds = %49
  %115 = load i32*, i32** %5, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @QuadPoints, align 4
  %120 = call i32 @PDF_NAME(i32 %119)
  %121 = load i32*, i32** %12, align 8
  %122 = call i32 @pdf_dict_put_drop(i32* %115, i32 %118, i32 %120, i32* %121)
  %123 = load i32*, i32** %5, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %125 = call i32 @pdf_dirty_annot(i32* %123, %struct.TYPE_18__* %124)
  ret void
}

declare dso_local i32 @check_allowed_subtypes(i32*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @pdf_page_transform(i32*, %struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i32 @fz_invert_matrix(i32) #1

declare dso_local i32* @pdf_new_array(i32*, i32*, i32) #1

declare dso_local void @fz_transform_quad(%struct.TYPE_19__* sret, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pdf_array_push_real(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_put_drop(i32*, i32, i32, i32*) #1

declare dso_local i32 @pdf_dirty_annot(i32*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

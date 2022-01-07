; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_bound_annot.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_bound_annot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@Rect = common dso_local global i32 0, align 4
@F = common dso_local global i32 0, align 4
@PDF_ANNOT_IS_NO_ROTATE = common dso_local global i32 0, align 4
@Rotate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pdf_bound_annot(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @Rect, align 4
  %17 = call i32 @PDF_NAME(i32 %16)
  %18 = call i64 @pdf_dict_get_rect(i32* %12, i32 %15, i32 %17)
  %19 = bitcast %struct.TYPE_12__* %9 to i64*
  store i64 %18, i64* %19, align 4
  %20 = bitcast %struct.TYPE_12__* %7 to i8*
  %21 = bitcast %struct.TYPE_12__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 8, i1 false)
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = call i32 @pdf_page_transform(i32* %22, %struct.TYPE_14__* %25, i32* null, i32* %6)
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @F, align 4
  %32 = call i32 @PDF_NAME(i32 %31)
  %33 = call i32 @pdf_dict_get_int(i32* %27, i32 %30, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @PDF_ANNOT_IS_NO_ROTATE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %78

38:                                               ; preds = %2
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @Rotate, align 4
  %47 = call i32 @PDF_NAME(i32 %46)
  %48 = call i32 @pdf_dict_get_inheritable(i32* %40, i32 %45, i32 %47)
  %49 = call i32 @pdf_to_int(i32* %39, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @fz_transform_point_xy(i32 %51, i32 %53, i32 %54)
  %56 = bitcast %struct.TYPE_13__* %11 to i64*
  store i64 %55, i64* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 0, %59
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 0, %62
  %64 = call i32 @fz_translate(i32 %60, i32 %63)
  %65 = call i32 @fz_concat(i32 %57, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 0, %67
  %69 = call i32 @fz_rotate(i32 %68)
  %70 = call i32 @fz_concat(i32 %66, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @fz_translate(i32 %73, i32 %75)
  %77 = call i32 @fz_concat(i32 %71, i32 %76)
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %38, %2
  %79 = load i32, i32* %6, align 4
  %80 = bitcast %struct.TYPE_12__* %7 to i64*
  %81 = load i64, i64* %80, align 4
  %82 = call i64 @fz_transform_rect(i64 %81, i32 %79)
  %83 = bitcast %struct.TYPE_12__* %3 to i64*
  store i64 %82, i64* %83, align 4
  %84 = bitcast %struct.TYPE_12__* %3 to i64*
  %85 = load i64, i64* %84, align 4
  ret i64 %85
}

declare dso_local i64 @pdf_dict_get_rect(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pdf_page_transform(i32*, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @pdf_dict_get_int(i32*, i32, i32) #1

declare dso_local i32 @pdf_to_int(i32*, i32) #1

declare dso_local i32 @pdf_dict_get_inheritable(i32*, i32, i32) #1

declare dso_local i64 @fz_transform_point_xy(i32, i32, i32) #1

declare dso_local i32 @fz_concat(i32, i32) #1

declare dso_local i32 @fz_translate(i32, i32) #1

declare dso_local i32 @fz_rotate(i32) #1

declare dso_local i64 @fz_transform_rect(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

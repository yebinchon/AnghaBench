; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-clean.c_pdf_redact_text_filter.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-clean.c_pdf_redact_text_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@Subtype = common dso_local global i32 0, align 4
@Redact = common dso_local global i32 0, align 4
@QuadPoints = common dso_local global i32 0, align 4
@Rect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32, i64, i64, i32)* @pdf_redact_text_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdf_redact_text_filter(i32* %0, i8* %1, i32* %2, i32 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__, align 4
  %10 = alloca %struct.TYPE_12__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_12__, align 4
  %24 = bitcast %struct.TYPE_12__* %9 to i64*
  store i64 %4, i64* %24, align 4
  %25 = bitcast %struct.TYPE_12__* %10 to i64*
  store i64 %5, i64* %25, align 4
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %26 = load i8*, i8** %12, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %16, align 8
  %28 = bitcast %struct.TYPE_12__* %9 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = bitcast %struct.TYPE_12__* %10 to i64*
  %31 = load i64, i64* %30, align 4
  %32 = call i64 @fz_concat(i64 %29, i64 %31)
  %33 = bitcast %struct.TYPE_12__* %23 to i64*
  store i64 %32, i64* %33, align 4
  %34 = bitcast %struct.TYPE_12__* %9 to i8*
  %35 = bitcast %struct.TYPE_12__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 8, i1 false)
  %36 = load i32*, i32** %11, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = call %struct.TYPE_11__* @pdf_first_annot(i32* %36, i32* %37)
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %17, align 8
  br label %39

39:                                               ; preds = %110, %7
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %114

42:                                               ; preds = %39
  %43 = load i32*, i32** %11, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @Subtype, align 4
  %48 = call i32* @PDF_NAME(i32 %47)
  %49 = call i32* @pdf_dict_get(i32* %43, i32 %46, i32* %48)
  %50 = load i32, i32* @Redact, align 4
  %51 = call i32* @PDF_NAME(i32 %50)
  %52 = icmp eq i32* %49, %51
  br i1 %52, label %53, label %109

53:                                               ; preds = %42
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @QuadPoints, align 4
  %59 = call i32* @PDF_NAME(i32 %58)
  %60 = call i32* @pdf_dict_get(i32* %54, i32 %57, i32* %59)
  store i32* %60, i32** %18, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32*, i32** %18, align 8
  %63 = call i32 @pdf_array_len(i32* %61, i32* %62)
  store i32 %63, i32* %22, align 4
  %64 = load i32, i32* %22, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %53
  store i32 0, i32* %21, align 4
  br label %67

67:                                               ; preds = %86, %66
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %22, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load i32*, i32** %11, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = load i32, i32* %21, align 4
  %75 = call i32 @pdf_to_quad(i32* %72, i32* %73, i32 %74)
  store i32 %75, i32* %20, align 4
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @fz_make_point(i32 %77, i32 %79)
  %81 = load i32, i32* %20, align 4
  %82 = call i64 @fz_is_point_inside_quad(i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  store i32 1, i32* %8, align 4
  br label %115

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %21, align 4
  %88 = add nsw i32 %87, 8
  store i32 %88, i32* %21, align 4
  br label %67

89:                                               ; preds = %67
  br label %108

90:                                               ; preds = %53
  %91 = load i32*, i32** %11, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @Rect, align 4
  %96 = call i32* @PDF_NAME(i32 %95)
  %97 = call i32 @pdf_dict_get_rect(i32* %91, i32 %94, i32* %96)
  store i32 %97, i32* %19, align 4
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @fz_make_point(i32 %99, i32 %101)
  %103 = load i32, i32* %19, align 4
  %104 = call i64 @fz_is_point_inside_rect(i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %90
  store i32 1, i32* %8, align 4
  br label %115

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %107, %89
  br label %109

109:                                              ; preds = %108, %42
  br label %110

110:                                              ; preds = %109
  %111 = load i32*, i32** %11, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %113 = call %struct.TYPE_11__* @pdf_next_annot(i32* %111, %struct.TYPE_11__* %112)
  store %struct.TYPE_11__* %113, %struct.TYPE_11__** %17, align 8
  br label %39

114:                                              ; preds = %39
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %114, %106, %84
  %116 = load i32, i32* %8, align 4
  ret i32 %116
}

declare dso_local i64 @fz_concat(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_11__* @pdf_first_annot(i32*, i32*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32, i32*) #1

declare dso_local i32* @PDF_NAME(i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32 @pdf_to_quad(i32*, i32*, i32) #1

declare dso_local i64 @fz_is_point_inside_quad(i32, i32) #1

declare dso_local i32 @fz_make_point(i32, i32) #1

declare dso_local i32 @pdf_dict_get_rect(i32*, i32, i32*) #1

declare dso_local i64 @fz_is_point_inside_rect(i32, i32) #1

declare dso_local %struct.TYPE_11__* @pdf_next_annot(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

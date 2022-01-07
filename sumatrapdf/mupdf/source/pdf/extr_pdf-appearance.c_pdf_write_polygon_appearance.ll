; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_polygon_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_polygon_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i8* }

@fz_empty_rect = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@Vertices = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%g %g m\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%g %g l\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"h\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*, i32*, %struct.TYPE_15__*, i32)* @pdf_write_polygon_appearance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_write_polygon_appearance(i32* %0, %struct.TYPE_14__* %1, i32* %2, %struct.TYPE_15__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__, align 8
  %18 = alloca %struct.TYPE_15__, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call float @pdf_write_border_appearance(i32* %19, %struct.TYPE_14__* %20, i32* %21)
  store float %22, float* %15, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @pdf_write_stroke_color_appearance(i32* %23, %struct.TYPE_14__* %24, i32* %25)
  store i32 %26, i32* %16, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = bitcast %struct.TYPE_15__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.TYPE_15__* @fz_empty_rect to i8*), i64 32, i1 false)
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @Vertices, align 4
  %34 = call i32 @PDF_NAME(i32 %33)
  %35 = call i32* @pdf_dict_get(i32* %29, i32 %32, i32 %34)
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @pdf_array_len(i32* %36, i32* %37)
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %127

42:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %107, %42
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %110

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %13, align 4
  %51 = mul nsw i32 %50, 2
  %52 = add nsw i32 %51, 0
  %53 = call i8* @pdf_array_get_real(i32* %48, i32* %49, i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %13, align 4
  %58 = mul nsw i32 %57, 2
  %59 = add nsw i32 %58, 1
  %60 = call i8* @pdf_array_get_real(i32* %55, i32* %56, i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %47
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 3
  store i8* %66, i8** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  store i8* %72, i8** %76, align 8
  br label %87

77:                                               ; preds = %47
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %80 = bitcast %struct.TYPE_16__* %12 to { i8*, i8* }*
  %81 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %80, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  call void @fz_include_point_in_rect(%struct.TYPE_15__* sret %17, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %79, i8* %82, i8* %84)
  %85 = bitcast %struct.TYPE_15__* %78 to i8*
  %86 = bitcast %struct.TYPE_15__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 32, i1 false)
  br label %87

87:                                               ; preds = %77, %64
  %88 = load i32, i32* %13, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i32*, i32** %6, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @fz_append_printf(i32* %91, i32* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %94, i8* %96)
  br label %106

98:                                               ; preds = %87
  %99 = load i32*, i32** %6, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @fz_append_printf(i32* %99, i32* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %102, i8* %104)
  br label %106

106:                                              ; preds = %98, %90
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %43

110:                                              ; preds = %43
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32*, i32** %6, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @fz_append_string(i32* %114, i32* %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i32*, i32** %6, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %16, align 4
  %121 = call i32 @maybe_stroke(i32* %118, i32* %119, i32 %120)
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %124 = load float, float* %15, align 4
  call void @fz_expand_rect(%struct.TYPE_15__* sret %18, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %123, float %124)
  %125 = bitcast %struct.TYPE_15__* %122 to i8*
  %126 = bitcast %struct.TYPE_15__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %126, i64 32, i1 false)
  br label %127

127:                                              ; preds = %117, %5
  ret void
}

declare dso_local float @pdf_write_border_appearance(i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @pdf_write_stroke_color_appearance(i32*, %struct.TYPE_14__*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i8* @pdf_array_get_real(i32*, i32*, i32) #1

declare dso_local void @fz_include_point_in_rect(%struct.TYPE_15__* sret, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8, i8*, i8*) #1

declare dso_local i32 @fz_append_printf(i32*, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @fz_append_string(i32*, i32*, i8*) #1

declare dso_local i32 @maybe_stroke(i32*, i32*, i32) #1

declare dso_local void @fz_expand_rect(%struct.TYPE_15__* sret, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

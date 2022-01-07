; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_clip_stroke_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_clip_stroke_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i64, i32 }

@__const.svg_dev_clip_stroke_text.white = private unnamed_addr constant [3 x float] [float 2.550000e+02, float 2.550000e+02, float 2.550000e+02], align 4
@.str = private unnamed_addr constant [53 x i8] c"<mask id=\22ma%d\22 x=\22%g\22 y=\22%g\22 width=\22%g\22 height=\22%g\22\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c" maskUnits=\22userSpaceOnUse\22 maskContentUnits=\22userSpaceOnUse\22>\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"<text\00", align 1
@fz_identity = common dso_local global i32 0, align 4
@fz_default_color_params = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"</mask>\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"<g mask=\22url(#ma%d)\22>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_19__*, i32*, i32, %struct.TYPE_20__*)* @svg_dev_clip_stroke_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_dev_clip_stroke_text(i32* %0, i32* %1, %struct.TYPE_19__* %2, i32* %3, i32 %4, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_20__, align 8
  %15 = alloca i32, align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca %struct.TYPE_20__, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %12, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  store i32 %24, i32* %15, align 4
  %26 = bitcast [3 x float]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast ([3 x float]* @__const.svg_dev_clip_stroke_text.white to i8*), i64 12, i1 false)
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %29 = load i32, i32* %11, align 4
  call void @fz_bound_text(%struct.TYPE_20__* sret %19, i32* %27, %struct.TYPE_19__* %28, i32* null, i32 %29)
  %30 = bitcast %struct.TYPE_20__* %14 to i8*
  %31 = bitcast %struct.TYPE_20__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 32, i1 false)
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %34 = call i32* @start_def(i32* %32, %struct.TYPE_17__* %33)
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %15, align 4
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %43, %45
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %48, %50
  %52 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %35, i32* %36, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %39, i64 %41, i64 %46, i64 %51)
  %53 = load i32*, i32** %7, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %53, i32* %54, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %6
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %18, align 8
  br label %64

64:                                               ; preds = %88, %60
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %66 = icmp ne %struct.TYPE_18__* %65, null
  br i1 %66, label %67, label %92

67:                                               ; preds = %64
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %68, i32* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32*, i32** %7, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* @fz_identity, align 4
  %75 = call i32 @svg_dev_stroke_state(i32* %71, %struct.TYPE_17__* %72, i32* %73, i32 %74)
  %76 = load i32*, i32** %7, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @fz_device_rgb(i32* %78)
  %80 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 0
  %81 = load i32, i32* @fz_default_color_params, align 4
  %82 = call i32 @svg_dev_stroke_color(i32* %76, %struct.TYPE_17__* %77, i32 %79, float* %80, i32 1, i32 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %87 = call i32 @svg_dev_text_span(i32* %83, %struct.TYPE_17__* %84, i32 %85, %struct.TYPE_18__* %86)
  br label %88

88:                                               ; preds = %67
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  store %struct.TYPE_18__* %91, %struct.TYPE_18__** %18, align 8
  br label %64

92:                                               ; preds = %64
  br label %122

93:                                               ; preds = %6
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  store %struct.TYPE_18__* %96, %struct.TYPE_18__** %18, align 8
  br label %97

97:                                               ; preds = %117, %93
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %99 = icmp ne %struct.TYPE_18__* %98, null
  br i1 %99, label %100, label %121

100:                                              ; preds = %97
  %101 = load i32*, i32** %7, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32* @svg_dev_text_span_as_paths_defs(i32* %101, i32* %102, %struct.TYPE_18__* %103, i32 %104)
  store i32* %105, i32** %17, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @fz_device_rgb(i32* %111)
  %113 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 0
  %114 = load i32*, i32** %17, align 8
  %115 = load i32, i32* @fz_default_color_params, align 4
  %116 = call i32 @svg_dev_text_span_as_paths_stroke(i32* %106, i32* %107, %struct.TYPE_18__* %108, i32* %109, i32 %110, i32 %112, float* %113, float 1.000000e+00, i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %100
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %119, align 8
  store %struct.TYPE_18__* %120, %struct.TYPE_18__** %18, align 8
  br label %97

121:                                              ; preds = %97
  br label %122

122:                                              ; preds = %121, %92
  %123 = load i32*, i32** %7, align 8
  %124 = load i32*, i32** %13, align 8
  %125 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %123, i32* %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32*, i32** %7, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %128 = call i32* @end_def(i32* %126, %struct.TYPE_17__* %127)
  store i32* %128, i32** %13, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %15, align 4
  %132 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %129, i32* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @fz_bound_text(%struct.TYPE_20__* sret, i32*, %struct.TYPE_19__*, i32*, i32) #2

declare dso_local i32* @start_def(i32*, %struct.TYPE_17__*) #2

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #2

declare dso_local i32 @svg_dev_stroke_state(i32*, %struct.TYPE_17__*, i32*, i32) #2

declare dso_local i32 @svg_dev_stroke_color(i32*, %struct.TYPE_17__*, i32, float*, i32, i32) #2

declare dso_local i32 @fz_device_rgb(i32*) #2

declare dso_local i32 @svg_dev_text_span(i32*, %struct.TYPE_17__*, i32, %struct.TYPE_18__*) #2

declare dso_local i32* @svg_dev_text_span_as_paths_defs(i32*, i32*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @svg_dev_text_span_as_paths_stroke(i32*, i32*, %struct.TYPE_18__*, i32*, i32, i32, float*, float, i32*, i32) #2

declare dso_local i32* @end_def(i32*, %struct.TYPE_17__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_clip_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_clip_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i64, i32, i32* }

@__const.svg_dev_clip_text.white = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@.str = private unnamed_addr constant [53 x i8] c"<mask id=\22ma%d\22 x=\22%g\22 y=\22%g\22 width=\22%g\22 height=\22%g\22\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c" maskUnits=\22userSpaceOnUse\22 maskContentUnits=\22userSpaceOnUse\22>\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"<text\00", align 1
@fz_default_color_params = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"</mask>\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"<g mask=\22url(#ma%d)\22>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_18__*, i32, %struct.TYPE_19__*)* @svg_dev_clip_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_dev_clip_text(i32* %0, i32* %1, %struct.TYPE_18__* %2, i32 %3, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_19__, align 8
  %13 = alloca i32, align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_19__, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %10, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  store i32 %25, i32* %13, align 4
  %27 = bitcast [3 x float]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 bitcast ([3 x float]* @__const.svg_dev_clip_text.white to i8*), i64 12, i1 false)
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %30 = load i32, i32* %9, align 4
  call void @fz_bound_text(%struct.TYPE_19__* sret %17, i32* %28, %struct.TYPE_18__* %29, i32* null, i32 %30)
  %31 = bitcast %struct.TYPE_19__* %12 to i8*
  %32 = bitcast %struct.TYPE_19__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %35 = call i32* @start_def(i32* %33, %struct.TYPE_16__* %34)
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %13, align 4
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %44, %46
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %49, %51
  %53 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %36, i32* %37, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %38, i64 %40, i64 %42, i64 %47, i64 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %54, i32* %55, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %5
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %63, align 8
  store %struct.TYPE_17__* %64, %struct.TYPE_17__** %16, align 8
  br label %65

65:                                               ; preds = %84, %61
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %67 = icmp ne %struct.TYPE_17__* %66, null
  br i1 %67, label %68, label %88

68:                                               ; preds = %65
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %69, i32* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @fz_device_rgb(i32* %74)
  %76 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %77 = load i32, i32* @fz_default_color_params, align 4
  %78 = call i32 @svg_dev_fill_color(i32* %72, %struct.TYPE_16__* %73, i32 %75, float* %76, i32 1, i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %83 = call i32 @svg_dev_text_span(i32* %79, %struct.TYPE_16__* %80, i32 %81, %struct.TYPE_17__* %82)
  br label %84

84:                                               ; preds = %68
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  store %struct.TYPE_17__* %87, %struct.TYPE_17__** %16, align 8
  br label %65

88:                                               ; preds = %65
  br label %117

89:                                               ; preds = %5
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %91, align 8
  store %struct.TYPE_17__* %92, %struct.TYPE_17__** %16, align 8
  br label %93

93:                                               ; preds = %112, %89
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %95 = icmp ne %struct.TYPE_17__* %94, null
  br i1 %95, label %96, label %116

96:                                               ; preds = %93
  %97 = load i32*, i32** %6, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32* @svg_dev_text_span_as_paths_defs(i32* %97, i32* %98, %struct.TYPE_17__* %99, i32 %100)
  store i32* %101, i32** %15, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @fz_device_rgb(i32* %106)
  %108 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %109 = load i32*, i32** %15, align 8
  %110 = load i32, i32* @fz_default_color_params, align 4
  %111 = call i32 @svg_dev_text_span_as_paths_fill(i32* %102, i32* %103, %struct.TYPE_17__* %104, i32 %105, i32 %107, float* %108, float 1.000000e+00, i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %96
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  store %struct.TYPE_17__* %115, %struct.TYPE_17__** %16, align 8
  br label %93

116:                                              ; preds = %93
  br label %117

117:                                              ; preds = %116, %88
  %118 = load i32*, i32** %6, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %118, i32* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %121 = load i32*, i32** %6, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %123 = call i32* @end_def(i32* %121, %struct.TYPE_16__* %122)
  store i32* %123, i32** %11, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %124, i32* %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @fz_bound_text(%struct.TYPE_19__* sret, i32*, %struct.TYPE_18__*, i32*, i32) #2

declare dso_local i32* @start_def(i32*, %struct.TYPE_16__*) #2

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #2

declare dso_local i32 @svg_dev_fill_color(i32*, %struct.TYPE_16__*, i32, float*, i32, i32) #2

declare dso_local i32 @fz_device_rgb(i32*) #2

declare dso_local i32 @svg_dev_text_span(i32*, %struct.TYPE_16__*, i32, %struct.TYPE_17__*) #2

declare dso_local i32* @svg_dev_text_span_as_paths_defs(i32*, i32*, %struct.TYPE_17__*, i32) #2

declare dso_local i32 @svg_dev_text_span_as_paths_fill(i32*, i32*, %struct.TYPE_17__*, i32, i32, float*, float, i32*, i32) #2

declare dso_local i32* @end_def(i32*, %struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

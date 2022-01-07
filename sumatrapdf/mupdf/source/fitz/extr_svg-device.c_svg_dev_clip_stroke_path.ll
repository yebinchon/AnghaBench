; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_clip_stroke_path.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_clip_stroke_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32 }

@__const.svg_dev_clip_stroke_path.white = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@.str = private unnamed_addr constant [116 x i8] c"<mask id=\22ma%d\22 x=\22%g\22 y=\22%g\22 width=\22%g\22 height=\22%g\22 maskUnits=\22userSpaceOnUse\22 maskContentUnits=\22userSpaceOnUse\22>\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"<path\00", align 1
@fz_identity = common dso_local global i32 0, align 4
@fz_default_color_params = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"/>\0A</mask>\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"<g mask=\22url(#ma%d)\22>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, %struct.TYPE_12__*)* @svg_dev_clip_stroke_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_dev_clip_stroke_path(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca i32, align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca %struct.TYPE_12__, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %12, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  store i32 %22, i32* %15, align 4
  %24 = bitcast [3 x float]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast ([3 x float]* @__const.svg_dev_clip_stroke_path.white to i8*), i64 12, i1 false)
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %11, align 4
  call void @fz_bound_path(%struct.TYPE_12__* sret %17, i32* %25, i32* %26, i32* %27, i32 %28)
  %29 = bitcast %struct.TYPE_12__* %14 to i8*
  %30 = bitcast %struct.TYPE_12__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 32, i1 false)
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %33 = call i32* @start_def(i32* %31, %struct.TYPE_11__* %32)
  store i32* %33, i32** %13, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* %15, align 4
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %42, %44
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %47, %49
  %51 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %34, i32* %35, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %38, i64 %40, i64 %45, i64 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %52, i32* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @svg_dev_ctm(i32* %55, %struct.TYPE_11__* %56, i32 %57)
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* @fz_identity, align 4
  %63 = call i32 @svg_dev_stroke_state(i32* %59, %struct.TYPE_11__* %60, i32* %61, i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @fz_device_rgb(i32* %66)
  %68 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 0
  %69 = load i32, i32* @fz_default_color_params, align 4
  %70 = call i32 @svg_dev_stroke_color(i32* %64, %struct.TYPE_11__* %65, i32 %67, float* %68, i32 1, i32 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @svg_dev_path(i32* %71, %struct.TYPE_11__* %72, i32* %73)
  %75 = load i32*, i32** %7, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %75, i32* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32*, i32** %7, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %80 = call i32* @end_def(i32* %78, %struct.TYPE_11__* %79)
  store i32* %80, i32** %13, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %81, i32* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @fz_bound_path(%struct.TYPE_12__* sret, i32*, i32*, i32*, i32) #2

declare dso_local i32* @start_def(i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #2

declare dso_local i32 @svg_dev_ctm(i32*, %struct.TYPE_11__*, i32) #2

declare dso_local i32 @svg_dev_stroke_state(i32*, %struct.TYPE_11__*, i32*, i32) #2

declare dso_local i32 @svg_dev_stroke_color(i32*, %struct.TYPE_11__*, i32, float*, i32, i32) #2

declare dso_local i32 @fz_device_rgb(i32*) #2

declare dso_local i32 @svg_dev_path(i32*, %struct.TYPE_11__*, i32*) #2

declare dso_local i32* @end_def(i32*, %struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

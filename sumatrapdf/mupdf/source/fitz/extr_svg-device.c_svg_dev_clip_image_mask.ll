; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_clip_image_mask.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_clip_image_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { float, float }
%struct.TYPE_16__ = type { float, float, i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"<mask id=\22ma%d\22>\0A<g\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@fz_default_color_params = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"</g>\0A</mask>\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"<g mask=\22url(#ma%d)\22>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_17__*, <2 x float>, i32, i32)* @svg_dev_clip_image_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_dev_clip_image_mask(i32* %0, i32* %1, %struct.TYPE_17__* %2, <2 x float> %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_16__, align 4
  %8 = alloca { <2 x float>, i32 }, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_16__, align 4
  %16 = alloca %struct.TYPE_16__, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_16__, align 4
  %19 = alloca { <2 x float>, i32 }, align 4
  %20 = alloca { <2 x float>, i32 }, align 4
  %21 = alloca { <2 x float>, i32 }, align 8
  %22 = alloca { <2 x float>, i32 }, align 4
  %23 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %8, i32 0, i32 0
  store <2 x float> %3, <2 x float>* %23, align 4
  %24 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %8, i32 0, i32 1
  store i32 %4, i32* %24, align 4
  %25 = bitcast %struct.TYPE_16__* %7 to i8*
  %26 = bitcast { <2 x float>, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 12, i1 false)
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %11, align 8
  store i32 %5, i32* %12, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = bitcast i32* %27 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %13, align 8
  %29 = bitcast %struct.TYPE_16__* %15 to i8*
  %30 = bitcast %struct.TYPE_16__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 12, i1 false)
  %31 = bitcast %struct.TYPE_16__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 12, i1 false)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load float, float* %37, align 4
  %39 = fdiv float 1.000000e+00, %38
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  store float %39, float* %40, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load float, float* %42, align 4
  %44 = fdiv float 1.000000e+00, %43
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  store float %44, float* %45, align 4
  %46 = bitcast { <2 x float>, i32 }* %19 to i8*
  %47 = bitcast %struct.TYPE_16__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 12, i1 false)
  %48 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %19, i32 0, i32 0
  %49 = load <2 x float>, <2 x float>* %48, align 4
  %50 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %19, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = bitcast { <2 x float>, i32 }* %20 to i8*
  %53 = bitcast %struct.TYPE_16__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 12, i1 false)
  %54 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %20, i32 0, i32 0
  %55 = load <2 x float>, <2 x float>* %54, align 4
  %56 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %20, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call { <2 x float>, i32 } @fz_concat(<2 x float> %49, i32 %51, <2 x float> %55, i32 %57)
  store { <2 x float>, i32 } %58, { <2 x float>, i32 }* %21, align 8
  %59 = bitcast { <2 x float>, i32 }* %21 to i8*
  %60 = bitcast %struct.TYPE_16__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 8 %59, i64 12, i1 false)
  %61 = bitcast %struct.TYPE_16__* %15 to i8*
  %62 = bitcast %struct.TYPE_16__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 12, i1 false)
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %65 = call i32* @start_def(i32* %63, %struct.TYPE_15__* %64)
  store i32* %65, i32** %14, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = load i32, i32* %17, align 4
  %69 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %66, i32* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %72 = bitcast { <2 x float>, i32 }* %22 to i8*
  %73 = bitcast %struct.TYPE_16__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 12, i1 false)
  %74 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %22, i32 0, i32 0
  %75 = load <2 x float>, <2 x float>* %74, align 4
  %76 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %22, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @svg_dev_ctm(i32* %70, %struct.TYPE_15__* %71, <2 x float> %75, i32 %77)
  %79 = load i32*, i32** %9, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %79, i32* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32*, i32** %9, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %85 = load i32, i32* @fz_default_color_params, align 4
  %86 = call i32 @svg_send_image(i32* %82, %struct.TYPE_15__* %83, %struct.TYPE_17__* %84, i32 %85)
  %87 = load i32*, i32** %9, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %87, i32* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32*, i32** %9, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %92 = call i32* @end_def(i32* %90, %struct.TYPE_15__* %91)
  store i32* %92, i32** %14, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* %17, align 4
  %96 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %93, i32* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local { <2 x float>, i32 } @fz_concat(<2 x float>, i32, <2 x float>, i32) #2

declare dso_local i32* @start_def(i32*, %struct.TYPE_15__*) #2

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #2

declare dso_local i32 @svg_dev_ctm(i32*, %struct.TYPE_15__*, <2 x float>, i32) #2

declare dso_local i32 @svg_send_image(i32*, %struct.TYPE_15__*, %struct.TYPE_17__*, i32) #2

declare dso_local i32* @end_def(i32*, %struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

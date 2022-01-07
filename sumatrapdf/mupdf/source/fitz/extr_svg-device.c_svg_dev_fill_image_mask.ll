; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_fill_image_mask.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_fill_image_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { float, float }
%struct.TYPE_17__ = type { float, float, i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"<mask id=\22ma%d\22>\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"</mask>\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"<rect x=\220\22 y=\220\22 width=\22%d\22 height=\22%d\22\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c" mask=\22url(#ma%d)\22/>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_18__*, <2 x float>, i32, i32*, float*, float, i32)* @svg_dev_fill_image_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_dev_fill_image_mask(i32* %0, i32* %1, %struct.TYPE_18__* %2, <2 x float> %3, i32 %4, i32* %5, float* %6, float %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_17__, align 4
  %11 = alloca { <2 x float>, i32 }, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_17__, align 4
  %22 = alloca %struct.TYPE_17__, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_17__, align 4
  %25 = alloca { <2 x float>, i32 }, align 4
  %26 = alloca { <2 x float>, i32 }, align 4
  %27 = alloca { <2 x float>, i32 }, align 8
  %28 = alloca { <2 x float>, i32 }, align 4
  %29 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %11, i32 0, i32 0
  store <2 x float> %3, <2 x float>* %29, align 4
  %30 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %11, i32 0, i32 1
  store i32 %4, i32* %30, align 4
  %31 = bitcast %struct.TYPE_17__* %10 to i8*
  %32 = bitcast { <2 x float>, i32 }* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 12, i1 false)
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %14, align 8
  store i32* %5, i32** %15, align 8
  store float* %6, float** %16, align 8
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %33 = load i32*, i32** %13, align 8
  %34 = bitcast i32* %33 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %19, align 8
  %35 = bitcast %struct.TYPE_17__* %21 to i8*
  %36 = bitcast %struct.TYPE_17__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 12, i1 false)
  %37 = bitcast %struct.TYPE_17__* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %37, i8 0, i64 12, i1 false)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  store i32 %40, i32* %23, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load float, float* %43, align 4
  %45 = fdiv float 1.000000e+00, %44
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  store float %45, float* %46, align 4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load float, float* %48, align 4
  %50 = fdiv float 1.000000e+00, %49
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  store float %50, float* %51, align 4
  %52 = bitcast { <2 x float>, i32 }* %25 to i8*
  %53 = bitcast %struct.TYPE_17__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 12, i1 false)
  %54 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %25, i32 0, i32 0
  %55 = load <2 x float>, <2 x float>* %54, align 4
  %56 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %25, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = bitcast { <2 x float>, i32 }* %26 to i8*
  %59 = bitcast %struct.TYPE_17__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 12, i1 false)
  %60 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %26, i32 0, i32 0
  %61 = load <2 x float>, <2 x float>* %60, align 4
  %62 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %26, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call { <2 x float>, i32 } @fz_concat(<2 x float> %55, i32 %57, <2 x float> %61, i32 %63)
  store { <2 x float>, i32 } %64, { <2 x float>, i32 }* %27, align 8
  %65 = bitcast { <2 x float>, i32 }* %27 to i8*
  %66 = bitcast %struct.TYPE_17__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 8 %65, i64 12, i1 false)
  %67 = bitcast %struct.TYPE_17__* %21 to i8*
  %68 = bitcast %struct.TYPE_17__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 12, i1 false)
  %69 = load i32*, i32** %12, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %71 = call i32* @start_def(i32* %69, %struct.TYPE_16__* %70)
  store i32* %71, i32** %20, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = load i32*, i32** %20, align 8
  %74 = load i32, i32* %23, align 4
  %75 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %72, i32* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32*, i32** %12, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %79 = load i32, i32* %18, align 4
  %80 = call i32 @svg_send_image(i32* %76, %struct.TYPE_16__* %77, %struct.TYPE_18__* %78, i32 %79)
  %81 = load i32*, i32** %12, align 8
  %82 = load i32*, i32** %20, align 8
  %83 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %81, i32* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32*, i32** %12, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %86 = call i32* @end_def(i32* %84, %struct.TYPE_16__* %85)
  store i32* %86, i32** %20, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = load i32*, i32** %20, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load float, float* %90, align 4
  %92 = fpext float %91 to double
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load float, float* %94, align 4
  %96 = fpext float %95 to double
  %97 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %87, i32* %88, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), double %92, double %96)
  %98 = load i32*, i32** %12, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = load float*, float** %16, align 8
  %102 = load float, float* %17, align 4
  %103 = load i32, i32* %18, align 4
  %104 = call i32 @svg_dev_fill_color(i32* %98, %struct.TYPE_16__* %99, i32* %100, float* %101, float %102, i32 %103)
  %105 = load i32*, i32** %12, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %107 = bitcast { <2 x float>, i32 }* %28 to i8*
  %108 = bitcast %struct.TYPE_17__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 %108, i64 12, i1 false)
  %109 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %28, i32 0, i32 0
  %110 = load <2 x float>, <2 x float>* %109, align 4
  %111 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %28, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @svg_dev_ctm(i32* %105, %struct.TYPE_16__* %106, <2 x float> %110, i32 %112)
  %114 = load i32*, i32** %12, align 8
  %115 = load i32*, i32** %20, align 8
  %116 = load i32, i32* %23, align 4
  %117 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %114, i32* %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local { <2 x float>, i32 } @fz_concat(<2 x float>, i32, <2 x float>, i32) #2

declare dso_local i32* @start_def(i32*, %struct.TYPE_16__*) #2

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #2

declare dso_local i32 @svg_send_image(i32*, %struct.TYPE_16__*, %struct.TYPE_18__*, i32) #2

declare dso_local i32* @end_def(i32*, %struct.TYPE_16__*) #2

declare dso_local i32 @svg_dev_fill_color(i32*, %struct.TYPE_16__*, i32*, float*, float, i32) #2

declare dso_local i32 @svg_dev_ctm(i32*, %struct.TYPE_16__*, <2 x float>, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

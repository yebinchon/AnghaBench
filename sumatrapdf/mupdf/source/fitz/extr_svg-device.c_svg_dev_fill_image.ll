; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_fill_image.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_fill_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { float, float }
%struct.TYPE_14__ = type { float, float, i32 }
%struct.TYPE_13__ = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"<g\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" opacity=\22%g\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"</g>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_15__*, <2 x float>, i32, float, i32)* @svg_dev_fill_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_dev_fill_image(i32* %0, i32* %1, %struct.TYPE_15__* %2, <2 x float> %3, i32 %4, float %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_14__, align 4
  %9 = alloca { <2 x float>, i32 }, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_14__, align 4
  %18 = alloca %struct.TYPE_14__, align 4
  %19 = alloca %struct.TYPE_14__, align 4
  %20 = alloca { <2 x float>, i32 }, align 4
  %21 = alloca { <2 x float>, i32 }, align 4
  %22 = alloca { <2 x float>, i32 }, align 8
  %23 = alloca { <2 x float>, i32 }, align 4
  %24 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %9, i32 0, i32 0
  store <2 x float> %3, <2 x float>* %24, align 4
  %25 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %9, i32 0, i32 1
  store i32 %4, i32* %25, align 4
  %26 = bitcast %struct.TYPE_14__* %8 to i8*
  %27 = bitcast { <2 x float>, i32 }* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %12, align 8
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = bitcast i32* %28 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %15, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %16, align 8
  %33 = bitcast %struct.TYPE_14__* %17 to i8*
  %34 = bitcast %struct.TYPE_14__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 12, i1 false)
  %35 = bitcast %struct.TYPE_14__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %35, i8 0, i64 12, i1 false)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load float, float* %37, align 4
  %39 = fdiv float 1.000000e+00, %38
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store float %39, float* %40, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load float, float* %42, align 4
  %44 = fdiv float 1.000000e+00, %43
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store float %44, float* %45, align 4
  %46 = bitcast { <2 x float>, i32 }* %20 to i8*
  %47 = bitcast %struct.TYPE_14__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 12, i1 false)
  %48 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %20, i32 0, i32 0
  %49 = load <2 x float>, <2 x float>* %48, align 4
  %50 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %20, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = bitcast { <2 x float>, i32 }* %21 to i8*
  %53 = bitcast %struct.TYPE_14__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 12, i1 false)
  %54 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %21, i32 0, i32 0
  %55 = load <2 x float>, <2 x float>* %54, align 4
  %56 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %21, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call { <2 x float>, i32 } @fz_concat(<2 x float> %49, i32 %51, <2 x float> %55, i32 %57)
  store { <2 x float>, i32 } %58, { <2 x float>, i32 }* %22, align 8
  %59 = bitcast { <2 x float>, i32 }* %22 to i8*
  %60 = bitcast %struct.TYPE_14__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 8 %59, i64 12, i1 false)
  %61 = bitcast %struct.TYPE_14__* %17 to i8*
  %62 = bitcast %struct.TYPE_14__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 12, i1 false)
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %63, i32* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %66 = load float, float* %13, align 4
  %67 = fcmp une float %66, 1.000000e+00
  br i1 %67, label %68, label %74

68:                                               ; preds = %7
  %69 = load i32*, i32** %10, align 8
  %70 = load i32*, i32** %16, align 8
  %71 = load float, float* %13, align 4
  %72 = fpext float %71 to double
  %73 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %69, i32* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), double %72)
  br label %74

74:                                               ; preds = %68, %7
  %75 = load i32*, i32** %10, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %77 = bitcast { <2 x float>, i32 }* %23 to i8*
  %78 = bitcast %struct.TYPE_14__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 12, i1 false)
  %79 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %23, i32 0, i32 0
  %80 = load <2 x float>, <2 x float>* %79, align 4
  %81 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %23, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @svg_dev_ctm(i32* %75, %struct.TYPE_13__* %76, <2 x float> %80, i32 %82)
  %84 = load i32*, i32** %10, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %84, i32* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32*, i32** %10, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @svg_send_image(i32* %87, %struct.TYPE_13__* %88, %struct.TYPE_15__* %89, i32 %90)
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %92, i32* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local { <2 x float>, i32 } @fz_concat(<2 x float>, i32, <2 x float>, i32) #2

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #2

declare dso_local i32 @svg_dev_ctm(i32*, %struct.TYPE_13__*, <2 x float>, i32) #2

declare dso_local i32 @svg_send_image(i32*, %struct.TYPE_13__*, %struct.TYPE_15__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

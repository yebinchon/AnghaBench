; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_shaders.c_D3D11_ClearRenderTargets.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_shaders.c_D3D11_ClearRenderTargets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@D3D11_MAX_RENDER_TARGET = common dso_local global i32 0, align 4
@D3D11_ClearRenderTargets.blackY = internal constant [1 x float] zeroinitializer, align 4
@D3D11_ClearRenderTargets.blackUV = internal constant [2 x float] [float 5.000000e-01, float 5.000000e-01], align 4
@D3D11_ClearRenderTargets.blackRGBA = internal constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@D3D11_ClearRenderTargets.blackYUY2 = internal constant [4 x float] [float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 5.000000e-01], align 16
@D3D11_ClearRenderTargets.blackVUYA = internal constant [4 x float] [float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 1.000000e+00], align 16
@.str = private unnamed_addr constant [50 x i8] c"we need at least 2 RenderTargetView for NV12/P010\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @D3D11_ClearRenderTargets(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32** %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32** %2, i32*** %6, align 8
  %7 = load i32, i32* @D3D11_MAX_RENDER_TARGET, align 4
  %8 = zext i32 %7 to i64
  %9 = load i32, i32* @D3D11_MAX_RENDER_TARGET, align 4
  %10 = icmp sge i32 %9, 2
  %11 = zext i1 %10 to i32
  %12 = call i32 @static_assert(i32 %11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %55 [
    i32 132, label %16
    i32 131, label %16
    i32 129, label %31
    i32 134, label %31
    i32 133, label %31
    i32 130, label %31
    i32 135, label %31
    i32 128, label %39
    i32 136, label %47
  ]

16:                                               ; preds = %3, %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32**, i32*** %6, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @ID3D11DeviceContext_ClearRenderTargetView(i32 %19, i32* %22, float* getelementptr inbounds ([1 x float], [1 x float]* @D3D11_ClearRenderTargets.blackY, i64 0, i64 0))
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32**, i32*** %6, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @ID3D11DeviceContext_ClearRenderTargetView(i32 %26, i32* %29, float* getelementptr inbounds ([2 x float], [2 x float]* @D3D11_ClearRenderTargets.blackUV, i64 0, i64 0))
  br label %57

31:                                               ; preds = %3, %3, %3, %3, %3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32**, i32*** %6, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @ID3D11DeviceContext_ClearRenderTargetView(i32 %34, i32* %37, float* getelementptr inbounds ([4 x float], [4 x float]* @D3D11_ClearRenderTargets.blackRGBA, i64 0, i64 0))
  br label %57

39:                                               ; preds = %3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32**, i32*** %6, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @ID3D11DeviceContext_ClearRenderTargetView(i32 %42, i32* %45, float* getelementptr inbounds ([4 x float], [4 x float]* @D3D11_ClearRenderTargets.blackYUY2, i64 0, i64 0))
  br label %57

47:                                               ; preds = %3
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32**, i32*** %6, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @ID3D11DeviceContext_ClearRenderTargetView(i32 %50, i32* %53, float* getelementptr inbounds ([4 x float], [4 x float]* @D3D11_ClearRenderTargets.blackVUYA, i64 0, i64 0))
  br label %57

55:                                               ; preds = %3
  %56 = call i32 (...) @vlc_assert_unreachable()
  br label %57

57:                                               ; preds = %55, %47, %39, %31, %16
  ret void
}

declare dso_local i32 @static_assert(i32, i8*) #1

declare dso_local i32 @ID3D11DeviceContext_ClearRenderTargetView(i32, i32*, float*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

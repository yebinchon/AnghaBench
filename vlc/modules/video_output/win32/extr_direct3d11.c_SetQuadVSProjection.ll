; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_SetQuadVSProjection.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_SetQuadVSProjection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { float, i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { float }
%struct.TYPE_18__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32, i32 }

@M_PI = common dso_local global i32 0, align 4
@FIELD_OF_VIEW_DEGREES_MAX = common dso_local global i32 0, align 4
@D3D11_MAP_WRITE_DISCARD = common dso_local global i32 0, align 4
@SPHERE_RADIUS = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_26__*, %struct.TYPE_25__*)* @SetQuadVSProjection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetQuadVSProjection(%struct.TYPE_23__* %0, %struct.TYPE_26__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_25__, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %6, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %7, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %110

24:                                               ; preds = %3
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 4
  %28 = load i32, i32* @M_PI, align 4
  %29 = sitofp i32 %28 to float
  %30 = fmul float %27, %29
  %31 = fdiv float %30, 1.800000e+02
  store float %31, float* %8, align 4
  %32 = load float, float* %8, align 4
  %33 = load i32, i32* @FIELD_OF_VIEW_DEGREES_MAX, align 4
  %34 = load i32, i32* @M_PI, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sdiv i32 %35, 180
  %37 = sitofp i32 %36 to float
  %38 = fadd float %37, 0x3F50624DE0000000
  %39 = fcmp ogt float %32, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %24
  %41 = load float, float* %8, align 4
  %42 = fcmp olt float %41, 0xBF50624DE0000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %24
  br label %110

44:                                               ; preds = %40
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sitofp i64 %50 to float
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load float, float* %56, align 8
  %58 = fdiv float %51, %57
  store float %58, float* %9, align 4
  %59 = load float, float* %8, align 4
  %60 = load float, float* %9, align 4
  %61 = call float @UpdateFOVy(float %59, float %60)
  store float %61, float* %10, align 4
  %62 = load float, float* %8, align 4
  %63 = load float, float* %10, align 4
  %64 = call float @UpdateZ(float %62, float %63)
  store float %64, float* %11, align 4
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i32*
  %73 = load i32, i32* @D3D11_MAP_WRITE_DISCARD, align 4
  %74 = call i32 @ID3D11DeviceContext_Map(i32 %68, i32* %72, i32 0, i32 %73, i32 0, %struct.TYPE_18__* %13)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i64 @SUCCEEDED(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %44
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %79, align 8
  store %struct.TYPE_27__* %80, %struct.TYPE_27__** %14, align 8
  %81 = load float, float* @SPHERE_RADIUS, align 4
  %82 = load float, float* %11, align 4
  %83 = fmul float %81, %82
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @getZoomMatrix(float %83, i32 %86)
  %88 = load float, float* %9, align 4
  %89 = load float, float* %10, align 4
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @getProjectionMatrix(float %88, float %89, i32 %92)
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %95 = call i32 @vlc_viewpoint_reverse(%struct.TYPE_25__* %15, %struct.TYPE_25__* %94)
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @vlc_viewpoint_to_4x4(%struct.TYPE_25__* %15, i32 %98)
  br label %100

100:                                              ; preds = %78, %44
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i32*
  %109 = call i32 @ID3D11DeviceContext_Unmap(i32 %104, i32* %108, i32 0)
  br label %110

110:                                              ; preds = %100, %43, %23
  ret void
}

declare dso_local float @UpdateFOVy(float, float) #1

declare dso_local float @UpdateZ(float, float) #1

declare dso_local i32 @ID3D11DeviceContext_Map(i32, i32*, i32, i32, i32, %struct.TYPE_18__*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @getZoomMatrix(float, i32) #1

declare dso_local i32 @getProjectionMatrix(float, float, i32) #1

declare dso_local i32 @vlc_viewpoint_reverse(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @vlc_viewpoint_to_4x4(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ID3D11DeviceContext_Unmap(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_surface.c_assert_staging.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_surface.c_assert_staging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32*, i32* }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_26__ = type { i32, i32, i64, i32, i64, i32, i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }

@KNOWN_DXGI_INDEX = common dso_local global i64 0, align 8
@D3D11_USAGE_STAGING = common dso_local global i32 0, align 4
@D3D11_CPU_ACCESS_READ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"can't map default staging texture (hr=0x%lX)\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Failed to create a %s staging texture to extract surface pixels (hr=0x%lX)\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@D3D11_BIND_RENDER_TARGET = common dso_local global i32 0, align 4
@D3D11_FORMAT_SUPPORT_SHADER_LOAD = common dso_local global i32 0, align 4
@D3D11_FORMAT_SUPPORT_VIDEO_PROCESSOR_OUTPUT = common dso_local global i32 0, align 4
@D3D11_USAGE_DEFAULT = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__*)* @assert_staging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assert_staging(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__, align 8
  %9 = alloca %struct.TYPE_25__, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  store %struct.TYPE_23__* %12, %struct.TYPE_23__** %6, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %83

18:                                               ; preds = %2
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @KNOWN_DXGI_INDEX, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ID3D11Texture2D_GetDesc(i32 %24, %struct.TYPE_26__* %8)
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* @D3D11_USAGE_STAGING, align 4
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 5
  store i32 %31, i32* %32, align 8
  %33 = load i64, i64* @D3D11_CPU_ACCESS_READ, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 4
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 3
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 1
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %37, align 4
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  %44 = call i32 @ID3D11DeviceContext_GetDevice(i32 %42, i32* %43)
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = call i32 @ID3D11Device_CreateTexture2D(i32 %48, %struct.TYPE_26__* %8, i32* null, i32** %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @SUCCEEDED(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %18
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @can_map(%struct.TYPE_23__* %56, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = call i64 @FAILED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @msg_Dbg(%struct.TYPE_22__* %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %55, %18
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ID3D11Device_Release(i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @FAILED(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @DxgiFormatToStr(i64 %77)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @msg_Err(%struct.TYPE_22__* %75, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %81, i32* %3, align 4
  br label %85

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %17
  %84 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %74
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @ID3D11Texture2D_GetDesc(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @ID3D11DeviceContext_GetDevice(i32, i32*) #1

declare dso_local i32 @ID3D11Device_CreateTexture2D(i32, %struct.TYPE_26__*, i32*, i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @can_map(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i32 @ID3D11Device_Release(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_22__*, i8*, i32, i32) #1

declare dso_local i32 @DxgiFormatToStr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

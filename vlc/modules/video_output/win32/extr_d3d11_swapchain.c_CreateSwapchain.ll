; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_swapchain.c_CreateSwapchain.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_swapchain.c_CreateSwapchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d11_local_swapchain = type { i32, i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"missing a HWND to create the swapchain\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not get the DXGI Adapter\00", align 1
@IID_IDXGIFactory2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Could not get the DXGI Factory. (hr=0x%lX)\00", align 1
@DXGI_ERROR_INVALID_CALL = common dso_local global i64 0, align 8
@DXGI_FORMAT_R10G10B10A2_UNORM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"10 bits swapchain failed, try 8 bits\00", align 1
@DXGI_FORMAT_R8G8B8A8_UNORM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Could not create the SwapChain. (hr=0x%lX)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3d11_local_swapchain*, i32, i32)* @CreateSwapchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateSwapchain(%struct.d3d11_local_swapchain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.d3d11_local_swapchain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.d3d11_local_swapchain* %0, %struct.d3d11_local_swapchain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %12 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %17 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, ...) @msg_Err(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %107

20:                                               ; preds = %3
  %21 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @FillSwapChainDesc(%struct.d3d11_local_swapchain* %21, i32 %22, i32 %23, %struct.TYPE_6__* %7)
  %25 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %26 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32* @D3D11DeviceAdapter(i64 %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp eq i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %20
  %36 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %37 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, ...) @msg_Err(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %107

40:                                               ; preds = %20
  %41 = load i32*, i32** %8, align 8
  %42 = bitcast i32** %9 to i8**
  %43 = call i64 @IDXGIAdapter_GetParent(i32* %41, i32* @IID_IDXGIFactory2, i8** %42)
  store i64 %43, i64* %10, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @IDXGIAdapter_Release(i32* %44)
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @FAILED(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %51 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 (i32, i8*, ...) @msg_Err(i32 %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  br label %107

55:                                               ; preds = %40
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %58 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %63 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %66 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %65, i32 0, i32 1
  %67 = call i64 @IDXGIFactory2_CreateSwapChainForHwnd(i32* %56, i32* %61, i32* %64, %struct.TYPE_6__* %7, i32* null, i32* null, i32* %66)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @DXGI_ERROR_INVALID_CALL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %55
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DXGI_FORMAT_R10G10B10A2_UNORM, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %78 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @msg_Warn(i32 %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i64, i64* @DXGI_FORMAT_R8G8B8A8_UNORM, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i64 %81, i64* %82, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %85 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %90 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %93 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %92, i32 0, i32 1
  %94 = call i64 @IDXGIFactory2_CreateSwapChainForHwnd(i32* %83, i32* %88, i32* %91, %struct.TYPE_6__* %7, i32* null, i32* null, i32* %93)
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %76, %71, %55
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @IDXGIFactory2_Release(i32* %96)
  %98 = load i64, i64* %10, align 8
  %99 = call i64 @FAILED(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %103 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i32 (i32, i8*, ...) @msg_Err(i32 %104, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %105)
  br label %107

107:                                              ; preds = %15, %35, %49, %101, %95
  ret void
}

declare dso_local i32 @msg_Err(i32, i8*, ...) #1

declare dso_local i32 @FillSwapChainDesc(%struct.d3d11_local_swapchain*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32* @D3D11DeviceAdapter(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @IDXGIAdapter_GetParent(i32*, i32*, i8**) #1

declare dso_local i32 @IDXGIAdapter_Release(i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IDXGIFactory2_CreateSwapChainForHwnd(i32*, i32*, i32*, %struct.TYPE_6__*, i32*, i32*, i32*) #1

declare dso_local i32 @msg_Warn(i32, i8*) #1

declare dso_local i32 @IDXGIFactory2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

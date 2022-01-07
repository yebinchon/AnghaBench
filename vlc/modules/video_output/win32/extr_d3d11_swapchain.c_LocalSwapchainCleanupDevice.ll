; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_swapchain.c_LocalSwapchainCleanupDevice.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_swapchain.c_LocalSwapchainCleanupDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d11_local_swapchain = type { i32, i32*, i32*, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LocalSwapchainCleanupDevice(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.d3d11_local_swapchain*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.d3d11_local_swapchain*
  store %struct.d3d11_local_swapchain* %6, %struct.d3d11_local_swapchain** %3, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %10 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %9, i32 0, i32 3
  %11 = load i32**, i32*** %10, align 8
  %12 = call i64 @ARRAY_SIZE(i32** %11)
  %13 = icmp ult i64 %8, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %7
  %15 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %16 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %15, i32 0, i32 3
  %17 = load i32**, i32*** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %14
  %23 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %24 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %23, i32 0, i32 3
  %25 = load i32**, i32*** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i32*, i32** %25, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @ID3D11RenderTargetView_Release(i32* %28)
  %30 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %31 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %30, i32 0, i32 3
  %32 = load i32**, i32*** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds i32*, i32** %32, i64 %33
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %22, %14
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %4, align 8
  br label %7

39:                                               ; preds = %7
  %40 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %41 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %46 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @IDXGISwapChain4_Release(i32* %47)
  %49 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %50 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %44, %39
  %52 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %53 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %58 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @IDXGISwapChain_Release(i32* %59)
  %61 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %62 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %56, %51
  %64 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %65 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %64, i32 0, i32 0
  %66 = call i32 @D3D11_ReleaseDevice(i32* %65)
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @ID3D11RenderTargetView_Release(i32*) #1

declare dso_local i32 @IDXGISwapChain4_Release(i32*) #1

declare dso_local i32 @IDXGISwapChain_Release(i32*) #1

declare dso_local i32 @D3D11_ReleaseDevice(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

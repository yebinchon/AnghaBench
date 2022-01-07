; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_swapchain.c_LocalSwapchainSwap.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_swapchain.c_LocalSwapchainSwap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d11_local_swapchain = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@DXGI_ERROR_DEVICE_REMOVED = common dso_local global i64 0, align 8
@DXGI_ERROR_DEVICE_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"SwapChain Present failed. (hr=0x%lX)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LocalSwapchainSwap(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.d3d11_local_swapchain*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.d3d11_local_swapchain*
  store %struct.d3d11_local_swapchain* %7, %struct.d3d11_local_swapchain** %3, align 8
  %8 = bitcast %struct.TYPE_3__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %10 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @IDXGISwapChain1_Present1(i32 %11, i32 0, i32 0, %struct.TYPE_3__* %4)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @DXGI_ERROR_DEVICE_REMOVED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @DXGI_ERROR_DEVICE_RESET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16, %1
  %21 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %22 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @msg_Err(i32 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @IDXGISwapChain1_Present1(i32, i32, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @msg_Err(i32, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

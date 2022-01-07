; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_swapchain.c_FillSwapChainDesc.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_swapchain.c_FillSwapChainDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d11_local_swapchain = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i8*, i8*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i64 }

@DXGI_USAGE_RENDER_TARGET_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"kernel32.dll\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"GetSystemCpuSetInformation\00", align 1
@DXGI_SWAP_EFFECT_FLIP_DISCARD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"CheckTokenCapability\00", align 1
@DXGI_SWAP_EFFECT_FLIP_SEQUENTIAL = common dso_local global i32 0, align 4
@DXGI_SWAP_EFFECT_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3d11_local_swapchain*, i8*, i8*, %struct.TYPE_8__*)* @FillSwapChainDesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillSwapChainDesc(%struct.d3d11_local_swapchain* %0, i8* %1, i8* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca %struct.d3d11_local_swapchain*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.d3d11_local_swapchain* %0, %struct.d3d11_local_swapchain** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %13 = call i32 @ZeroMemory(%struct.TYPE_8__* %12, i32 56)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 3, i32* %15, align 8
  %16 = load i32, i32* @DXGI_USAGE_RENDER_TARGET_OUTPUT, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %5, align 8
  %32 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %9, align 4
  %38 = call i32 @TEXT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %39 = call i32* @GetModuleHandle(i32 %38)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %4
  %46 = load i32*, i32** %10, align 8
  %47 = call i32* @GetProcAddress(i32* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i32* %47, null
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %45, %4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* @DXGI_SWAP_EFFECT_FLIP_DISCARD, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %82

57:                                               ; preds = %50
  store i32 0, i32* %11, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i64 @likely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i32*, i32** %10, align 8
  %65 = call i32* @GetProcAddress(i32* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i32* %65, null
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %63, %57
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* @DXGI_SWAP_EFFECT_FLIP_SEQUENTIAL, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %81

75:                                               ; preds = %68
  %76 = load i32, i32* @DXGI_SWAP_EFFECT_DISCARD, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %75, %71
  br label %82

82:                                               ; preds = %81, %53
  ret void
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @GetModuleHandle(i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32* @GetProcAddress(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

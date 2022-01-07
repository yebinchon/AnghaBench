; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_D3D11DeviceAdapter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_D3D11DeviceAdapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IDXGIDevice = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @D3D11DeviceAdapter(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32** %4 to i8**
  %9 = call i32 @ID3D11Device_QueryInterface(i32* %7, i32* @IID_IDXGIDevice, i8** %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @FAILED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %25

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @IDXGIDevice_GetAdapter(i32* %15, i32** %6)
  store i32 %16, i32* %5, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @IDXGIDevice_Release(i32* %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32* null, i32** %2, align 8
  br label %25

23:                                               ; preds = %14
  %24 = load i32*, i32** %6, align 8
  store i32* %24, i32** %2, align 8
  br label %25

25:                                               ; preds = %23, %22, %13
  %26 = load i32*, i32** %2, align 8
  ret i32* %26
}

declare dso_local i32 @ID3D11Device_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDXGIDevice_GetAdapter(i32*, i32**) #1

declare dso_local i32 @IDXGIDevice_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

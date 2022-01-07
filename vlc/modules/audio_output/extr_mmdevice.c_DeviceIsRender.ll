; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_mmdevice.c_DeviceIsRender.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_mmdevice.c_DeviceIsRender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IMMEndpoint = common dso_local global i32 0, align 4
@eRender = common dso_local global i64 0, align 8
@DEVICE_STATE_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @DeviceIsRender to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DeviceIsRender(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @IMMDevice_QueryInterface(i32* %9, i32* @IID_IMMEndpoint, i8** %4)
  %11 = call i64 @FAILED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @IMMEndpoint_GetDataFlow(i32* %17, i64* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @IMMEndpoint_Release(i32* %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @FAILED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @eRender, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %14
  store i32 0, i32* %2, align 4
  br label %42

29:                                               ; preds = %24
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @IMMDevice_GetState(i32* %30, i64* %8)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @FAILED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @DEVICE_STATE_ACTIVE, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %35, %29
  %40 = phi i1 [ false, %29 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %28, %13
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IMMDevice_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IMMEndpoint_GetDataFlow(i32*, i64*) #1

declare dso_local i32 @IMMEndpoint_Release(i32*) #1

declare dso_local i32 @IMMDevice_GetState(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

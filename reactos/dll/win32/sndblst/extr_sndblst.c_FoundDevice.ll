; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/sndblst/extr_sndblst.c_FoundDevice.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/sndblst/extr_sndblst.c_FoundDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i32] [i32 40, i32 67, i32 97, i32 108, i32 108, i32 98, i32 97, i32 99, i32 107, i32 41, i32 32, i32 70, i32 111, i32 117, i32 110, i32 100, i32 32, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 58, i32 32, i32 37, i32 119, i32 83, i32 10, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@GetSoundBlasterDeviceCapabilities = common dso_local global i32 0, align 4
@QueryNt4WaveDeviceFormatSupport = common dso_local global i32 0, align 4
@SetNt4WaveDeviceFormat = common dso_local global i32 0, align 4
@OpenNt4SoundDevice = common dso_local global i32 0, align 4
@CloseNt4SoundDevice = common dso_local global i32 0, align 4
@WriteFileEx_Committer = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FoundDevice(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32* null, i32** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @SND_TRACE(i8* bitcast ([30 x i32]* @.str to i8*), i64 %10)
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @wcslen(i64 %12)
  %14 = call i64 @AllocateWideString(i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @CopyWideString(i64 %20, i64 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i64, i64* %9, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @ListSoundDevice(i32 %23, i32 %25, i32** %7)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @MMSUCCESS(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %19
  %33 = call i32 @ZeroMemory(%struct.TYPE_4__* %8, i32 24)
  %34 = load i32, i32* @GetSoundBlasterDeviceCapabilities, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @QueryNt4WaveDeviceFormatSupport, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @SetNt4WaveDeviceFormat, align 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @OpenNt4SoundDevice, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @CloseNt4SoundDevice, align 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @WriteFileEx_Committer, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @SetSoundDeviceFunctionTable(i32* %46, %struct.TYPE_4__* %8)
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %32, %30, %17
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @SND_TRACE(i8*, i64) #1

declare dso_local i64 @AllocateWideString(i32) #1

declare dso_local i32 @wcslen(i64) #1

declare dso_local i32 @CopyWideString(i64, i64) #1

declare dso_local i32 @ListSoundDevice(i32, i32, i32**) #1

declare dso_local i32 @MMSUCCESS(i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @SetSoundDeviceFunctionTable(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

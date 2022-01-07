; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_common.c_GetDeviceCapabilities.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_common.c_GetDeviceCapabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOCTL_WAVE_GET_CAPABILITIES = common dso_local global i64 0, align 8
@IOCTL_MIDI_GET_CAPABILITIES = common dso_local global i64 0, align 8
@MMSYSERR_NOTSUPPORTED = common dso_local global i64 0, align 8
@GENERIC_READ = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to open kernel device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetDeviceCapabilities(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @ASSERT(i64 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @IsWaveDevice(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* @IOCTL_WAVE_GET_CAPABILITIES, align 8
  store i64 %21, i64* %11, align 8
  br label %37

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @IsMidiDevice(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* @IOCTL_MIDI_GET_CAPABILITIES, align 8
  store i64 %27, i64* %11, align 8
  br label %36

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @IsAuxDevice(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @MMSYSERR_NOTSUPPORTED, align 8
  store i64 %33, i64* %5, align 8
  br label %66

34:                                               ; preds = %28
  %35 = load i64, i64* @MMSYSERR_NOTSUPPORTED, align 8
  store i64 %35, i64* %5, align 8
  br label %66

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %20
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @GENERIC_READ, align 4
  %41 = call i64 @OpenKernelDevice(i32 %38, i32 %39, i32 %40, i32* %12)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = call i32 @DPRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %47 = load i64, i64* %10, align 8
  store i64 %47, i64* %5, align 8
  br label %66

48:                                               ; preds = %37
  %49 = load i32, i32* %12, align 4
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %8, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @DeviceIoControl(i32 %49, i64 %50, i32* null, i32 0, i32 %52, i64 %53, i64* %13, i32* null)
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %14, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i64, i64* @MMSYSERR_NOERROR, align 8
  store i64 %58, i64* %10, align 8
  br label %62

59:                                               ; preds = %48
  %60 = call i32 (...) @GetLastError()
  %61 = call i64 @ErrorToMmResult(i32 %60)
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %59, %57
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @CloseKernelDevice(i32 %63)
  %65 = load i64, i64* %10, align 8
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %62, %45, %34, %32
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local i32 @ASSERT(i64) #1

declare dso_local i64 @IsWaveDevice(i32) #1

declare dso_local i64 @IsMidiDevice(i32) #1

declare dso_local i64 @IsAuxDevice(i32) #1

declare dso_local i64 @OpenKernelDevice(i32, i32, i32, i32*) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i64 @DeviceIoControl(i32, i64, i32*, i32, i32, i64, i64*, i32*) #1

declare dso_local i64 @ErrorToMmResult(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CloseKernelDevice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

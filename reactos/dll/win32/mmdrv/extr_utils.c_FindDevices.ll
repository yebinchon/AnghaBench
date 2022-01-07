; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_utils.c_FindDevices.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_utils.c_FindDevices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Finding devices\0A\00", align 1
@SOUND_MAX_DEVICE_NAME = common dso_local global i32 0, align 4
@WaveOutDevice = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i32] [i32 87, i32 97, i32 118, i32 101, i32 79, i32 117, i32 116, i32 37, i32 100, i32 0, i32 0], align 4
@DeviceList = common dso_local global i32 0, align 4
@WaveInDevice = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i32] [i32 87, i32 97, i32 118, i32 101, i32 73, i32 110, i32 37, i32 100, i32 0, i32 0], align 4
@MidiOutDevice = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i32] [i32 77, i32 105, i32 100, i32 105, i32 79, i32 117, i32 116, i32 37, i32 100, i32 0, i32 0], align 4
@MidiInDevice = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i32] [i32 77, i32 105, i32 100, i32 105, i32 73, i32 110, i32 37, i32 100, i32 0, i32 0], align 4
@AuxDevice = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i32] [i32 65, i32 117, i32 120, i32 37, i32 100, i32 0, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FindDevices() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = call i32 @DPRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @SOUND_MAX_DEVICE_NAME, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  store i64 0, i64* %1, align 8
  br label %10

10:                                               ; preds = %24, %0
  %11 = load i32, i32* @WaveOutDevice, align 4
  %12 = load i64, i64* %1, align 8
  %13 = load i32, i32* @GENERIC_READ, align 4
  %14 = call i64 @OpenDevice(i32 %11, i64 %12, i32* %2, i32 %13)
  %15 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @wsprintf(i32* %9, i8* bitcast ([11 x i32]* @.str.1 to i8*), i64 %18)
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @CloseHandle(i32 %20)
  %22 = load i32, i32* @WaveOutDevice, align 4
  %23 = call i32 @AddDeviceToList(i32* @DeviceList, i32 %22, i32 0, i32* %9)
  br label %24

24:                                               ; preds = %17
  %25 = load i64, i64* %1, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %1, align 8
  br label %10

27:                                               ; preds = %10
  store i64 0, i64* %1, align 8
  br label %28

28:                                               ; preds = %42, %27
  %29 = load i32, i32* @WaveInDevice, align 4
  %30 = load i64, i64* %1, align 8
  %31 = load i32, i32* @GENERIC_READ, align 4
  %32 = call i64 @OpenDevice(i32 %29, i64 %30, i32* %2, i32 %31)
  %33 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @wsprintf(i32* %9, i8* bitcast ([10 x i32]* @.str.2 to i8*), i64 %36)
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @CloseHandle(i32 %38)
  %40 = load i32, i32* @WaveInDevice, align 4
  %41 = call i32 @AddDeviceToList(i32* @DeviceList, i32 %40, i32 0, i32* %9)
  br label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %1, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %1, align 8
  br label %28

45:                                               ; preds = %28
  store i64 0, i64* %1, align 8
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i32, i32* @MidiOutDevice, align 4
  %48 = load i64, i64* %1, align 8
  %49 = load i32, i32* @GENERIC_READ, align 4
  %50 = call i64 @OpenDevice(i32 %47, i64 %48, i32* %2, i32 %49)
  %51 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load i64, i64* %1, align 8
  %55 = call i32 @wsprintf(i32* %9, i8* bitcast ([11 x i32]* @.str.3 to i8*), i64 %54)
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @CloseHandle(i32 %56)
  %58 = load i32, i32* @MidiOutDevice, align 4
  %59 = call i32 @AddDeviceToList(i32* @DeviceList, i32 %58, i32 0, i32* %9)
  br label %60

60:                                               ; preds = %53
  %61 = load i64, i64* %1, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %1, align 8
  br label %46

63:                                               ; preds = %46
  store i64 0, i64* %1, align 8
  br label %64

64:                                               ; preds = %78, %63
  %65 = load i32, i32* @MidiInDevice, align 4
  %66 = load i64, i64* %1, align 8
  %67 = load i32, i32* @GENERIC_READ, align 4
  %68 = call i64 @OpenDevice(i32 %65, i64 %66, i32* %2, i32 %67)
  %69 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %64
  %72 = load i64, i64* %1, align 8
  %73 = call i32 @wsprintf(i32* %9, i8* bitcast ([10 x i32]* @.str.4 to i8*), i64 %72)
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @CloseHandle(i32 %74)
  %76 = load i32, i32* @MidiInDevice, align 4
  %77 = call i32 @AddDeviceToList(i32* @DeviceList, i32 %76, i32 0, i32* %9)
  br label %78

78:                                               ; preds = %71
  %79 = load i64, i64* %1, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %1, align 8
  br label %64

81:                                               ; preds = %64
  store i64 0, i64* %1, align 8
  br label %82

82:                                               ; preds = %96, %81
  %83 = load i32, i32* @AuxDevice, align 4
  %84 = load i64, i64* %1, align 8
  %85 = load i32, i32* @GENERIC_READ, align 4
  %86 = call i64 @OpenDevice(i32 %83, i64 %84, i32* %2, i32 %85)
  %87 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %82
  %90 = load i64, i64* %1, align 8
  %91 = call i32 @wsprintf(i32* %9, i8* bitcast ([7 x i32]* @.str.5 to i8*), i64 %90)
  %92 = load i32, i32* %2, align 4
  %93 = call i32 @CloseHandle(i32 %92)
  %94 = load i32, i32* @AuxDevice, align 4
  %95 = call i32 @AddDeviceToList(i32* @DeviceList, i32 %94, i32 0, i32* %9)
  br label %96

96:                                               ; preds = %89
  %97 = load i64, i64* %1, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %1, align 8
  br label %82

99:                                               ; preds = %82
  %100 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %101 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %101)
  ret i64 %100
}

declare dso_local i32 @DPRINT(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @OpenDevice(i32, i64, i32*, i32) #1

declare dso_local i32 @wsprintf(i32*, i8*, i64) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @AddDeviceToList(i32*, i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_utils.c_OpenDevice.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_utils.c_OpenDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"OpenDevice()\0A\00", align 1
@SOUND_MAX_DEVICE_NAME = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32***** null, align 8
@SOUND_MAX_DEVICES = common dso_local global i64 0, align 8
@MMSYSERR_BADDEVICEID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i32] [i32 92, i32 92, i32 46, i32 37, i32 108, i32 115, i32 37, i32 100, i32 0], align 4
@WAVE_OUT_DEVICE_NAME_U = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"\\Device\00", align 1
@WAVE_IN_DEVICE_NAME_U = common dso_local global i64 0, align 8
@MIDI_OUT_DEVICE_NAME_U = common dso_local global i64 0, align 8
@MIDI_IN_DEVICE_NAME_U = common dso_local global i64 0, align 8
@AUX_DEVICE_NAME_U = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"No Auido Device Found\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Attempting to open %S\0A\00", align 1
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i64 0, align 8
@FILE_FLAG_OVERLAPPED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"DeviceHandle == 0x%x\0A\00", align 1
@MMSYSERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OpenDevice(i32 %0, i64 %1, i32***** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*****, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32***** %2, i32****** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @SOUND_MAX_DEVICE_NAME, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32*****, i32****** @INVALID_HANDLE_VALUE, align 8
  %19 = bitcast i32***** %18 to i32****
  %20 = load i32*****, i32****** %8, align 8
  store i32**** %19, i32***** %20, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @SOUND_MAX_DEVICES, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @MMSYSERR_BADDEVICEID, align 4
  store i32 %25, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %87

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %58 [
    i32 128, label %28
    i32 129, label %34
    i32 130, label %40
    i32 131, label %46
    i32 132, label %52
  ]

28:                                               ; preds = %26
  %29 = load i64, i64* @WAVE_OUT_DEVICE_NAME_U, align 8
  %30 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @wsprintf(i32* %17, i8* bitcast ([9 x i32]* @.str.1 to i8*), i64 %31, i64 %32)
  br label %61

34:                                               ; preds = %26
  %35 = load i64, i64* @WAVE_IN_DEVICE_NAME_U, align 8
  %36 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @wsprintf(i32* %17, i8* bitcast ([9 x i32]* @.str.1 to i8*), i64 %37, i64 %38)
  br label %61

40:                                               ; preds = %26
  %41 = load i64, i64* @MIDI_OUT_DEVICE_NAME_U, align 8
  %42 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %43 = add nsw i64 %41, %42
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @wsprintf(i32* %17, i8* bitcast ([9 x i32]* @.str.1 to i8*), i64 %43, i64 %44)
  br label %61

46:                                               ; preds = %26
  %47 = load i64, i64* @MIDI_IN_DEVICE_NAME_U, align 8
  %48 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %49 = add nsw i64 %47, %48
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @wsprintf(i32* %17, i8* bitcast ([9 x i32]* @.str.1 to i8*), i64 %49, i64 %50)
  br label %61

52:                                               ; preds = %26
  %53 = load i64, i64* @AUX_DEVICE_NAME_U, align 8
  %54 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @wsprintf(i32* %17, i8* bitcast ([9 x i32]* @.str.1 to i8*), i64 %55, i64 %56)
  br label %61

58:                                               ; preds = %26
  %59 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @MMSYSERR_BADDEVICEID, align 4
  store i32 %60, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %87

61:                                               ; preds = %52, %46, %40, %34, %28
  %62 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %17)
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %65 = load i32, i32* @OPEN_EXISTING, align 4
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @GENERIC_READ, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @FILE_FLAG_OVERLAPPED, align 4
  br label %72

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = call i32**** @CreateFile(i32* %17, i64 %63, i32 %64, i32* null, i32 %65, i32 %73, i32* null)
  %75 = load i32*****, i32****** %8, align 8
  store i32**** %74, i32***** %75, align 8
  %76 = load i32*****, i32****** %8, align 8
  %77 = load i32****, i32***** %76, align 8
  %78 = ptrtoint i32**** %77 to i32
  %79 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  %80 = load i32*****, i32****** %8, align 8
  %81 = load i32*****, i32****** @INVALID_HANDLE_VALUE, align 8
  %82 = icmp eq i32***** %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = call i32 (...) @TranslateStatus()
  store i32 %84, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %87

85:                                               ; preds = %72
  %86 = load i32, i32* @MMSYSERR_NOERROR, align 4
  store i32 %86, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %87

87:                                               ; preds = %85, %83, %58, %24
  %88 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @DPRINT(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @wsprintf(i32*, i8*, i64, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32**** @CreateFile(i32*, i64, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @TranslateStatus(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_dev.c_CyclePort.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_dev.c_CyclePort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32** }
%struct.TYPE_6__ = type { i32 }

@CyclePort.LastReset = internal global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"You must wait at least 10 seconds before trying to reset a device\00", align 1
@DriveHub = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"The device you are trying to reset does not appear to be a USB device...\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_OVERLAPPED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Could not open %s: %s\00", align 1
@DrivePort = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Cycling port %d (reset) on %s\00", align 1
@IOCTL_USB_HUB_CYCLE_PORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"  Failed to cycle port: %s\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Please wait for the device to re-appear...\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CyclePort(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %9, i64* %5, align 8
  %10 = call i64 (...) @GetTickCount64()
  %11 = load i64, i64* @CyclePort.LastReset, align 8
  %12 = add i64 %11, 10000
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %86

17:                                               ; preds = %1
  %18 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @DriveHub, i32 0, i32 0), align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %86

27:                                               ; preds = %17
  %28 = call i64 (...) @GetTickCount64()
  store i64 %28, i64* @CyclePort.LastReset, align 8
  %29 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @DriveHub, i32 0, i32 0), align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @GENERIC_WRITE, align 4
  %35 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %36 = load i32, i32* @OPEN_EXISTING, align 4
  %37 = load i32, i32* @FILE_FLAG_OVERLAPPED, align 4
  %38 = call i64 @CreateFileA(i32* %33, i32 %34, i32 %35, i32* null, i32 %36, i32 %37, i32* null)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %27
  %43 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @DriveHub, i32 0, i32 0), align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 (...) @WindowsErrorString()
  %49 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %47, i32 %48)
  br label %82

50:                                               ; preds = %27
  store i32 4, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @memset(%struct.TYPE_6__* %7, i32 0, i32 %51)
  %53 = load i32*, i32** @DrivePort, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** @DrivePort, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @DriveHub, i32 0, i32 0), align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32* %68)
  %70 = load i64, i64* %5, align 8
  %71 = load i32, i32* @IOCTL_USB_HUB_CYCLE_PORT, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @DeviceIoControl(i64 %70, i32 %71, %struct.TYPE_6__* %7, i32 %72, %struct.TYPE_6__* %7, i32 %73, i32* %6, i32* null)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %50
  %77 = call i32 (...) @WindowsErrorString()
  %78 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  br label %82

79:                                               ; preds = %50
  %80 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %76, %42
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @safe_closehandle(i64 %83)
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %24, %14
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @GetTickCount64(...) #1

declare dso_local i32 @uprintf(i8*, ...) #1

declare dso_local i64 @CreateFileA(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @WindowsErrorString(...) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @DeviceIoControl(i64, i32, %struct.TYPE_6__*, i32, %struct.TYPE_6__*, i32, i32*, i32*) #1

declare dso_local i32 @safe_closehandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

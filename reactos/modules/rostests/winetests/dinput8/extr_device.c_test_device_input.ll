; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput8/extr_device.c_test_device_input.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput8/extr_device.c_test_device_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to acquire device hr=%08x\0A\00", align 1
@INPUT_KEYBOARD = common dso_local global i64 0, align 8
@DIK_SPACE = common dso_local global i32 0, align 4
@INPUT_MOUSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"We're not able to inject input into Windows dinput8 with events\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Retrieval of action failed uAppData=%lu expected=%d\0A\00", align 1
@VK_SPACE = common dso_local global i64 0, align 8
@KEYEVENTF_KEYUP = common dso_local global i32 0, align 4
@MOUSEEVENTF_LEFTDOWN = common dso_local global i64 0, align 8
@MOUSEEVENTF_LEFTUP = common dso_local global i64 0, align 8
@DI_BUFFEROVERFLOW = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"GetDeviceData() failed: %08x\0A\00", align 1
@DI_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"GetDeviceData() failed: %08x cnt:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, i64)* @test_device_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_device_input(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 1, i64* %11, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @IDirectInputDevice8_Acquire(i32* %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @SUCCEEDED(i64 %15)
  %17 = load i64, i64* %9, align 8
  %18 = call i32 (i32, i8*, i64, ...) @ok(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @INPUT_KEYBOARD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @DIK_SPACE, align 4
  %25 = call i32 @keybd_event(i64 %23, i32 %24, i32 0, i32 0)
  br label %26

26:                                               ; preds = %22, %4
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @INPUT_MOUSE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @mouse_event(i64 %31, i32 0, i32 0, i32 0, i32 0)
  br label %33

33:                                               ; preds = %30, %26
  %34 = call i32 (...) @flush_events()
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @IDirectInputDevice8_Poll(i32* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @IDirectInputDevice8_GetDeviceData(i32* %37, i32 8, %struct.TYPE_3__* %10, i64* %11, i32 0)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = call i32 @win_skip(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @IDirectInputDevice_Unacquire(i32* %43)
  br label %112

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 (i32, i8*, i64, ...) @ok(i32 %50, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %52, i64 %53)
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %81, %45
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 17
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @INPUT_KEYBOARD, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i64, i64* @VK_SPACE, align 8
  %64 = load i32, i32* @DIK_SPACE, align 4
  %65 = call i32 @keybd_event(i64 %63, i32 %64, i32 0, i32 0)
  %66 = load i64, i64* @VK_SPACE, align 8
  %67 = load i32, i32* @DIK_SPACE, align 4
  %68 = load i32, i32* @KEYEVENTF_KEYUP, align 4
  %69 = call i32 @keybd_event(i64 %66, i32 %67, i32 %68, i32 0)
  br label %80

70:                                               ; preds = %58
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @INPUT_MOUSE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i64, i64* @MOUSEEVENTF_LEFTDOWN, align 8
  %76 = call i32 @mouse_event(i64 %75, i32 1, i32 1, i32 0, i32 0)
  %77 = load i64, i64* @MOUSEEVENTF_LEFTUP, align 8
  %78 = call i32 @mouse_event(i64 %77, i32 1, i32 1, i32 0, i32 0)
  br label %79

79:                                               ; preds = %74, %70
  br label %80

80:                                               ; preds = %79, %62
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %55

84:                                               ; preds = %55
  %85 = call i32 (...) @flush_events()
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @IDirectInputDevice8_Poll(i32* %86)
  store i64 1, i64* %11, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = call i64 @IDirectInputDevice8_GetDeviceData(i32* %88, i32 8, %struct.TYPE_3__* %10, i64* %11, i32 0)
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* @DI_BUFFEROVERFLOW, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i64, i64* %9, align 8
  %95 = call i32 (i32, i8*, i64, ...) @ok(i32 %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %94)
  store i64 1, i64* %11, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call i64 @IDirectInputDevice8_GetDeviceData(i32* %96, i32 8, %struct.TYPE_3__* %10, i64* %11, i32 0)
  store i64 %97, i64* %9, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* @DI_OK, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %84
  %102 = load i64, i64* %11, align 8
  %103 = icmp eq i64 %102, 1
  br label %104

104:                                              ; preds = %101, %84
  %105 = phi i1 [ false, %84 ], [ %103, %101 ]
  %106 = zext i1 %105 to i32
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %11, align 8
  %109 = call i32 (i32, i8*, i64, ...) @ok(i32 %106, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %107, i64 %108)
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @IDirectInputDevice_Unacquire(i32* %110)
  br label %112

112:                                              ; preds = %104, %41
  ret void
}

declare dso_local i64 @IDirectInputDevice8_Acquire(i32*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i32 @keybd_event(i64, i32, i32, i32) #1

declare dso_local i32 @mouse_event(i64, i32, i32, i32, i32) #1

declare dso_local i32 @flush_events(...) #1

declare dso_local i32 @IDirectInputDevice8_Poll(i32*) #1

declare dso_local i64 @IDirectInputDevice8_GetDeviceData(i32*, i32, %struct.TYPE_3__*, i64*, i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @IDirectInputDevice_Unacquire(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

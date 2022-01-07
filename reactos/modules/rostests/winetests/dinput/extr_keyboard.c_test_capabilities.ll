; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput/extr_keyboard.c_test_capabilities.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput/extr_keyboard.c_test_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@GUID_SysKeyboard = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"IDirectInput_CreateDevice() failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"GetCapabilities failed: 0x%08x\0A\00", align 1
@DIDC_ATTACHED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"GetCapabilities dwFlags: 0x%08x\0A\00", align 1
@DIDEVTYPE_KEYBOARD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"GetCapabilities invalid device type for dwDevType: 0x%08x\0A\00", align 1
@DIDEVTYPEKEYBOARD_PCENH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [74 x i8] c"GetCapabilities invalid device subtype for dwDevType: 0x%08x (%04x:%04x)\0A\00", align 1
@DIDEVTYPEKEYBOARD_JAPAN106 = common dso_local global i32 0, align 4
@DIDEVTYPEKEYBOARD_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @test_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_capabilities(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %6, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @IDirectInput_CreateDevice(i32* %11, i32* @GUID_SysKeyboard, i32** %6, i32* null)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @SUCCEEDED(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i32, i8*, i32, ...) @ok(i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %98

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 12, i32* %22, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @IDirectInputDevice_GetCapabilities(i32* %23, %struct.TYPE_3__* %7)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @SUCCEEDED(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i32, i8*, i32, ...) @ok(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DIDC_ATTACHED, align 4
  %32 = and i32 %30, %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, i32, ...) @ok(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @GET_DIDEVICE_TYPE(i32 %37)
  %39 = load i64, i64* @DIDEVTYPE_KEYBOARD, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, i32, ...) @ok(i32 %41, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = call i32 @GetKeyboardType(i32 0)
  store i32 %45, i32* %8, align 4
  %46 = call i32 @GetKeyboardType(i32 1)
  store i32 %46, i32* %9, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @GET_DIDEVICE_SUBTYPE(i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %58, label %52

52:                                               ; preds = %21
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 7
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55, %21
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @DIDEVTYPEKEYBOARD_PCENH, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 (i32, i8*, i32, ...) @ok(i32 %62, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %64, i32 %65, i32 %66)
  br label %95

68:                                               ; preds = %55, %52
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 7
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @DIDEVTYPEKEYBOARD_JAPAN106, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (i32, i8*, i32, ...) @ok(i32 %78, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %80, i32 %81, i32 %82)
  br label %94

84:                                               ; preds = %71, %68
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @DIDEVTYPEKEYBOARD_UNKNOWN, align 4
  %87 = icmp ne i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 (i32, i8*, i32, ...) @ok(i32 %88, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %84, %74
  br label %95

95:                                               ; preds = %94, %58
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @IUnknown_Release(i32* %96)
  br label %98

98:                                               ; preds = %95, %20
  ret void
}

declare dso_local i32 @IDirectInput_CreateDevice(i32*, i32*, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirectInputDevice_GetCapabilities(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @GET_DIDEVICE_TYPE(i32) #1

declare dso_local i32 @GetKeyboardType(i32) #1

declare dso_local i32 @GET_DIDEVICE_SUBTYPE(i32) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

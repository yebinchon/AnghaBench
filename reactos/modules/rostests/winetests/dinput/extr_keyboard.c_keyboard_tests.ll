; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput/extr_keyboard.c_keyboard_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput/extr_keyboard.c_keyboard_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIERR_OLDDIRECTINPUTVERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Tests require a newer dinput version\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"DirectInputCreateA() failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"err: %d\0A\00", align 1
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@LANG_FRENCH = common dso_local global i32 0, align 4
@SUBLANG_FRENCH = common dso_local global i32 0, align 4
@LANG_GERMAN = common dso_local global i32 0, align 4
@SUBLANG_GERMAN = common dso_local global i32 0, align 4
@LANG_JAPANESE = common dso_local global i32 0, align 4
@SUBLANG_JAPANESE_JAPAN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"IDirectInput_Release() reference count = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @keyboard_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyboard_tests(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %4, align 8
  %8 = call i32 @GetModuleHandleW(i32* null)
  store i32 %8, i32* %5, align 4
  store i64 0, i64* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @pDirectInputCreateA(i32 %9, i32 %10, i32** %4, i32* null)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @DIERR_OLDDIRECTINPUTVERSION, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %95

17:                                               ; preds = %1
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @SUCCEEDED(i64 %18)
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @FAILED(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %95

26:                                               ; preds = %17
  %27 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %28 = load i32, i32* @WS_VISIBLE, align 4
  %29 = or i32 %27, %28
  %30 = call i32* @CreateWindowA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %29, i32 10, i32 10, i32 200, i32 200, i32* null, i32* null, i32* null, i32* null)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i64 (...) @GetLastError()
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @SetForegroundWindow(i32* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %80

40:                                               ; preds = %26
  %41 = call i32 (...) @pump_messages()
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @acquire_tests(i32* %42, i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @test_set_coop(i32* %45, i32* %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @test_get_prop(i32* %48, i32* %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @test_capabilities(i32* %51, i32* %52)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @test_GetDeviceInfo(i32* %54)
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @LANG_ENGLISH, align 4
  %59 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %60 = call i32 @MAKELANGID(i32 %58, i32 %59)
  %61 = call i32 @test_dik_codes(i32* %56, i32* %57, i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @LANG_FRENCH, align 4
  %65 = load i32, i32* @SUBLANG_FRENCH, align 4
  %66 = call i32 @MAKELANGID(i32 %64, i32 %65)
  %67 = call i32 @test_dik_codes(i32* %62, i32* %63, i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* @LANG_GERMAN, align 4
  %71 = load i32, i32* @SUBLANG_GERMAN, align 4
  %72 = call i32 @MAKELANGID(i32 %70, i32 %71)
  %73 = call i32 @test_dik_codes(i32* %68, i32* %69, i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* @LANG_JAPANESE, align 4
  %77 = load i32, i32* @SUBLANG_JAPANESE_JAPAN, align 4
  %78 = call i32 @MAKELANGID(i32 %76, i32 %77)
  %79 = call i32 @test_dik_codes(i32* %74, i32* %75, i32 %78)
  br label %80

80:                                               ; preds = %40, %26
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @DestroyWindow(i32* %81)
  %83 = load i32*, i32** %4, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32*, i32** %4, align 8
  %87 = call i64 @IUnknown_Release(i32* %86)
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i64, i64* %7, align 8
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %93)
  br label %95

95:                                               ; preds = %88, %25, %15
  ret void
}

declare dso_local i32 @GetModuleHandleW(i32*) #1

declare dso_local i64 @pDirectInputCreateA(i32, i32, i32**, i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32* @CreateWindowA(i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @SetForegroundWindow(i32*) #1

declare dso_local i32 @pump_messages(...) #1

declare dso_local i32 @acquire_tests(i32*, i32*) #1

declare dso_local i32 @test_set_coop(i32*, i32*) #1

declare dso_local i32 @test_get_prop(i32*, i32*) #1

declare dso_local i32 @test_capabilities(i32*, i32*) #1

declare dso_local i32 @test_GetDeviceInfo(i32*) #1

declare dso_local i32 @test_dik_codes(i32*, i32*, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @DestroyWindow(i32*) #1

declare dso_local i64 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

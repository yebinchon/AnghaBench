; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput/extr_keyboard.c_test_set_coop.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput/extr_keyboard.c_test_set_coop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GUID_SysKeyboard = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"IDirectInput_CreateDevice() failed: %08x\0A\00", align 1
@SetCoop_null_window = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"SetCooperativeLevel(NULL, %d): %08x\0A\00", align 1
@SetCoop_invalid_window = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"SetCooperativeLevel(invalid, %d): %08x\0A\00", align 1
@SetCoop_real_window = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"SetCooperativeLevel(hwnd, %d): %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"err: %d\0A\00", align 1
@SetCoop_child_window = common dso_local global i64* null, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"SetCooperativeLevel(child, %d): %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @test_set_coop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_set_coop(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %6, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @IDirectInput_CreateDevice(i32* %9, i32* @GUID_SysKeyboard, i32** %6, i32* null)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @SUCCEEDED(i64 %11)
  %13 = load i64, i64* %5, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 (i32, i8*, i32, ...) @ok(i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @FAILED(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %128

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @IDirectInputDevice_SetCooperativeLevel(i32* %25, i32* null, i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64*, i64** @SetCoop_null_window, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %28, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i32 (i32, i8*, i32, ...) @ok(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %24
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %21

42:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 16
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @IDirectInputDevice_SetCooperativeLevel(i32* %47, i32* inttoptr (i64 4194304 to i32*), i32 %48)
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64*, i64** @SetCoop_invalid_window, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %50, %55
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %7, align 4
  %59 = load i64, i64* %5, align 8
  %60 = call i32 (i32, i8*, i32, ...) @ok(i32 %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %58, i64 %59)
  br label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %43

64:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %84, %64
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 16
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @IDirectInputDevice_SetCooperativeLevel(i32* %69, i32* %70, i32 %71)
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i64*, i64** @SetCoop_real_window, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %73, %78
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %7, align 4
  %82 = load i64, i64* %5, align 8
  %83 = call i32 (i32, i8*, i32, ...) @ok(i32 %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %81, i64 %82)
  br label %84

84:                                               ; preds = %68
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %65

87:                                               ; preds = %65
  %88 = load i32, i32* @WS_CHILD, align 4
  %89 = load i32, i32* @WS_VISIBLE, align 4
  %90 = or i32 %88, %89
  %91 = load i32*, i32** %4, align 8
  %92 = call i32* @CreateWindowA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %90, i32 10, i32 10, i32 50, i32 50, i32* %91, i32* null, i32* null, i32* null)
  store i32* %92, i32** %8, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = icmp ne i32* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 (...) @GetLastError()
  %97 = call i32 (i32, i8*, i32, ...) @ok(i32 %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  store i32 0, i32* %7, align 4
  br label %98

98:                                               ; preds = %117, %87
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 16
  br i1 %100, label %101, label %120

101:                                              ; preds = %98
  %102 = load i32*, i32** %6, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i64 @IDirectInputDevice_SetCooperativeLevel(i32* %102, i32* %103, i32 %104)
  store i64 %105, i64* %5, align 8
  %106 = load i64, i64* %5, align 8
  %107 = load i64*, i64** @SetCoop_child_window, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %106, %111
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %7, align 4
  %115 = load i64, i64* %5, align 8
  %116 = call i32 (i32, i8*, i32, ...) @ok(i32 %113, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %114, i64 %115)
  br label %117

117:                                              ; preds = %101
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %98

120:                                              ; preds = %98
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @DestroyWindow(i32* %121)
  %123 = load i32*, i32** %6, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32*, i32** %6, align 8
  %127 = call i32 @IUnknown_Release(i32* %126)
  br label %128

128:                                              ; preds = %19, %125, %120
  ret void
}

declare dso_local i64 @IDirectInput_CreateDevice(i32*, i32*, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IDirectInputDevice_SetCooperativeLevel(i32*, i32*, i32) #1

declare dso_local i32* @CreateWindowA(i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @DestroyWindow(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

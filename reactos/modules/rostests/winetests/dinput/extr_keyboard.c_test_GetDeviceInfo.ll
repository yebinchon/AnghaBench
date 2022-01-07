; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput/extr_keyboard.c_test_GetDeviceInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput/extr_keyboard.c_test_GetDeviceInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@GUID_SysKeyboard = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"IDirectInput_CreateDevice() failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"got %d, %d \0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"got %s, %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"got %d, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_GetDeviceInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetDeviceInfo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %4, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @IDirectInput_CreateDevice(i32* %7, i32* @GUID_SysKeyboard, i32** %4, i32* null)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @SUCCEEDED(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (i32, i8*, i32, ...) @ok(i32 %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @FAILED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %73

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 16, i32* %18, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @IDirectInputDevice_GetDeviceInfo(i32* %19, %struct.TYPE_5__* %5)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @SUCCEEDED(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i32, i8*, i32, ...) @ok(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 16, i32* %25, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = bitcast %struct.TYPE_4__* %6 to %struct.TYPE_5__*
  %28 = call i32 @IDirectInputDevice_GetDeviceInfo(i32* %26, %struct.TYPE_5__* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @SUCCEEDED(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i32, i8*, i32, ...) @ok(i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, i32, ...) @ok(i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %46 = call i32 @IsEqualGUID(i32* %44, i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %48 = call i32 @wine_dbgstr_guid(i32* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %50 = call i32 @wine_dbgstr_guid(i32* %49)
  %51 = call i32 (i32, i8*, i32, ...) @ok(i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %54 = call i32 @IsEqualGUID(i32* %52, i32* %53)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %56 = call i32 @wine_dbgstr_guid(i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %58 = call i32 @wine_dbgstr_guid(i32* %57)
  %59 = call i32 (i32, i8*, i32, ...) @ok(i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %61, %63
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, i32, ...) @ok(i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @IUnknown_Release(i32* %71)
  br label %73

73:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @IDirectInput_CreateDevice(i32*, i32*, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirectInputDevice_GetDeviceInfo(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @wine_dbgstr_guid(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

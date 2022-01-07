; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_devinst.c_test_create_device_list_ex.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_devinst.c_test_create_device_list_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_create_device_list_ex.machine = internal constant [6 x i8] c"dummy\00", align 1
@test_create_device_list_ex.empty = internal constant [1 x i8] zeroinitializer, align 1
@test_create_device_list_ex.notnull = internal global [8 x i8] c"NotNull\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Expected failure.\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Got unexpected error %#x.\0A\00", align 1
@ERROR_INVALID_MACHINENAME = common dso_local global i64 0, align 8
@ERROR_MACHINE_UNAVAILABLE = common dso_local global i64 0, align 8
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to create device list, error %#x.\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to destroy device list, error %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_create_device_list_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_create_device_list_ex() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @SetLastError(i32 -559038737)
  %4 = call i64 @SetupDiCreateDeviceInfoListExW(i32* null, i32* null, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_create_device_list_ex.notnull, i64 0, i64 0))
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = call i64 (...) @GetLastError()
  %11 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 (...) @GetLastError()
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %14)
  %16 = call i32 @SetLastError(i32 -559038737)
  %17 = call i64 @SetupDiCreateDeviceInfoListExW(i32* null, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_create_device_list_ex.machine, i64 0, i64 0), i8* null)
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = call i64 (...) @GetLastError()
  %24 = load i64, i64* @ERROR_INVALID_MACHINENAME, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %0
  %27 = call i64 (...) @GetLastError()
  %28 = load i64, i64* @ERROR_MACHINE_UNAVAILABLE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = call i64 (...) @GetLastError()
  %32 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %30, %26, %0
  %35 = phi i1 [ true, %26 ], [ true, %0 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 (...) @GetLastError()
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = call i64 @SetupDiCreateDeviceInfoListExW(i32* null, i32* null, i8* null, i8* null)
  store i64 %39, i64* %1, align 8
  %40 = load i64, i64* %1, align 8
  %41 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %42 = icmp ne i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 (...) @GetLastError()
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  %46 = load i64, i64* %1, align 8
  %47 = call i32 @SetupDiDestroyDeviceInfoList(i64 %46)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = call i64 (...) @GetLastError()
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %49)
  %51 = call i64 @SetupDiCreateDeviceInfoListExW(i32* null, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_create_device_list_ex.empty, i64 0, i64 0), i8* null)
  store i64 %51, i64* %1, align 8
  %52 = load i64, i64* %1, align 8
  %53 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %54 = icmp ne i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 (...) @GetLastError()
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  %58 = load i64, i64* %1, align 8
  %59 = call i32 @SetupDiDestroyDeviceInfoList(i64 %58)
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* %2, align 4
  %61 = call i64 (...) @GetLastError()
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %61)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @SetupDiCreateDeviceInfoListExW(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @SetupDiDestroyDeviceInfoList(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

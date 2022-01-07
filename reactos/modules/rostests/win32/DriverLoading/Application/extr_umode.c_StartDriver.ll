; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_umode.c_StartDriver.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_umode.c_StartDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC_MANAGER_ALL_ACCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SERVICE_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SERVICE_ALREADY_RUNNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i32] [i32 37, i32 115, i32 46, i32 115, i32 121, i32 115, i32 32, i32 97, i32 108, i32 114, i32 101, i32 97, i32 100, i32 121, i32 32, i32 114, i32 117, i32 110, i32 110, i32 105, i32 110, i32 103, i32 10, i32 0], align 4
@DRIVER_NAME = common dso_local global i8* null, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StartDriver(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @SC_MANAGER_ALL_ACCESS, align 4
  %8 = call i32 @OpenSCManagerW(i32* null, i32* null, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %2, align 8
  br label %44

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SERVICE_ALL_ACCESS, align 4
  %17 = call i32 @OpenServiceW(i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @CloseServiceHandle(i32 %21)
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %2, align 8
  br label %44

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @StartServiceW(i32 %25, i32 0, i32* null)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = call i64 (...) @GetLastError()
  %31 = load i64, i64* @ERROR_SERVICE_ALREADY_RUNNING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** @DRIVER_NAME, align 8
  %35 = call i32 @wprintf(i8* bitcast ([24 x i32]* @.str to i8*), i8* %34)
  %36 = load i64, i64* @TRUE, align 8
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @CloseServiceHandle(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @CloseServiceHandle(i32 %41)
  %43 = load i64, i64* %6, align 8
  store i64 %43, i64* %2, align 8
  br label %44

44:                                               ; preds = %38, %20, %11
  %45 = load i64, i64* %2, align 8
  ret i64 %45
}

declare dso_local i32 @OpenSCManagerW(i32*, i32*, i32) #1

declare dso_local i32 @OpenServiceW(i32, i32, i32) #1

declare dso_local i32 @CloseServiceHandle(i32) #1

declare dso_local i64 @StartServiceW(i32, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @wprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

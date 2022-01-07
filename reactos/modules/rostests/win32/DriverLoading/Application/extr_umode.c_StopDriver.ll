; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_umode.c_StopDriver.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_umode.c_StopDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC_MANAGER_ALL_ACCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SERVICE_ALL_ACCESS = common dso_local global i32 0, align 4
@SERVICE_CONTROL_STOP = common dso_local global i32 0, align 4
@ERROR_SERVICE_NOT_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i32] [i32 37, i32 115, i32 46, i32 115, i32 121, i32 115, i32 32, i32 119, i32 97, i32 115, i32 110, i32 39, i32 116, i32 32, i32 114, i32 117, i32 110, i32 110, i32 105, i32 110, i32 103, i32 10, i32 0], align 4
@DRIVER_NAME = common dso_local global i8* null, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StopDriver(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @SC_MANAGER_ALL_ACCESS, align 4
  %9 = call i32 @OpenSCManagerW(i32* null, i32* null, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %2, align 8
  br label %46

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SERVICE_ALL_ACCESS, align 4
  %18 = call i32 @OpenServiceW(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @CloseServiceHandle(i32 %22)
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %2, align 8
  br label %46

25:                                               ; preds = %14
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SERVICE_CONTROL_STOP, align 4
  %28 = call i64 @ControlService(i32 %26, i32 %27, i32* %6)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %25
  %32 = call i64 (...) @GetLastError()
  %33 = load i64, i64* @ERROR_SERVICE_NOT_ACTIVE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** @DRIVER_NAME, align 8
  %37 = call i32 @wprintf(i8* bitcast ([23 x i32]* @.str to i8*), i8* %36)
  %38 = load i64, i64* @TRUE, align 8
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @CloseServiceHandle(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @CloseServiceHandle(i32 %43)
  %45 = load i64, i64* %7, align 8
  store i64 %45, i64* %2, align 8
  br label %46

46:                                               ; preds = %40, %21, %12
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local i32 @OpenSCManagerW(i32*, i32*, i32) #1

declare dso_local i32 @OpenServiceW(i32, i32, i32) #1

declare dso_local i32 @CloseServiceHandle(i32) #1

declare dso_local i64 @ControlService(i32, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @wprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

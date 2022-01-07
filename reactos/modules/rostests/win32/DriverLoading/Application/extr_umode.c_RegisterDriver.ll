; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_umode.c_RegisterDriver.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_umode.c_RegisterDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC_MANAGER_ALL_ACCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SERVICE_ALL_ACCESS = common dso_local global i32 0, align 4
@SERVICE_KERNEL_DRIVER = common dso_local global i32 0, align 4
@SERVICE_DEMAND_START = common dso_local global i32 0, align 4
@SERVICE_ERROR_NORMAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ERROR_SERVICE_MARKED_FOR_DELETE = common dso_local global i64 0, align 8
@DRIVER_NAME = common dso_local global i32 0, align 4
@ERROR_SERVICE_EXISTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RegisterDriver(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @SC_MANAGER_ALL_ACCESS, align 4
  %10 = call i64 @OpenSCManagerW(i32* null, i32* null, i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %39, %15
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SERVICE_ALL_ACCESS, align 4
  %21 = load i32, i32* @SERVICE_KERNEL_DRIVER, align 4
  %22 = load i32, i32* @SERVICE_DEMAND_START, align 4
  %23 = load i32, i32* @SERVICE_ERROR_NORMAL, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @CreateServiceW(i64 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @CloseServiceHandle(i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @CloseServiceHandle(i64 %31)
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %3, align 4
  br label %49

34:                                               ; preds = %16
  %35 = call i64 (...) @GetLastError()
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @ERROR_SERVICE_MARKED_FOR_DELETE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @DRIVER_NAME, align 4
  %41 = call i32 @StopDriver(i32 %40)
  br label %16

42:                                               ; preds = %34
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @CloseServiceHandle(i64 %43)
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @ERROR_SERVICE_EXISTS, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %42, %28, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @OpenSCManagerW(i32*, i32*, i32) #1

declare dso_local i64 @CreateServiceW(i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @CloseServiceHandle(i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @StopDriver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

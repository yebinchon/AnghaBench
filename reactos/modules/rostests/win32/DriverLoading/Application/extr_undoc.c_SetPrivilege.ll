; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_undoc.c_SetPrivilege.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_undoc.c_SetPrivilege.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@TOKEN_ADJUST_PRIVILEGES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SE_LOAD_DRIVER_NAME = common dso_local global i32 0, align 4
@SE_PRIVILEGE_ENABLED = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @SetPrivilege to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SetPrivilege(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = call i32 (...) @GetCurrentProcess()
  %8 = load i32, i32* @TOKEN_ADJUST_PRIVILEGES, align 4
  %9 = call i32 @OpenProcessToken(i32 %7, i32 %8, i32* %5)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %2, align 8
  br label %56

13:                                               ; preds = %1
  %14 = load i32, i32* @SE_LOAD_DRIVER_NAME, align 4
  %15 = call i32 @LookupPrivilegeValue(i32* null, i32 %14, i32* %6)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @CloseHandle(i32 %18)
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %2, align 8
  br label %56

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load i64, i64* @SE_PRIVILEGE_ENABLED, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %31, i64* %35, align 8
  br label %41

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %36, %30
  %42 = load i32, i32* %5, align 4
  %43 = load i64, i64* @FALSE, align 8
  %44 = call i32 @AdjustTokenPrivileges(i32 %42, i64 %43, %struct.TYPE_5__* %4, i32 16, i32* null, i32* null)
  %45 = call i64 (...) @GetLastError()
  %46 = load i64, i64* @ERROR_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @CloseHandle(i32 %49)
  %51 = load i64, i64* @FALSE, align 8
  store i64 %51, i64* %2, align 8
  br label %56

52:                                               ; preds = %41
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @CloseHandle(i32 %53)
  %55 = load i64, i64* @TRUE, align 8
  store i64 %55, i64* %2, align 8
  br label %56

56:                                               ; preds = %52, %48, %17, %11
  %57 = load i64, i64* %2, align 8
  ret i64 %57
}

declare dso_local i32 @OpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @LookupPrivilegeValue(i32*, i32, i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @AdjustTokenPrivileges(i32, i64, %struct.TYPE_5__*, i32, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

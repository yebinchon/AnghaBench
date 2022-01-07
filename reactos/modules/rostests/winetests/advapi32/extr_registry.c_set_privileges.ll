; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_set_privileges.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_set_privileges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@TOKEN_ADJUST_PRIVILEGES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SE_PRIVILEGE_ENABLED = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @set_privileges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_privileges(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = call i32 (...) @GetCurrentProcess()
  %10 = load i32, i32* @TOKEN_ADJUST_PRIVILEGES, align 4
  %11 = call i32 @OpenProcessToken(i32 %9, i32 %10, i32* %7)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %3, align 8
  br label %58

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @LookupPrivilegeValueA(i32* null, i32 %16, i32* %8)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @CloseHandle(i32 %20)
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %3, align 8
  br label %58

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load i64, i64* @SE_PRIVILEGE_ENABLED, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 %33, i64* %37, align 8
  br label %43

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = load i32, i32* %7, align 4
  %45 = load i64, i64* @FALSE, align 8
  %46 = call i32 @AdjustTokenPrivileges(i32 %44, i64 %45, %struct.TYPE_5__* %6, i32 16, i32* null, i32* null)
  %47 = call i64 (...) @GetLastError()
  %48 = load i64, i64* @ERROR_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @CloseHandle(i32 %51)
  %53 = load i64, i64* @FALSE, align 8
  store i64 %53, i64* %3, align 8
  br label %58

54:                                               ; preds = %43
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @CloseHandle(i32 %55)
  %57 = load i64, i64* @TRUE, align 8
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %54, %50, %19, %13
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local i32 @OpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @LookupPrivilegeValueA(i32*, i32, i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @AdjustTokenPrivileges(i32, i64, %struct.TYPE_5__*, i32, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

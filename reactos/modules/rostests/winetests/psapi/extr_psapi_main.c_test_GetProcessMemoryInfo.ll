; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/psapi/extr_psapi_main.c_test_GetProcessMemoryInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/psapi/extr_psapi_main.c_test_GetProcessMemoryInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"GetProcessMemoryInfo should fail\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"expected error=ERROR_INVALID_HANDLE but got %d\0A\00", align 1
@hpSR = common dso_local global i32* null, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"expected error=ERROR_ACCESS_DENIED but got %d\0A\00", align 1
@hpQI = common dso_local global i32* null, align 8
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"expected error=ERROR_INSUFFICIENT_BUFFER but got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetProcessMemoryInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetProcessMemoryInfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @SetLastError(i32 -559038737)
  %4 = call i32 @GetProcessMemoryInfo(i32* null, i32* %1, i32 4)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %10 = call i64 (...) @GetLastError()
  %11 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 (...) @GetLastError()
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %14)
  %16 = call i32 @SetLastError(i32 -559038737)
  %17 = load i32*, i32** @hpSR, align 8
  %18 = call i32 @GetProcessMemoryInfo(i32* %17, i32* %1, i32 4)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %24 = call i64 (...) @GetLastError()
  %25 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 (...) @GetLastError()
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  %30 = call i32 @SetLastError(i32 -559038737)
  %31 = load i32*, i32** @hpQI, align 8
  %32 = call i32 @GetProcessMemoryInfo(i32* %31, i32* %1, i32 3)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %38 = call i64 (...) @GetLastError()
  %39 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 (...) @GetLastError()
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %42)
  %44 = call i32 @SetLastError(i32 -559038737)
  %45 = load i32*, i32** @hpQI, align 8
  %46 = call i32 @GetProcessMemoryInfo(i32* %45, i32* %1, i32 4)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = icmp eq i32 %47, 1
  %49 = zext i1 %48 to i32
  %50 = call i64 (...) @GetLastError()
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %50)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetProcessMemoryInfo(i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

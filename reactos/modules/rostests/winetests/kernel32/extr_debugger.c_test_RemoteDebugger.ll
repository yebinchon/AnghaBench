; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_debugger.c_test_RemoteDebugger.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_debugger.c_test_RemoteDebugger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"expected CheckRemoteDebuggerPresent to succeed\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"expected error to be unchanged, got %d/%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"expected CheckRemoteDebuggerPresent to fail\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"expected parameter to be unchanged\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"expected error ERROR_INVALID_PARAMETER, got %d/%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RemoteDebugger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RemoteDebugger() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @TRUE, align 4
  store i32 %3, i32* %2, align 4
  %4 = call i32 @SetLastError(i32 -559038737)
  %5 = call i32* (...) @GetCurrentProcess()
  %6 = call i32 @pCheckRemoteDebuggerPresent(i32* %5, i32* %2)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 (i32, i8*, ...) @ok(i32 %7, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (...) @GetLastError()
  %10 = icmp eq i32 -559038737, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 (...) @GetLastError()
  %13 = call i32 (...) @GetLastError()
  %14 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %2, align 4
  %16 = call i32 @SetLastError(i32 -559038737)
  %17 = call i32 @pCheckRemoteDebuggerPresent(i32* null, i32* %2)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* %2, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %26 = call i32 (...) @GetLastError()
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 (...) @GetLastError()
  %31 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %29, i32 %30)
  %32 = call i32 @SetLastError(i32 -559038737)
  %33 = call i32* (...) @GetCurrentProcess()
  %34 = call i32 @pCheckRemoteDebuggerPresent(i32* %33, i32* null)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %41 = call i32 (...) @GetLastError()
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 (...) @GetLastError()
  %45 = call i32 (...) @GetLastError()
  %46 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pCheckRemoteDebuggerPresent(i32*, i32*) #1

declare dso_local i32* @GetCurrentProcess(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

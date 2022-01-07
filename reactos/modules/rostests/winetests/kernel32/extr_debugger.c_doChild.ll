; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_debugger.c_doChild.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_debugger.c_doChild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_blackbox = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@PROCESS_QUERY_INFORMATION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"OpenProcess failed, last error %#x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"CheckRemoteDebuggerPresent failed, last error %#x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Expected debug == 0, got %#x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"DebugActiveProcess failed, last error %#x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Expected debug != 0, got %#x.\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"DebugActiveProcessStop failed, last error %#x.\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"CloseHandle failed, last error %#x.\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Expected ret != 0, got %#x.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@child_failures = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @doChild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doChild(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.child_blackbox, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = load i8**, i8*** %4, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 4
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8**, i8*** %4, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 3
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %8)
  %18 = load i32, i32* @PROCESS_QUERY_INFORMATION, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @OpenProcess(i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 (...) @GetLastError()
  %28 = call i32 @child_ok(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @pCheckRemoteDebuggerPresent(i32 %29, i32* %9)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 (...) @GetLastError()
  %33 = call i32 @child_ok(i32 %31, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @child_ok(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @DebugActiveProcess(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 (...) @GetLastError()
  %44 = call i32 @child_ok(i32 %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @pCheckRemoteDebuggerPresent(i32 %45, i32* %9)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 (...) @GetLastError()
  %49 = call i32 @child_ok(i32 %47, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @child_ok(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @pDebugActiveProcessStop(i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 (...) @GetLastError()
  %57 = call i32 @child_ok(i32 %55, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @pCheckRemoteDebuggerPresent(i32 %58, i32* %9)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 (...) @GetLastError()
  %62 = call i32 @child_ok(i32 %60, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @child_ok(i32 %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @CloseHandle(i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (...) @GetLastError()
  %73 = call i32 @child_ok(i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %72)
  %74 = call i32 (...) @pIsDebuggerPresent()
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @child_ok(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %76)
  %78 = call i32 (...) @GetCurrentProcess()
  %79 = call i32 @pCheckRemoteDebuggerPresent(i32 %78, i32* %9)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 (...) @GetLastError()
  %82 = call i32 @child_ok(i32 %80, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @child_ok(i32 %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @FALSE, align 4
  %87 = call %struct.TYPE_4__* (...) @NtCurrentTeb()
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 4
  %91 = call i32 (...) @pIsDebuggerPresent()
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @child_ok(i32 %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  %98 = call i32 (...) @GetCurrentProcess()
  %99 = call i32 @pCheckRemoteDebuggerPresent(i32 %98, i32* %9)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 (...) @GetLastError()
  %102 = call i32 @child_ok(i32 %100, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @child_ok(i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @TRUE, align 4
  %107 = call %struct.TYPE_4__* (...) @NtCurrentTeb()
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 4
  %111 = load i32, i32* @child_failures, align 4
  %112 = getelementptr inbounds %struct.child_blackbox, %struct.child_blackbox* %5, i32 0, i32 0
  store i32 %111, i32* %112, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @save_blackbox(i8* %113, %struct.child_blackbox* %5, i32 4)
  ret void
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @OpenProcess(i32, i32, i32) #1

declare dso_local i32 @child_ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @pCheckRemoteDebuggerPresent(i32, i32*) #1

declare dso_local i32 @DebugActiveProcess(i32) #1

declare dso_local i32 @pDebugActiveProcessStop(i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @pIsDebuggerPresent(...) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local %struct.TYPE_4__* @NtCurrentTeb(...) #1

declare dso_local i32 @save_blackbox(i8*, %struct.child_blackbox*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

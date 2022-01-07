; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_debugger.c_crash_and_winedbg.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_debugger.c_crash_and_winedbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"unable to set AeDebug/auto: ret=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s debugger crash\00", align 1
@STARTF_USESHOWWINDOW = common dso_local global i32 0, align 4
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"CreateProcess: err=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"waiting for child exit...\0A\00", align 1
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"Timed out waiting for the child to crash\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"GetExitCodeProcess failed: err=%d\0A\00", align 1
@STATUS_ACCESS_VIOLATION = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"exit code = %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @crash_and_winedbg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crash_and_winedbg(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @REG_SZ, align 4
  %13 = call i64 @RegSetValueExA(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 %12, i32* bitcast ([2 x i8]* @.str.1 to i32*), i32 2)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %6, align 8
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %18)
  %20 = call i32 (...) @GetProcessHeap()
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = add nsw i64 %22, 15
  %24 = add nsw i64 %23, 1
  %25 = call i8* @HeapAlloc(i32 %20, i32 0, i64 %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  %29 = call i32 @memset(%struct.TYPE_6__* %9, i32 0, i32 12)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 12, i32* %30, align 4
  %31 = load i32, i32* @STARTF_USESHOWWINDOW, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @SW_SHOWNORMAL, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i64 @CreateProcessA(i32* null, i8* %35, i32* null, i32* null, i32 %36, i32 0, i32* null, i32* null, %struct.TYPE_6__* %9, %struct.TYPE_7__* %8)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i64 (...) @GetLastError()
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %40)
  %42 = call i32 (...) @GetProcessHeap()
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @HeapFree(i32 %42, i32 0, i8* %43)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @CloseHandle(i32 %46)
  %48 = call i32 @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @WaitForSingleObject(i32 %50, i32 60000)
  %52 = load i64, i64* @WAIT_OBJECT_0, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @GetExitCodeProcess(i32 %57, i64* %10)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i64 (...) @GetLastError()
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @STATUS_ACCESS_VIOLATION, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %10, align 8
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i64 %66)
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @CloseHandle(i32 %69)
  ret void
}

declare dso_local i64 @RegSetValueExA(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @GetExitCodeProcess(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_threadpool.c_init_threadpool.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_threadpool.c_init_threadpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"ntdll\00", align 1
@hntdll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Could not load ntdll\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TpAllocCleanupGroup = common dso_local global i32 0, align 4
@TpAllocPool = common dso_local global i32 0, align 4
@TpAllocTimer = common dso_local global i32 0, align 4
@TpAllocWait = common dso_local global i32 0, align 4
@TpAllocWork = common dso_local global i32 0, align 4
@TpCallbackMayRunLong = common dso_local global i32 0, align 4
@TpCallbackReleaseSemaphoreOnCompletion = common dso_local global i32 0, align 4
@TpDisassociateCallback = common dso_local global i32 0, align 4
@TpIsTimerSet = common dso_local global i32 0, align 4
@TpPostWork = common dso_local global i32 0, align 4
@TpReleaseCleanupGroup = common dso_local global i32 0, align 4
@TpReleaseCleanupGroupMembers = common dso_local global i32 0, align 4
@TpReleasePool = common dso_local global i32 0, align 4
@TpReleaseTimer = common dso_local global i32 0, align 4
@TpReleaseWait = common dso_local global i32 0, align 4
@TpReleaseWork = common dso_local global i32 0, align 4
@TpSetPoolMaxThreads = common dso_local global i32 0, align 4
@TpSetTimer = common dso_local global i32 0, align 4
@TpSetWait = common dso_local global i32 0, align 4
@TpSimpleTryPost = common dso_local global i32 0, align 4
@TpWaitForTimer = common dso_local global i32 0, align 4
@TpWaitForWait = common dso_local global i32 0, align 4
@TpWaitForWork = common dso_local global i32 0, align 4
@pTpAllocPool = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Threadpool functions not supported, skipping tests\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_threadpool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_threadpool() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* @hntdll, align 4
  %3 = load i32, i32* @hntdll, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = call i32 @win_skip(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %1, align 4
  br label %62

8:                                                ; preds = %0
  %9 = load i32, i32* @TpAllocCleanupGroup, align 4
  %10 = call i32 @NTDLL_GET_PROC(i32 %9)
  %11 = load i32, i32* @TpAllocPool, align 4
  %12 = call i32 @NTDLL_GET_PROC(i32 %11)
  %13 = load i32, i32* @TpAllocTimer, align 4
  %14 = call i32 @NTDLL_GET_PROC(i32 %13)
  %15 = load i32, i32* @TpAllocWait, align 4
  %16 = call i32 @NTDLL_GET_PROC(i32 %15)
  %17 = load i32, i32* @TpAllocWork, align 4
  %18 = call i32 @NTDLL_GET_PROC(i32 %17)
  %19 = load i32, i32* @TpCallbackMayRunLong, align 4
  %20 = call i32 @NTDLL_GET_PROC(i32 %19)
  %21 = load i32, i32* @TpCallbackReleaseSemaphoreOnCompletion, align 4
  %22 = call i32 @NTDLL_GET_PROC(i32 %21)
  %23 = load i32, i32* @TpDisassociateCallback, align 4
  %24 = call i32 @NTDLL_GET_PROC(i32 %23)
  %25 = load i32, i32* @TpIsTimerSet, align 4
  %26 = call i32 @NTDLL_GET_PROC(i32 %25)
  %27 = load i32, i32* @TpPostWork, align 4
  %28 = call i32 @NTDLL_GET_PROC(i32 %27)
  %29 = load i32, i32* @TpReleaseCleanupGroup, align 4
  %30 = call i32 @NTDLL_GET_PROC(i32 %29)
  %31 = load i32, i32* @TpReleaseCleanupGroupMembers, align 4
  %32 = call i32 @NTDLL_GET_PROC(i32 %31)
  %33 = load i32, i32* @TpReleasePool, align 4
  %34 = call i32 @NTDLL_GET_PROC(i32 %33)
  %35 = load i32, i32* @TpReleaseTimer, align 4
  %36 = call i32 @NTDLL_GET_PROC(i32 %35)
  %37 = load i32, i32* @TpReleaseWait, align 4
  %38 = call i32 @NTDLL_GET_PROC(i32 %37)
  %39 = load i32, i32* @TpReleaseWork, align 4
  %40 = call i32 @NTDLL_GET_PROC(i32 %39)
  %41 = load i32, i32* @TpSetPoolMaxThreads, align 4
  %42 = call i32 @NTDLL_GET_PROC(i32 %41)
  %43 = load i32, i32* @TpSetTimer, align 4
  %44 = call i32 @NTDLL_GET_PROC(i32 %43)
  %45 = load i32, i32* @TpSetWait, align 4
  %46 = call i32 @NTDLL_GET_PROC(i32 %45)
  %47 = load i32, i32* @TpSimpleTryPost, align 4
  %48 = call i32 @NTDLL_GET_PROC(i32 %47)
  %49 = load i32, i32* @TpWaitForTimer, align 4
  %50 = call i32 @NTDLL_GET_PROC(i32 %49)
  %51 = load i32, i32* @TpWaitForWait, align 4
  %52 = call i32 @NTDLL_GET_PROC(i32 %51)
  %53 = load i32, i32* @TpWaitForWork, align 4
  %54 = call i32 @NTDLL_GET_PROC(i32 %53)
  %55 = load i32, i32* @pTpAllocPool, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %8
  %58 = call i32 @win_skip(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %1, align 4
  br label %62

60:                                               ; preds = %8
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %1, align 4
  br label %62

62:                                               ; preds = %60, %57, %5
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @NTDLL_GET_PROC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

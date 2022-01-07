; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_InitFunctionPtrs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_InitFunctionPtrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"ntdll.dll\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"kernel32.dll\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"advapi32.dll\00", align 1
@RegGetValueA = common dso_local global i32 0, align 4
@RegCopyTreeA = common dso_local global i32 0, align 4
@RegDeleteTreeA = common dso_local global i32 0, align 4
@RegDeleteKeyExA = common dso_local global i32 0, align 4
@RegDeleteKeyValueA = common dso_local global i32 0, align 4
@RegSetKeyValueW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"IsWow64Process\00", align 1
@pIsWow64Process = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"RtlFormatCurrentUserKeyPath\00", align 1
@pRtlFormatCurrentUserKeyPath = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"RtlFreeUnicodeString\00", align 1
@pRtlFreeUnicodeString = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"NtDeleteKey\00", align 1
@pNtDeleteKey = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InitFunctionPtrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitFunctionPtrs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* %1, align 4
  %5 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %5, i32* %2, align 4
  %6 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @RegGetValueA, align 4
  %8 = call i32 @ADVAPI32_GET_PROC(i32 %7)
  %9 = load i32, i32* @RegCopyTreeA, align 4
  %10 = call i32 @ADVAPI32_GET_PROC(i32 %9)
  %11 = load i32, i32* @RegDeleteTreeA, align 4
  %12 = call i32 @ADVAPI32_GET_PROC(i32 %11)
  %13 = load i32, i32* @RegDeleteKeyExA, align 4
  %14 = call i32 @ADVAPI32_GET_PROC(i32 %13)
  %15 = load i32, i32* @RegDeleteKeyValueA, align 4
  %16 = call i32 @ADVAPI32_GET_PROC(i32 %15)
  %17 = load i32, i32* @RegSetKeyValueW, align 4
  %18 = call i32 @ADVAPI32_GET_PROC(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = call i64 @GetProcAddress(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** @pIsWow64Process, align 8
  %22 = load i32, i32* %1, align 4
  %23 = call i64 @GetProcAddress(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** @pRtlFormatCurrentUserKeyPath, align 8
  %25 = load i32, i32* %1, align 4
  %26 = call i64 @GetProcAddress(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** @pRtlFreeUnicodeString, align 8
  %28 = load i32, i32* %1, align 4
  %29 = call i64 @GetProcAddress(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** @pNtDeleteKey, align 8
  ret void
}

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i32 @ADVAPI32_GET_PROC(i32) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/psapi/extr_psapi_main.c_init_func_ptrs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/psapi/extr_psapi_main.c_init_func_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"ntdll.dll\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"NtQuerySystemInformation\00", align 1
@pNtQuerySystemInformation = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"NtQueryVirtualMemory\00", align 1
@pNtQueryVirtualMemory = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"kernel32.dll\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"IsWow64Process\00", align 1
@pIsWow64Process = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Wow64DisableWow64FsRedirection\00", align 1
@pWow64DisableWow64FsRedirection = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Wow64RevertWow64FsRedirection\00", align 1
@pWow64RevertWow64FsRedirection = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_func_ptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_func_ptrs() #0 {
  %1 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %2 = call i64 @GetProcAddress(i32 %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %3 = inttoptr i64 %2 to i8*
  store i8* %3, i8** @pNtQuerySystemInformation, align 8
  %4 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %5 = call i64 @GetProcAddress(i32 %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** @pNtQueryVirtualMemory, align 8
  %7 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i64 @GetProcAddress(i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** @pIsWow64Process, align 8
  %10 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i64 @GetProcAddress(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** @pWow64DisableWow64FsRedirection, align 8
  %13 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i64 @GetProcAddress(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** @pWow64RevertWow64FsRedirection, align 8
  %16 = load i32, i32* @TRUE, align 4
  ret i32 %16
}

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @GetModuleHandleA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

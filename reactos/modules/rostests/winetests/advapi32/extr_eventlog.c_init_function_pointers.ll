; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_eventlog.c_init_function_pointers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_eventlog.c_init_function_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"advapi32.dll\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"kernel32.dll\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"CreateWellKnownSid\00", align 1
@pCreateWellKnownSid = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"GetEventLogInformation\00", align 1
@pGetEventLogInformation = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"GetComputerNameExA\00", align 1
@pGetComputerNameExA = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Wow64DisableWow64FsRedirection\00", align 1
@pWow64DisableWow64FsRedirection = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Wow64RevertWow64FsRedirection\00", align 1
@pWow64RevertWow64FsRedirection = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_function_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_function_pointers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* %1, align 4
  %4 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i64 @GetProcAddress(i32 %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** @pCreateWellKnownSid, align 8
  %8 = load i32, i32* %1, align 4
  %9 = call i64 @GetProcAddress(i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** @pGetEventLogInformation, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @GetProcAddress(i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** @pGetComputerNameExA, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @GetProcAddress(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** @pWow64DisableWow64FsRedirection, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @GetProcAddress(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** @pWow64RevertWow64FsRedirection, align 8
  ret void
}

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_init.c_CleanUpPICE.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_init.c_CleanUpPICE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"CleanUpPICE(): trace step 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"CleanUpPICE(): trace step 2\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"CleanUpPICE(): trace step 3\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"CleanUpPICE(): trace step 4\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"CleanUpPICE(): trace step 5\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"CleanUpPICE(): trace step 6\0A\00", align 1
@OUTPUT_WINDOW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"pICE: shutting down...\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"CleanUpPICE(): trace step 7\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CleanUpPICE() #0 {
  %1 = call i32 @DPRINT(i32 ptrtoint ([29 x i8]* @.str to i32))
  %2 = call i32 (...) @RemovePiceRunningTimer()
  %3 = call i32 @DPRINT(i32 ptrtoint ([29 x i8]* @.str.1 to i32))
  %4 = call i32 (...) @DeInstallGlobalKeyboardHook()
  %5 = call i32 (...) @DeInstallSyscallHook()
  %6 = call i32 (...) @DeInstallInt3Hook()
  %7 = call i32 (...) @DeInstallPrintkHook()
  %8 = call i32 (...) @DeInstallDblFltHook()
  %9 = call i32 (...) @DeInstallGPFaultHook()
  %10 = call i32 (...) @DeInstallIntEHook()
  %11 = call i32 (...) @DeInstallTraceHook()
  %12 = call i32 @DPRINT(i32 ptrtoint ([29 x i8]* @.str.2 to i32))
  %13 = call i32 (...) @RestoreIdt()
  %14 = call i32 @DPRINT(i32 ptrtoint ([29 x i8]* @.str.3 to i32))
  %15 = call i32 (...) @UnloadExports()
  %16 = call i32 (...) @UnloadSymbols()
  %17 = call i32 @DPRINT(i32 ptrtoint ([29 x i8]* @.str.4 to i32))
  %18 = call i32 (...) @RestoreKeyboardDriver()
  %19 = call i32 @DPRINT(i32 ptrtoint ([29 x i8]* @.str.5 to i32))
  %20 = load i32, i32* @OUTPUT_WINDOW, align 4
  %21 = call i32 @Print(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %22 = call i32 @DPRINT(i32 ptrtoint ([29 x i8]* @.str.7 to i32))
  %23 = call i32 (...) @ConsoleShutdown()
  ret void
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @RemovePiceRunningTimer(...) #1

declare dso_local i32 @DeInstallGlobalKeyboardHook(...) #1

declare dso_local i32 @DeInstallSyscallHook(...) #1

declare dso_local i32 @DeInstallInt3Hook(...) #1

declare dso_local i32 @DeInstallPrintkHook(...) #1

declare dso_local i32 @DeInstallDblFltHook(...) #1

declare dso_local i32 @DeInstallGPFaultHook(...) #1

declare dso_local i32 @DeInstallIntEHook(...) #1

declare dso_local i32 @DeInstallTraceHook(...) #1

declare dso_local i32 @RestoreIdt(...) #1

declare dso_local i32 @UnloadExports(...) #1

declare dso_local i32 @UnloadSymbols(...) #1

declare dso_local i32 @RestoreKeyboardDriver(...) #1

declare dso_local i32 @Print(i32, i8*) #1

declare dso_local i32 @ConsoleShutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

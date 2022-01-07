; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_winmm.c_WINMM_CreateIData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_winmm.c_WINMM_CreateIData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hWinMM32Instance = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@psStopEvent = common dso_local global i8* null, align 8
@psLastEvent = common dso_local global i8* null, align 8
@WINMM_cs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @WINMM_CreateIData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WINMM_CreateIData(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @hWinMM32Instance, align 4
  %4 = load i32, i32* @TRUE, align 4
  %5 = load i32, i32* @FALSE, align 4
  %6 = call i8* @CreateEventW(i32* null, i32 %4, i32 %5, i32* null)
  store i8* %6, i8** @psStopEvent, align 8
  %7 = load i32, i32* @TRUE, align 4
  %8 = load i32, i32* @FALSE, align 4
  %9 = call i8* @CreateEventW(i32* null, i32 %7, i32 %8, i32* null)
  store i8* %9, i8** @psLastEvent, align 8
  %10 = call i32 @InitializeCriticalSection(i32* @WINMM_cs)
  %11 = load i32, i32* @TRUE, align 4
  ret i32 %11
}

declare dso_local i8* @CreateEventW(i32*, i32, i32, i32*) #1

declare dso_local i32 @InitializeCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

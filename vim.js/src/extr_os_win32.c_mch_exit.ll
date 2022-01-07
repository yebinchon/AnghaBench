; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_mch_exit.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_mch_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_fWindInitCalled = common dso_local global i64 0, align 8
@TMODE_COOK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@g_hConOut = common dso_local global i32 0, align 4
@g_cci = common dso_local global i32 0, align 4
@g_hConIn = common dso_local global i32 0, align 4
@g_cmodein = common dso_local global i32 0, align 4
@g_cmodeout = common dso_local global i32 0, align 4
@fdDump = common dso_local global i32* null, align 8
@g_fCanChangeIcon = common dso_local global i64 0, align 8
@g_fForceExit = common dso_local global i32 0, align 4
@g_hOrigIcon = common dso_local global i32 0, align 4
@g_hOrigIconSmall = common dso_local global i32 0, align 4
@g_hWnd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mch_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @stoptermcap()
  %4 = load i64, i64* @g_fWindInitCalled, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @TMODE_COOK, align 4
  %8 = call i32 @settmode(i32 %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @ml_close_all(i32 %10)
  %12 = load i64, i64* @g_fWindInitCalled, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %9
  %16 = load i32, i32* @g_hConOut, align 4
  %17 = call i32 @SetConsoleCursorInfo(i32 %16, i32* @g_cci)
  %18 = load i32, i32* @g_hConIn, align 4
  %19 = load i32, i32* @g_cmodein, align 4
  %20 = call i32 @SetConsoleMode(i32 %18, i32 %19)
  %21 = load i32, i32* @g_hConOut, align 4
  %22 = load i32, i32* @g_cmodeout, align 4
  %23 = call i32 @SetConsoleMode(i32 %21, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @exit(i32 %24) #3
  unreachable
}

declare dso_local i32 @stoptermcap(...) #1

declare dso_local i32 @settmode(i32) #1

declare dso_local i32 @ml_close_all(i32) #1

declare dso_local i32 @SetConsoleCursorInfo(i32, i32*) #1

declare dso_local i32 @SetConsoleMode(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

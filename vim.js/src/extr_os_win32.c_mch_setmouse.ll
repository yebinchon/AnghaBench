; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_mch_setmouse.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_mch_setmouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_fMouseAvail = common dso_local global i32 0, align 4
@g_fMouseActive = common dso_local global i32 0, align 4
@g_hConIn = common dso_local global i32 0, align 4
@ENABLE_MOUSE_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mch_setmouse(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @g_fMouseAvail, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %26

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* @g_fMouseActive, align 4
  %9 = load i32, i32* @g_hConIn, align 4
  %10 = call i32 @GetConsoleMode(i32 %9, i32* %3)
  %11 = load i32, i32* @g_fMouseActive, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i32, i32* @ENABLE_MOUSE_INPUT, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %22

17:                                               ; preds = %7
  %18 = load i32, i32* @ENABLE_MOUSE_INPUT, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %13
  %23 = load i32, i32* @g_hConIn, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @SetConsoleMode(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %6
  ret void
}

declare dso_local i32 @GetConsoleMode(i32, i32*) #1

declare dso_local i32 @SetConsoleMode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

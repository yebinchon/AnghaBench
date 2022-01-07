; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_mch_breakcheck.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_mch_breakcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_fCtrlCPressed = common dso_local global i64 0, align 8
@g_fCBrkPressed = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@got_int = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mch_breakcheck() #0 {
  %1 = load i64, i64* @g_fCtrlCPressed, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @g_fCBrkPressed, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3, %0
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* @g_fCBrkPressed, align 8
  store i64 %7, i64* @g_fCtrlCPressed, align 8
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* @got_int, align 4
  br label %9

9:                                                ; preds = %6, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

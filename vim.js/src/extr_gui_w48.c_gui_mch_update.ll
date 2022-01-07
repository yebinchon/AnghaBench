; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_w48.c_gui_mch_update.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_w48.c_gui_mch_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_busy_processing = common dso_local global i32 0, align 4
@PM_NOREMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_update() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @s_busy_processing, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %15, %4
  %6 = load i32, i32* @PM_NOREMOVE, align 4
  %7 = call i64 @pPeekMessage(i32* %1, i32* null, i32 0, i32 0, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = call i32 (...) @vim_is_input_buf_full()
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i1 [ false, %5 ], [ %12, %9 ]
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = call i32 (...) @process_message()
  br label %5

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17, %0
  ret void
}

declare dso_local i64 @pPeekMessage(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @vim_is_input_buf_full(...) #1

declare dso_local i32 @process_message(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_ex_getln.c_redrawcmdline.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_ex_getln.c_redrawcmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmd_silent = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@need_wait_return = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redrawcmdline() #0 {
  %1 = load i64, i64* @cmd_silent, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %9

4:                                                ; preds = %0
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* @need_wait_return, align 4
  %6 = call i32 (...) @compute_cmdrow()
  %7 = call i32 (...) @redrawcmd()
  %8 = call i32 (...) @cursorcmd()
  br label %9

9:                                                ; preds = %4, %3
  ret void
}

declare dso_local i32 @compute_cmdrow(...) #1

declare dso_local i32 @redrawcmd(...) #1

declare dso_local i32 @cursorcmd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

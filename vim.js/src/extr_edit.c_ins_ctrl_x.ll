; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_ctrl_x.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_ctrl_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctrl_x_mode = common dso_local global i64 0, align 8
@CTRL_X_CMDLINE = common dso_local global i64 0, align 8
@compl_cont_status = common dso_local global i32 0, align 4
@CONT_N_ADDS = common dso_local global i32 0, align 4
@CONT_INTRPT = common dso_local global i32 0, align 4
@CTRL_X_NOT_DEFINED_YET = common dso_local global i64 0, align 8
@edit_submode = common dso_local global i32* null, align 8
@edit_submode_pre = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ins_ctrl_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ins_ctrl_x() #0 {
  %1 = load i64, i64* @ctrl_x_mode, align 8
  %2 = load i64, i64* @CTRL_X_CMDLINE, align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %4, label %21

4:                                                ; preds = %0
  %5 = load i32, i32* @compl_cont_status, align 4
  %6 = load i32, i32* @CONT_N_ADDS, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = load i32, i32* @CONT_INTRPT, align 4
  %11 = load i32, i32* @compl_cont_status, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* @compl_cont_status, align 4
  br label %14

13:                                               ; preds = %4
  store i32 0, i32* @compl_cont_status, align 4
  br label %14

14:                                               ; preds = %13, %9
  %15 = load i64, i64* @CTRL_X_NOT_DEFINED_YET, align 8
  store i64 %15, i64* @ctrl_x_mode, align 8
  %16 = load i64, i64* @ctrl_x_mode, align 8
  %17 = call i32 @CTRL_X_MSG(i64 %16)
  %18 = call i64 @_(i32 %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** @edit_submode, align 8
  store i32* null, i32** @edit_submode_pre, align 8
  %20 = call i32 (...) @showmode()
  br label %21

21:                                               ; preds = %14, %0
  ret void
}

declare dso_local i64 @_(i32) #1

declare dso_local i32 @CTRL_X_MSG(i64) #1

declare dso_local i32 @showmode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_message.c_msg_check.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_message.c_msg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msg_row = common dso_local global i32 0, align 4
@Rows = common dso_local global i32 0, align 4
@msg_col = common dso_local global i64 0, align 8
@sc_col = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@need_wait_return = common dso_local global i8* null, align 8
@redraw_cmdline = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msg_check() #0 {
  %1 = load i32, i32* @msg_row, align 4
  %2 = load i32, i32* @Rows, align 4
  %3 = sub nsw i32 %2, 1
  %4 = icmp eq i32 %1, %3
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load i64, i64* @msg_col, align 8
  %7 = load i64, i64* @sc_col, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load i8*, i8** @TRUE, align 8
  store i8* %10, i8** @need_wait_return, align 8
  %11 = load i8*, i8** @TRUE, align 8
  store i8* %11, i8** @redraw_cmdline, align 8
  br label %12

12:                                               ; preds = %9, %5, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

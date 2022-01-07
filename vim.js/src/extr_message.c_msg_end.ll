; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_message.c_msg_end.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_message.c_msg_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exiting = common dso_local global i32 0, align 4
@need_wait_return = common dso_local global i64 0, align 8
@State = common dso_local global i32 0, align 4
@CMDLINE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msg_end() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @exiting, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @need_wait_return, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = load i32, i32* @State, align 4
  %9 = load i32, i32* @CMDLINE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i32 @wait_return(i32 %13)
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %1, align 4
  br label %19

16:                                               ; preds = %7, %4, %0
  %17 = call i32 (...) @out_flush()
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @wait_return(i32) #1

declare dso_local i32 @out_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

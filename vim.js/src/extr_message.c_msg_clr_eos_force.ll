; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_message.c_msg_clr_eos_force.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_message.c_msg_clr_eos_force.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@full_screen = common dso_local global i64 0, align 8
@T_CD = common dso_local global i64* null, align 8
@T_CE = common dso_local global i64* null, align 8
@msg_row = common dso_local global i32 0, align 4
@msg_col = common dso_local global i32 0, align 4
@Columns = common dso_local global i64 0, align 8
@Rows = common dso_local global i64 0, align 8
@cmdmsg_rl = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msg_clr_eos_force() #0 {
  %1 = call i64 (...) @msg_use_printf()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %23

3:                                                ; preds = %0
  %4 = load i64, i64* @full_screen, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = load i64*, i64** @T_CD, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i64*, i64** @T_CD, align 8
  %12 = call i32 @out_str(i64* %11)
  br label %21

13:                                               ; preds = %6
  %14 = load i64*, i64** @T_CE, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i64*, i64** @T_CE, align 8
  %19 = call i32 @out_str(i64* %18)
  br label %20

20:                                               ; preds = %17, %13
  br label %21

21:                                               ; preds = %20, %10
  br label %22

22:                                               ; preds = %21, %3
  br label %38

23:                                               ; preds = %0
  %24 = load i32, i32* @msg_row, align 4
  %25 = load i32, i32* @msg_row, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @msg_col, align 4
  %28 = load i64, i64* @Columns, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @screen_fill(i32 %24, i32 %26, i32 %27, i32 %29, i8 signext 32, i8 signext 32, i32 0)
  %31 = load i32, i32* @msg_row, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i64, i64* @Rows, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* @Columns, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @screen_fill(i32 %32, i32 %34, i32 0, i32 %36, i8 signext 32, i8 signext 32, i32 0)
  br label %38

38:                                               ; preds = %23, %22
  ret void
}

declare dso_local i64 @msg_use_printf(...) #1

declare dso_local i32 @out_str(i64*) #1

declare dso_local i32 @screen_fill(i32, i32, i32, i32, i8 signext, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

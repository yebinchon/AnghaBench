; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_message.c_msg_check_screen.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_message.c_msg_check_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@full_screen = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@msg_row = common dso_local global i64 0, align 8
@Rows = common dso_local global i64 0, align 8
@msg_col = common dso_local global i64 0, align 8
@Columns = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @msg_check_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_check_screen() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @full_screen, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @FALSE, align 4
  %6 = call i32 @screen_valid(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %0
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %1, align 4
  br label %26

10:                                               ; preds = %4
  %11 = load i64, i64* @msg_row, align 8
  %12 = load i64, i64* @Rows, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i64, i64* @Rows, align 8
  %16 = sub nsw i64 %15, 1
  store i64 %16, i64* @msg_row, align 8
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i64, i64* @msg_col, align 8
  %19 = load i64, i64* @Columns, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i64, i64* @Columns, align 8
  %23 = sub nsw i64 %22, 1
  store i64 %23, i64* @msg_col, align 8
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %24, %8
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @screen_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

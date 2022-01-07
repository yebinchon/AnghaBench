; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_web.c_gui_mch_wait_for_chars.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_web.c_gui_mch_wait_for_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OK = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gui_mch_wait_for_chars(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i64 (...) @input_available()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @OK, align 4
  store i32 %9, i32* %2, align 4
  br label %31

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 10, i32* %5, align 4
  br label %11

11:                                               ; preds = %10, %30
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @emscripten_sleep(i32 %12)
  %14 = call i64 (...) @input_available()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @OK, align 4
  store i32 %17, i32* %2, align 4
  br label %31

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @FAIL, align 4
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %24, %18
  br label %11

31:                                               ; preds = %28, %16, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @input_available(...) #1

declare dso_local i32 @emscripten_sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

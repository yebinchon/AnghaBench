; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_message.c_emsg_not_now.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_message.c_emsg_not_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@emsg_off = common dso_local global i64 0, align 8
@p_debug = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@emsg_skip = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emsg_not_now() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @emsg_off, align 8
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = load i32, i32* @p_debug, align 4
  %6 = call i32* @vim_strchr(i32 %5, i8 signext 109)
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load i32, i32* @p_debug, align 4
  %10 = call i32* @vim_strchr(i32 %9, i8 signext 116)
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %1, align 4
  br label %16

14:                                               ; preds = %8, %4, %0
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32* @vim_strchr(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

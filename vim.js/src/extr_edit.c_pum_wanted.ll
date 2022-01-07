; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_edit.c_pum_wanted.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_edit.c_pum_wanted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@p_cot = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@t_colors = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pum_wanted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pum_wanted() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @p_cot, align 4
  %3 = call i32* @vim_strchr(i32 %2, i8 signext 109)
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %1, align 4
  br label %14

7:                                                ; preds = %0
  %8 = load i32, i32* @t_colors, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %1, align 4
  br label %14

12:                                               ; preds = %7
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %12, %10, %5
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32* @vim_strchr(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_ops.c_get_expr_register.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_ops.c_get_expr_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_expr_register() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = call i32* @getcmdline(i8 signext 61, i64 0, i32 0)
  store i32* %3, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @NUL, align 4
  store i32 %7, i32* %1, align 4
  br label %20

8:                                                ; preds = %0
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NUL, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @vim_free(i32* %14)
  br label %19

16:                                               ; preds = %8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @set_expr_line(i32* %17)
  br label %19

19:                                               ; preds = %16, %13
  store i32 61, i32* %1, align 4
  br label %20

20:                                               ; preds = %19, %6
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32* @getcmdline(i8 signext, i64, i32) #1

declare dso_local i32 @vim_free(i32*) #1

declare dso_local i32 @set_expr_line(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

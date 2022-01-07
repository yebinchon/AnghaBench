; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_ops.c_get_expr_line.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_ops.c_get_expr_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_expr_line.nested = internal global i32 0, align 4
@expr_line = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_expr_line() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32*, i32** @expr_line, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %29

7:                                                ; preds = %0
  %8 = load i32*, i32** @expr_line, align 8
  %9 = call i32* @vim_strsave(i32* %8)
  store i32* %9, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32* null, i32** %1, align 8
  br label %29

13:                                               ; preds = %7
  %14 = load i32, i32* @get_expr_line.nested, align 4
  %15 = icmp sge i32 %14, 10
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32*, i32** %2, align 8
  store i32* %17, i32** %1, align 8
  br label %29

18:                                               ; preds = %13
  %19 = load i32, i32* @get_expr_line.nested, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @get_expr_line.nested, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @TRUE, align 4
  %23 = call i32* @eval_to_string(i32* %21, i32* null, i32 %22)
  store i32* %23, i32** %3, align 8
  %24 = load i32, i32* @get_expr_line.nested, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* @get_expr_line.nested, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @vim_free(i32* %26)
  %28 = load i32*, i32** %3, align 8
  store i32* %28, i32** %1, align 8
  br label %29

29:                                               ; preds = %18, %16, %12, %6
  %30 = load i32*, i32** %1, align 8
  ret i32* %30
}

declare dso_local i32* @vim_strsave(i32*) #1

declare dso_local i32* @eval_to_string(i32*, i32*, i32) #1

declare dso_local i32 @vim_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

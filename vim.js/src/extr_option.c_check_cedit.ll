; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_option.c_check_cedit.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_option.c_check_cedit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_cedit = common dso_local global i64* null, align 8
@NUL = common dso_local global i64 0, align 8
@cedit_key = common dso_local global i32 0, align 4
@e_invarg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @check_cedit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_cedit() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i64*, i64** @p_cedit, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @NUL, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 -1, i32* @cedit_key, align 4
  br label %18

8:                                                ; preds = %0
  %9 = load i64*, i64** @p_cedit, align 8
  %10 = call i32 @string_to_key(i64* %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @vim_isprintc(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32*, i32** @e_invarg, align 8
  store i32* %15, i32** %1, align 8
  br label %19

16:                                               ; preds = %8
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* @cedit_key, align 4
  br label %18

18:                                               ; preds = %16, %7
  store i32* null, i32** %1, align 8
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i32*, i32** %1, align 8
  ret i32* %20
}

declare dso_local i32 @string_to_key(i64*) #1

declare dso_local i64 @vim_isprintc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

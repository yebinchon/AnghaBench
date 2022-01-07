; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_regexp.c_getdecchrs.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_regexp.c_getdecchrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@regparse = common dso_local global i32* null, align 8
@curchr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @getdecchrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getdecchrs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %24, %0
  %6 = load i32*, i32** @regparse, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 48
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 57
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %5
  br label %27

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = mul nsw i32 %16, 10
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %18, 48
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %2, align 4
  %22 = load i32*, i32** @regparse, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** @regparse, align 8
  store i32 -1, i32* @curchr, align 4
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %5

27:                                               ; preds = %14
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 -1, i32* %1, align 4
  br label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %2, align 4
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

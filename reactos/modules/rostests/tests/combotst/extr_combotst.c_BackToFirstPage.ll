; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/combotst/extr_combotst.c_BackToFirstPage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/combotst/extr_combotst.c_BackToFirstPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MessageButtons = common dso_local global i32* null, align 8
@SW_SHOW = common dso_local global i32 0, align 4
@MAXMESSAGEBUTTONS = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@Back2But = common dso_local global i32 0, align 4
@Back1But = common dso_local global i32 0, align 4
@NextBut = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BackToFirstPage() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %14, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 26
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = load i32*, i32** @MessageButtons, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SW_SHOW, align 4
  %13 = call i32 @ShowWindow(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %6
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %3

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @MAXMESSAGEBUTTONS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32*, i32** @MessageButtons, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SW_HIDE, align 4
  %29 = call i32 @ShowWindow(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %18

33:                                               ; preds = %18
  %34 = load i32, i32* @Back2But, align 4
  %35 = load i32, i32* @SW_HIDE, align 4
  %36 = call i32 @ShowWindow(i32 %34, i32 %35)
  %37 = load i32, i32* @Back1But, align 4
  %38 = load i32, i32* @SW_SHOW, align 4
  %39 = call i32 @ShowWindow(i32 %37, i32 %38)
  %40 = load i32, i32* @NextBut, align 4
  %41 = load i32, i32* @SW_SHOW, align 4
  %42 = call i32 @ShowWindow(i32 %40, i32 %41)
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32 @ShowWindow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/edit/extr_edittest.c_BackToInitialPage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/edit/extr_edittest.c_BackToInitialPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwndEdit = common dso_local global i32 0, align 4
@NUMBERBUTTONS = common dso_local global i32 0, align 4
@Buttons = common dso_local global i32* null, align 8
@SW_SHOW = common dso_local global i32 0, align 4
@MessageButtons = common dso_local global i32* null, align 8
@SW_HIDE = common dso_local global i32 0, align 4
@Back1But = common dso_local global i32 0, align 4
@NextBut = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BackToInitialPage() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @hwndEdit, align 4
  %4 = call i32 @DestroyWindow(i32 %3)
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %17, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @NUMBERBUTTONS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load i32*, i32** @Buttons, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SW_SHOW, align 4
  %16 = call i32 @ShowWindow(i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %9
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %5

20:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %32, %20
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 26
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32*, i32** @MessageButtons, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SW_HIDE, align 4
  %31 = call i32 @ShowWindow(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %21

35:                                               ; preds = %21
  %36 = load i32, i32* @Back1But, align 4
  %37 = load i32, i32* @SW_HIDE, align 4
  %38 = call i32 @ShowWindow(i32 %36, i32 %37)
  %39 = load i32, i32* @NextBut, align 4
  %40 = load i32, i32* @SW_HIDE, align 4
  %41 = call i32 @ShowWindow(i32 %39, i32 %40)
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @DestroyWindow(i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

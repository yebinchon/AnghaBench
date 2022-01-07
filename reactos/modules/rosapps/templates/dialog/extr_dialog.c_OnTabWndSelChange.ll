; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/templates/dialog/extr_dialog.c_OnTabWndSelChange.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/templates/dialog/extr_dialog.c_OnTabWndSelChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hTabWnd = common dso_local global i32 0, align 4
@hPage1 = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@hPage2 = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@hPage3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OnTabWndSelChange() #0 {
  %1 = load i32, i32* @hTabWnd, align 4
  %2 = call i32 @TabCtrl_GetCurSel(i32 %1)
  switch i32 %2, label %45 [
    i32 0, label %3
    i32 1, label %17
    i32 2, label %31
  ]

3:                                                ; preds = %0
  %4 = load i32, i32* @hPage1, align 4
  %5 = load i32, i32* @SW_SHOW, align 4
  %6 = call i32 @ShowWindow(i32 %4, i32 %5)
  %7 = load i32, i32* @hPage2, align 4
  %8 = load i32, i32* @SW_HIDE, align 4
  %9 = call i32 @ShowWindow(i32 %7, i32 %8)
  %10 = load i32, i32* @hPage3, align 4
  %11 = load i32, i32* @SW_HIDE, align 4
  %12 = call i32 @ShowWindow(i32 %10, i32 %11)
  %13 = load i32, i32* @hPage1, align 4
  %14 = call i32 @BringWindowToTop(i32 %13)
  %15 = load i32, i32* @hTabWnd, align 4
  %16 = call i32 @SetFocus(i32 %15)
  br label %45

17:                                               ; preds = %0
  %18 = load i32, i32* @hPage1, align 4
  %19 = load i32, i32* @SW_HIDE, align 4
  %20 = call i32 @ShowWindow(i32 %18, i32 %19)
  %21 = load i32, i32* @hPage2, align 4
  %22 = load i32, i32* @SW_SHOW, align 4
  %23 = call i32 @ShowWindow(i32 %21, i32 %22)
  %24 = load i32, i32* @hPage3, align 4
  %25 = load i32, i32* @SW_HIDE, align 4
  %26 = call i32 @ShowWindow(i32 %24, i32 %25)
  %27 = load i32, i32* @hPage2, align 4
  %28 = call i32 @BringWindowToTop(i32 %27)
  %29 = load i32, i32* @hTabWnd, align 4
  %30 = call i32 @SetFocus(i32 %29)
  br label %45

31:                                               ; preds = %0
  %32 = load i32, i32* @hPage1, align 4
  %33 = load i32, i32* @SW_HIDE, align 4
  %34 = call i32 @ShowWindow(i32 %32, i32 %33)
  %35 = load i32, i32* @hPage2, align 4
  %36 = load i32, i32* @SW_HIDE, align 4
  %37 = call i32 @ShowWindow(i32 %35, i32 %36)
  %38 = load i32, i32* @hPage3, align 4
  %39 = load i32, i32* @SW_SHOW, align 4
  %40 = call i32 @ShowWindow(i32 %38, i32 %39)
  %41 = load i32, i32* @hPage3, align 4
  %42 = call i32 @BringWindowToTop(i32 %41)
  %43 = load i32, i32* @hTabWnd, align 4
  %44 = call i32 @SetFocus(i32 %43)
  br label %45

45:                                               ; preds = %0, %31, %17, %3
  ret void
}

declare dso_local i32 @TabCtrl_GetCurSel(i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @BringWindowToTop(i32) #1

declare dso_local i32 @SetFocus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

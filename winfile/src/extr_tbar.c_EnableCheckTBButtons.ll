; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_tbar.c_EnableCheckTBButtons.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_tbar.c_EnableCheckTBButtons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwndSearch = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@GWL_VIEW = common dso_local global i32 0, align 4
@IDM_VNAME = common dso_local global i32 0, align 4
@IDM_VDETAILS = common dso_local global i32 0, align 4
@IDM_VOTHER = common dso_local global i32 0, align 4
@GWL_SORT = common dso_local global i32 0, align 4
@IDD_NAME = common dso_local global i32 0, align 4
@IDM_BYNAME = common dso_local global i32 0, align 4
@GWL_TYPE = common dso_local global i32 0, align 4
@IDM_BYDATE = common dso_local global i64 0, align 8
@hwndToolbar = common dso_local global i32 0, align 4
@TB_ENABLEBUTTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EnableCheckTBButtons(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @hwndSearch, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i64, i64* @hwndSearch, align 8
  %12 = load i32, i32* @TRUE, align 4
  %13 = call i32 @SwitchDriveSelection(i64 %11, i32 %12)
  %14 = load i64, i64* @hwndSearch, align 8
  %15 = call i32 @UpdateStatus(i64 %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* @GWL_VIEW, align 4
  %19 = call i32 @GetWindowLongPtr(i64 %17, i32 %18)
  %20 = and i32 %19, 129
  switch i32 %20, label %27 [
    i32 128, label %21
    i32 129, label %24
  ]

21:                                               ; preds = %16
  %22 = load i32, i32* @IDM_VNAME, align 4
  %23 = call i32 @CheckTBButton(i32 %22)
  br label %30

24:                                               ; preds = %16
  %25 = load i32, i32* @IDM_VDETAILS, align 4
  %26 = call i32 @CheckTBButton(i32 %25)
  br label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @IDM_VOTHER, align 4
  %29 = call i32 @CheckTBButton(i32 %28)
  br label %30

30:                                               ; preds = %27, %24, %21
  %31 = load i64, i64* %3, align 8
  %32 = load i32, i32* @GWL_SORT, align 4
  %33 = call i32 @GetWindowLongPtr(i64 %31, i32 %32)
  %34 = load i32, i32* @IDD_NAME, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* @IDM_BYNAME, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %4, align 4
  %38 = load i64, i64* %3, align 8
  %39 = load i32, i32* @GWL_TYPE, align 4
  %40 = call i32 @GetWindowLongPtr(i64 %38, i32 %39)
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load i64, i64* %3, align 8
  %44 = call i64 @HasDirWindow(i64 %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %42, %30
  %47 = phi i1 [ false, %30 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @CheckTBButton(i32 %49)
  %51 = load i32, i32* @IDM_BYNAME, align 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %63, %46
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @IDM_BYDATE, align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32, i32* @hwndToolbar, align 4
  %59 = load i32, i32* @TB_ENABLEBUTTON, align 4
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @SendMessage(i32 %58, i32 %59, i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %57
  %64 = load i64, i64* %6, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %6, align 8
  br label %53

66:                                               ; preds = %53
  %67 = load i32, i32* @hwndToolbar, align 4
  %68 = call i32 @UpdateWindow(i32 %67)
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @SwitchDriveSelection(i64, i32) #1

declare dso_local i32 @UpdateStatus(i64) #1

declare dso_local i32 @GetWindowLongPtr(i64, i32) #1

declare dso_local i32 @CheckTBButton(i32) #1

declare dso_local i64 @HasDirWindow(i64) #1

declare dso_local i32 @SendMessage(i32, i32, i64, i32) #1

declare dso_local i32 @UpdateWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

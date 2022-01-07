; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_tbar.c_SelectToolbarDrive.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_tbar.c_SelectToolbarDrive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwndDriveList = common dso_local global i32 0, align 4
@WM_SETREDRAW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@CB_SETCURSEL = common dso_local global i32 0, align 4
@hwndDriveBar = common dso_local global i32 0, align 4
@GWL_CURDRIVEIND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SelectToolbarDrive(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @hwndDriveList, align 4
  %5 = load i32, i32* @WM_SETREDRAW, align 4
  %6 = load i64, i64* @FALSE, align 8
  %7 = trunc i64 %6 to i32
  %8 = call i32 @SendMessage(i32 %4, i32 %5, i32 %7, i64 0)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @RefreshToolbarDrive(i32 %9)
  %11 = load i32, i32* @hwndDriveList, align 4
  %12 = load i32, i32* @WM_SETREDRAW, align 4
  %13 = load i64, i64* @TRUE, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @SendMessage(i32 %11, i32 %12, i32 %14, i64 0)
  %16 = load i32, i32* @hwndDriveList, align 4
  %17 = load i32, i32* @CB_SETCURSEL, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @SendMessage(i32 %16, i32 %17, i32 %18, i64 0)
  %20 = load i32, i32* @hwndDriveBar, align 4
  %21 = load i32, i32* @GWL_CURDRIVEIND, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @SetWindowLongPtr(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @SendMessage(i32, i32, i32, i64) #1

declare dso_local i32 @RefreshToolbarDrive(i32) #1

declare dso_local i32 @SetWindowLongPtr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfcomman.c_MDIClientSizeChange.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfcomman.c_MDIClientSizeChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@hwndFrame = common dso_local global i32 0, align 4
@WM_SIZE = common dso_local global i32 0, align 4
@SIZENORMAL = common dso_local global i32 0, align 4
@hwndMDIClient = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bDriveBar = common dso_local global i64 0, align 8
@DRIVEBAR_FLAG = common dso_local global i32 0, align 4
@hwndDriveBar = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bToolbar = common dso_local global i64 0, align 8
@TOOLBAR_FLAG = common dso_local global i32 0, align 4
@hwndToolbar = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MDIClientSizeChange(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @hwndFrame, align 4
  %8 = call i32 @GetClientRect(i32 %7, %struct.TYPE_3__* %6)
  %9 = load i32, i32* @hwndFrame, align 4
  %10 = load i32, i32* @WM_SIZE, align 4
  %11 = load i32, i32* @SIZENORMAL, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @MAKELONG(i32 %13, i32 %15)
  %17 = call i32 @SendMessage(i32 %9, i32 %10, i32 %11, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @UpdateStatus(i32 %18)
  %20 = load i32, i32* @hwndMDIClient, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32 @InvalidateRect(i32 %20, i32* null, i32 %21)
  %23 = load i64, i64* @bDriveBar, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @DRIVEBAR_FLAG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @hwndDriveBar, align 4
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @InvalidateRect(i32 %31, i32* null, i32 %32)
  br label %34

34:                                               ; preds = %30, %25, %2
  %35 = load i64, i64* @bToolbar, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @TOOLBAR_FLAG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @hwndToolbar, align 4
  %44 = load i32, i32* @TRUE, align 4
  %45 = call i32 @InvalidateRect(i32 %43, i32* null, i32 %44)
  br label %46

46:                                               ; preds = %42, %37, %34
  %47 = load i32, i32* @hwndFrame, align 4
  %48 = call i32 @UpdateWindow(i32 %47)
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

declare dso_local i32 @UpdateStatus(i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

declare dso_local i32 @UpdateWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

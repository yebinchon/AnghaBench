; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdrives.c_RectDrive.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdrives.c_RectDrive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dyBorder = common dso_local global i32 0, align 4
@hwndDriveBar = common dso_local global i32 0, align 4
@COLOR_WINDOWTEXT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RectDrive(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @GetDriveRect(i32 %10, i32* %6)
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @dyBorder, align 4
  %14 = sub nsw i32 0, %13
  %15 = load i32, i32* @dyBorder, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i32 @InflateRect(i32* %6, i32 %14, i32 %16)
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  %21 = load i32, i32* @hwndDriveBar, align 4
  %22 = call i32 @GetDC(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @COLOR_WINDOWTEXT, align 4
  %24 = call i32 @GetSysColor(i32 %23)
  %25 = call i32 @CreateSolidBrush(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @FrameRect(i32 %28, i32* %6, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @DeleteObject(i32 %31)
  br label %33

33:                                               ; preds = %27, %20
  %34 = load i32, i32* @hwndDriveBar, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @ReleaseDC(i32 %34, i32 %35)
  br label %43

37:                                               ; preds = %2
  %38 = load i32, i32* @hwndDriveBar, align 4
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i32 @InvalidateRect(i32 %38, i32* %7, i32 %39)
  %41 = load i32, i32* @hwndDriveBar, align 4
  %42 = call i32 @UpdateWindow(i32 %41)
  br label %43

43:                                               ; preds = %37, %33
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @GetDriveRect(i32, i32*) #1

declare dso_local i32 @InflateRect(i32*, i32, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @CreateSolidBrush(i32) #1

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i32 @FrameRect(i32, i32*, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

declare dso_local i32 @UpdateWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

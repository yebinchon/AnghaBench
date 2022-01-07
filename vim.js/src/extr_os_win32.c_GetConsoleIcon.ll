; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_GetConsoleIcon.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_GetConsoleIcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@WM_GETICON = common dso_local global i32 0, align 4
@ICON_SMALL = common dso_local global i64 0, align 8
@ICON_BIG = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64*)* @GetConsoleIcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetConsoleIcon(i32* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %4, align 4
  br label %34

12:                                               ; preds = %3
  %13 = load i64*, i64** %6, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @WM_GETICON, align 4
  %18 = load i64, i64* @ICON_SMALL, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @SendMessage(i32* %16, i32 %17, i32 %19, i32 0)
  %21 = load i64*, i64** %6, align 8
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %15, %12
  %23 = load i64*, i64** %7, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @WM_GETICON, align 4
  %28 = load i64, i64* @ICON_BIG, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i64 @SendMessage(i32* %26, i32 %27, i32 %29, i32 0)
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %25, %22
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %10
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @SendMessage(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

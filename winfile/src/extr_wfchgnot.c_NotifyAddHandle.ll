; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfchgnot.c_NotifyAddHandle.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfchgnot.c_NotifyAddHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@adrive = common dso_local global i32* null, align 8
@ahwndWindows = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@ahEvents = common dso_local global i64* null, align 8
@nHandles = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NotifyAddHandle(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = call i32 @DRIVEID(i32 %10)
  %12 = load i32*, i32** @adrive, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32*, i32** @ahwndWindows, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @FindFirstChangeNotification(i32 %19, i32 %20, i32 %21)
  %23 = load i64*, i64** @ahEvents, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  store i64 %22, i64* %25, align 8
  %26 = load i64, i64* @nHandles, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i64, i64* @nHandles, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* @nHandles, align 8
  br label %32

32:                                               ; preds = %29, %4
  %33 = load i64*, i64** @ahEvents, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @NotifyDeleteHandle(i64 %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @DRIVEID(i32) #1

declare dso_local i64 @FindFirstChangeNotification(i32, i32, i32) #1

declare dso_local i32 @NotifyDeleteHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

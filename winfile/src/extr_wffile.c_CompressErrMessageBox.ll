; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wffile.c_CompressErrMessageBox.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wffile.c_CompressErrMessageBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hAppInstance = common dso_local global i32 0, align 4
@COMPRESSERRDLG = common dso_local global i32 0, align 4
@hwndFrame = common dso_local global i32 0, align 4
@CompressErrDialogProc = common dso_local global i32 0, align 4
@IDRETRY = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@WF_RETRY_CREATE = common dso_local global i32 0, align 4
@WF_RETRY_DEVIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CompressErrMessageBox(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i32, i32* @hAppInstance, align 4
  %10 = load i32, i32* @COMPRESSERRDLG, align 4
  %11 = call i64 @MAKEINTRESOURCE(i32 %10)
  %12 = load i32, i32* @hwndFrame, align 4
  %13 = load i32, i32* @CompressErrDialogProc, align 4
  %14 = load i64, i64* %6, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @DialogBoxParam(i32 %9, i64 %11, i32 %12, i32 %13, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @IDRETRY, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @WF_RETRY_CREATE, align 4
  store i32 %26, i32* %4, align 4
  br label %42

27:                                               ; preds = %20
  %28 = load i32, i32* @WF_RETRY_DEVIO, align 4
  store i32 %28, i32* %4, align 4
  br label %42

29:                                               ; preds = %3
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @CloseHandle(i64 %36)
  %38 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %27, %25
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @DialogBoxParam(i32, i64, i32, i32, i32) #1

declare dso_local i64 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

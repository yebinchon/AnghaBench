; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ACTION_HandleCustomAction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ACTION_HandleCustomAction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDCANCEL = common dso_local global i32 0, align 4
@ERROR_INSTALL_USEREXIT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ERROR_FUNCTION_NOT_CALLED = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_INSTALL_FAILURE = common dso_local global i64 0, align 8
@ERROR_INSTALL_SUSPEND = common dso_local global i64 0, align 8
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@ERROR_INVALID_HANDLE_STATE = common dso_local global i64 0, align 8
@ERROR_INVALID_DATA = common dso_local global i64 0, align 8
@ERROR_INSTALL_ALREADY_RUNNING = common dso_local global i64 0, align 8
@ERROR_INSTALL_PACKAGE_REJECTED = common dso_local global i64 0, align 8
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64)* @ACTION_HandleCustomAction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ACTION_HandleCustomAction(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @ui_actionstart(i32* %10, i32 %11, i32* null, i32* null)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @IDCANCEL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @ERROR_INSTALL_USEREXIT, align 8
  store i64 %17, i64* %4, align 8
  br label %75

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i32 @ui_actioninfo(i32* %19, i32 %20, i32 %21, i32 0)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @ACTION_CustomAction(i32* %23, i32 %24, i64 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @ERROR_FUNCTION_NOT_CALLED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %18
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @needs_ui_sequence(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ACTION_ShowDialog(i32* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  switch i32 %42, label %65 [
    i32 -1, label %43
    i32 0, label %45
    i32 1, label %47
    i32 2, label %49
    i32 3, label %51
    i32 4, label %53
    i32 5, label %55
    i32 6, label %57
    i32 7, label %59
    i32 8, label %61
    i32 9, label %63
  ]

43:                                               ; preds = %38
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %44, i64* %4, align 8
  br label %75

45:                                               ; preds = %38
  %46 = load i64, i64* @ERROR_FUNCTION_NOT_CALLED, align 8
  store i64 %46, i64* %8, align 8
  br label %67

47:                                               ; preds = %38
  %48 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %48, i64* %8, align 8
  br label %67

49:                                               ; preds = %38
  %50 = load i64, i64* @ERROR_INSTALL_USEREXIT, align 8
  store i64 %50, i64* %8, align 8
  br label %67

51:                                               ; preds = %38
  %52 = load i64, i64* @ERROR_INSTALL_FAILURE, align 8
  store i64 %52, i64* %8, align 8
  br label %67

53:                                               ; preds = %38
  %54 = load i64, i64* @ERROR_INSTALL_SUSPEND, align 8
  store i64 %54, i64* %8, align 8
  br label %67

55:                                               ; preds = %38
  %56 = load i64, i64* @ERROR_MORE_DATA, align 8
  store i64 %56, i64* %8, align 8
  br label %67

57:                                               ; preds = %38
  %58 = load i64, i64* @ERROR_INVALID_HANDLE_STATE, align 8
  store i64 %58, i64* %8, align 8
  br label %67

59:                                               ; preds = %38
  %60 = load i64, i64* @ERROR_INVALID_DATA, align 8
  store i64 %60, i64* %8, align 8
  br label %67

61:                                               ; preds = %38
  %62 = load i64, i64* @ERROR_INSTALL_ALREADY_RUNNING, align 8
  store i64 %62, i64* %8, align 8
  br label %67

63:                                               ; preds = %38
  %64 = load i64, i64* @ERROR_INSTALL_PACKAGE_REJECTED, align 8
  store i64 %64, i64* %8, align 8
  br label %67

65:                                               ; preds = %38
  %66 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45
  br label %68

68:                                               ; preds = %67, %34, %18
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @FALSE, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @ui_actioninfo(i32* %69, i32 %70, i32 %71, i32 %72)
  %74 = load i64, i64* %8, align 8
  store i64 %74, i64* %4, align 8
  br label %75

75:                                               ; preds = %68, %43, %16
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

declare dso_local i32 @ui_actionstart(i32*, i32, i32*, i32*) #1

declare dso_local i32 @ui_actioninfo(i32*, i32, i32, i32) #1

declare dso_local i64 @ACTION_CustomAction(i32*, i32, i64) #1

declare dso_local i64 @needs_ui_sequence(i32*) #1

declare dso_local i32 @ACTION_ShowDialog(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DEFDLG_FindDefButton.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DEFDLG_FindDefButton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GW_CHILD = common dso_local global i32 0, align 4
@WM_GETDLGCODE = common dso_local global i32 0, align 4
@DLGC_DEFPUSHBUTTON = common dso_local global i32 0, align 4
@GWL_EXSTYLE = common dso_local global i32 0, align 4
@WS_EX_CONTROLPARENT = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_DISABLED = common dso_local global i32 0, align 4
@GW_HWNDNEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @DEFDLG_FindDefButton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @DEFDLG_FindDefButton(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @GW_CHILD, align 4
  %9 = call i32* @GetWindow(i32* %7, i32 %8)
  store i32* %9, i32** %4, align 8
  br label %10

10:                                               ; preds = %48, %1
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %52

13:                                               ; preds = %10
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @WM_GETDLGCODE, align 4
  %16 = call i32 @SendMessageW(i32* %14, i32 %15, i32 0, i32 0)
  %17 = load i32, i32* @DLGC_DEFPUSHBUTTON, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %52

21:                                               ; preds = %13
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @GWL_EXSTYLE, align 4
  %24 = call i32 @GetWindowLongPtrW(i32* %22, i32 %23)
  %25 = load i32, i32* @WS_EX_CONTROLPARENT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %21
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @GWL_STYLE, align 4
  %31 = call i32 @GetWindowLongPtrW(i32* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @WS_VISIBLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @WS_DISABLED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load i32*, i32** %4, align 8
  %43 = call i32* @DEFDLG_FindDefButton(i32* %42)
  store i32* %43, i32** %5, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32*, i32** %5, align 8
  store i32* %46, i32** %2, align 8
  br label %54

47:                                               ; preds = %41, %36, %28
  br label %48

48:                                               ; preds = %47, %21
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @GW_HWNDNEXT, align 4
  %51 = call i32* @GetWindow(i32* %49, i32 %50)
  store i32* %51, i32** %4, align 8
  br label %10

52:                                               ; preds = %20, %10
  %53 = load i32*, i32** %4, align 8
  store i32* %53, i32** %2, align 8
  br label %54

54:                                               ; preds = %52, %45
  %55 = load i32*, i32** %2, align 8
  ret i32* %55
}

declare dso_local i32* @GetWindow(i32*, i32) #1

declare dso_local i32 @SendMessageW(i32*, i32, i32, i32) #1

declare dso_local i32 @GetWindowLongPtrW(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

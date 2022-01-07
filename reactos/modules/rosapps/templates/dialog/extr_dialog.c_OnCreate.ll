; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/templates/dialog/extr_dialog.c_OnCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/templates/dialog/extr_dialog.c_OnCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i8* }

@IDC_TAB = common dso_local global i32 0, align 4
@hTabWnd = common dso_local global i32 0, align 4
@hInst = common dso_local global i32 0, align 4
@IDD_PAGE1 = common dso_local global i32 0, align 4
@PageWndProc1 = common dso_local global i64 0, align 8
@hPage1 = common dso_local global i8* null, align 8
@IDD_PAGE2 = common dso_local global i32 0, align 4
@PageWndProc2 = common dso_local global i64 0, align 8
@hPage2 = common dso_local global i8* null, align 8
@IDD_PAGE3 = common dso_local global i32 0, align 4
@PageWndProc3 = common dso_local global i64 0, align 8
@hPage3 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"Page One\00", align 1
@TCIF_TEXT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Page Two\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Page Three\00", align 1
@SW_SHOW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ICC_TAB_CLASSES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @OnCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnCreate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [256 x i32], align 16
  %6 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @InitCommonControls()
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @IDC_TAB, align 4
  %10 = call i32 @GetDlgItem(i32 %8, i32 %9)
  store i32 %10, i32* @hTabWnd, align 4
  %11 = load i32, i32* @hInst, align 4
  %12 = load i32, i32* @IDD_PAGE1, align 4
  %13 = call i32 @MAKEINTRESOURCE(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i64, i64* @PageWndProc1, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i8* @CreateDialog(i32 %11, i32 %13, i32 %14, i32 %16)
  store i8* %17, i8** @hPage1, align 8
  %18 = load i32, i32* @hInst, align 4
  %19 = load i32, i32* @IDD_PAGE2, align 4
  %20 = call i32 @MAKEINTRESOURCE(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i64, i64* @PageWndProc2, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i8* @CreateDialog(i32 %18, i32 %20, i32 %21, i32 %23)
  store i8* %24, i8** @hPage2, align 8
  %25 = load i32, i32* @hInst, align 4
  %26 = load i32, i32* @IDD_PAGE3, align 4
  %27 = call i32 @MAKEINTRESOURCE(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i64, i64* @PageWndProc3, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i8* @CreateDialog(i32 %25, i32 %27, i32 %28, i32 %30)
  store i8* %31, i8** @hPage3, align 8
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %33 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @_tcscpy(i32* %32, i32 %33)
  %35 = call i32 @memset(%struct.TYPE_6__* %6, i32 0, i32 16)
  %36 = load i8*, i8** @TCIF_TEXT, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32* %38, i32** %39, align 8
  %40 = load i32, i32* @hTabWnd, align 4
  %41 = call i32 @TabCtrl_InsertItem(i32 %40, i32 0, %struct.TYPE_6__* %6)
  %42 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %43 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 @_tcscpy(i32* %42, i32 %43)
  %45 = call i32 @memset(%struct.TYPE_6__* %6, i32 0, i32 16)
  %46 = load i8*, i8** @TCIF_TEXT, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32* %48, i32** %49, align 8
  %50 = load i32, i32* @hTabWnd, align 4
  %51 = call i32 @TabCtrl_InsertItem(i32 %50, i32 1, %struct.TYPE_6__* %6)
  %52 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %53 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %54 = call i32 @_tcscpy(i32* %52, i32 %53)
  %55 = call i32 @memset(%struct.TYPE_6__* %6, i32 0, i32 16)
  %56 = load i8*, i8** @TCIF_TEXT, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32* %58, i32** %59, align 8
  %60 = load i32, i32* @hTabWnd, align 4
  %61 = call i32 @TabCtrl_InsertItem(i32 %60, i32 2, %struct.TYPE_6__* %6)
  %62 = load i8*, i8** @hPage1, align 8
  %63 = load i32, i32* @SW_SHOW, align 4
  %64 = call i32 @ShowWindow(i8* %62, i32 %63)
  %65 = load i32, i32* @TRUE, align 4
  ret i32 %65
}

declare dso_local i32 @InitCommonControls(...) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i8* @CreateDialog(i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @_tcscpy(i32*, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @TabCtrl_InsertItem(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ShowWindow(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

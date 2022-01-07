; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_dialog.c_OnTestDlgCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_dialog.c_OnTestDlgCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WS_EX_LEFT = common dso_local global i32 0, align 4
@WS_EX_LTRREADING = common dso_local global i32 0, align 4
@WS_EX_RIGHTSCROLLBAR = common dso_local global i32 0, align 4
@WS_EX_NOPARENTNOTIFY = common dso_local global i32 0, align 4
@WS_EX_CLIENTEDGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Edit\00", align 1
@WS_CHILDWINDOW = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_TABSTOP = common dso_local global i32 0, align 4
@ES_LEFT = common dso_local global i32 0, align 4
@ES_AUTOHSCROLL = common dso_local global i32 0, align 4
@g_hinst = common dso_local global i32 0, align 4
@g_hwndTestDlgEdit = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"button\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Button &1\00", align 1
@BS_PUSHBUTTON = common dso_local global i32 0, align 4
@BS_TEXT = common dso_local global i32 0, align 4
@g_hwndTestDlgBut1 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"Button &2\00", align 1
@IDCANCEL = common dso_local global i64 0, align 8
@g_hwndTestDlgBut2 = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @OnTestDlgCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnTestDlgCreate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @WS_EX_LEFT, align 4
  %7 = load i32, i32* @WS_EX_LTRREADING, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @WS_EX_RIGHTSCROLLBAR, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @WS_EX_NOPARENTNOTIFY, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @WS_EX_CLIENTEDGE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @WS_CHILDWINDOW, align 4
  %16 = load i32, i32* @WS_VISIBLE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @WS_TABSTOP, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @ES_LEFT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @g_hinst, align 4
  %26 = call i8* @CreateWindowExA(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23, i32 16, i32 33, i32 184, i32 24, i32 %24, i32 101, i32 %25, i32 0)
  store i8* %26, i8** @g_hwndTestDlgEdit, align 8
  %27 = load i8*, i8** @g_hwndTestDlgEdit, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  br label %83

31:                                               ; preds = %2
  %32 = load i32, i32* @WS_EX_LEFT, align 4
  %33 = load i32, i32* @WS_EX_LTRREADING, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @WS_EX_RIGHTSCROLLBAR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @WS_EX_NOPARENTNOTIFY, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @WS_CHILDWINDOW, align 4
  %40 = load i32, i32* @WS_VISIBLE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @WS_TABSTOP, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @BS_PUSHBUTTON, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @BS_TEXT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @g_hinst, align 4
  %50 = call i8* @CreateWindowExA(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 204, i32 33, i32 30, i32 24, i32 %48, i32 201, i32 %49, i32 0)
  store i8* %50, i8** @g_hwndTestDlgBut1, align 8
  %51 = load i8*, i8** @g_hwndTestDlgBut1, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %31
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %3, align 4
  br label %83

55:                                               ; preds = %31
  %56 = load i32, i32* @WS_EX_LEFT, align 4
  %57 = load i32, i32* @WS_EX_LTRREADING, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @WS_EX_RIGHTSCROLLBAR, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @WS_EX_NOPARENTNOTIFY, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @WS_CHILDWINDOW, align 4
  %64 = load i32, i32* @WS_VISIBLE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @WS_TABSTOP, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @BS_PUSHBUTTON, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @BS_TEXT, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %4, align 4
  %73 = load i64, i64* @IDCANCEL, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* @g_hinst, align 4
  %76 = call i8* @CreateWindowExA(i32 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 90, i32 102, i32 80, i32 24, i32 %72, i32 %74, i32 %75, i32 0)
  store i8* %76, i8** @g_hwndTestDlgBut2, align 8
  %77 = load i8*, i8** @g_hwndTestDlgBut2, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %55
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %3, align 4
  br label %83

81:                                               ; preds = %55
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %79, %53, %29
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i8* @CreateWindowExA(i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

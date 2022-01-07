; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_dialog.c_OnMainWindowCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_dialog.c_OnMainWindowCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"button\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Button &1\00", align 1
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_TABSTOP = common dso_local global i32 0, align 4
@BS_DEFPUSHBUTTON = common dso_local global i32 0, align 4
@BS_TEXT = common dso_local global i32 0, align 4
@g_hinst = common dso_local global i32 0, align 4
@g_hwndButton1 = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Button &2\00", align 1
@BS_PUSHBUTTON = common dso_local global i32 0, align 4
@g_hwndButton2 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@IDCANCEL = common dso_local global i64 0, align 8
@g_hwndButtonCancel = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @OnMainWindowCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnMainWindowCreate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @WS_CHILD, align 4
  %7 = load i32, i32* @WS_VISIBLE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @WS_TABSTOP, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @BS_DEFPUSHBUTTON, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @BS_TEXT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @g_hinst, align 4
  %17 = call i8* @CreateWindowA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 10, i32 10, i32 80, i32 80, i32 %15, i32 100, i32 %16, i32 0)
  store i8* %17, i8** @g_hwndButton1, align 8
  %18 = load i8*, i8** @g_hwndButton1, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %58

22:                                               ; preds = %2
  %23 = load i32, i32* @WS_CHILD, align 4
  %24 = load i32, i32* @WS_VISIBLE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @BS_PUSHBUTTON, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @BS_TEXT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @g_hinst, align 4
  %32 = call i8* @CreateWindowA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 110, i32 10, i32 80, i32 80, i32 %30, i32 200, i32 %31, i32 0)
  store i8* %32, i8** @g_hwndButton2, align 8
  %33 = load i8*, i8** @g_hwndButton2, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %58

37:                                               ; preds = %22
  %38 = load i32, i32* @WS_CHILD, align 4
  %39 = load i32, i32* @WS_VISIBLE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @WS_TABSTOP, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @BS_PUSHBUTTON, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @BS_TEXT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %4, align 4
  %48 = load i64, i64* @IDCANCEL, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @g_hinst, align 4
  %51 = call i8* @CreateWindowA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 210, i32 10, i32 80, i32 80, i32 %47, i32 %49, i32 %50, i32 0)
  store i8* %51, i8** @g_hwndButtonCancel, align 8
  %52 = load i8*, i8** @g_hwndButtonCancel, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %37
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %3, align 4
  br label %58

56:                                               ; preds = %37
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %54, %35, %20
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i8* @CreateWindowA(i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

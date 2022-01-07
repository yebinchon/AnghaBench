; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/button/extr_buttontst.c_WmCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/button/extr_buttontst.c_WmCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"WM_CREATE (enter).\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"test 1\00", align 1
@BUTTON_CLASS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"PushButton\00", align 1
@BS_PUSHBUTTON = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@AppInstance = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"test 2\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"DefPushButton\00", align 1
@BS_DEFPUSHBUTTON = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"test 3\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"AutoRadioButton\00", align 1
@BS_AUTORADIOBUTTON = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"test 4\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"AutoCheckBox\00", align 1
@BS_AUTOCHECKBOX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"WM_CREATE (leave).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WmCreate(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @DPRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @BUTTON_CLASS, align 4
  %6 = load i32, i32* @BS_PUSHBUTTON, align 4
  %7 = load i32, i32* @WS_CHILD, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @WS_VISIBLE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @AppInstance, align 4
  %13 = call i32 @CreateWindowEx(i32 0, i32 %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %10, i32 10, i32 10, i32 150, i32 30, i32 %11, i32* null, i32 %12, i32* null)
  %14 = call i32 @DPRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i32, i32* @BUTTON_CLASS, align 4
  %16 = load i32, i32* @BS_DEFPUSHBUTTON, align 4
  %17 = load i32, i32* @WS_CHILD, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @WS_VISIBLE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @AppInstance, align 4
  %23 = call i32 @CreateWindowEx(i32 0, i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %20, i32 10, i32 40, i32 150, i32 30, i32 %21, i32* null, i32 %22, i32* null)
  %24 = call i32 @DPRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %25 = load i32, i32* @BUTTON_CLASS, align 4
  %26 = load i32, i32* @BS_AUTORADIOBUTTON, align 4
  %27 = load i32, i32* @WS_CHILD, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @WS_VISIBLE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @AppInstance, align 4
  %33 = call i32 @CreateWindowEx(i32 0, i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %30, i32 10, i32 70, i32 150, i32 30, i32 %31, i32* null, i32 %32, i32* null)
  %34 = call i32 @DPRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %35 = load i32, i32* @BUTTON_CLASS, align 4
  %36 = load i32, i32* @BS_AUTOCHECKBOX, align 4
  %37 = load i32, i32* @WS_CHILD, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @WS_VISIBLE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @AppInstance, align 4
  %43 = call i32 @CreateWindowEx(i32 0, i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %40, i32 10, i32 100, i32 150, i32 30, i32 %41, i32* null, i32 %42, i32* null)
  %44 = call i32 @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @CreateWindowEx(i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

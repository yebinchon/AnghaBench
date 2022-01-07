; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_listbox.c_on_listbox_container_create.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_listbox.c_on_listbox_container_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Static\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Contents of static control before DlgDirList.\00", align 1
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@ID_TEST_LABEL = common dso_local global i64 0, align 8
@g_label = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ListBox\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"DlgDirList test\00", align 1
@WS_TABSTOP = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@ID_TEST_LISTBOX = common dso_local global i64 0, align 8
@g_listBox = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @on_listbox_container_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_listbox_container_create(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @WS_CHILD, align 4
  %7 = load i32, i32* @WS_VISIBLE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* %4, align 4
  %10 = load i64, i64* @ID_TEST_LABEL, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i8* @CreateWindowA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 10, i32 10, i32 512, i32 32, i32 %9, i32 %11, i32* null, i32 0)
  store i8* %12, i8** @g_label, align 8
  %13 = load i8*, i8** @g_label, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load i32, i32* @WS_CHILD, align 4
  %19 = load i32, i32* @WS_VISIBLE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @WS_TABSTOP, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @WS_BORDER, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @WS_VSCROLL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i64, i64* @ID_TEST_LISTBOX, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i8* @CreateWindowA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32 10, i32 60, i32 256, i32 256, i32 %27, i32 %29, i32* null, i32 0)
  store i8* %30, i8** @g_listBox, align 8
  %31 = load i8*, i8** @g_listBox, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %17
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %3, align 4
  br label %37

35:                                               ; preds = %17
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %33, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i8* @CreateWindowA(i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

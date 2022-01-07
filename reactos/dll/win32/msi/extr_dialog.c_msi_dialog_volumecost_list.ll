; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_volumecost_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_volumecost_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LVS_REPORT = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@WS_HSCROLL = common dso_local global i32 0, align 4
@LVS_SHAREIMAGELISTS = common dso_local global i32 0, align 4
@LVS_AUTOARRANGE = common dso_local global i32 0, align 4
@LVS_SINGLESEL = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_TABSTOP = common dso_local global i32 0, align 4
@WS_GROUP = common dso_local global i32 0, align 4
@WC_LISTVIEWW = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @msi_dialog_volumecost_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_dialog_volumecost_list(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @LVS_REPORT, align 4
  %9 = load i32, i32* @WS_VSCROLL, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @WS_HSCROLL, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @LVS_SHAREIMAGELISTS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @LVS_AUTOARRANGE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @LVS_SINGLESEL, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @WS_BORDER, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @WS_CHILD, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @WS_TABSTOP, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @WS_GROUP, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @WC_LISTVIEWW, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32* @msi_dialog_add_control(i32* %27, i32* %28, i32 %29, i32 %30)
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %35, i32* %3, align 4
  br label %45

36:                                               ; preds = %2
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @msi_dialog_vcl_add_columns(i32* %37, i32* %38, i32* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @msi_dialog_vcl_add_drives(i32* %41, i32* %42)
  %44 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %36, %34
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32* @msi_dialog_add_control(i32*, i32*, i32, i32) #1

declare dso_local i32 @msi_dialog_vcl_add_columns(i32*, i32*, i32*) #1

declare dso_local i32 @msi_dialog_vcl_add_drives(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

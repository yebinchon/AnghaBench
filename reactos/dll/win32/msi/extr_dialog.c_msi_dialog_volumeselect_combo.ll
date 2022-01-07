; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_volumeselect_combo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_volumeselect_combo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_GROUP = common dso_local global i32 0, align 4
@WS_TABSTOP = common dso_local global i32 0, align 4
@CBS_DROPDOWNLIST = common dso_local global i32 0, align 4
@CBS_SORT = common dso_local global i32 0, align 4
@CBS_HASSTRINGS = common dso_local global i32 0, align 4
@WS_EX_LEFT = common dso_local global i32 0, align 4
@WS_EX_LTRREADING = common dso_local global i32 0, align 4
@WS_EX_RIGHTSCROLLBAR = common dso_local global i32 0, align 4
@WC_COMBOBOXW = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@msi_dialog_volsel_handler = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @msi_dialog_volumeselect_combo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_dialog_volumeselect_combo(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @WS_CHILD, align 4
  %10 = load i32, i32* @WS_VISIBLE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @WS_GROUP, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @WS_TABSTOP, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CBS_DROPDOWNLIST, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CBS_SORT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CBS_HASSTRINGS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @WS_EX_LEFT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @WS_EX_LTRREADING, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @WS_EX_RIGHTSCROLLBAR, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @WC_COMBOBOXW, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.TYPE_4__* @msi_dialog_add_control(i32* %28, i32* %29, i32 %30, i32 %31)
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %6, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %36, i32* %3, align 4
  br label %57

37:                                               ; preds = %2
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @MSI_RecordGetInteger(i32* %38, i32 8)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @msi_dialog_volsel_handler, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @MSI_RecordGetString(i32* %45, i32 9)
  store i32 %46, i32* %7, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @msi_dialog_dup_property(i32* %47, i32 %48, i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = call i32 @msi_dialog_vsc_add_drives(i32* %53, %struct.TYPE_4__* %54)
  %56 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %37, %35
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_4__* @msi_dialog_add_control(i32*, i32*, i32, i32) #1

declare dso_local i32 @MSI_RecordGetInteger(i32*, i32) #1

declare dso_local i32 @MSI_RecordGetString(i32*, i32) #1

declare dso_local i32 @msi_dialog_dup_property(i32*, i32, i32) #1

declare dso_local i32 @msi_dialog_vsc_add_drives(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

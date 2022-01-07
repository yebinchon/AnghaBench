; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_rufus.c_EnableExtendedLabel.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_rufus.c_EnableExtendedLabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EnableExtendedLabel.checked = internal global i32 0, align 4
@EnableExtendedLabel.state = internal global i32 0, align 4
@hMainDialog = common dso_local global i32 0, align 4
@IDC_EXTENDED_LABEL = common dso_local global i32 0, align 4
@fs_type = common dso_local global i64 0, align 8
@FS_EXT2 = common dso_local global i64 0, align 8
@boot_type = common dso_local global i64 0, align 8
@BT_IMAGE = common dso_local global i64 0, align 8
@img_report = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@BST_UNCHECKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @EnableExtendedLabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EnableExtendedLabel(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @hMainDialog, align 4
  %7 = load i32, i32* @IDC_EXTENDED_LABEL, align 4
  %8 = call i32 @GetDlgItem(i32 %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i64, i64* @fs_type, align 8
  %10 = load i64, i64* @FS_EXT2, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @boot_type, align 8
  %14 = load i64, i64* @BT_IMAGE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32, i32* @img_report, align 4
  %18 = call i64 @IS_DD_ONLY(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %2
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %20, %16, %12
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %22
  %26 = load i64, i64* %3, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @EnableExtendedLabel.state, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* @IDC_EXTENDED_LABEL, align 4
  %33 = call i32 @IsChecked(i32 %32)
  store i32 %33, i32* @EnableExtendedLabel.checked, align 4
  %34 = load i32, i32* @hMainDialog, align 4
  %35 = load i32, i32* @IDC_EXTENDED_LABEL, align 4
  %36 = load i32, i32* @BST_UNCHECKED, align 4
  %37 = call i32 @CheckDlgButton(i32 %34, i32 %35, i32 %36)
  store i32 1, i32* @EnableExtendedLabel.state, align 4
  br label %58

38:                                               ; preds = %28, %25
  %39 = load i64, i64* %3, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @IsWindowEnabled(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @EnableExtendedLabel.state, align 4
  %47 = icmp ne i32 %46, 2
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32, i32* @EnableExtendedLabel.state, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* @hMainDialog, align 4
  %53 = load i32, i32* @IDC_EXTENDED_LABEL, align 4
  %54 = load i32, i32* @EnableExtendedLabel.checked, align 4
  %55 = call i32 @CheckDlgButton(i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %48
  store i32 2, i32* @EnableExtendedLabel.state, align 4
  br label %57

57:                                               ; preds = %56, %45, %41, %38
  br label %58

58:                                               ; preds = %57, %31
  br label %59

59:                                               ; preds = %58, %22
  %60 = load i32, i32* %5, align 4
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @EnableWindow(i32 %60, i64 %61)
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @IS_DD_ONLY(i32) #1

declare dso_local i32 @IsChecked(i32) #1

declare dso_local i32 @CheckDlgButton(i32, i32, i32) #1

declare dso_local i32 @IsWindowEnabled(i32) #1

declare dso_local i32 @EnableWindow(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

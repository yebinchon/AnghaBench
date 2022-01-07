; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_rufus.c_EnableQuickFormat.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_rufus.c_EnableQuickFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@EnableQuickFormat.checked = internal global i32 0, align 4
@EnableQuickFormat.state = internal global i32 0, align 4
@hMainDialog = common dso_local global i32 0, align 4
@IDC_QUICK_FORMAT = common dso_local global i32 0, align 4
@boot_type = common dso_local global i64 0, align 8
@BT_IMAGE = common dso_local global i64 0, align 8
@img_report = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@fs_type = common dso_local global i64 0, align 8
@FS_FAT32 = common dso_local global i64 0, align 8
@SelectedDrive = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LARGE_FAT32_SIZE = common dso_local global i64 0, align 8
@force_large_fat32 = common dso_local global i64 0, align 8
@FS_REFS = common dso_local global i64 0, align 8
@BST_CHECKED = common dso_local global i32 0, align 4
@BST_UNCHECKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @EnableQuickFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EnableQuickFormat(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @hMainDialog, align 4
  %7 = load i32, i32* @IDC_QUICK_FORMAT, align 4
  %8 = call i32 @GetDlgItem(i32 %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i64, i64* @boot_type, align 8
  %10 = load i64, i64* @BT_IMAGE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @img_report, align 4
  %14 = call i64 @IS_DD_ONLY(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %16, %12, %2
  %19 = load i64, i64* @fs_type, align 8
  %20 = load i64, i64* @FS_FAT32, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SelectedDrive, i32 0, i32 0), align 8
  %24 = load i64, i64* @LARGE_FAT32_SIZE, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* @force_large_fat32, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26, %18
  %30 = load i64, i64* @fs_type, align 8
  %31 = load i64, i64* @FS_REFS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29, %26, %22
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %4, align 8
  %36 = load i32, i32* @hMainDialog, align 4
  %37 = load i32, i32* @IDC_QUICK_FORMAT, align 4
  %38 = load i32, i32* @BST_CHECKED, align 4
  %39 = call i32 @CheckDlgButton(i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %29
  %41 = load i64, i64* %4, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %77

43:                                               ; preds = %40
  %44 = load i64, i64* %3, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @EnableQuickFormat.state, align 4
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* @IDC_QUICK_FORMAT, align 4
  %51 = call i32 @IsChecked(i32 %50)
  store i32 %51, i32* @EnableQuickFormat.checked, align 4
  %52 = load i32, i32* @hMainDialog, align 4
  %53 = load i32, i32* @IDC_QUICK_FORMAT, align 4
  %54 = load i32, i32* @BST_UNCHECKED, align 4
  %55 = call i32 @CheckDlgButton(i32 %52, i32 %53, i32 %54)
  store i32 1, i32* @EnableQuickFormat.state, align 4
  br label %76

56:                                               ; preds = %46, %43
  %57 = load i64, i64* %3, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @IsWindowEnabled(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @EnableQuickFormat.state, align 4
  %65 = icmp ne i32 %64, 2
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32, i32* @EnableQuickFormat.state, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* @hMainDialog, align 4
  %71 = load i32, i32* @IDC_QUICK_FORMAT, align 4
  %72 = load i32, i32* @EnableQuickFormat.checked, align 4
  %73 = call i32 @CheckDlgButton(i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %66
  store i32 2, i32* @EnableQuickFormat.state, align 4
  br label %75

75:                                               ; preds = %74, %63, %59, %56
  br label %76

76:                                               ; preds = %75, %49
  br label %77

77:                                               ; preds = %76, %40
  %78 = load i32, i32* %5, align 4
  %79 = load i64, i64* %3, align 8
  %80 = call i32 @EnableWindow(i32 %78, i64 %79)
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @IS_DD_ONLY(i32) #1

declare dso_local i32 @CheckDlgButton(i32, i32, i32) #1

declare dso_local i32 @IsChecked(i32) #1

declare dso_local i32 @IsWindowEnabled(i32) #1

declare dso_local i32 @EnableWindow(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

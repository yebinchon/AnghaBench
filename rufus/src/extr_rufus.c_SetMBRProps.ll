; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_rufus.c_SetMBRProps.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_rufus.c_SetMBRProps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@img_report = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@mbr_selected_by_user = common dso_local global i64 0, align 8
@image_path = common dso_local global i32* null, align 8
@boot_type = common dso_local global i64 0, align 8
@BT_IMAGE = common dso_local global i64 0, align 8
@fs_type = common dso_local global i64 0, align 8
@FS_NTFS = common dso_local global i64 0, align 8
@image_options = common dso_local global i32 0, align 4
@IMOP_WINTOGO = common dso_local global i32 0, align 4
@hMainDialog = common dso_local global i32 0, align 4
@IDC_IMAGE_OPTION = common dso_local global i32 0, align 4
@IDC_RUFUS_MBR = common dso_local global i32 0, align 4
@BST_UNCHECKED = common dso_local global i32 0, align 4
@hDiskID = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i32 0, align 4
@uMBRChecked = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SetMBRProps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetMBRProps() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @img_report, i32 0, i32 0), align 4
  %3 = call i64 @HAS_WINPE(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @img_report, i32 0, i32 0), align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br label %9

9:                                                ; preds = %5, %0
  %10 = phi i1 [ false, %0 ], [ %8, %5 ]
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %1, align 4
  %12 = load i64, i64* @mbr_selected_by_user, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %9
  %15 = load i32*, i32** @image_path, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* @boot_type, align 8
  %19 = load i64, i64* @BT_IMAGE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %40, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* @fs_type, align 8
  %23 = load i64, i64* @FS_NTFS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %40, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @img_report, i32 0, i32 0), align 4
  %27 = call i64 @HAS_GRUB(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @image_options, align 4
  %31 = load i32, i32* @IMOP_WINTOGO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load i32, i32* @hMainDialog, align 4
  %36 = load i32, i32* @IDC_IMAGE_OPTION, align 4
  %37 = call i32 @GetDlgItem(i32 %35, i32 %36)
  %38 = call i32 @ComboBox_GetCurSel(i32 %37)
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %48

40:                                               ; preds = %34, %25, %21, %17, %14
  %41 = load i32, i32* @hMainDialog, align 4
  %42 = load i32, i32* @IDC_RUFUS_MBR, align 4
  %43 = load i32, i32* @BST_UNCHECKED, align 4
  %44 = call i32 @CheckDlgButton(i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* @hDiskID, align 4
  %46 = call i32 @ComboBox_SetCurSel(i32 %45, i32 0)
  %47 = call i32 @IGNORE_RETVAL(i32 %46)
  br label %82

48:                                               ; preds = %34, %29, %9
  %49 = load i32, i32* %1, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @img_report, i32 0, i32 0), align 4
  %53 = call i64 @HAS_BOOTMGR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* @mbr_selected_by_user, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55, %51, %48
  %59 = load i32, i32* @BST_CHECKED, align 4
  br label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @BST_UNCHECKED, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* @uMBRChecked, align 4
  %64 = load i32, i32* @hMainDialog, align 4
  %65 = load i32, i32* @IDC_RUFUS_MBR, align 4
  %66 = call i32 @GetDlgItem(i32 %64, i32 %65)
  %67 = call i64 @IsWindowEnabled(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i32, i32* @hMainDialog, align 4
  %71 = load i32, i32* @IDC_RUFUS_MBR, align 4
  %72 = load i32, i32* @uMBRChecked, align 4
  %73 = call i32 @CheckDlgButton(i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %62
  %75 = load i32, i32* @hDiskID, align 4
  %76 = load i32, i32* %1, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = call i32 @ComboBox_SetCurSel(i32 %75, i32 %79)
  %81 = call i32 @IGNORE_RETVAL(i32 %80)
  br label %82

82:                                               ; preds = %74, %40
  ret void
}

declare dso_local i64 @HAS_WINPE(i32) #1

declare dso_local i64 @HAS_GRUB(i32) #1

declare dso_local i32 @ComboBox_GetCurSel(i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @CheckDlgButton(i32, i32, i32) #1

declare dso_local i32 @IGNORE_RETVAL(i32) #1

declare dso_local i32 @ComboBox_SetCurSel(i32, i32) #1

declare dso_local i64 @HAS_BOOTMGR(i32) #1

declare dso_local i64 @IsWindowEnabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

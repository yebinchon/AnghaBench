; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_rufus.c_EnableControls.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_rufus.c_EnableControls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@op_in_progress = common dso_local global i32 0, align 4
@hDeviceList = common dso_local global i32 0, align 4
@hBootType = common dso_local global i32 0, align 4
@hSelectImage = common dso_local global i32 0, align 4
@hMainDialog = common dso_local global i32 0, align 4
@IDC_LIST_USB_HDD = common dso_local global i32 0, align 4
@hAdvancedDeviceToolbar = common dso_local global i32 0, align 4
@hAdvancedFormatToolbar = common dso_local global i32 0, align 4
@hMultiToolbar = common dso_local global i32 0, align 4
@TB_ENABLEBUTTON = common dso_local global i32 0, align 4
@IDC_LANG = common dso_local global i64 0, align 8
@IDC_ABOUT = common dso_local global i64 0, align 8
@IDC_SETTINGS = common dso_local global i64 0, align 8
@hHashToolbar = common dso_local global i32 0, align 4
@boot_type = common dso_local global i64 0, align 8
@BT_IMAGE = common dso_local global i64 0, align 8
@image_path = common dso_local global i32* null, align 8
@IDCANCEL = common dso_local global i32 0, align 4
@uppercase_close = common dso_local global i32 0, align 4
@uppercase_cancel = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_IMAGE_OPTION = common dso_local global i32 0, align 4
@hSaveToolbar = common dso_local global i32 0, align 4
@hStart = common dso_local global i32 0, align 4
@img_report = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@hPartitionScheme = common dso_local global i32 0, align 4
@hTargetSystem = common dso_local global i32 0, align 4
@IDS_CSM_HELP_TXT = common dso_local global i32 0, align 4
@hFileSystem = common dso_local global i32 0, align 4
@hClusterSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @EnableControls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EnableControls(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  store i32 %8, i32* @op_in_progress, align 4
  %9 = load i32, i32* @hDeviceList, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @EnableWindow(i32 %9, i32 %10)
  %12 = load i32, i32* @hBootType, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @EnableWindow(i32 %12, i32 %13)
  %15 = load i32, i32* @hSelectImage, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @EnableWindow(i32 %15, i32 %16)
  %18 = load i32, i32* @hMainDialog, align 4
  %19 = load i32, i32* @IDC_LIST_USB_HDD, align 4
  %20 = call i32 @GetDlgItem(i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @EnableWindow(i32 %20, i32 %21)
  %23 = load i32, i32* @hAdvancedDeviceToolbar, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @EnableWindow(i32 %23, i32 %24)
  %26 = load i32, i32* @hAdvancedFormatToolbar, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @EnableWindow(i32 %26, i32 %27)
  %29 = load i32, i32* @hMultiToolbar, align 4
  %30 = load i32, i32* @TB_ENABLEBUTTON, align 4
  %31 = load i64, i64* @IDC_LANG, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @SendMessage(i32 %29, i32 %30, i32 %32, i32 %33)
  %35 = load i32, i32* @hMultiToolbar, align 4
  %36 = load i32, i32* @TB_ENABLEBUTTON, align 4
  %37 = load i64, i64* @IDC_ABOUT, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @SendMessage(i32 %35, i32 %36, i32 %38, i32 %39)
  %41 = load i32, i32* @hMultiToolbar, align 4
  %42 = load i32, i32* @TB_ENABLEBUTTON, align 4
  %43 = load i64, i64* @IDC_SETTINGS, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @SendMessage(i32 %41, i32 %42, i32 %44, i32 %45)
  %47 = load i32, i32* @hHashToolbar, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %2
  %51 = load i64, i64* @boot_type, align 8
  %52 = load i64, i64* @BT_IMAGE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32*, i32** @image_path, align 8
  %56 = icmp ne i32* %55, null
  br label %57

57:                                               ; preds = %54, %50, %2
  %58 = phi i1 [ false, %50 ], [ false, %2 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @EnableWindow(i32 %47, i32 %59)
  %61 = load i32, i32* @hMainDialog, align 4
  %62 = load i32, i32* @IDCANCEL, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @uppercase_close, align 4
  br label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @uppercase_cancel, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = call i32 @SetDlgItemTextU(i32 %61, i32 %62, i32 %70)
  %72 = load i32, i32* @hDeviceList, align 4
  %73 = call i64 @ComboBox_GetCurSel(i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @FALSE, align 4
  br label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* @hMainDialog, align 4
  %82 = load i32, i32* @IDC_IMAGE_OPTION, align 4
  %83 = call i32 @GetDlgItem(i32 %81, i32 %82)
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @EnableWindow(i32 %83, i32 %84)
  %86 = load i32, i32* @hSaveToolbar, align 4
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @EnableWindow(i32 %86, i32 %87)
  %89 = load i64, i64* @boot_type, align 8
  %90 = load i64, i64* @BT_IMAGE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %79
  %93 = load i32*, i32** @image_path, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @FALSE, align 4
  br label %99

97:                                               ; preds = %92, %79
  %98 = load i32, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* @hStart, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @EnableWindow(i32 %101, i32 %102)
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @EnableBootOptions(i32 %104, i32 %105)
  %107 = load i64, i64* @boot_type, align 8
  %108 = load i64, i64* @BT_IMAGE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %99
  %111 = load i32*, i32** @image_path, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @img_report, i32 0, i32 0), align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* @FALSE, align 4
  br label %120

118:                                              ; preds = %113, %110, %99
  %119 = load i32, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* @hPartitionScheme, align 4
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @EnableWindow(i32 %122, i32 %123)
  %125 = load i32, i32* @hTargetSystem, align 4
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @EnableWindow(i32 %125, i32 %126)
  %128 = load i32, i32* @hMainDialog, align 4
  %129 = load i32, i32* @IDS_CSM_HELP_TXT, align 4
  %130 = call i32 @GetDlgItem(i32 %128, i32 %129)
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @EnableWindow(i32 %130, i32 %131)
  %133 = load i32, i32* @hFileSystem, align 4
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @EnableWindow(i32 %133, i32 %134)
  %136 = load i32, i32* @hClusterSize, align 4
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @EnableWindow(i32 %136, i32 %137)
  ret void
}

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @SetDlgItemTextU(i32, i32, i32) #1

declare dso_local i64 @ComboBox_GetCurSel(i32) #1

declare dso_local i32 @EnableBootOptions(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

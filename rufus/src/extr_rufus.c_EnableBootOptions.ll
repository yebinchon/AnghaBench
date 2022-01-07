; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_rufus.c_EnableBootOptions.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_rufus.c_EnableBootOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@hDeviceList = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@boot_type = common dso_local global i64 0, align 8
@BT_IMAGE = common dso_local global i64 0, align 8
@image_path = common dso_local global i32* null, align 8
@img_report = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@hMainDialog = common dso_local global i32 0, align 4
@IDC_IMAGE_OPTION = common dso_local global i32 0, align 4
@IDC_PERSISTENCE_SLIDER = common dso_local global i32 0, align 4
@IDC_PERSISTENCE_SIZE = common dso_local global i32 0, align 4
@persistence_size = common dso_local global i64 0, align 8
@IDC_PERSISTENCE_UNITS = common dso_local global i32 0, align 4
@IDC_LABEL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IDC_BAD_BLOCKS = common dso_local global i32 0, align 4
@IDC_NB_PASSES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @EnableBootOptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EnableBootOptions(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* @hDeviceList, align 4
  %9 = call i64 @ComboBox_GetCurSel(i32 %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i64, i64* @boot_type, align 8
  %15 = load i64, i64* @BT_IMAGE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32*, i32** @image_path, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %20, %17, %13
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i64, i64* @boot_type, align 8
  %25 = load i64, i64* @BT_IMAGE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @img_report, i32 0, i32 1), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @img_report, i32 0, i32 0), align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %30, %27, %22
  %36 = load i32, i32* @hMainDialog, align 4
  %37 = load i32, i32* @IDC_IMAGE_OPTION, align 4
  %38 = call i32 @GetDlgItem(i32 %36, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @EnableWindow(i32 %38, i32 %39)
  %41 = load i32, i32* @hMainDialog, align 4
  %42 = load i32, i32* @IDC_PERSISTENCE_SLIDER, align 4
  %43 = call i32 @GetDlgItem(i32 %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @EnableWindow(i32 %43, i32 %44)
  %46 = load i32*, i32** @image_path, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %35
  %49 = load i32, i32* getelementptr inbounds ({ i32, i64 }, { i32, i64 }* bitcast (%struct.TYPE_4__* @img_report to { i32, i64 }*), i32 0, i32 0), align 8
  %50 = load i64, i64* getelementptr inbounds ({ i32, i64 }, { i32, i64 }* bitcast (%struct.TYPE_4__* @img_report to { i32, i64 }*), i32 0, i32 1), align 8
  %51 = call i64 @HAS_PERSISTENCE(i32 %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 (...) @SetPersistenceSize()
  br label %55

55:                                               ; preds = %53, %48, %35
  %56 = load i32, i32* @hMainDialog, align 4
  %57 = load i32, i32* @IDC_PERSISTENCE_SIZE, align 4
  %58 = call i32 @GetDlgItem(i32 %56, i32 %57)
  %59 = load i64, i64* @persistence_size, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %61, %55
  %65 = phi i1 [ false, %55 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @EnableWindow(i32 %58, i32 %66)
  %68 = load i32, i32* @hMainDialog, align 4
  %69 = load i32, i32* @IDC_PERSISTENCE_UNITS, align 4
  %70 = call i32 @GetDlgItem(i32 %68, i32 %69)
  %71 = load i64, i64* @persistence_size, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %73, %64
  %77 = phi i1 [ false, %64 ], [ %75, %73 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @EnableWindow(i32 %70, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @EnableMBRBootOptions(i32 %80, i32 %81)
  %83 = load i32, i32* @hMainDialog, align 4
  %84 = load i32, i32* @IDC_LABEL, align 4
  %85 = call i32 @GetDlgItem(i32 %83, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @EnableWindow(i32 %85, i32 %86)
  %88 = load i64, i64* @boot_type, align 8
  %89 = load i64, i64* @BT_IMAGE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %76
  %92 = load i32, i32* getelementptr inbounds ({ i32, i64 }, { i32, i64 }* bitcast (%struct.TYPE_4__* @img_report to { i32, i64 }*), i32 0, i32 0), align 8
  %93 = load i64, i64* getelementptr inbounds ({ i32, i64 }, { i32, i64 }* bitcast (%struct.TYPE_4__* @img_report to { i32, i64 }*), i32 0, i32 1), align 8
  %94 = call i64 @IS_DD_ONLY(i32 %92, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %4, align 4
  br label %104

98:                                               ; preds = %91
  %99 = load i32*, i32** @image_path, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %98
  br label %104

104:                                              ; preds = %103, %96
  br label %105

105:                                              ; preds = %104, %76
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @EnableQuickFormat(i32 %106, i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @EnableExtendedLabel(i32 %109, i32 %110)
  %112 = load i32, i32* @hMainDialog, align 4
  %113 = load i32, i32* @IDC_BAD_BLOCKS, align 4
  %114 = call i32 @GetDlgItem(i32 %112, i32 %113)
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @EnableWindow(i32 %114, i32 %115)
  %117 = load i32, i32* @hMainDialog, align 4
  %118 = load i32, i32* @IDC_NB_PASSES, align 4
  %119 = call i32 @GetDlgItem(i32 %117, i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @EnableWindow(i32 %119, i32 %120)
  ret void
}

declare dso_local i64 @ComboBox_GetCurSel(i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @HAS_PERSISTENCE(i32, i64) #1

declare dso_local i32 @SetPersistenceSize(...) #1

declare dso_local i32 @EnableMBRBootOptions(i32, i32) #1

declare dso_local i64 @IS_DD_ONLY(i32, i64) #1

declare dso_local i32 @EnableQuickFormat(i32, i32) #1

declare dso_local i32 @EnableExtendedLabel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

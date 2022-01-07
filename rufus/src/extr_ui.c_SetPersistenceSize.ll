; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_ui.c_SetPersistenceSize.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_ui.c_SetPersistenceSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MB = common dso_local global i32 0, align 4
@hDeviceList = common dso_local global i32 0, align 4
@SelectedDrive = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@img_report = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@persistence_size = common dso_local global i32 0, align 4
@hMainDialog = common dso_local global i32 0, align 4
@IDC_PERSISTENCE_UNITS = common dso_local global i32 0, align 4
@MSG_022 = common dso_local global i64 0, align 8
@persistence_unit_selection = common dso_local global i32 0, align 4
@IDC_PERSISTENCE_SLIDER = common dso_local global i32 0, align 4
@TBM_SETRANGEMIN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@TBM_SETRANGEMAX = common dso_local global i32 0, align 4
@TBM_SETPOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetPersistenceSize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %7 = load i32, i32* @MB, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @hDeviceList, align 4
  %9 = call i64 @ComboBox_GetCurSel(i32 %8)
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %87

11:                                               ; preds = %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @img_report, i32 0, i32 0), align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @persistence_size, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @min(i32 %15, i32 %16)
  store i32 %17, i32* @persistence_size, align 4
  %18 = load i32, i32* @persistence_size, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @hMainDialog, align 4
  %20 = load i32, i32* @IDC_PERSISTENCE_UNITS, align 4
  %21 = call i32 @GetDlgItem(i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ComboBox_ResetContent(i32 %22)
  %24 = call i32 @IGNORE_RETVAL(i32 %23)
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %55, %11
  %26 = load i32, i32* %1, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %58

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i64, i64* @MSG_022, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = call i32 @lmprintf(i64 %34)
  %36 = call i32 @ComboBox_AddStringU(i32 %30, i32 %35)
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @ComboBox_SetItemData(i32 %29, i32 %36, i32 %37)
  %39 = call i32 @IGNORE_RETVAL(i32 %38)
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 4
  %41 = load i32, i32* %3, align 4
  %42 = mul nsw i32 7, %41
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* %1, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %28
  %47 = load i32, i32* %3, align 4
  %48 = mul nsw i32 %47, 1024
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 4
  %50 = load i32, i32* %3, align 4
  %51 = mul nsw i32 2, %50
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %58

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %25

58:                                               ; preds = %53, %25
  %59 = load i32, i32* @persistence_unit_selection, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %2, align 4
  store i32 %62, i32* @persistence_unit_selection, align 4
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @persistence_unit_selection, align 4
  %66 = call i32 @ComboBox_SetCurSel(i32 %64, i32 %65)
  %67 = call i32 @IGNORE_RETVAL(i32 %66)
  %68 = load i32, i32* @MB, align 4
  %69 = load i32, i32* %6, align 4
  %70 = sdiv i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @MB, align 4
  %72 = load i32, i32* %5, align 4
  %73 = sdiv i32 %72, %71
  store i32 %73, i32* %5, align 4
  store i32 0, i32* %1, align 4
  br label %74

74:                                               ; preds = %83, %63
  %75 = load i32, i32* %1, align 4
  %76 = load i32, i32* @persistence_unit_selection, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  %80 = sdiv i32 %79, 1024
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = sdiv i32 %81, 1024
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %1, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %1, align 4
  br label %74

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %0
  %88 = load i32, i32* @hMainDialog, align 4
  %89 = load i32, i32* @IDC_PERSISTENCE_SLIDER, align 4
  %90 = call i32 @GetDlgItem(i32 %88, i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @TBM_SETRANGEMIN, align 4
  %93 = load i64, i64* @TRUE, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @SendMessage(i32 %91, i32 %92, i32 %94, i32 0)
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @TBM_SETRANGEMAX, align 4
  %98 = load i64, i64* @TRUE, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @SendMessage(i32 %96, i32 %97, i32 %99, i32 %100)
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @TBM_SETPOS, align 4
  %104 = load i64, i64* @TRUE, align 8
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @SendMessage(i32 %102, i32 %103, i32 %105, i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @SetPersistencePos(i32 %108)
  ret void
}

declare dso_local i64 @ComboBox_GetCurSel(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @IGNORE_RETVAL(i32) #1

declare dso_local i32 @ComboBox_ResetContent(i32) #1

declare dso_local i32 @ComboBox_SetItemData(i32, i32, i32) #1

declare dso_local i32 @ComboBox_AddStringU(i32, i32) #1

declare dso_local i32 @lmprintf(i64) #1

declare dso_local i32 @ComboBox_SetCurSel(i32, i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @SetPersistencePos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

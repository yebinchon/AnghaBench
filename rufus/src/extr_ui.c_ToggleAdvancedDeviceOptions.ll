; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_ui.c_ToggleAdvancedDeviceOptions.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_ui.c_ToggleAdvancedDeviceOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32*, i32 }

@advanced_device_section_height = common dso_local global i32 0, align 4
@section_vpos = common dso_local global i32* null, align 8
@MSG_122 = common dso_local global i32 0, align 4
@MSG_121 = common dso_local global i32 0, align 4
@MSG_119 = common dso_local global i32 0, align 4
@wtbtext = common dso_local global i32** null, align 8
@TBIF_TEXT = common dso_local global i32 0, align 4
@hAdvancedDeviceToolbar = common dso_local global i32 0, align 4
@TB_SETBUTTONINFO = common dso_local global i32 0, align 4
@IDC_ADVANCED_DRIVE_PROPERTIES = common dso_local global i64 0, align 8
@TB_SETIMAGELIST = common dso_local global i32 0, align 4
@hUpImageList = common dso_local global i64 0, align 8
@hDownImageList = common dso_local global i64 0, align 8
@hMainDialog = common dso_local global i32 0, align 4
@TB_GETIDEALSIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@fw = common dso_local global i32 0, align 4
@hTargetSystem = common dso_local global i32 0, align 4
@advanced_device_move_ids = common dso_local global i32* null, align 8
@advanced_device_toggle_ids = common dso_local global i32* null, align 8
@SW_SHOW = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@hDeviceList = common dso_local global i32 0, align 4
@HWND_TOP = common dso_local global i32 0, align 4
@ssw = common dso_local global i32 0, align 4
@sbw = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ToggleAdvancedDeviceOptions(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i32, i32* @advanced_device_section_height, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i64, i64* %2, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %7, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* %7, align 4
  %16 = load i32*, i32** @section_vpos, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** @section_vpos, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i64, i64* %2, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* @MSG_122, align 4
  br label %31

29:                                               ; preds = %14
  %30 = load i32, i32* @MSG_121, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load i32, i32* @MSG_119, align 4
  %34 = call i32 (i32, ...) @lmprintf(i32 %33)
  %35 = call i32 (i32, ...) @lmprintf(i32 %32, i32 %34)
  %36 = load i32**, i32*** @wtbtext, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32**, i32*** @wtbtext, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @ARRAYSIZE(i32* %41)
  %43 = call i32 @utf8_to_wchar_no_alloc(i32 %35, i32* %38, i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 24, i32* %44, align 8
  %45 = load i32, i32* @TBIF_TEXT, align 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = load i32**, i32*** @wtbtext, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32* %49, i32** %50, align 8
  %51 = load i32, i32* @hAdvancedDeviceToolbar, align 4
  %52 = load i32, i32* @TB_SETBUTTONINFO, align 4
  %53 = load i64, i64* @IDC_ADVANCED_DRIVE_PROPERTIES, align 8
  %54 = trunc i64 %53 to i32
  %55 = ptrtoint %struct.TYPE_5__* %5 to i32
  %56 = call i32 @SendMessage(i32 %51, i32 %52, i32 %54, i32 %55)
  %57 = load i32, i32* @hAdvancedDeviceToolbar, align 4
  %58 = load i32, i32* @TB_SETIMAGELIST, align 4
  %59 = load i64, i64* %2, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %31
  %62 = load i64, i64* @hUpImageList, align 8
  br label %65

63:                                               ; preds = %31
  %64 = load i64, i64* @hDownImageList, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i64 [ %62, %61 ], [ %64, %63 ]
  %67 = trunc i64 %66 to i32
  %68 = call i32 @SendMessage(i32 %57, i32 %58, i32 0, i32 %67)
  %69 = load i32, i32* @hAdvancedDeviceToolbar, align 4
  %70 = call i32 @GetWindowRect(i32 %69, %struct.TYPE_7__* %3)
  %71 = load i32, i32* @hMainDialog, align 4
  %72 = bitcast %struct.TYPE_7__* %3 to i32*
  %73 = call i32 @MapWindowPoints(i32* null, i32 %71, i32* %72, i32 2)
  %74 = load i32, i32* @hAdvancedDeviceToolbar, align 4
  %75 = load i32, i32* @TB_GETIDEALSIZE, align 4
  %76 = load i64, i64* @FALSE, align 8
  %77 = trunc i64 %76 to i32
  %78 = ptrtoint %struct.TYPE_6__* %4 to i32
  %79 = call i32 @SendMessage(i32 %74, i32 %75, i32 %77, i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %81, 16
  br i1 %82, label %83, label %86

83:                                               ; preds = %65
  %84 = load i32, i32* @fw, align 4
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %65
  %87 = load i32, i32* @hAdvancedDeviceToolbar, align 4
  %88 = load i32, i32* @hTargetSystem, align 4
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %96, %98
  %100 = call i32 @SetWindowPos(i32 %87, i32 %88, i32 %90, i64 %92, i32 %94, i64 %99, i32 0)
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %115, %86
  %102 = load i32, i32* %6, align 4
  %103 = load i32*, i32** @advanced_device_move_ids, align 8
  %104 = call i32 @ARRAYSIZE(i32* %103)
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load i32, i32* @hMainDialog, align 4
  %108 = load i32*, i32** @advanced_device_move_ids, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @MoveCtrlY(i32 %107, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %101

118:                                              ; preds = %101
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %141, %118
  %120 = load i32, i32* %6, align 4
  %121 = load i32*, i32** @advanced_device_toggle_ids, align 8
  %122 = call i32 @ARRAYSIZE(i32* %121)
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %119
  %125 = load i32, i32* @hMainDialog, align 4
  %126 = load i32*, i32** @advanced_device_toggle_ids, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @GetDlgItem(i32 %125, i32 %130)
  %132 = load i64, i64* %2, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %124
  %135 = load i32, i32* @SW_SHOW, align 4
  br label %138

136:                                              ; preds = %124
  %137 = load i32, i32* @SW_HIDE, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  %140 = call i32 @ShowWindow(i32 %131, i32 %139)
  br label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %119

144:                                              ; preds = %119
  %145 = load i32, i32* @hDeviceList, align 4
  %146 = call i32 @GetWindowRect(i32 %145, %struct.TYPE_7__* %3)
  %147 = load i32, i32* @hMainDialog, align 4
  %148 = bitcast %struct.TYPE_7__* %3 to i32*
  %149 = call i32 @MapWindowPoints(i32* null, i32 %147, i32* %148, i32 2)
  %150 = load i32, i32* @hDeviceList, align 4
  %151 = load i32, i32* @HWND_TOP, align 4
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %2, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %144
  %159 = load i32, i32* @fw, align 4
  %160 = load i32, i32* @ssw, align 4
  %161 = sub nsw i32 %159, %160
  %162 = load i32, i32* @sbw, align 4
  %163 = sub nsw i32 %161, %162
  br label %166

164:                                              ; preds = %144
  %165 = load i32, i32* @fw, align 4
  br label %166

166:                                              ; preds = %164, %158
  %167 = phi i32 [ %163, %158 ], [ %165, %164 ]
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = sub nsw i64 %169, %171
  %173 = call i32 @SetWindowPos(i32 %150, i32 %151, i32 %153, i64 %155, i32 %167, i64 %172, i32 0)
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @ResizeDialogs(i32 %174)
  %176 = load i32, i32* @hMainDialog, align 4
  %177 = load i32, i32* @TRUE, align 4
  %178 = call i32 @InvalidateRect(i32 %176, i32* null, i32 %177)
  ret void
}

declare dso_local i32 @utf8_to_wchar_no_alloc(i32, i32*, i32) #1

declare dso_local i32 @lmprintf(i32, ...) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @MapWindowPoints(i32*, i32, i32*, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32, i32, i64, i32, i64, i32) #1

declare dso_local i32 @MoveCtrlY(i32, i32, i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @ResizeDialogs(i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

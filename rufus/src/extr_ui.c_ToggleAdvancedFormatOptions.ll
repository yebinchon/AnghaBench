; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_ui.c_ToggleAdvancedFormatOptions.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_ui.c_ToggleAdvancedFormatOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32*, i32 }

@advanced_format_section_height = common dso_local global i32 0, align 4
@section_vpos = common dso_local global i32* null, align 8
@MSG_122 = common dso_local global i32 0, align 4
@MSG_121 = common dso_local global i32 0, align 4
@MSG_120 = common dso_local global i32 0, align 4
@wtbtext = common dso_local global i32** null, align 8
@TBIF_TEXT = common dso_local global i32 0, align 4
@hAdvancedFormatToolbar = common dso_local global i32 0, align 4
@TB_SETBUTTONINFO = common dso_local global i32 0, align 4
@IDC_ADVANCED_FORMAT_OPTIONS = common dso_local global i64 0, align 8
@TB_SETIMAGELIST = common dso_local global i32 0, align 4
@hUpImageList = common dso_local global i64 0, align 8
@hDownImageList = common dso_local global i64 0, align 8
@hMainDialog = common dso_local global i32 0, align 4
@TB_GETIDEALSIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@fw = common dso_local global i32 0, align 4
@hClusterSize = common dso_local global i32 0, align 4
@advanced_format_move_ids = common dso_local global i32* null, align 8
@advanced_format_toggle_ids = common dso_local global i32* null, align 8
@SW_SHOW = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ToggleAdvancedFormatOptions(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i32, i32* @advanced_format_section_height, align 4
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
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i64, i64* %2, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @MSG_122, align 4
  br label %26

24:                                               ; preds = %14
  %25 = load i32, i32* @MSG_121, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = load i32, i32* @MSG_120, align 4
  %29 = call i32 (i32, ...) @lmprintf(i32 %28)
  %30 = call i32 (i32, ...) @lmprintf(i32 %27, i32 %29)
  %31 = load i32**, i32*** @wtbtext, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32**, i32*** @wtbtext, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @ARRAYSIZE(i32* %36)
  %38 = call i32 @utf8_to_wchar_no_alloc(i32 %30, i32* %33, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 24, i32* %39, align 8
  %40 = load i32, i32* @TBIF_TEXT, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  %42 = load i32**, i32*** @wtbtext, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32* %44, i32** %45, align 8
  %46 = load i32, i32* @hAdvancedFormatToolbar, align 4
  %47 = load i32, i32* @TB_SETBUTTONINFO, align 4
  %48 = load i64, i64* @IDC_ADVANCED_FORMAT_OPTIONS, align 8
  %49 = trunc i64 %48 to i32
  %50 = ptrtoint %struct.TYPE_5__* %5 to i32
  %51 = call i32 @SendMessage(i32 %46, i32 %47, i32 %49, i32 %50)
  %52 = load i32, i32* @hAdvancedFormatToolbar, align 4
  %53 = load i32, i32* @TB_SETIMAGELIST, align 4
  %54 = load i64, i64* %2, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %26
  %57 = load i64, i64* @hUpImageList, align 8
  br label %60

58:                                               ; preds = %26
  %59 = load i64, i64* @hDownImageList, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i64 [ %57, %56 ], [ %59, %58 ]
  %62 = trunc i64 %61 to i32
  %63 = call i32 @SendMessage(i32 %52, i32 %53, i32 0, i32 %62)
  %64 = load i32, i32* @hAdvancedFormatToolbar, align 4
  %65 = call i32 @GetWindowRect(i32 %64, %struct.TYPE_7__* %3)
  %66 = load i32, i32* @hMainDialog, align 4
  %67 = bitcast %struct.TYPE_7__* %3 to i32*
  %68 = call i32 @MapWindowPoints(i32* null, i32 %66, i32* %67, i32 2)
  %69 = load i32, i32* @hAdvancedFormatToolbar, align 4
  %70 = load i32, i32* @TB_GETIDEALSIZE, align 4
  %71 = load i64, i64* @FALSE, align 8
  %72 = trunc i64 %71 to i32
  %73 = ptrtoint %struct.TYPE_6__* %4 to i32
  %74 = call i32 @SendMessage(i32 %69, i32 %70, i32 %72, i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %76, 16
  br i1 %77, label %78, label %81

78:                                               ; preds = %60
  %79 = load i32, i32* @fw, align 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %60
  %82 = load i32, i32* @hAdvancedFormatToolbar, align 4
  %83 = load i32, i32* @hClusterSize, align 4
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %91, %93
  %95 = call i32 @SetWindowPos(i32 %82, i32 %83, i32 %85, i64 %87, i32 %89, i64 %94, i32 0)
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %110, %81
  %97 = load i32, i32* %6, align 4
  %98 = load i32*, i32** @advanced_format_move_ids, align 8
  %99 = call i32 @ARRAYSIZE(i32* %98)
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load i32, i32* @hMainDialog, align 4
  %103 = load i32*, i32** @advanced_format_move_ids, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @MoveCtrlY(i32 %102, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %101
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %96

113:                                              ; preds = %96
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %136, %113
  %115 = load i32, i32* %6, align 4
  %116 = load i32*, i32** @advanced_format_toggle_ids, align 8
  %117 = call i32 @ARRAYSIZE(i32* %116)
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %139

119:                                              ; preds = %114
  %120 = load i32, i32* @hMainDialog, align 4
  %121 = load i32*, i32** @advanced_format_toggle_ids, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @GetDlgItem(i32 %120, i32 %125)
  %127 = load i64, i64* %2, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %119
  %130 = load i32, i32* @SW_SHOW, align 4
  br label %133

131:                                              ; preds = %119
  %132 = load i32, i32* @SW_HIDE, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = call i32 @ShowWindow(i32 %126, i32 %134)
  br label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %114

139:                                              ; preds = %114
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @ResizeDialogs(i32 %140)
  %142 = load i32, i32* @hMainDialog, align 4
  %143 = load i32, i32* @TRUE, align 4
  %144 = call i32 @InvalidateRect(i32 %142, i32* null, i32 %143)
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

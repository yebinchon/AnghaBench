; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_tbar.c_ResetToolbar.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_tbar.c_ResetToolbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@hwndToolbar = common dso_local global i32 0, align 4
@TB_BUTTONCOUNT = common dso_local global i32 0, align 4
@TB_DELETEBUTTON = common dso_local global i32 0, align 4
@TB_ADDBUTTONS = common dso_local global i32 0, align 4
@TBAR_BUTTON_COUNT = common dso_local global i64 0, align 8
@tbButtons = common dso_local global %struct.TYPE_3__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@hwndFrame = common dso_local global i32 0, align 4
@hwndMDIClient = common dso_local global i32 0, align 4
@WM_MDIGETACTIVE = common dso_local global i32 0, align 4
@TBSTYLE_SEP = common dso_local global i64 0, align 8
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@TB_CHECKBUTTON = common dso_local global i32 0, align 4
@MF_CHECKED = common dso_local global i32 0, align 4
@TB_ENABLEBUTTON = common dso_local global i32 0, align 4
@MF_DISABLED = common dso_local global i32 0, align 4
@MF_GRAYED = common dso_local global i32 0, align 4
@TBAR_ALL_BUTTONS = common dso_local global i64 0, align 8
@sAllButtons = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ResetToolbar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = load i32, i32* @hwndToolbar, align 4
  %9 = load i32, i32* @TB_BUTTONCOUNT, align 4
  %10 = call i64 @SendMessage(i32 %8, i32 %9, i64 0, i32 0)
  %11 = sub nsw i64 %10, 1
  store i64 %11, i64* %2, align 8
  br label %12

12:                                               ; preds = %20, %0
  %13 = load i64, i64* %2, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32, i32* @hwndToolbar, align 4
  %17 = load i32, i32* @TB_DELETEBUTTON, align 4
  %18 = load i64, i64* %2, align 8
  %19 = call i64 @SendMessage(i32 %16, i32 %17, i64 %18, i32 0)
  br label %20

20:                                               ; preds = %15
  %21 = load i64, i64* %2, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %2, align 8
  br label %12

23:                                               ; preds = %12
  %24 = load i32, i32* @hwndToolbar, align 4
  %25 = load i32, i32* @TB_ADDBUTTONS, align 4
  %26 = load i64, i64* @TBAR_BUTTON_COUNT, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tbButtons, align 8
  %28 = ptrtoint %struct.TYPE_3__* %27 to i64
  %29 = trunc i64 %28 to i32
  %30 = call i64 @SendMessage(i32 %24, i32 %25, i64 %26, i32 %29)
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i32 @AddExtensionToolbarButtons(i32 %31)
  %33 = load i32, i32* @hwndFrame, align 4
  %34 = call i32 @GetMenu(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @hwndMDIClient, align 4
  %36 = load i32, i32* @WM_MDIGETACTIVE, align 4
  %37 = call i64 @SendMessage(i32 %35, i32 %36, i64 0, i32 0)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %129

40:                                               ; preds = %23
  %41 = load i32, i32* %5, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @InitPopupMenus(i32 65535, i32 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %129

45:                                               ; preds = %40
  store i64 0, i64* %3, align 8
  br label %46

46:                                               ; preds = %88, %45
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @TBAR_BUTTON_COUNT, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %91

50:                                               ; preds = %46
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tbButtons, align 8
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TBSTYLE_SEP, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %88

59:                                               ; preds = %50
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tbButtons, align 8
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i64, i64* %4, align 8
  %67 = load i32, i32* @MF_BYCOMMAND, align 4
  %68 = call i32 @GetMenuState(i32 %65, i64 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* @hwndToolbar, align 4
  %70 = load i32, i32* @TB_CHECKBUTTON, align 4
  %71 = load i64, i64* %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @MF_CHECKED, align 4
  %74 = and i32 %72, %73
  %75 = call i64 @SendMessage(i32 %69, i32 %70, i64 %71, i32 %74)
  %76 = load i32, i32* @hwndToolbar, align 4
  %77 = load i32, i32* @TB_ENABLEBUTTON, align 4
  %78 = load i64, i64* %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @MF_DISABLED, align 4
  %81 = load i32, i32* @MF_GRAYED, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i64 @SendMessage(i32 %76, i32 %77, i64 %78, i32 %86)
  br label %88

88:                                               ; preds = %59, %58
  %89 = load i64, i64* %3, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %3, align 8
  br label %46

91:                                               ; preds = %46
  store i64 0, i64* %3, align 8
  br label %92

92:                                               ; preds = %125, %91
  %93 = load i64, i64* %3, align 8
  %94 = load i64, i64* @TBAR_ALL_BUTTONS, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %128

96:                                               ; preds = %92
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sAllButtons, align 8
  %98 = load i64, i64* %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load i64, i64* %4, align 8
  %104 = load i32, i32* @MF_BYCOMMAND, align 4
  %105 = call i32 @GetMenuState(i32 %102, i64 %103, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* @hwndToolbar, align 4
  %107 = load i32, i32* @TB_CHECKBUTTON, align 4
  %108 = load i64, i64* %4, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @MF_CHECKED, align 4
  %111 = and i32 %109, %110
  %112 = call i64 @SendMessage(i32 %106, i32 %107, i64 %108, i32 %111)
  %113 = load i32, i32* @hwndToolbar, align 4
  %114 = load i32, i32* @TB_ENABLEBUTTON, align 4
  %115 = load i64, i64* %4, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @MF_DISABLED, align 4
  %118 = load i32, i32* @MF_GRAYED, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %116, %119
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i64 @SendMessage(i32 %113, i32 %114, i64 %115, i32 %123)
  br label %125

125:                                              ; preds = %96
  %126 = load i64, i64* %3, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %3, align 8
  br label %92

128:                                              ; preds = %92
  br label %131

129:                                              ; preds = %40, %23
  %130 = call i32 (...) @EnableStopShareButton()
  br label %131

131:                                              ; preds = %129, %128
  %132 = load i32, i32* %1, align 4
  ret i32 %132
}

declare dso_local i64 @SendMessage(i32, i32, i64, i32) #1

declare dso_local i32 @AddExtensionToolbarButtons(i32) #1

declare dso_local i32 @GetMenu(i32) #1

declare dso_local i64 @InitPopupMenus(i32, i32, i64) #1

declare dso_local i32 @GetMenuState(i32, i64, i32) #1

declare dso_local i32 @EnableStopShareButton(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

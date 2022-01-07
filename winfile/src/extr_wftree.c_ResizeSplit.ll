; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wftree.c_ResizeSplit.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wftree.c_ResizeSplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GWL_READLEVEL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@dxDriveBitmap = common dso_local global i32 0, align 4
@szTreeControlClass = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_CLIPCHILDREN = common dso_local global i32 0, align 4
@IDCW_TREECONTROL = common dso_local global i64 0, align 8
@hAppInstance = common dso_local global i32 0, align 4
@TC_SETDRIVE = common dso_local global i32 0, align 4
@IDCW_LISTBOX = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@hwndDriveBar = common dso_local global i32 0, align 4
@szDirClass = common dso_local global i32 0, align 4
@IDCW_DIR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@GWL_SPLIT = common dso_local global i32 0, align 4
@WM_SETICON = common dso_local global i32 0, align 4
@ICON_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ResizeSplit(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @GetTreeWindows(i64 %11, i64* %7, i64* %8)
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* @GWL_READLEVEL, align 4
  %18 = call i64 @GetWindowLongPtr(i64 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %145

22:                                               ; preds = %15, %2
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @GetClientRect(i64 %23, %struct.TYPE_3__* %6)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @dxDriveBitmap, align 4
  %27 = mul nsw i32 %26, 2
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %22
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @szTreeControlClass, align 4
  %34 = load i32, i32* @WS_CHILD, align 4
  %35 = load i32, i32* @WS_VISIBLE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @WS_CLIPCHILDREN, align 4
  %38 = or i32 %36, %37
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @IDCW_TREECONTROL, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @hAppInstance, align 4
  %43 = call i64 @CreateWindowEx(i64 0, i32 %33, i32* null, i32 %38, i32 0, i32 0, i32 0, i32 0, i64 %39, i32 %41, i32 %42, i32* null)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %32
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  br label %145

48:                                               ; preds = %32
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* @TC_SETDRIVE, align 4
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32 @MAKEWORD(i32 %54, i32 0)
  %56 = call i32 @SendMessage(i64 %52, i32 %53, i32 %55, i64 0)
  br label %57

57:                                               ; preds = %51, %48
  br label %58

58:                                               ; preds = %57, %29
  br label %87

59:                                               ; preds = %22
  %60 = load i64, i64* %7, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %59
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %62
  %66 = load i64, i64* %8, align 8
  %67 = load i32, i32* @IDCW_LISTBOX, align 4
  %68 = call i64 @GetDlgItem(i64 %66, i32 %67)
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load i64, i64* %9, align 8
  %73 = load i32, i32* @LB_GETTEXT, align 4
  %74 = ptrtoint i32* %10 to i64
  %75 = call i32 @SendMessage(i64 %72, i32 %73, i32 0, i64 %74)
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* @hwndDriveBar, align 4
  %80 = call i32 @SetFocus(i32 %79)
  br label %81

81:                                               ; preds = %78, %71
  br label %82

82:                                               ; preds = %81, %65
  br label %83

83:                                               ; preds = %82, %62
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @DestroyWindow(i64 %84)
  br label %86

86:                                               ; preds = %83, %59
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %58
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %5, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load i32, i32* @dxDriveBitmap, align 4
  %93 = mul nsw i32 %92, 2
  %94 = icmp sgt i32 %91, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %87
  %96 = load i64, i64* %8, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %115, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* @szDirClass, align 4
  %100 = load i32, i32* @WS_CHILD, align 4
  %101 = load i32, i32* @WS_VISIBLE, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @WS_CLIPCHILDREN, align 4
  %104 = or i32 %102, %103
  %105 = load i64, i64* %4, align 8
  %106 = load i64, i64* @IDCW_DIR, align 8
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* @hAppInstance, align 4
  %109 = call i64 @CreateWindowEx(i64 0, i32 %99, i32* null, i32 %104, i32 0, i32 0, i32 0, i32 0, i64 %105, i32 %107, i32 %108, i32* null)
  store i64 %109, i64* %8, align 8
  %110 = load i64, i64* %8, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %98
  %113 = load i32, i32* @FALSE, align 4
  store i32 %113, i32* %3, align 4
  br label %145

114:                                              ; preds = %98
  br label %119

115:                                              ; preds = %95
  %116 = load i64, i64* %8, align 8
  %117 = load i32, i32* @TRUE, align 4
  %118 = call i32 @InvalidateRect(i64 %116, i32* null, i32 %117)
  br label %119

119:                                              ; preds = %115, %114
  br label %129

120:                                              ; preds = %87
  %121 = load i64, i64* %8, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i64, i64* %8, align 8
  %125 = call i32 @DestroyWindow(i64 %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %126, %119
  %130 = load i64, i64* %4, align 8
  %131 = load i32, i32* @GWL_SPLIT, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @SetWindowLongPtr(i64 %130, i32 %131, i32 %132)
  %134 = load i64, i64* %4, align 8
  %135 = load i32, i32* @WM_SETICON, align 4
  %136 = load i32, i32* @ICON_SMALL, align 4
  %137 = load i64, i64* %4, align 8
  %138 = call i64 @GetTreeIcon(i64 %137)
  %139 = call i32 @SendMessage(i64 %134, i32 %135, i32 %136, i64 %138)
  %140 = load i64, i64* %4, align 8
  %141 = call i32 @UpdateStatus(i64 %140)
  %142 = load i64, i64* %4, align 8
  %143 = call i32 @EnableCheckTBButtons(i64 %142)
  %144 = load i32, i32* @TRUE, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %129, %112, %46, %20
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @GetTreeWindows(i64, i64*, i64*) #1

declare dso_local i64 @GetWindowLongPtr(i64, i32) #1

declare dso_local i32 @GetClientRect(i64, %struct.TYPE_3__*) #1

declare dso_local i64 @CreateWindowEx(i64, i32, i32*, i32, i32, i32, i32, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @SendMessage(i64, i32, i32, i64) #1

declare dso_local i32 @MAKEWORD(i32, i32) #1

declare dso_local i64 @GetDlgItem(i64, i32) #1

declare dso_local i32 @SetFocus(i32) #1

declare dso_local i32 @DestroyWindow(i64) #1

declare dso_local i32 @InvalidateRect(i64, i32*, i32) #1

declare dso_local i32 @SetWindowLongPtr(i64, i32, i32) #1

declare dso_local i64 @GetTreeIcon(i64) #1

declare dso_local i32 @UpdateStatus(i64) #1

declare dso_local i32 @EnableCheckTBButtons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

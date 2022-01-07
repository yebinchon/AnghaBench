; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfext.c_ExtensionMsgProc.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfext.c_ExtensionMsgProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwndMDIClient = common dso_local global i64 0, align 8
@WM_MDIGETACTIVE = common dso_local global i32 0, align 4
@hwndFrame = common dso_local global i64 0, align 8
@WM_CANCELMODE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@hwndToolbar = common dso_local global i64 0, align 8
@WM_SETREDRAW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@hwndSearch = common dso_local global i64 0, align 8
@FMFOCUS_SEARCH = common dso_local global i64 0, align 8
@FMFOCUS_TREE = common dso_local global i64 0, align 8
@FMFOCUS_DIR = common dso_local global i64 0, align 8
@hwndDriveBar = common dso_local global i64 0, align 8
@FMFOCUS_DRIVES = common dso_local global i64 0, align 8
@GW_CHILD = common dso_local global i32 0, align 4
@GW_HWNDNEXT = common dso_local global i32 0, align 4
@GW_OWNER = common dso_local global i32 0, align 4
@qFreeSpace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ExtensionMsgProc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i64, i64* @hwndMDIClient, align 8
  %15 = load i32, i32* @WM_MDIGETACTIVE, align 4
  %16 = call i64 @SendMessage(i64 %14, i32 %15, i32 0, i64 0)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @GetTreeWindows(i64 %17, i64* %9, i64* %10)
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %145 [
    i32 128, label %20
    i32 132, label %43
    i32 138, label %72
    i32 137, label %72
    i32 129, label %77
    i32 131, label %114
    i32 130, label %114
    i32 136, label %114
    i32 133, label %114
    i32 135, label %114
    i32 134, label %114
  ]

20:                                               ; preds = %3
  %21 = load i64, i64* @hwndFrame, align 8
  %22 = load i32, i32* @WM_CANCELMODE, align 4
  %23 = call i64 @SendMessage(i64 %21, i32 %22, i32 0, i64 0)
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @SaveRestoreToolbar(i32 %24)
  %26 = load i64, i64* @hwndToolbar, align 8
  %27 = load i32, i32* @WM_SETREDRAW, align 4
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i64 @SendMessage(i64 %26, i32 %27, i32 %28, i64 0)
  %30 = call i32 (...) @FreeExtensions()
  %31 = call i32 (...) @InitExtensions()
  %32 = load i32, i32* @FALSE, align 4
  %33 = call i32 @SaveRestoreToolbar(i32 %32)
  %34 = load i64, i64* @hwndToolbar, align 8
  %35 = load i32, i32* @WM_SETREDRAW, align 4
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i64 @SendMessage(i64 %34, i32 %35, i32 %36, i64 0)
  %38 = load i64, i64* @hwndToolbar, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i32 @InvalidateRect(i64 %38, i32* null, i32 %39)
  %41 = load i64, i64* @hwndFrame, align 8
  %42 = call i32 @DrawMenuBar(i64 %41)
  br label %145

43:                                               ; preds = %3
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @hwndSearch, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* @FMFOCUS_SEARCH, align 8
  store i64 %48, i64* %4, align 8
  br label %146

49:                                               ; preds = %43
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @GetTreeFocus(i64 %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i64, i64* @FMFOCUS_TREE, align 8
  store i64 %56, i64* %4, align 8
  br label %146

57:                                               ; preds = %49
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i64, i64* @FMFOCUS_DIR, align 8
  store i64 %62, i64* %4, align 8
  br label %146

63:                                               ; preds = %57
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @hwndDriveBar, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i64, i64* @FMFOCUS_DRIVES, align 8
  store i64 %68, i64* %4, align 8
  br label %146

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  br label %145

72:                                               ; preds = %3, %3
  %73 = load i64, i64* %8, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @GetDriveInfo(i64 %73, i32 %74, i32 %75)
  store i64 %76, i64* %4, align 8
  br label %146

77:                                               ; preds = %3
  %78 = call i32 (...) @UpdateDriveList()
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i64, i64* %8, align 8
  %83 = load i32, i32* @FALSE, align 4
  %84 = load i32, i32* @TRUE, align 4
  %85 = call i32 @RefreshWindow(i64 %82, i32 %83, i32 %84)
  br label %109

86:                                               ; preds = %77
  %87 = load i64, i64* @hwndMDIClient, align 8
  %88 = load i32, i32* @GW_CHILD, align 4
  %89 = call i64 @GetWindow(i64 %87, i32 %88)
  store i64 %89, i64* %12, align 8
  br label %90

90:                                               ; preds = %106, %86
  %91 = load i64, i64* %12, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %90
  %94 = load i64, i64* %12, align 8
  %95 = load i32, i32* @GW_HWNDNEXT, align 4
  %96 = call i64 @GetWindow(i64 %94, i32 %95)
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i32, i32* @GW_OWNER, align 4
  %99 = call i64 @GetWindow(i64 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %93
  %102 = load i64, i64* %12, align 8
  %103 = load i32, i32* @FALSE, align 4
  %104 = load i32, i32* @TRUE, align 4
  %105 = call i32 @RefreshWindow(i64 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %93
  %107 = load i64, i64* %13, align 8
  store i64 %107, i64* %12, align 8
  br label %90

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108, %81
  %110 = load i32, i32* @qFreeSpace, align 4
  %111 = call i32 @SPC_SET_HITDISK(i32 %110)
  %112 = load i64, i64* %8, align 8
  %113 = call i32 @UpdateStatus(i64 %112)
  br label %145

114:                                              ; preds = %3, %3, %3, %3, %3, %3
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* @hwndSearch, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i64, i64* %10, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  store i64 0, i64* %4, align 8
  br label %146

122:                                              ; preds = %118, %114
  %123 = load i64, i64* %8, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* @hwndSearch, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %5, align 4
  %131 = and i32 %130, -2
  %132 = icmp eq i32 %131, 131
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %5, align 4
  %135 = and i32 %134, 1
  %136 = load i32, i32* %5, align 4
  %137 = icmp eq i32 %136, 133
  br i1 %137, label %141, label %138

138:                                              ; preds = %122
  %139 = load i32, i32* %5, align 4
  %140 = icmp eq i32 %139, 134
  br label %141

141:                                              ; preds = %138, %122
  %142 = phi i1 [ true, %122 ], [ %140, %138 ]
  %143 = zext i1 %142 to i32
  %144 = call i64 @GetExtSelection(i64 %123, i32 %124, i32 %125, i32 %129, i32 %133, i32 %135, i32 %143)
  store i64 %144, i64* %4, align 8
  br label %146

145:                                              ; preds = %3, %109, %71, %20
  store i64 0, i64* %4, align 8
  br label %146

146:                                              ; preds = %145, %141, %121, %72, %67, %61, %55, %47
  %147 = load i64, i64* %4, align 8
  ret i64 %147
}

declare dso_local i64 @SendMessage(i64, i32, i32, i64) #1

declare dso_local i32 @GetTreeWindows(i64, i64*, i64*) #1

declare dso_local i32 @SaveRestoreToolbar(i32) #1

declare dso_local i32 @FreeExtensions(...) #1

declare dso_local i32 @InitExtensions(...) #1

declare dso_local i32 @InvalidateRect(i64, i32*, i32) #1

declare dso_local i32 @DrawMenuBar(i64) #1

declare dso_local i64 @GetTreeFocus(i64) #1

declare dso_local i64 @GetDriveInfo(i64, i32, i32) #1

declare dso_local i32 @UpdateDriveList(...) #1

declare dso_local i32 @RefreshWindow(i64, i32, i32) #1

declare dso_local i64 @GetWindow(i64, i32) #1

declare dso_local i32 @SPC_SET_HITDISK(i32) #1

declare dso_local i32 @UpdateStatus(i64) #1

declare dso_local i64 @GetExtSelection(i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

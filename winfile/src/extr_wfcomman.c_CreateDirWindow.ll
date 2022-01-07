; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfcomman.c_CreateDirWindow.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfcomman.c_CreateDirWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwndSearch = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@hwndMDIClient = common dso_local global i32 0, align 4
@WM_MDIACTIVATE = common dso_local global i32 0, align 4
@WM_SYSCOMMAND = common dso_local global i32 0, align 4
@SC_RESTORE = common dso_local global i64 0, align 8
@cDrives = common dso_local global i64 0, align 8
@rgiDrive = common dso_local global i64* null, align 8
@hwndDriveList = common dso_local global i32 0, align 4
@CB_GETCURSEL = common dso_local global i32 0, align 4
@FS_GETFILESPEC = common dso_local global i32 0, align 4
@MAXFILENAMELEN = common dso_local global i64 0, align 8
@FS_CHANGEDISPLAY = common dso_local global i32 0, align 4
@CD_PATH = common dso_local global i64 0, align 8
@TC_SETDRIVE = common dso_local global i32 0, align 4
@szStarDotStar = common dso_local global i32 0, align 4
@CW_USEDEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateDirWindow(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @hwndSearch, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %6, align 8
  store i64 -1, i64* %9, align 8
  br label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @GetSplit(i32 %18)
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %17, %15
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @TRUE, align 4
  %26 = load i64, i64* @FALSE, align 8
  %27 = call i32 @LocateDirWindow(i64 %24, i32 %25, i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load i32, i32* @hwndMDIClient, align 4
  %31 = load i32, i32* @WM_MDIACTIVATE, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @GET_WM_MDIACTIVATE_MPS(i32 0, i32 0, i32 %32)
  %34 = sext i32 %33 to i64
  %35 = call i64 (i32, i32, i64, ...) @SendMessage(i32 %30, i32 %31, i64 %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @IsIconic(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @WM_SYSCOMMAND, align 4
  %42 = load i64, i64* @SC_RESTORE, align 8
  %43 = call i64 (i32, i32, i64, ...) @SendMessage(i32 %40, i32 %41, i64 %42, i64 0)
  br label %44

44:                                               ; preds = %39, %29
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %142

46:                                               ; preds = %23, %20
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %115

49:                                               ; preds = %46
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @CharUpperBuff(i64 %50, i32 1)
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @DRIVEID(i64 %52)
  store i64 %53, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %54

54:                                               ; preds = %77, %49
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @cDrives, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8
  %60 = load i64*, i64** @rgiDrive, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %59, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %58
  %66 = load i64, i64* %11, align 8
  %67 = load i32, i32* @hwndDriveList, align 4
  %68 = load i32, i32* @CB_GETCURSEL, align 4
  %69 = load i64, i64* %11, align 8
  %70 = call i64 (i32, i32, i64, ...) @SendMessage(i32 %67, i32 %68, i64 %69, i64 0)
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @SelectToolbarDrive(i64 %73)
  br label %75

75:                                               ; preds = %72, %65
  br label %80

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %11, align 8
  br label %54

80:                                               ; preds = %75, %54
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @HasDirWindow(i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @AddBackslash(i64 %85)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @FS_GETFILESPEC, align 4
  %89 = load i64, i64* @MAXFILENAMELEN, align 8
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* %5, align 8
  %92 = call i64 @lstrlen(i64 %91)
  %93 = add nsw i64 %90, %92
  %94 = call i64 (i32, i32, i64, ...) @SendMessage(i32 %87, i32 %88, i64 %89, i64 %93)
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @FS_CHANGEDISPLAY, align 4
  %97 = load i64, i64* @CD_PATH, align 8
  %98 = load i64, i64* %5, align 8
  %99 = call i64 (i32, i32, i64, ...) @SendMessage(i32 %95, i32 %96, i64 %97, i64 %98)
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @StripFilespec(i64 %100)
  br label %102

102:                                              ; preds = %84, %80
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @HasTreeWindow(i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @TC_SETDRIVE, align 4
  %109 = load i64, i64* %5, align 8
  %110 = call i64 (i32, i32, i64, ...) @SendMessage(i32 %107, i32 %108, i64 0, i64 %109)
  br label %111

111:                                              ; preds = %106, %102
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @UpdateStatus(i32 %112)
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %4, align 4
  br label %142

115:                                              ; preds = %46
  %116 = load i64, i64* %5, align 8
  %117 = call i32 @AddBackslash(i64 %116)
  %118 = load i64, i64* %5, align 8
  %119 = load i32, i32* @szStarDotStar, align 4
  %120 = call i32 @lstrcat(i64 %118, i32 %119)
  %121 = load i64, i64* %5, align 8
  %122 = load i32, i32* @CW_USEDEFAULT, align 4
  %123 = load i32, i32* @CW_USEDEFAULT, align 4
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @CreateTreeWindow(i64 %121, i32 %122, i32 0, i32 %123, i32 0, i64 %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %115
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @HasTreeWindow(i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @TC_SETDRIVE, align 4
  %135 = load i64, i64* @FALSE, align 8
  %136 = call i32 @MAKEWORD(i64 %135, i32 0)
  %137 = load i32, i32* @TRUE, align 4
  %138 = call i64 @MAKELONG(i32 %136, i32 %137)
  %139 = call i64 (i32, i32, i64, ...) @SendMessage(i32 %133, i32 %134, i64 %138, i64 0)
  br label %140

140:                                              ; preds = %132, %128, %115
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %111, %44
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i64 @GetSplit(i32) #1

declare dso_local i32 @LocateDirWindow(i64, i32, i64) #1

declare dso_local i64 @SendMessage(i32, i32, i64, ...) #1

declare dso_local i32 @GET_WM_MDIACTIVATE_MPS(i32, i32, i32) #1

declare dso_local i64 @IsIconic(i32) #1

declare dso_local i32 @CharUpperBuff(i64, i32) #1

declare dso_local i64 @DRIVEID(i64) #1

declare dso_local i32 @SelectToolbarDrive(i64) #1

declare dso_local i32 @HasDirWindow(i32) #1

declare dso_local i32 @AddBackslash(i64) #1

declare dso_local i64 @lstrlen(i64) #1

declare dso_local i32 @StripFilespec(i64) #1

declare dso_local i32 @HasTreeWindow(i32) #1

declare dso_local i32 @UpdateStatus(i32) #1

declare dso_local i32 @lstrcat(i64, i32) #1

declare dso_local i32 @CreateTreeWindow(i64, i32, i32, i32, i32, i64) #1

declare dso_local i64 @MAKELONG(i32, i32) #1

declare dso_local i32 @MAKEWORD(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

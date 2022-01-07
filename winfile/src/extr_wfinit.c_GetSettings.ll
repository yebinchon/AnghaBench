; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfinit.c_GetSettings.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfinit.c_GetSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@szSettings = common dso_local global i32 0, align 4
@szMinOnRun = common dso_local global i32 0, align 4
@bMinOnRun = common dso_local global i32 0, align 4
@szTheINIFile = common dso_local global i32 0, align 4
@szIndexOnLaunch = common dso_local global i32 0, align 4
@bIndexOnLaunch = common dso_local global i32 0, align 4
@szLowerCase = common dso_local global i32 0, align 4
@wTextAttribs = common dso_local global i32 0, align 4
@szStatusBar = common dso_local global i32 0, align 4
@bStatusBar = common dso_local global i32 0, align 4
@szDisableVisualStyles = common dso_local global i32 0, align 4
@bDisableVisualStyles = common dso_local global i32 0, align 4
@szMirrorContent = common dso_local global i32 0, align 4
@bMirrorContent = common dso_local global i8* null, align 8
@szDriveBar = common dso_local global i32 0, align 4
@bDriveBar = common dso_local global i32 0, align 4
@szToolbar = common dso_local global i32 0, align 4
@bToolbar = common dso_local global i32 0, align 4
@szNewWinOnNetConnect = common dso_local global i32 0, align 4
@bNewWinOnConnect = common dso_local global i32 0, align 4
@szConfirmDelete = common dso_local global i32 0, align 4
@bConfirmDelete = common dso_local global i32 0, align 4
@szConfirmSubDel = common dso_local global i32 0, align 4
@bConfirmSubDel = common dso_local global i32 0, align 4
@szConfirmReplace = common dso_local global i32 0, align 4
@bConfirmReplace = common dso_local global i32 0, align 4
@szConfirmMouse = common dso_local global i32 0, align 4
@bConfirmMouse = common dso_local global i32 0, align 4
@szConfirmFormat = common dso_local global i32 0, align 4
@bConfirmFormat = common dso_local global i32 0, align 4
@szConfirmReadOnly = common dso_local global i32 0, align 4
@bConfirmReadOnly = common dso_local global i32 0, align 4
@szChangeNotifyTime = common dso_local global i32 0, align 4
@uChangeNotifyTime = common dso_local global i32 0, align 4
@szSaveSettings = common dso_local global i32 0, align 4
@bSaveSettings = common dso_local global i32 0, align 4
@szFaceWeight = common dso_local global i32 0, align 4
@szSize = common dso_local global i32 0, align 4
@bJAPAN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"14\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@szFace = common dso_local global i32 0, align 4
@szHelv = common dso_local global i32 0, align 4
@szSaveCharset = common dso_local global i32 0, align 4
@SHIFTJIS_CHARSET = common dso_local global i32 0, align 4
@ANSI_CHARSET = common dso_local global i8* null, align 8
@TA_ITALIC = common dso_local global i32 0, align 4
@OUT_DEFAULT_PRECIS = common dso_local global i32 0, align 4
@CLIP_DEFAULT_PRECIS = common dso_local global i32 0, align 4
@DEFAULT_QUALITY = common dso_local global i32 0, align 4
@DEFAULT_PITCH = common dso_local global i32 0, align 4
@FF_SWISS = common dso_local global i32 0, align 4
@hFont = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetSettings() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [128 x i32], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = load i32, i32* @szSettings, align 4
  %7 = load i32, i32* @szMinOnRun, align 4
  %8 = load i32, i32* @bMinOnRun, align 4
  %9 = load i32, i32* @szTheINIFile, align 4
  %10 = call i8* @GetPrivateProfileInt(i32 %6, i32 %7, i32 %8, i32 %9)
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* @bMinOnRun, align 4
  %12 = load i32, i32* @szSettings, align 4
  %13 = load i32, i32* @szIndexOnLaunch, align 4
  %14 = load i32, i32* @bIndexOnLaunch, align 4
  %15 = load i32, i32* @szTheINIFile, align 4
  %16 = call i8* @GetPrivateProfileInt(i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* @bIndexOnLaunch, align 4
  %18 = load i32, i32* @szSettings, align 4
  %19 = load i32, i32* @szLowerCase, align 4
  %20 = load i32, i32* @wTextAttribs, align 4
  %21 = load i32, i32* @szTheINIFile, align 4
  %22 = call i8* @GetPrivateProfileInt(i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* @wTextAttribs, align 4
  %24 = load i32, i32* @szSettings, align 4
  %25 = load i32, i32* @szStatusBar, align 4
  %26 = load i32, i32* @bStatusBar, align 4
  %27 = load i32, i32* @szTheINIFile, align 4
  %28 = call i8* @GetPrivateProfileInt(i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* @bStatusBar, align 4
  %30 = load i32, i32* @szSettings, align 4
  %31 = load i32, i32* @szDisableVisualStyles, align 4
  %32 = load i32, i32* @bDisableVisualStyles, align 4
  %33 = load i32, i32* @szTheINIFile, align 4
  %34 = call i8* @GetPrivateProfileInt(i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* @bDisableVisualStyles, align 4
  %36 = load i32, i32* @szSettings, align 4
  %37 = load i32, i32* @szMirrorContent, align 4
  %38 = call i32 (...) @DefaultLayoutRTL()
  %39 = load i32, i32* @szTheINIFile, align 4
  %40 = call i8* @GetPrivateProfileInt(i32 %36, i32 %37, i32 %38, i32 %39)
  store i8* %40, i8** @bMirrorContent, align 8
  %41 = load i32, i32* @szSettings, align 4
  %42 = load i32, i32* @szDriveBar, align 4
  %43 = load i32, i32* @bDriveBar, align 4
  %44 = load i32, i32* @szTheINIFile, align 4
  %45 = call i8* @GetPrivateProfileInt(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* @bDriveBar, align 4
  %47 = load i32, i32* @szSettings, align 4
  %48 = load i32, i32* @szToolbar, align 4
  %49 = load i32, i32* @bToolbar, align 4
  %50 = load i32, i32* @szTheINIFile, align 4
  %51 = call i8* @GetPrivateProfileInt(i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* @bToolbar, align 4
  %53 = load i32, i32* @szSettings, align 4
  %54 = load i32, i32* @szNewWinOnNetConnect, align 4
  %55 = load i32, i32* @bNewWinOnConnect, align 4
  %56 = load i32, i32* @szTheINIFile, align 4
  %57 = call i8* @GetPrivateProfileInt(i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* @bNewWinOnConnect, align 4
  %59 = load i32, i32* @szSettings, align 4
  %60 = load i32, i32* @szConfirmDelete, align 4
  %61 = load i32, i32* @bConfirmDelete, align 4
  %62 = load i32, i32* @szTheINIFile, align 4
  %63 = call i8* @GetPrivateProfileInt(i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* @bConfirmDelete, align 4
  %65 = load i32, i32* @szSettings, align 4
  %66 = load i32, i32* @szConfirmSubDel, align 4
  %67 = load i32, i32* @bConfirmSubDel, align 4
  %68 = load i32, i32* @szTheINIFile, align 4
  %69 = call i8* @GetPrivateProfileInt(i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* @bConfirmSubDel, align 4
  %71 = load i32, i32* @szSettings, align 4
  %72 = load i32, i32* @szConfirmReplace, align 4
  %73 = load i32, i32* @bConfirmReplace, align 4
  %74 = load i32, i32* @szTheINIFile, align 4
  %75 = call i8* @GetPrivateProfileInt(i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* @bConfirmReplace, align 4
  %77 = load i32, i32* @szSettings, align 4
  %78 = load i32, i32* @szConfirmMouse, align 4
  %79 = load i32, i32* @bConfirmMouse, align 4
  %80 = load i32, i32* @szTheINIFile, align 4
  %81 = call i8* @GetPrivateProfileInt(i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* @bConfirmMouse, align 4
  %83 = load i32, i32* @szSettings, align 4
  %84 = load i32, i32* @szConfirmFormat, align 4
  %85 = load i32, i32* @bConfirmFormat, align 4
  %86 = load i32, i32* @szTheINIFile, align 4
  %87 = call i8* @GetPrivateProfileInt(i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* @bConfirmFormat, align 4
  %89 = load i32, i32* @szSettings, align 4
  %90 = load i32, i32* @szConfirmReadOnly, align 4
  %91 = load i32, i32* @bConfirmReadOnly, align 4
  %92 = load i32, i32* @szTheINIFile, align 4
  %93 = call i8* @GetPrivateProfileInt(i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* @bConfirmReadOnly, align 4
  %95 = load i32, i32* @szSettings, align 4
  %96 = load i32, i32* @szChangeNotifyTime, align 4
  %97 = load i32, i32* @uChangeNotifyTime, align 4
  %98 = load i32, i32* @szTheINIFile, align 4
  %99 = call i8* @GetPrivateProfileInt(i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* @uChangeNotifyTime, align 4
  %101 = load i32, i32* @szSettings, align 4
  %102 = load i32, i32* @szSaveSettings, align 4
  %103 = load i32, i32* @bSaveSettings, align 4
  %104 = load i32, i32* @szTheINIFile, align 4
  %105 = call i8* @GetPrivateProfileInt(i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = ptrtoint i8* %105 to i32
  store i32 %106, i32* @bSaveSettings, align 4
  %107 = load i32, i32* @szSettings, align 4
  %108 = load i32, i32* @szFaceWeight, align 4
  %109 = load i32, i32* @szTheINIFile, align 4
  %110 = call i8* @GetPrivateProfileInt(i32 %107, i32 %108, i32 400, i32 %109)
  store i8* %110, i8** %4, align 8
  %111 = load i32, i32* @szSettings, align 4
  %112 = load i32, i32* @szSize, align 4
  %113 = load i64, i64* @bJAPAN, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %0
  %116 = call i32 @TEXT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %119

117:                                              ; preds = %0
  %118 = call i32 @TEXT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = getelementptr inbounds [128 x i32], [128 x i32]* %2, i64 0, i64 0
  %122 = getelementptr inbounds [128 x i32], [128 x i32]* %2, i64 0, i64 0
  %123 = call i32 @COUNTOF(i32* %122)
  %124 = load i32, i32* @szTheINIFile, align 4
  %125 = call i32 @GetPrivateProfileString(i32 %111, i32 %112, i32 %120, i32* %121, i32 %123, i32 %124)
  %126 = getelementptr inbounds [128 x i32], [128 x i32]* %2, i64 0, i64 0
  %127 = call i8* @GetHeightFromPointsString(i32* %126)
  store i8* %127, i8** %3, align 8
  %128 = load i32, i32* @szSettings, align 4
  %129 = load i32, i32* @szFace, align 4
  %130 = load i32, i32* @szHelv, align 4
  %131 = getelementptr inbounds [128 x i32], [128 x i32]* %2, i64 0, i64 0
  %132 = getelementptr inbounds [128 x i32], [128 x i32]* %2, i64 0, i64 0
  %133 = call i32 @COUNTOF(i32* %132)
  %134 = load i32, i32* @szTheINIFile, align 4
  %135 = call i32 @GetPrivateProfileString(i32 %128, i32 %129, i32 %130, i32* %131, i32 %133, i32 %134)
  %136 = load i64, i64* @bJAPAN, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %119
  %139 = load i32, i32* @szSettings, align 4
  %140 = load i32, i32* @szSaveCharset, align 4
  %141 = load i32, i32* @SHIFTJIS_CHARSET, align 4
  %142 = load i32, i32* @szTheINIFile, align 4
  %143 = call i8* @GetPrivateProfileInt(i32 %139, i32 %140, i32 %141, i32 %142)
  br label %146

144:                                              ; preds = %119
  %145 = load i8*, i8** @ANSI_CHARSET, align 8
  br label %146

146:                                              ; preds = %144, %138
  %147 = phi i8* [ %143, %138 ], [ %145, %144 ]
  store i8* %147, i8** %5, align 8
  %148 = load i8*, i8** %3, align 8
  %149 = load i8*, i8** %4, align 8
  %150 = load i32, i32* @wTextAttribs, align 4
  %151 = load i32, i32* @TA_ITALIC, align 4
  %152 = and i32 %150, %151
  %153 = load i8*, i8** %5, align 8
  %154 = load i32, i32* @OUT_DEFAULT_PRECIS, align 4
  %155 = load i32, i32* @CLIP_DEFAULT_PRECIS, align 4
  %156 = load i32, i32* @DEFAULT_QUALITY, align 4
  %157 = load i32, i32* @DEFAULT_PITCH, align 4
  %158 = load i32, i32* @FF_SWISS, align 4
  %159 = or i32 %157, %158
  %160 = getelementptr inbounds [128 x i32], [128 x i32]* %2, i64 0, i64 0
  %161 = call i32 @CreateFont(i8* %148, i32 0, i32 0, i32 0, i8* %149, i32 %152, i32 0, i32 0, i8* %153, i32 %154, i32 %155, i32 %156, i32 %159, i32* %160)
  store i32 %161, i32* @hFont, align 4
  %162 = load i32, i32* %1, align 4
  ret i32 %162
}

declare dso_local i8* @GetPrivateProfileInt(i32, i32, i32, i32) #1

declare dso_local i32 @DefaultLayoutRTL(...) #1

declare dso_local i32 @GetPrivateProfileString(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i32 @COUNTOF(i32*) #1

declare dso_local i8* @GetHeightFromPointsString(i32*) #1

declare dso_local i32 @CreateFont(i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

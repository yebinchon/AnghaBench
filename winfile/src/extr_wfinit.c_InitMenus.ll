; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfinit.c_InitMenus.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfinit.c_InitMenus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@szSettings = common dso_local global i32 0, align 4
@szUndelete = common dso_local global i32 0, align 4
@szNULL = common dso_local global i32 0, align 4
@szTheINIFile = common dso_local global i32 0, align 4
@hModUndelete = common dso_local global i32* null, align 8
@UNDELETE_ENTRYW = common dso_local global i32 0, align 4
@lpfpUndelete = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bUndeleteUnicode = common dso_local global i32 0, align 4
@UNDELETE_ENTRYA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@hwndFrame = common dso_local global i32 0, align 4
@IDM_FILE = common dso_local global i32 0, align 4
@hAppInstance = common dso_local global i32 0, align 4
@IDS_UNDELETE = common dso_local global i32 0, align 4
@MF_BYPOSITION = common dso_local global i32 0, align 4
@MF_STRING = common dso_local global i32 0, align 4
@IDM_UNDELETE = common dso_local global i32 0, align 4
@IDM_DISK = common dso_local global i32 0, align 4
@NS_CONNECTDLG = common dso_local global i32 0, align 4
@MF_SEPARATOR = common dso_local global i32 0, align 4
@IDS_NEWWINONCONNECT = common dso_local global i32 0, align 4
@IDM_NEWWINONCONNECT = common dso_local global i32 0, align 4
@IDS_CONNECT = common dso_local global i32 0, align 4
@IDM_CONNECT = common dso_local global i32 0, align 4
@IDS_DISCONNECT = common dso_local global i32 0, align 4
@IDM_DISCONNECT = common dso_local global i32 0, align 4
@NS_SHAREDLG = common dso_local global i32 0, align 4
@IDS_SHAREAS = common dso_local global i32 0, align 4
@IDM_SHAREAS = common dso_local global i32 0, align 4
@IDS_STOPSHARE = common dso_local global i32 0, align 4
@IDM_STOPSHARE = common dso_local global i32 0, align 4
@nFloppies = common dso_local global i64 0, align 8
@IDM_DISKCOPY = common dso_local global i32 0, align 4
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@MF_GRAYED = common dso_local global i32 0, align 4
@bStatusBar = common dso_local global i64 0, align 8
@IDM_STATUSBAR = common dso_local global i32 0, align 4
@MF_CHECKED = common dso_local global i32 0, align 4
@bMinOnRun = common dso_local global i64 0, align 8
@IDM_MINONRUN = common dso_local global i32 0, align 4
@bIndexOnLaunch = common dso_local global i64 0, align 8
@IDM_INDEXONLAUNCH = common dso_local global i32 0, align 4
@bSaveSettings = common dso_local global i64 0, align 8
@IDM_SAVESETTINGS = common dso_local global i32 0, align 4
@bDriveBar = common dso_local global i64 0, align 8
@IDM_DRIVEBAR = common dso_local global i32 0, align 4
@bToolbar = common dso_local global i64 0, align 8
@IDM_TOOLBAR = common dso_local global i32 0, align 4
@bNewWinOnConnect = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitMenus() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = load i32, i32* @MAXPATHLEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i64, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @MAXPATHLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %14 = load i32, i32* @szSettings, align 4
  %15 = load i32, i32* @szUndelete, align 4
  %16 = load i32, i32* @szNULL, align 4
  %17 = call i32 @COUNTOF(i64* %10)
  %18 = load i32, i32* @szTheINIFile, align 4
  %19 = call i32 @GetPrivateProfileString(i32 %14, i32 %15, i32 %16, i64* %10, i32 %17, i32 %18)
  %20 = getelementptr inbounds i64, i64* %10, i64 0
  %21 = load i64, i64* %20, align 16
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %0
  %24 = call i32 @COUNTOF(i64* %13)
  %25 = call i32 @GetSystemDirectory(i64* %13, i32 %24)
  %26 = call i32 @AddBackslash(i64* %13)
  %27 = call i32 @lstrcat(i64* %13, i64* %10)
  %28 = call i32* @LoadLibrary(i64* %10)
  store i32* %28, i32** @hModUndelete, align 8
  %29 = load i32*, i32** @hModUndelete, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %64

31:                                               ; preds = %23
  %32 = load i32*, i32** @hModUndelete, align 8
  %33 = load i32, i32* @UNDELETE_ENTRYW, align 4
  %34 = call i64 @GetProcAddress(i32* %32, i32 %33)
  store i64 %34, i64* @lpfpUndelete, align 8
  %35 = load i64, i64* @lpfpUndelete, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* @bUndeleteUnicode, align 4
  br label %44

39:                                               ; preds = %31
  %40 = load i32*, i32** @hModUndelete, align 8
  %41 = load i32, i32* @UNDELETE_ENTRYA, align 4
  %42 = call i64 @GetProcAddress(i32* %40, i32 %41)
  store i64 %42, i64* @lpfpUndelete, align 8
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* @bUndeleteUnicode, align 4
  br label %44

44:                                               ; preds = %39, %37
  %45 = load i64, i64* @lpfpUndelete, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load i32, i32* @hwndFrame, align 4
  %49 = call i32 @GetMenu(i32 %48)
  %50 = load i32, i32* @IDM_FILE, align 4
  %51 = call i32 @MapIDMToMenuPos(i32 %50)
  %52 = call i32 @GetSubMenu(i32 %49, i32 %51)
  store i32 %52, i32* %2, align 4
  %53 = load i32, i32* @hAppInstance, align 4
  %54 = load i32, i32* @IDS_UNDELETE, align 4
  %55 = call i32 @COUNTOF(i64* %10)
  %56 = call i32 @LoadString(i32 %53, i32 %54, i64* %10, i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @MF_BYPOSITION, align 4
  %59 = load i32, i32* @MF_STRING, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @IDM_UNDELETE, align 4
  %62 = call i32 @InsertMenu(i32 %57, i32 4, i32 %60, i32 %61, i64* %10)
  br label %63

63:                                               ; preds = %47, %44
  br label %67

64:                                               ; preds = %23
  %65 = load i32*, i32** @hModUndelete, align 8
  %66 = call i32 @FreeLibrary(i32* %65)
  store i32* null, i32** @hModUndelete, align 8
  br label %67

67:                                               ; preds = %64, %63
  br label %68

68:                                               ; preds = %67, %0
  %69 = load i32, i32* @hwndFrame, align 4
  %70 = call i32 @GetMenu(i32 %69)
  %71 = load i32, i32* @IDM_DISK, align 4
  %72 = call i32 @MapIDMToMenuPos(i32 %71)
  %73 = call i32 @GetSubMenu(i32 %70, i32 %72)
  store i32 %73, i32* %2, align 4
  %74 = load i32, i32* @NS_CONNECTDLG, align 4
  %75 = call i64 @WNetStat(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %116

77:                                               ; preds = %68
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @MF_BYPOSITION, align 4
  %80 = load i32, i32* @MF_SEPARATOR, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @InsertMenu(i32 %78, i32 4, i32 %81, i32 0, i64* null)
  %83 = load i32, i32* @hAppInstance, align 4
  %84 = load i32, i32* @IDS_NEWWINONCONNECT, align 4
  %85 = call i32 @COUNTOF(i64* %10)
  %86 = call i32 @LoadString(i32 %83, i32 %84, i64* %10, i32 %85)
  %87 = load i32, i32* @hwndFrame, align 4
  %88 = call i32 @GetMenu(i32 %87)
  %89 = call i32 @GetSubMenu(i32 %88, i32 4)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @MF_BYPOSITION, align 4
  %92 = load i32, i32* @MF_STRING, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @IDM_NEWWINONCONNECT, align 4
  %95 = call i32 @InsertMenu(i32 %90, i32 8, i32 %93, i32 %94, i64* %10)
  %96 = load i32, i32* @hAppInstance, align 4
  %97 = load i32, i32* @IDS_CONNECT, align 4
  %98 = call i32 @COUNTOF(i64* %10)
  %99 = call i32 @LoadString(i32 %96, i32 %97, i64* %10, i32 %98)
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @MF_BYPOSITION, align 4
  %102 = load i32, i32* @MF_STRING, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @IDM_CONNECT, align 4
  %105 = call i32 @InsertMenu(i32 %100, i32 5, i32 %103, i32 %104, i64* %10)
  %106 = load i32, i32* @hAppInstance, align 4
  %107 = load i32, i32* @IDS_DISCONNECT, align 4
  %108 = call i32 @COUNTOF(i64* %10)
  %109 = call i32 @LoadString(i32 %106, i32 %107, i64* %10, i32 %108)
  %110 = load i32, i32* %2, align 4
  %111 = load i32, i32* @MF_BYPOSITION, align 4
  %112 = load i32, i32* @MF_STRING, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @IDM_DISCONNECT, align 4
  %115 = call i32 @InsertMenu(i32 %110, i32 6, i32 %113, i32 %114, i64* %10)
  br label %116

116:                                              ; preds = %77, %68
  %117 = load i32, i32* @NS_SHAREDLG, align 4
  %118 = call i64 @WNetStat(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %146

120:                                              ; preds = %116
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* @MF_BYPOSITION, align 4
  %123 = load i32, i32* @MF_SEPARATOR, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @InsertMenu(i32 %121, i32 7, i32 %124, i32 0, i64* null)
  %126 = load i32, i32* @hAppInstance, align 4
  %127 = load i32, i32* @IDS_SHAREAS, align 4
  %128 = call i32 @COUNTOF(i64* %10)
  %129 = call i32 @LoadString(i32 %126, i32 %127, i64* %10, i32 %128)
  %130 = load i32, i32* %2, align 4
  %131 = load i32, i32* @MF_BYPOSITION, align 4
  %132 = load i32, i32* @MF_STRING, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @IDM_SHAREAS, align 4
  %135 = call i32 @InsertMenu(i32 %130, i32 8, i32 %133, i32 %134, i64* %10)
  %136 = load i32, i32* @hAppInstance, align 4
  %137 = load i32, i32* @IDS_STOPSHARE, align 4
  %138 = call i32 @COUNTOF(i64* %10)
  %139 = call i32 @LoadString(i32 %136, i32 %137, i64* %10, i32 %138)
  %140 = load i32, i32* %2, align 4
  %141 = load i32, i32* @MF_BYPOSITION, align 4
  %142 = load i32, i32* @MF_STRING, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @IDM_STOPSHARE, align 4
  %145 = call i32 @InsertMenu(i32 %140, i32 9, i32 %143, i32 %144, i64* %10)
  br label %146

146:                                              ; preds = %120, %116
  %147 = load i32, i32* @hwndFrame, align 4
  %148 = call i32 @GetMenu(i32 %147)
  store i32 %148, i32* %2, align 4
  %149 = load i64, i64* @nFloppies, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load i32, i32* %2, align 4
  %153 = load i32, i32* @IDM_DISKCOPY, align 4
  %154 = load i32, i32* @MF_BYCOMMAND, align 4
  %155 = load i32, i32* @MF_GRAYED, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @EnableMenuItem(i32 %152, i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %151, %146
  %159 = load i64, i64* @bStatusBar, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load i32, i32* %2, align 4
  %163 = load i32, i32* @IDM_STATUSBAR, align 4
  %164 = load i32, i32* @MF_BYCOMMAND, align 4
  %165 = load i32, i32* @MF_CHECKED, align 4
  %166 = or i32 %164, %165
  %167 = call i32 @CheckMenuItem(i32 %162, i32 %163, i32 %166)
  br label %168

168:                                              ; preds = %161, %158
  %169 = load i64, i64* @bMinOnRun, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %168
  %172 = load i32, i32* %2, align 4
  %173 = load i32, i32* @IDM_MINONRUN, align 4
  %174 = load i32, i32* @MF_BYCOMMAND, align 4
  %175 = load i32, i32* @MF_CHECKED, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @CheckMenuItem(i32 %172, i32 %173, i32 %176)
  br label %178

178:                                              ; preds = %171, %168
  %179 = load i64, i64* @bIndexOnLaunch, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %178
  %182 = load i32, i32* %2, align 4
  %183 = load i32, i32* @IDM_INDEXONLAUNCH, align 4
  %184 = load i32, i32* @MF_BYCOMMAND, align 4
  %185 = load i32, i32* @MF_CHECKED, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @CheckMenuItem(i32 %182, i32 %183, i32 %186)
  br label %188

188:                                              ; preds = %181, %178
  %189 = load i64, i64* @bSaveSettings, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load i32, i32* %2, align 4
  %193 = load i32, i32* @IDM_SAVESETTINGS, align 4
  %194 = load i32, i32* @MF_BYCOMMAND, align 4
  %195 = load i32, i32* @MF_CHECKED, align 4
  %196 = or i32 %194, %195
  %197 = call i32 @CheckMenuItem(i32 %192, i32 %193, i32 %196)
  br label %198

198:                                              ; preds = %191, %188
  %199 = load i64, i64* @bDriveBar, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %198
  %202 = load i32, i32* %2, align 4
  %203 = load i32, i32* @IDM_DRIVEBAR, align 4
  %204 = load i32, i32* @MF_BYCOMMAND, align 4
  %205 = load i32, i32* @MF_CHECKED, align 4
  %206 = or i32 %204, %205
  %207 = call i32 @CheckMenuItem(i32 %202, i32 %203, i32 %206)
  br label %208

208:                                              ; preds = %201, %198
  %209 = load i64, i64* @bToolbar, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load i32, i32* %2, align 4
  %213 = load i32, i32* @IDM_TOOLBAR, align 4
  %214 = load i32, i32* @MF_BYCOMMAND, align 4
  %215 = load i32, i32* @MF_CHECKED, align 4
  %216 = or i32 %214, %215
  %217 = call i32 @CheckMenuItem(i32 %212, i32 %213, i32 %216)
  br label %218

218:                                              ; preds = %211, %208
  %219 = load i64, i64* @bNewWinOnConnect, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %218
  %222 = load i32, i32* %2, align 4
  %223 = load i32, i32* @IDM_NEWWINONCONNECT, align 4
  %224 = load i32, i32* @MF_BYCOMMAND, align 4
  %225 = load i32, i32* @MF_CHECKED, align 4
  %226 = or i32 %224, %225
  %227 = call i32 @CheckMenuItem(i32 %222, i32 %223, i32 %226)
  br label %228

228:                                              ; preds = %221, %218
  %229 = call i32 (...) @InitExtensions()
  %230 = call i32 (...) @InitToolbarButtons()
  %231 = load i32, i32* @hwndFrame, align 4
  %232 = call i32 @DrawMenuBar(i32 %231)
  %233 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %233)
  %234 = load i32, i32* %1, align 4
  ret i32 %234
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetPrivateProfileString(i32, i32, i32, i64*, i32, i32) #2

declare dso_local i32 @COUNTOF(i64*) #2

declare dso_local i32 @GetSystemDirectory(i64*, i32) #2

declare dso_local i32 @AddBackslash(i64*) #2

declare dso_local i32 @lstrcat(i64*, i64*) #2

declare dso_local i32* @LoadLibrary(i64*) #2

declare dso_local i64 @GetProcAddress(i32*, i32) #2

declare dso_local i32 @GetSubMenu(i32, i32) #2

declare dso_local i32 @GetMenu(i32) #2

declare dso_local i32 @MapIDMToMenuPos(i32) #2

declare dso_local i32 @LoadString(i32, i32, i64*, i32) #2

declare dso_local i32 @InsertMenu(i32, i32, i32, i32, i64*) #2

declare dso_local i32 @FreeLibrary(i32*) #2

declare dso_local i64 @WNetStat(i32) #2

declare dso_local i32 @EnableMenuItem(i32, i32, i32) #2

declare dso_local i32 @CheckMenuItem(i32, i32, i32) #2

declare dso_local i32 @InitExtensions(...) #2

declare dso_local i32 @InitToolbarButtons(...) #2

declare dso_local i32 @DrawMenuBar(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

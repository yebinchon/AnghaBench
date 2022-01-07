; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdirsrc.c_DSDropObject.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdirsrc.c_DSDropObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@hwndStatus = common dso_local global i64 0, align 8
@SB_SIMPLE = common dso_local global i32 0, align 4
@LB_GETSEL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FS_GETDIRECTORY = common dso_local global i32 0, align 4
@GWL_HDTA = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@ATTR_DIR = common dso_local global i64 0, align 8
@ATTR_PARENT = common dso_local global i64 0, align 8
@DOF_DIRECTORY = common dso_local global i64 0, align 8
@iSelHighlight = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SZ_BACKSLASH = common dso_local global i32* null, align 8
@FS_GETSELECTION = common dso_local global i32 0, align 4
@bConfirmMouse = common dso_local global i64 0, align 8
@hAppInstance = common dso_local global i32 0, align 4
@IDS_MOUSECONFIRM = common dso_local global i32 0, align 4
@szTitle = common dso_local global i32* null, align 8
@IDS_EXECMOUSECONFIRM = common dso_local global i32 0, align 4
@szMessage = common dso_local global i32 0, align 4
@hwndFrame = common dso_local global i32 0, align 4
@MB_YESNO = common dso_local global i32 0, align 4
@MB_ICONEXCLAMATION = common dso_local global i32 0, align 4
@IDYES = common dso_local global i64 0, align 8
@hwndSearch = common dso_local global i64 0, align 8
@CHAR_NULL = common dso_local global i32 0, align 4
@SZ_DOT = common dso_local global i32* null, align 8
@IDS_EXECERRTITLE = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_SYSTEMMODAL = common dso_local global i32 0, align 4
@GWL_LISTPARMS = common dso_local global i32 0, align 4
@hwndMDIClient = common dso_local global i64 0, align 8
@WM_MDIGETACTIVE = common dso_local global i32 0, align 4
@szStarDotStar = common dso_local global i32* null, align 8
@fShowSourceBitmaps = common dso_local global i32 0, align 4
@FSC_REFRESH = common dso_local global i32 0, align 4
@WM_FSC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DSDropObject(i64 %0, i64 %1, %struct.TYPE_6__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %12, align 8
  %23 = load i32, i32* @MAXPATHLEN, align 4
  %24 = mul nsw i32 %23, 2
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %18, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %19, align 8
  %28 = load i32, i32* @MAXPATHLEN, align 4
  %29 = add nsw i32 %28, 2
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %20, align 8
  %32 = load i32, i32* @MAXPATHLEN, align 4
  %33 = add nsw i32 %32, 2
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %21, align 8
  %36 = load i64, i64* @hwndStatus, align 8
  %37 = load i32, i32* @SB_SIMPLE, align 4
  %38 = call i64 @SendMessage(i64 %36, i32 %37, i32 0, i64 0)
  %39 = load i64, i64* @hwndStatus, align 8
  %40 = call i32 @UpdateWindow(i64 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %4
  %50 = load i64, i64* %13, align 8
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* @LB_GETSEL, align 4
  %55 = load i64, i64* %13, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i64 @SendMessage(i64 %53, i32 %54, i32 %56, i64 0)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52, %49
  %60 = load i64, i64* @TRUE, align 8
  store i64 %60, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %301

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %4
  %63 = load i64, i64* %6, align 8
  %64 = load i32, i32* @FS_GETDIRECTORY, align 4
  %65 = call i32 @COUNTOF(i32* %27)
  %66 = ptrtoint i32* %27 to i64
  %67 = call i64 @SendMessage(i64 %63, i32 %64, i32 %65, i64 %66)
  %68 = load i64, i64* %13, align 8
  %69 = icmp eq i64 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %267

71:                                               ; preds = %62
  %72 = load i64, i64* %6, align 8
  %73 = load i32, i32* @GWL_HDTA, align 4
  %74 = call i64 @GetWindowLongPtr(i64 %72, i32 %73)
  store i64 %74, i64* %17, align 8
  %75 = load i64, i64* %17, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  br label %267

78:                                               ; preds = %71
  %79 = load i64, i64* %7, align 8
  %80 = load i32, i32* @LB_GETTEXT, align 4
  %81 = load i64, i64* %13, align 8
  %82 = trunc i64 %81 to i32
  %83 = ptrtoint %struct.TYPE_5__** %16 to i64
  %84 = call i64 @SendMessage(i64 %79, i32 %80, i32 %82, i64 %83)
  %85 = load i64, i64* @LB_ERR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %78
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %89 = icmp ne %struct.TYPE_5__* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %87, %78
  br label %267

91:                                               ; preds = %87
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %93 = call i32* @MemGetFileName(%struct.TYPE_5__* %92)
  %94 = call i32 @lstrcpy(i32* %31, i32* %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %12, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* @ATTR_DIR, align 8
  %100 = and i64 %98, %99
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %91
  %103 = load i64, i64* %9, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 @lstrcpy(i32* %27, i32* %31)
  br label %118

107:                                              ; preds = %102
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* @ATTR_PARENT, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = call i32 @StripBackslash(i32* %27)
  %114 = call i32 @StripFilespec(i32* %27)
  br label %117

115:                                              ; preds = %107
  %116 = call i32 @lstrcat(i32* %27, i32* %31)
  br label %117

117:                                              ; preds = %115, %112
  br label %118

118:                                              ; preds = %117, %105
  br label %278

119:                                              ; preds = %91
  %120 = call i32 @IsProgramFile(i32* %31)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  br label %267

123:                                              ; preds = %119
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @DOF_DIRECTORY, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load i64, i64* %7, align 8
  %131 = load i32, i32* @iSelHighlight, align 4
  %132 = load i64, i64* @FALSE, align 8
  %133 = load i64, i64* @FALSE, align 8
  %134 = call i32 @DSRectItem(i64 %130, i32 %131, i64 %132, i64 %133)
  %135 = load i64, i64* @FALSE, align 8
  store i64 %135, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %301

136:                                              ; preds = %123
  %137 = load i64, i64* %6, align 8
  %138 = load i32, i32* @FS_GETDIRECTORY, align 4
  %139 = call i32 @COUNTOF(i32* %27)
  %140 = ptrtoint i32* %27 to i64
  %141 = call i64 @SendMessage(i64 %137, i32 %138, i32 %139, i64 %140)
  %142 = call i32 @StripBackslash(i32* %27)
  %143 = call i32 @SetCurrentDirectory(i32* %27)
  %144 = call i32 @lstrcpy(i32* %35, i32* %27)
  %145 = load i32*, i32** @SZ_BACKSLASH, align 8
  %146 = call i32 @lstrcat(i32* %35, i32* %145)
  %147 = call i32 @lstrcat(i32* %35, i32* %31)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* @FS_GETSELECTION, align 4
  %152 = call i64 @SendMessage(i64 %150, i32 %151, i32 1, i64 0)
  %153 = inttoptr i64 %152 to i32*
  store i32* %153, i32** %14, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* @FS_GETSELECTION, align 4
  %158 = call i64 @SendMessage(i64 %156, i32 %157, i32 17, i64 0)
  %159 = inttoptr i64 %158 to i32*
  store i32* %159, i32** %15, align 8
  %160 = load i32*, i32** %14, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %136
  %163 = load i32*, i32** %15, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %162, %136
  br label %246

166:                                              ; preds = %162
  %167 = load i32*, i32** %14, align 8
  %168 = call i32 @lstrlen(i32* %167)
  %169 = load i32, i32* @MAXPATHLEN, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %246

172:                                              ; preds = %166
  %173 = call i32 @CheckEsc(i32* %31)
  %174 = load i64, i64* @bConfirmMouse, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %201

176:                                              ; preds = %172
  %177 = load i32, i32* @hAppInstance, align 4
  %178 = load i32, i32* @IDS_MOUSECONFIRM, align 4
  %179 = load i32*, i32** @szTitle, align 8
  %180 = load i32*, i32** @szTitle, align 8
  %181 = call i32 @COUNTOF(i32* %180)
  %182 = call i32 @LoadString(i32 %177, i32 %178, i32* %179, i32 %181)
  %183 = load i32, i32* @hAppInstance, align 4
  %184 = load i32, i32* @IDS_EXECMOUSECONFIRM, align 4
  %185 = call i32 @COUNTOF(i32* %27)
  %186 = call i32 @LoadString(i32 %183, i32 %184, i32* %27, i32 %185)
  %187 = load i32, i32* @szMessage, align 4
  %188 = load i32*, i32** %14, align 8
  %189 = call i32 @wsprintf(i32 %187, i32* %27, i32* %31, i32* %188)
  %190 = load i32, i32* @hwndFrame, align 4
  %191 = load i32, i32* @szMessage, align 4
  %192 = load i32*, i32** @szTitle, align 8
  %193 = load i32, i32* @MB_YESNO, align 4
  %194 = load i32, i32* @MB_ICONEXCLAMATION, align 4
  %195 = or i32 %193, %194
  %196 = call i64 @MessageBox(i32 %190, i32 %191, i32* %192, i32 %195)
  %197 = load i64, i64* @IDYES, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %176
  br label %246

200:                                              ; preds = %176
  br label %201

201:                                              ; preds = %200, %172
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @hwndSearch, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load i32, i32* @CHAR_NULL, align 4
  %209 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %208, i32* %209, align 16
  br label %218

210:                                              ; preds = %201
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* @FS_GETDIRECTORY, align 4
  %215 = call i32 @COUNTOF(i32* %27)
  %216 = ptrtoint i32* %27 to i64
  %217 = call i64 @SendMessage(i64 %213, i32 %214, i32 %215, i64 %216)
  br label %218

218:                                              ; preds = %210, %207
  %219 = load i32*, i32** %15, align 8
  %220 = call i32 @lstrcat(i32* %27, i32* %219)
  %221 = call i64* @GetExtension(i32* %27)
  %222 = load i64, i64* %221, align 8
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load i32*, i32** @SZ_DOT, align 8
  %226 = call i32 @lstrcat(i32* %27, i32* %225)
  br label %227

227:                                              ; preds = %224, %218
  %228 = call i32 @CheckEsc(i32* %27)
  %229 = load i64, i64* @FALSE, align 8
  %230 = load i64, i64* @FALSE, align 8
  %231 = call i64 @ExecProgram(i32* %35, i32* %27, i32* null, i64 %229, i64 %230)
  store i64 %231, i64* %10, align 8
  %232 = load i64, i64* %10, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %245

234:                                              ; preds = %227
  %235 = load i32, i32* @hwndFrame, align 4
  %236 = load i32, i32* @IDS_EXECERRTITLE, align 4
  %237 = load i64, i64* %10, align 8
  %238 = trunc i64 %237 to i32
  %239 = load i32, i32* @MB_OK, align 4
  %240 = load i32, i32* @MB_ICONEXCLAMATION, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* @MB_SYSTEMMODAL, align 4
  %243 = or i32 %241, %242
  %244 = call i32 @MyMessageBox(i32 %235, i32 %236, i32 %238, i32 %243)
  br label %245

245:                                              ; preds = %234, %227
  br label %246

246:                                              ; preds = %245, %199, %171, %165
  %247 = load i64, i64* %7, align 8
  %248 = load i32, i32* @iSelHighlight, align 4
  %249 = load i64, i64* @FALSE, align 8
  %250 = load i64, i64* @FALSE, align 8
  %251 = call i32 @DSRectItem(i64 %247, i32 %248, i64 %249, i64 %250)
  %252 = load i32*, i32** %14, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %254, label %258

254:                                              ; preds = %246
  %255 = load i32*, i32** %14, align 8
  %256 = ptrtoint i32* %255 to i32
  %257 = call i32 @LocalFree(i32 %256)
  br label %258

258:                                              ; preds = %254, %246
  %259 = load i32*, i32** %15, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %261, label %265

261:                                              ; preds = %258
  %262 = load i32*, i32** %15, align 8
  %263 = ptrtoint i32* %262 to i32
  %264 = call i32 @LocalFree(i32 %263)
  br label %265

265:                                              ; preds = %261, %258
  %266 = load i64, i64* @TRUE, align 8
  store i64 %266, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %301

267:                                              ; preds = %122, %90, %77, %70
  %268 = load i64, i64* %6, align 8
  %269 = load i32, i32* @GWL_LISTPARMS, align 4
  %270 = call i64 @GetWindowLongPtr(i64 %268, i32 %269)
  %271 = load i64, i64* @hwndMDIClient, align 8
  %272 = load i32, i32* @WM_MDIGETACTIVE, align 4
  %273 = call i64 @SendMessage(i64 %271, i32 %272, i32 0, i64 0)
  %274 = icmp eq i64 %270, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %267
  %276 = load i64, i64* @TRUE, align 8
  store i64 %276, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %301

277:                                              ; preds = %267
  br label %278

278:                                              ; preds = %277, %118
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = inttoptr i64 %281 to i32*
  store i32* %282, i32** %11, align 8
  %283 = call i32 @AddBackslash(i32* %27)
  %284 = load i32*, i32** @szStarDotStar, align 8
  %285 = call i32 @lstrcat(i32* %27, i32* %284)
  %286 = call i32 @CheckEsc(i32* %27)
  %287 = load i32*, i32** %11, align 8
  %288 = load i32, i32* @fShowSourceBitmaps, align 4
  %289 = call i64 @DMMoveCopyHelper(i32* %287, i32* %27, i32 %288)
  store i64 %289, i64* %10, align 8
  %290 = load i64, i64* %7, align 8
  %291 = load i32, i32* @iSelHighlight, align 4
  %292 = load i64, i64* @FALSE, align 8
  %293 = load i64, i64* @FALSE, align 8
  %294 = call i32 @DSRectItem(i64 %290, i32 %291, i64 %292, i64 %293)
  %295 = load i64, i64* %10, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %278
  %298 = load i64, i64* @TRUE, align 8
  store i64 %298, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %301

299:                                              ; preds = %278
  %300 = load i64, i64* @TRUE, align 8
  store i64 %300, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %301

301:                                              ; preds = %299, %297, %275, %265, %129, %59
  %302 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %302)
  %303 = load i64, i64* %5, align 8
  ret i64 %303
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SendMessage(i64, i32, i32, i64) #2

declare dso_local i32 @UpdateWindow(i64) #2

declare dso_local i32 @COUNTOF(i32*) #2

declare dso_local i64 @GetWindowLongPtr(i64, i32) #2

declare dso_local i32 @lstrcpy(i32*, i32*) #2

declare dso_local i32* @MemGetFileName(%struct.TYPE_5__*) #2

declare dso_local i32 @StripBackslash(i32*) #2

declare dso_local i32 @StripFilespec(i32*) #2

declare dso_local i32 @lstrcat(i32*, i32*) #2

declare dso_local i32 @IsProgramFile(i32*) #2

declare dso_local i32 @DSRectItem(i64, i32, i64, i64) #2

declare dso_local i32 @SetCurrentDirectory(i32*) #2

declare dso_local i32 @lstrlen(i32*) #2

declare dso_local i32 @CheckEsc(i32*) #2

declare dso_local i32 @LoadString(i32, i32, i32*, i32) #2

declare dso_local i32 @wsprintf(i32, i32*, i32*, i32*) #2

declare dso_local i64 @MessageBox(i32, i32, i32*, i32) #2

declare dso_local i64* @GetExtension(i32*) #2

declare dso_local i64 @ExecProgram(i32*, i32*, i32*, i64, i64) #2

declare dso_local i32 @MyMessageBox(i32, i32, i32, i32) #2

declare dso_local i32 @LocalFree(i32) #2

declare dso_local i32 @AddBackslash(i32*) #2

declare dso_local i64 @DMMoveCopyHelper(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

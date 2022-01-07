; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdirsrc.c_DSTrackPoint.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdirsrc.c_DSTrackPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@LB_GETSEL = common dso_local global i32 0, align 4
@VK_SHIFT = common dso_local global i32 0, align 4
@LB_GETANCHORINDEX = common dso_local global i32 0, align 4
@VK_CONTROL = common dso_local global i32 0, align 4
@LB_SETSEL = common dso_local global i32 0, align 4
@LB_SELITEMRANGE = common dso_local global i32 0, align 4
@LB_SETCARETINDEX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@dxClickRect = common dso_local global i64 0, align 8
@dyClickRect = common dso_local global i64 0, align 8
@WM_LBUTTONUP = common dso_local global i64 0, align 8
@PM_REMOVE = common dso_local global i32 0, align 4
@WM_CANCELMODE = common dso_local global i64 0, align 8
@WM_MOUSEMOVE = common dso_local global i64 0, align 8
@WM_COMMAND = common dso_local global i32 0, align 4
@LBN_SELCHANGE = common dso_local global i32 0, align 4
@LB_GETSELCOUNT = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@ATTR_DIR = common dso_local global i32 0, align 4
@ATTR_PARENT = common dso_local global i32 0, align 4
@DOF_DIRECTORY = common dso_local global i64 0, align 8
@DOF_EXECUTABLE = common dso_local global i64 0, align 8
@DOF_DOCUMENT = common dso_local global i64 0, align 8
@SINGLECOPYCURSOR = common dso_local global i32 0, align 4
@iCurDrag = common dso_local global i32 0, align 4
@DOF_MULTIPLE = common dso_local global i64 0, align 8
@MULTCOPYCURSOR = common dso_local global i32 0, align 4
@FS_GETSELECTION = common dso_local global i32 0, align 4
@hwndDragging = common dso_local global i32* null, align 8
@DO_PRINTFILE = common dso_local global i64 0, align 8
@hdlgProgress = common dso_local global i32* null, align 8
@DO_DROPFILE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DSTrackPoint(i64 %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_9__, align 8
  %24 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %20, align 4
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %21, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* @LB_GETSEL, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i64 (i64, i32, i32, ...) @SendMessage(i64 %27, i32 %28, i32 %29, i64 0)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* @VK_SHIFT, align 4
  %33 = call i64 @GetKeyState(i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %5
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* @LB_GETANCHORINDEX, align 4
  %38 = call i64 (i64, i32, i32, ...) @SendMessage(i64 %36, i32 %37, i32 0, i64 0)
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* @LB_GETSEL, align 4
  %41 = load i64, i64* %15, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i64 (i64, i32, i32, ...) @SendMessage(i64 %39, i32 %40, i32 %42, i64 0)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* @VK_CONTROL, align 4
  %46 = call i64 @GetKeyState(i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %35
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* @LB_SETSEL, align 4
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i64 (i64, i32, i32, ...) @SendMessage(i64 %49, i32 %50, i32 %51, i64 -1)
  br label %53

53:                                               ; preds = %48, %35
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* @LB_SELITEMRANGE, align 4
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i64, i64* %15, align 8
  %59 = call i64 @MAKELONG(i32 %57, i64 %58)
  %60 = call i64 (i64, i32, i32, ...) @SendMessage(i64 %54, i32 %55, i32 %56, i64 %59)
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* @LB_SETCARETINDEX, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i64 (i64, i32, i32, ...) @SendMessage(i64 %61, i32 %62, i32 %63, i64 0)
  br label %96

65:                                               ; preds = %5
  %66 = load i32, i32* @VK_CONTROL, align 4
  %67 = call i64 @GetKeyState(i32 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i32, i32* %19, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %21, align 4
  br label %79

74:                                               ; preds = %69
  %75 = load i64, i64* %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @TRUE, align 4
  %78 = call i32 @SelectItem(i64 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %72
  br label %95

80:                                               ; preds = %65
  %81 = load i32, i32* %19, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @TRUE, align 4
  store i32 %84, i32* %20, align 4
  br label %94

85:                                               ; preds = %80
  %86 = load i64, i64* %8, align 8
  %87 = load i32, i32* @LB_SETSEL, align 4
  %88 = load i32, i32* @FALSE, align 4
  %89 = call i64 (i64, i32, i32, ...) @SendMessage(i64 %86, i32 %87, i32 %88, i64 -1)
  %90 = load i64, i64* %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @TRUE, align 4
  %93 = call i32 @SelectItem(i64 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %85, %83
  br label %95

95:                                               ; preds = %94, %79
  br label %96

96:                                               ; preds = %95, %53
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @GetParent(i64 %100)
  %102 = call i32 @UpdateStatus(i32 %101)
  br label %103

103:                                              ; preds = %99, %96
  %104 = load i64, i64* %10, align 8
  %105 = bitcast %struct.TYPE_9__* %23 to { i64, i64 }*
  %106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %105, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @POINTSTOPOINT(i64 %107, i64 %109, i64 %104)
  %111 = load i64, i64* %8, align 8
  %112 = ptrtoint %struct.TYPE_9__* %23 to i32
  %113 = call i32 @ClientToScreen(i64 %111, i32 %112)
  %114 = load i64, i64* %7, align 8
  %115 = ptrtoint %struct.TYPE_9__* %23 to i32
  %116 = call i32 @ScreenToClient(i64 %114, i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @dxClickRect, align 8
  %120 = sub nsw i64 %118, %119
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @dyClickRect, align 8
  %124 = sub nsw i64 %122, %123
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @dxClickRect, align 8
  %128 = add nsw i64 %126, %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @dyClickRect, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @SetRect(i32* %14, i64 %120, i64 %124, i64 %128, i64 %132)
  %134 = load i64, i64* %7, align 8
  %135 = call i32 @SetCapture(i64 %134)
  br label %136

136:                                              ; preds = %189, %103
  %137 = call i64 (...) @GetCapture()
  %138 = load i64, i64* %7, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i64, i64* @WM_LBUTTONUP, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i64 %141, i64* %142, align 8
  br label %190

143:                                              ; preds = %136
  %144 = load i32, i32* @PM_REMOVE, align 4
  %145 = call i64 @PeekMessage(%struct.TYPE_10__* %13, i32* null, i32 0, i32 0, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %189

147:                                              ; preds = %143
  %148 = call i32 @DispatchMessage(%struct.TYPE_10__* %13)
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @WM_CANCELMODE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %147
  %154 = call i64 (...) @GetCapture()
  %155 = load i64, i64* %7, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153, %147
  %158 = load i64, i64* @WM_LBUTTONUP, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i64 %158, i64* %159, align 8
  br label %190

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @WM_LBUTTONUP, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %190

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = bitcast %struct.TYPE_9__* %23 to { i64, i64 }*
  %170 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %169, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @POINTSTOPOINT(i64 %171, i64 %173, i64 %168)
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @WM_MOUSEMOVE, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %188

179:                                              ; preds = %166
  %180 = bitcast %struct.TYPE_9__* %23 to { i64, i64 }*
  %181 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %180, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @PtInRect(i32* %14, i64 %182, i64 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %179
  br label %190

188:                                              ; preds = %179, %166
  br label %189

189:                                              ; preds = %188, %143
  br label %136

190:                                              ; preds = %187, %165, %157, %140
  %191 = call i32 (...) @ReleaseCapture()
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @WM_LBUTTONUP, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %223

196:                                              ; preds = %190
  %197 = load i32, i32* %20, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %196
  %200 = load i64, i64* %8, align 8
  %201 = load i32, i32* @LB_SETSEL, align 4
  %202 = load i32, i32* @FALSE, align 4
  %203 = call i64 (i64, i32, i32, ...) @SendMessage(i64 %200, i32 %201, i32 %202, i64 -1)
  %204 = load i64, i64* %8, align 8
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* @TRUE, align 4
  %207 = call i32 @SelectItem(i64 %204, i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %199, %196
  %209 = load i32, i32* %21, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = load i64, i64* %8, align 8
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* @FALSE, align 4
  %215 = call i32 @SelectItem(i64 %212, i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %211, %208
  %217 = load i64, i64* %7, align 8
  %218 = load i32, i32* @WM_COMMAND, align 4
  %219 = load i64, i64* %8, align 8
  %220 = load i32, i32* @LBN_SELCHANGE, align 4
  %221 = call i32 @GET_WM_COMMAND_MPS(i32 0, i64 %219, i32 %220)
  %222 = call i64 (i64, i32, i32, ...) @SendMessage(i64 %217, i32 %218, i32 %221)
  store i32 1, i32* %6, align 4
  br label %332

223:                                              ; preds = %190
  %224 = load i64, i64* %8, align 8
  %225 = load i32, i32* @LB_GETSELCOUNT, align 4
  %226 = call i64 (i64, i32, i32, ...) @SendMessage(i64 %224, i32 %225, i32 0, i64 0)
  %227 = icmp eq i64 %226, 1
  br i1 %227, label %228, label %278

228:                                              ; preds = %223
  %229 = load i64, i64* %8, align 8
  %230 = load i32, i32* @LB_GETTEXT, align 4
  %231 = load i32, i32* %9, align 4
  %232 = ptrtoint %struct.TYPE_11__** %24 to i64
  %233 = call i64 (i64, i32, i32, ...) @SendMessage(i64 %229, i32 %230, i32 %231, i64 %232)
  %234 = load i64, i64* @LB_ERR, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %239, label %236

236:                                              ; preds = %228
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %238 = icmp ne %struct.TYPE_11__* %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %236, %228
  store i32 1, i32* %6, align 4
  br label %332

240:                                              ; preds = %236
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %242 = call i64 @MemGetFileName(%struct.TYPE_11__* %241)
  store i64 %242, i64* %22, align 8
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @ATTR_DIR, align 4
  %247 = and i32 %245, %246
  store i32 %247, i32* %18, align 4
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @ATTR_PARENT, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %240
  store i32 1, i32* %6, align 4
  br label %332

255:                                              ; preds = %240
  %256 = load i32, i32* %18, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  %259 = load i64, i64* @DOF_DIRECTORY, align 8
  store i64 %259, i64* %12, align 8
  br label %276

260:                                              ; preds = %255
  %261 = load i64, i64* %22, align 8
  %262 = call i64 @IsProgramFile(i64 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %260
  %265 = load i64, i64* @DOF_EXECUTABLE, align 8
  store i64 %265, i64* %12, align 8
  br label %275

266:                                              ; preds = %260
  %267 = load i64, i64* %22, align 8
  %268 = call i64 @IsDocument(i64 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %266
  %271 = load i64, i64* @DOF_DOCUMENT, align 8
  store i64 %271, i64* %12, align 8
  br label %274

272:                                              ; preds = %266
  %273 = load i64, i64* @DOF_DOCUMENT, align 8
  store i64 %273, i64* %12, align 8
  br label %274

274:                                              ; preds = %272, %270
  br label %275

275:                                              ; preds = %274, %264
  br label %276

276:                                              ; preds = %275, %258
  %277 = load i32, i32* @SINGLECOPYCURSOR, align 4
  store i32 %277, i32* @iCurDrag, align 4
  br label %281

278:                                              ; preds = %223
  %279 = load i64, i64* @DOF_MULTIPLE, align 8
  store i64 %279, i64* %12, align 8
  %280 = load i32, i32* @MULTCOPYCURSOR, align 4
  store i32 %280, i32* @iCurDrag, align 4
  br label %281

281:                                              ; preds = %278, %276
  %282 = load i64, i64* %7, align 8
  %283 = load i32, i32* @FS_GETSELECTION, align 4
  %284 = load i32, i32* @FALSE, align 4
  %285 = call i64 (i64, i32, i32, ...) @SendMessage(i64 %282, i32 %283, i32 %284, i64 0)
  store i64 %285, i64* %17, align 8
  %286 = load i64, i64* %8, align 8
  %287 = inttoptr i64 %286 to i32*
  store i32* %287, i32** @hwndDragging, align 8
  %288 = call i32 (...) @GetDesktopWindow()
  %289 = load i64, i64* %7, align 8
  %290 = load i64, i64* %12, align 8
  %291 = load i64, i64* %17, align 8
  %292 = trunc i64 %291 to i32
  %293 = call i64 @DragObject(i32 %288, i64 %289, i64 %290, i32 %292, i32* null)
  store i64 %293, i64* %16, align 8
  %294 = call i32 (...) @SetWindowDirectory()
  %295 = load i64, i64* %16, align 8
  %296 = load i64, i64* @DO_PRINTFILE, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %301

298:                                              ; preds = %281
  store i32* null, i32** @hdlgProgress, align 8
  %299 = load i64, i64* %17, align 8
  %300 = call i32 @WFPrint(i64 %299)
  br label %309

301:                                              ; preds = %281
  %302 = load i64, i64* %16, align 8
  %303 = load i64, i64* @DO_DROPFILE, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = load i64, i64* %17, align 8
  %307 = call i32 @DropFilesOnApplication(i64 %306)
  br label %308

308:                                              ; preds = %305, %301
  br label %309

309:                                              ; preds = %308, %298
  %310 = load i64, i64* %17, align 8
  %311 = trunc i64 %310 to i32
  %312 = call i32 @LocalFree(i32 %311)
  %313 = load i64, i64* %7, align 8
  %314 = call i64 @IsWindow(i64 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %309
  %317 = load i64, i64* %8, align 8
  %318 = load i32, i32* @TRUE, align 4
  %319 = call i32 @ShowItemBitmaps(i64 %317, i32 %318)
  br label %320

320:                                              ; preds = %316, %309
  store i32* null, i32** @hwndDragging, align 8
  %321 = load i32, i32* %11, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %331, label %323

323:                                              ; preds = %320
  %324 = load i64, i64* %7, align 8
  %325 = call i64 @IsWindow(i64 %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %323
  %328 = load i64, i64* %7, align 8
  %329 = call i32 @GetParent(i64 %328)
  %330 = call i32 @UpdateStatus(i32 %329)
  br label %331

331:                                              ; preds = %327, %323, %320
  store i32 2, i32* %6, align 4
  br label %332

332:                                              ; preds = %331, %254, %239, %216
  %333 = load i32, i32* %6, align 4
  ret i32 %333
}

declare dso_local i64 @SendMessage(i64, i32, i32, ...) #1

declare dso_local i64 @GetKeyState(i32) #1

declare dso_local i64 @MAKELONG(i32, i64) #1

declare dso_local i32 @SelectItem(i64, i32, i32) #1

declare dso_local i32 @UpdateStatus(i32) #1

declare dso_local i32 @GetParent(i64) #1

declare dso_local i32 @POINTSTOPOINT(i64, i64, i64) #1

declare dso_local i32 @ClientToScreen(i64, i32) #1

declare dso_local i32 @ScreenToClient(i64, i32) #1

declare dso_local i32 @SetRect(i32*, i64, i64, i64, i64) #1

declare dso_local i32 @SetCapture(i64) #1

declare dso_local i64 @GetCapture(...) #1

declare dso_local i64 @PeekMessage(%struct.TYPE_10__*, i32*, i32, i32, i32) #1

declare dso_local i32 @DispatchMessage(%struct.TYPE_10__*) #1

declare dso_local i32 @PtInRect(i32*, i64, i64) #1

declare dso_local i32 @ReleaseCapture(...) #1

declare dso_local i32 @GET_WM_COMMAND_MPS(i32, i64, i32) #1

declare dso_local i64 @MemGetFileName(%struct.TYPE_11__*) #1

declare dso_local i64 @IsProgramFile(i64) #1

declare dso_local i64 @IsDocument(i64) #1

declare dso_local i64 @DragObject(i32, i64, i64, i32, i32*) #1

declare dso_local i32 @GetDesktopWindow(...) #1

declare dso_local i32 @SetWindowDirectory(...) #1

declare dso_local i32 @WFPrint(i64) #1

declare dso_local i32 @DropFilesOnApplication(i64) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i64 @IsWindow(i64) #1

declare dso_local i32 @ShowItemBitmaps(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/ctm/extr_ctm.c_ProcessKeys.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/ctm/extr_ctm.c_ProcessKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }

@ProcessCount = common dso_local global i32 0, align 4
@scrolled = common dso_local global i32 0, align 4
@KEY_QUIT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@KEY_KILL = common dso_local global i64 0, align 8
@ScreenLines = common dso_local global i64 0, align 8
@hInst = common dso_local global i32 0, align 4
@IDS_KILL_PROCESS = common dso_local global i32 0, align 4
@hStdout = common dso_local global i32 0, align 4
@hStdin = common dso_local global i32 0, align 4
@KEY_YES = common dso_local global i64 0, align 8
@KEY_NO = common dso_local global i64 0, align 8
@pPerfData = common dso_local global %struct.TYPE_5__* null, align 8
@selection = common dso_local global i32 0, align 4
@PROCESS_TERMINATE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDS_KILL_PROCESS_ERR1 = common dso_local global i32 0, align 4
@lpEmpty = common dso_local global i64* null, align 8
@IDS_KILL_PROCESS_ERR2 = common dso_local global i32 0, align 4
@first = common dso_local global i64 0, align 8
@VK_UP = common dso_local global i64 0, align 8
@VK_DOWN = common dso_local global i64 0, align 8
@ProcPerScreen = common dso_local global i32 0, align 4
@VK_PRIOR = common dso_local global i64 0, align 8
@VK_NEXT = common dso_local global i64 0, align 8
@VK_HOME = common dso_local global i64 0, align 8
@VK_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ProcessKeys(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca [100 x i64], align 16
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* @ProcessCount, align 4
  %11 = load i32, i32* @scrolled, align 4
  %12 = sub nsw i32 %10, %11
  %13 = icmp slt i32 %12, 17
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @ProcessCount, align 4
  %16 = icmp sgt i32 %15, 17
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @ProcessCount, align 4
  %19 = sub nsw i32 %18, 17
  store i32 %19, i32* @scrolled, align 4
  br label %20

20:                                               ; preds = %17, %14, %1
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @GetKeyPressed(i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @KEY_QUIT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %2, align 4
  br label %293

28:                                               ; preds = %20
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @KEY_KILL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %159

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i64, i64* @ScreenLines, align 8
  %35 = sub nsw i64 %34, 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i64 %35, i64* %36, align 8
  %37 = load i32, i32* @hInst, align 4
  %38 = load i32, i32* @IDS_KILL_PROCESS, align 4
  %39 = getelementptr inbounds [100 x i64], [100 x i64]* %8, i64 0, i64 0
  %40 = call i64 @LoadString(i32 %37, i32 %38, i64* %39, i32 100)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %32
  %43 = load i32, i32* @hStdout, align 4
  %44 = getelementptr inbounds [100 x i64], [100 x i64]* %8, i64 0, i64 0
  %45 = getelementptr inbounds [100 x i64], [100 x i64]* %8, i64 0, i64 0
  %46 = call i32 @_tcslen(i64* %45)
  %47 = bitcast %struct.TYPE_4__* %7 to { i32, i64 }*
  %48 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %47, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @WriteConsoleOutputCharacter(i32 %43, i64* %44, i32 %46, i32 %49, i64 %51, i32* %4)
  br label %53

53:                                               ; preds = %42, %32
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i32, i32* @hStdin, align 4
  %56 = call i32 @GetNumberOfConsoleInputEvents(i32 %55, i32* %6)
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @GetKeyPressed(i32 %57)
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @KEY_YES, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @KEY_NO, align 8
  %66 = icmp ne i64 %64, %65
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ]
  br i1 %68, label %54, label %69

69:                                               ; preds = %67
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @KEY_YES, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %158

73:                                               ; preds = %69
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pPerfData, align 8
  %75 = load i32, i32* @selection, align 4
  %76 = load i32, i32* @scrolled, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @PROCESS_TERMINATE, align 4
  %83 = load i32, i32* @FALSE, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @OpenProcess(i32 %82, i32 %83, i32 %84)
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %124

88:                                               ; preds = %73
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @TerminateProcess(i64 %89, i32 0)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %121, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @hInst, align 4
  %94 = load i32, i32* @IDS_KILL_PROCESS_ERR1, align 4
  %95 = getelementptr inbounds [100 x i64], [100 x i64]* %8, i64 0, i64 0
  %96 = call i64 @LoadString(i32 %93, i32 %94, i64* %95, i32 80)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %92
  %99 = load i32, i32* @hStdout, align 4
  %100 = load i64*, i64** @lpEmpty, align 8
  %101 = load i64*, i64** @lpEmpty, align 8
  %102 = call i32 @_tcslen(i64* %101)
  %103 = bitcast %struct.TYPE_4__* %7 to { i32, i64 }*
  %104 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %103, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @WriteConsoleOutputCharacter(i32 %99, i64* %100, i32 %102, i32 %105, i64 %107, i32* %4)
  %109 = load i32, i32* @hStdout, align 4
  %110 = getelementptr inbounds [100 x i64], [100 x i64]* %8, i64 0, i64 0
  %111 = getelementptr inbounds [100 x i64], [100 x i64]* %8, i64 0, i64 0
  %112 = call i32 @_tcslen(i64* %111)
  %113 = bitcast %struct.TYPE_4__* %7 to { i32, i64 }*
  %114 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %113, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @WriteConsoleOutputCharacter(i32 %109, i64* %110, i32 %112, i32 %115, i64 %117, i32* %4)
  br label %119

119:                                              ; preds = %98, %92
  %120 = call i32 @Sleep(i32 1000)
  br label %121

121:                                              ; preds = %119, %88
  %122 = load i64, i64* %9, align 8
  %123 = call i32 @CloseHandle(i64 %122)
  br label %157

124:                                              ; preds = %73
  %125 = load i32, i32* @hInst, align 4
  %126 = load i32, i32* @IDS_KILL_PROCESS_ERR2, align 4
  %127 = getelementptr inbounds [100 x i64], [100 x i64]* %8, i64 0, i64 0
  %128 = call i64 @LoadString(i32 %125, i32 %126, i64* %127, i32 80)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %124
  %131 = load i32, i32* @hStdout, align 4
  %132 = load i64*, i64** @lpEmpty, align 8
  %133 = load i64*, i64** @lpEmpty, align 8
  %134 = call i32 @_tcslen(i64* %133)
  %135 = bitcast %struct.TYPE_4__* %7 to { i32, i64 }*
  %136 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %135, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @WriteConsoleOutputCharacter(i32 %131, i64* %132, i32 %134, i32 %137, i64 %139, i32* %4)
  %141 = getelementptr inbounds [100 x i64], [100 x i64]* %8, i64 0, i64 0
  %142 = getelementptr inbounds [100 x i64], [100 x i64]* %8, i64 0, i64 0
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @_stprintf(i64* %141, i64* %142, i32 %143)
  %145 = load i32, i32* @hStdout, align 4
  %146 = getelementptr inbounds [100 x i64], [100 x i64]* %8, i64 0, i64 0
  %147 = getelementptr inbounds [100 x i64], [100 x i64]* %8, i64 0, i64 0
  %148 = call i32 @_tcslen(i64* %147)
  %149 = bitcast %struct.TYPE_4__* %7 to { i32, i64 }*
  %150 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %149, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @WriteConsoleOutputCharacter(i32 %145, i64* %146, i32 %148, i32 %151, i64 %153, i32* %4)
  br label %155

155:                                              ; preds = %130, %124
  %156 = call i32 @Sleep(i32 1000)
  br label %157

157:                                              ; preds = %155, %121
  br label %158

158:                                              ; preds = %157, %69
  store i64 0, i64* @first, align 8
  br label %290

159:                                              ; preds = %28
  %160 = load i64, i64* %5, align 8
  %161 = load i64, i64* @VK_UP, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %180

163:                                              ; preds = %159
  %164 = load i32, i32* @selection, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* @selection, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* @selection, align 4
  br label %179

169:                                              ; preds = %163
  %170 = load i32, i32* @selection, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %169
  %173 = load i32, i32* @scrolled, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* @scrolled, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* @scrolled, align 4
  br label %178

178:                                              ; preds = %175, %172, %169
  br label %179

179:                                              ; preds = %178, %166
  br label %289

180:                                              ; preds = %159
  %181 = load i64, i64* %5, align 8
  %182 = load i64, i64* @VK_DOWN, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %214

184:                                              ; preds = %180
  %185 = load i32, i32* @selection, align 4
  %186 = load i32, i32* @ProcPerScreen, align 4
  %187 = sub nsw i32 %186, 1
  %188 = icmp slt i32 %185, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  %190 = load i32, i32* @selection, align 4
  %191 = load i32, i32* @ProcessCount, align 4
  %192 = sub nsw i32 %191, 1
  %193 = icmp slt i32 %190, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load i32, i32* @selection, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* @selection, align 4
  br label %213

197:                                              ; preds = %189, %184
  %198 = load i32, i32* @selection, align 4
  %199 = load i32, i32* @ProcPerScreen, align 4
  %200 = sub nsw i32 %199, 1
  %201 = icmp eq i32 %198, %200
  br i1 %201, label %202, label %212

202:                                              ; preds = %197
  %203 = load i32, i32* @selection, align 4
  %204 = load i32, i32* @scrolled, align 4
  %205 = add nsw i32 %203, %204
  %206 = load i32, i32* @ProcessCount, align 4
  %207 = sub nsw i32 %206, 1
  %208 = icmp slt i32 %205, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %202
  %210 = load i32, i32* @scrolled, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* @scrolled, align 4
  br label %212

212:                                              ; preds = %209, %202, %197
  br label %213

213:                                              ; preds = %212, %194
  br label %288

214:                                              ; preds = %180
  %215 = load i64, i64* %5, align 8
  %216 = load i64, i64* @VK_PRIOR, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %230

218:                                              ; preds = %214
  %219 = load i32, i32* @scrolled, align 4
  %220 = load i32, i32* @ProcPerScreen, align 4
  %221 = sub nsw i32 %220, 1
  %222 = icmp sgt i32 %219, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %218
  %224 = load i32, i32* @ProcPerScreen, align 4
  %225 = sub nsw i32 %224, 1
  %226 = load i32, i32* @scrolled, align 4
  %227 = sub nsw i32 %226, %225
  store i32 %227, i32* @scrolled, align 4
  br label %229

228:                                              ; preds = %218
  store i32 0, i32* @scrolled, align 4
  store i32 0, i32* @selection, align 4
  br label %229

229:                                              ; preds = %228, %223
  br label %287

230:                                              ; preds = %214
  %231 = load i64, i64* %5, align 8
  %232 = load i64, i64* @VK_NEXT, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %260

234:                                              ; preds = %230
  %235 = load i32, i32* @ProcPerScreen, align 4
  %236 = sub nsw i32 %235, 1
  %237 = load i32, i32* @scrolled, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* @scrolled, align 4
  %239 = load i32, i32* @scrolled, align 4
  %240 = load i32, i32* @ProcessCount, align 4
  %241 = load i32, i32* @ProcPerScreen, align 4
  %242 = sub nsw i32 %240, %241
  %243 = icmp sgt i32 %239, %242
  br i1 %243, label %244, label %250

244:                                              ; preds = %234
  %245 = load i32, i32* @ProcessCount, align 4
  %246 = load i32, i32* @ProcPerScreen, align 4
  %247 = sub nsw i32 %245, %246
  store i32 %247, i32* @scrolled, align 4
  %248 = load i32, i32* @ProcPerScreen, align 4
  %249 = sub nsw i32 %248, 1
  store i32 %249, i32* @selection, align 4
  br label %250

250:                                              ; preds = %244, %234
  %251 = load i32, i32* @ProcessCount, align 4
  %252 = load i32, i32* @ProcPerScreen, align 4
  %253 = icmp sle i32 %251, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %250
  store i32 0, i32* @scrolled, align 4
  %255 = load i32, i32* @ProcessCount, align 4
  %256 = load i32, i32* @ProcPerScreen, align 4
  %257 = srem i32 %255, %256
  %258 = sub nsw i32 %257, 1
  store i32 %258, i32* @selection, align 4
  br label %259

259:                                              ; preds = %254, %250
  br label %286

260:                                              ; preds = %230
  %261 = load i64, i64* %5, align 8
  %262 = load i64, i64* @VK_HOME, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  store i32 0, i32* @selection, align 4
  store i32 0, i32* @scrolled, align 4
  br label %285

265:                                              ; preds = %260
  %266 = load i64, i64* %5, align 8
  %267 = load i64, i64* @VK_END, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %284

269:                                              ; preds = %265
  %270 = load i32, i32* @ProcPerScreen, align 4
  %271 = sub nsw i32 %270, 1
  store i32 %271, i32* @selection, align 4
  %272 = load i32, i32* @ProcessCount, align 4
  %273 = load i32, i32* @ProcPerScreen, align 4
  %274 = sub nsw i32 %272, %273
  store i32 %274, i32* @scrolled, align 4
  %275 = load i32, i32* @ProcessCount, align 4
  %276 = load i32, i32* @ProcPerScreen, align 4
  %277 = icmp sle i32 %275, %276
  br i1 %277, label %278, label %283

278:                                              ; preds = %269
  store i32 0, i32* @scrolled, align 4
  %279 = load i32, i32* @ProcessCount, align 4
  %280 = load i32, i32* @ProcPerScreen, align 4
  %281 = srem i32 %279, %280
  %282 = sub nsw i32 %281, 1
  store i32 %282, i32* @selection, align 4
  br label %283

283:                                              ; preds = %278, %269
  br label %284

284:                                              ; preds = %283, %265
  br label %285

285:                                              ; preds = %284, %264
  br label %286

286:                                              ; preds = %285, %259
  br label %287

287:                                              ; preds = %286, %229
  br label %288

288:                                              ; preds = %287, %213
  br label %289

289:                                              ; preds = %288, %179
  br label %290

290:                                              ; preds = %289, %158
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* @FALSE, align 4
  store i32 %292, i32* %2, align 4
  br label %293

293:                                              ; preds = %291, %26
  %294 = load i32, i32* %2, align 4
  ret i32 %294
}

declare dso_local i64 @GetKeyPressed(i32) #1

declare dso_local i64 @LoadString(i32, i32, i64*, i32) #1

declare dso_local i32 @WriteConsoleOutputCharacter(i32, i64*, i32, i32, i64, i32*) #1

declare dso_local i32 @_tcslen(i64*) #1

declare dso_local i32 @GetNumberOfConsoleInputEvents(i32, i32*) #1

declare dso_local i64 @OpenProcess(i32, i32, i32) #1

declare dso_local i32 @TerminateProcess(i64, i32) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @_stprintf(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

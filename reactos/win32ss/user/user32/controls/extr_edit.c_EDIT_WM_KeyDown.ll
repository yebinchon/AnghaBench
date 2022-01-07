; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_KeyDown.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_KeyDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32 }

@VK_MENU = common dso_local global i32 0, align 4
@VK_SHIFT = common dso_local global i32 0, align 4
@VK_CONTROL = common dso_local global i32 0, align 4
@WM_KEYDOWN = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@ES_READONLY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ES_WANTRETURN = common dso_local global i32 0, align 4
@DM_GETDEFID = common dso_local global i32 0, align 4
@DC_HASDEFID = common dso_local global i32 0, align 4
@WM_NEXTDLGCTL = common dso_local global i32 0, align 4
@WM_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32)* @EDIT_WM_KeyDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_WM_KeyDown(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @VK_MENU, align 4
  %11 = call i32 @GetKeyState(i32 %10)
  %12 = and i32 %11, 32768
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %326

15:                                               ; preds = %2
  %16 = load i32, i32* @VK_SHIFT, align 4
  %17 = call i32 @GetKeyState(i32 %16)
  %18 = and i32 %17, 32768
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @VK_CONTROL, align 4
  %20 = call i32 @GetKeyState(i32 %19)
  %21 = and i32 %20, 32768
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %324 [
    i32 137, label %23
    i32 128, label %23
    i32 134, label %34
    i32 140, label %61
    i32 130, label %69
    i32 136, label %96
    i32 139, label %101
    i32 132, label %106
    i32 133, label %123
    i32 141, label %140
    i32 135, label %209
    i32 131, label %231
    i32 138, label %287
    i32 129, label %305
  ]

23:                                               ; preds = %15, %15
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = load i32, i32* @WM_KEYDOWN, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @EDIT_CheckCombo(%struct.TYPE_20__* %24, i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 137
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %23
  br label %324

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %15, %33
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ES_MULTILINE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 128
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @EDIT_MoveUp_ML(%struct.TYPE_20__* %45, i32 %46)
  br label %60

48:                                               ; preds = %41, %34
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @EDIT_MoveWordBackward(%struct.TYPE_20__* %52, i32 %53)
  br label %59

55:                                               ; preds = %48
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @EDIT_MoveBackward(%struct.TYPE_20__* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %44
  br label %324

61:                                               ; preds = %15
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = load i32, i32* @WM_KEYDOWN, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @EDIT_CheckCombo(%struct.TYPE_20__* %62, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %324

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %15, %68
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ES_MULTILINE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, 140
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @EDIT_MoveDown_ML(%struct.TYPE_20__* %80, i32 %81)
  br label %95

83:                                               ; preds = %76, %69
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @EDIT_MoveWordForward(%struct.TYPE_20__* %87, i32 %88)
  br label %94

90:                                               ; preds = %83
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @EDIT_MoveForward(%struct.TYPE_20__* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %86
  br label %95

95:                                               ; preds = %94, %79
  br label %324

96:                                               ; preds = %15
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @EDIT_MoveHome(%struct.TYPE_20__* %97, i32 %98, i32 %99)
  br label %324

101:                                              ; preds = %15
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @EDIT_MoveEnd(%struct.TYPE_20__* %102, i32 %103, i32 %104)
  br label %324

106:                                              ; preds = %15
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @ES_MULTILINE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @EDIT_MovePageUp_ML(%struct.TYPE_20__* %114, i32 %115)
  br label %122

117:                                              ; preds = %106
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %119 = load i32, i32* @WM_KEYDOWN, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @EDIT_CheckCombo(%struct.TYPE_20__* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %117, %113
  br label %324

123:                                              ; preds = %15
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ES_MULTILINE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @EDIT_MovePageDown_ML(%struct.TYPE_20__* %131, i32 %132)
  br label %139

134:                                              ; preds = %123
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %136 = load i32, i32* @WM_KEYDOWN, align 4
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @EDIT_CheckCombo(%struct.TYPE_20__* %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %134, %130
  br label %324

140:                                              ; preds = %15
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ES_READONLY, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %208, label %147

147:                                              ; preds = %140
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %208, label %153

153:                                              ; preds = %150, %147
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %156, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %153
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %166 = call i32 @EDIT_WM_Cut(%struct.TYPE_20__* %165)
  br label %170

167:                                              ; preds = %161
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %169 = call i32 @EDIT_WM_Clear(%struct.TYPE_20__* %168)
  br label %170

170:                                              ; preds = %167, %164
  br label %207

171:                                              ; preds = %153
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %171
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %176 = load i32, i32* @FALSE, align 4
  %177 = call i32 @EDIT_EM_SetSel(%struct.TYPE_20__* %175, i32 -1, i32 0, i32 %176)
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %179 = load i32, i32* @TRUE, align 4
  %180 = call i32 @EDIT_MoveBackward(%struct.TYPE_20__* %178, i32 %179)
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %182 = call i32 @EDIT_WM_Clear(%struct.TYPE_20__* %181)
  br label %206

183:                                              ; preds = %171
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %183
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %188 = load i32, i32* @FALSE, align 4
  %189 = call i32 @EDIT_EM_SetSel(%struct.TYPE_20__* %187, i32 -1, i32 0, i32 %188)
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %191 = load i32, i32* @TRUE, align 4
  %192 = load i32, i32* @FALSE, align 4
  %193 = call i32 @EDIT_MoveEnd(%struct.TYPE_20__* %190, i32 %191, i32 %192)
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %195 = call i32 @EDIT_WM_Clear(%struct.TYPE_20__* %194)
  br label %205

196:                                              ; preds = %183
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %198 = load i32, i32* @FALSE, align 4
  %199 = call i32 @EDIT_EM_SetSel(%struct.TYPE_20__* %197, i32 -1, i32 0, i32 %198)
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %201 = load i32, i32* @TRUE, align 4
  %202 = call i32 @EDIT_MoveForward(%struct.TYPE_20__* %200, i32 %201)
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %204 = call i32 @EDIT_WM_Clear(%struct.TYPE_20__* %203)
  br label %205

205:                                              ; preds = %196, %186
  br label %206

206:                                              ; preds = %205, %174
  br label %207

207:                                              ; preds = %206, %170
  br label %208

208:                                              ; preds = %207, %150, %140
  br label %324

209:                                              ; preds = %15
  %210 = load i32, i32* %6, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %209
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @ES_READONLY, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %212
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %221 = call i32 @EDIT_WM_Paste(%struct.TYPE_20__* %220)
  br label %222

222:                                              ; preds = %219, %212
  br label %230

223:                                              ; preds = %209
  %224 = load i32, i32* %7, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %228 = call i32 @EDIT_WM_Copy(%struct.TYPE_20__* %227)
  br label %229

229:                                              ; preds = %226, %223
  br label %230

230:                                              ; preds = %229, %222
  br label %324

231:                                              ; preds = %15
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @ES_MULTILINE, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %231
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @ES_WANTRETURN, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %286, label %245

245:                                              ; preds = %238, %231
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %247 = call i32 @EDIT_IsInsideDialog(%struct.TYPE_20__* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %245
  br label %324

250:                                              ; preds = %245
  %251 = load i32, i32* %7, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %250
  br label %324

254:                                              ; preds = %250
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @DM_GETDEFID, align 4
  %259 = call i32 @SendMessageW(i32 %257, i32 %258, i32 0, i32 0)
  store i32 %259, i32* %8, align 4
  %260 = load i32, i32* %8, align 4
  %261 = call i32 @HIWORD(i32 %260)
  %262 = load i32, i32* @DC_HASDEFID, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %285

264:                                              ; preds = %254
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %8, align 4
  %269 = call i32 @LOWORD(i32 %268)
  %270 = call i32 @GetDlgItem(i32 %267, i32 %269)
  store i32 %270, i32* %9, align 4
  %271 = load i32, i32* %9, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %284

273:                                              ; preds = %264
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @WM_NEXTDLGCTL, align 4
  %278 = load i32, i32* %9, align 4
  %279 = load i32, i32* @TRUE, align 4
  %280 = call i32 @SendMessageW(i32 %276, i32 %277, i32 %278, i32 %279)
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* @WM_KEYDOWN, align 4
  %283 = call i32 @PostMessageW(i32 %281, i32 %282, i32 131, i32 0)
  br label %284

284:                                              ; preds = %273, %264
  br label %285

285:                                              ; preds = %284, %254
  br label %286

286:                                              ; preds = %285, %238
  br label %324

287:                                              ; preds = %15
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @ES_MULTILINE, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %304

294:                                              ; preds = %287
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %296 = call i32 @EDIT_IsInsideDialog(%struct.TYPE_20__* %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %294
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @WM_CLOSE, align 4
  %303 = call i32 @PostMessageW(i32 %301, i32 %302, i32 0, i32 0)
  br label %304

304:                                              ; preds = %298, %294, %287
  br label %324

305:                                              ; preds = %15
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @ES_MULTILINE, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %323

312:                                              ; preds = %305
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %314 = call i32 @EDIT_IsInsideDialog(%struct.TYPE_20__* %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %312
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @WM_NEXTDLGCTL, align 4
  %321 = load i32, i32* %6, align 4
  %322 = call i32 @SendMessageW(i32 %319, i32 %320, i32 %321, i32 0)
  br label %323

323:                                              ; preds = %316, %312, %305
  br label %324

324:                                              ; preds = %15, %323, %304, %286, %253, %249, %230, %208, %139, %122, %101, %96, %95, %67, %60, %32
  %325 = load i32, i32* @TRUE, align 4
  store i32 %325, i32* %3, align 4
  br label %326

326:                                              ; preds = %324, %14
  %327 = load i32, i32* %3, align 4
  ret i32 %327
}

declare dso_local i32 @GetKeyState(i32) #1

declare dso_local i32 @EDIT_CheckCombo(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @EDIT_MoveUp_ML(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @EDIT_MoveWordBackward(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @EDIT_MoveBackward(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @EDIT_MoveDown_ML(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @EDIT_MoveWordForward(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @EDIT_MoveForward(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @EDIT_MoveHome(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @EDIT_MoveEnd(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @EDIT_MovePageUp_ML(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @EDIT_MovePageDown_ML(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @EDIT_WM_Cut(%struct.TYPE_20__*) #1

declare dso_local i32 @EDIT_WM_Clear(%struct.TYPE_20__*) #1

declare dso_local i32 @EDIT_EM_SetSel(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @EDIT_WM_Paste(%struct.TYPE_20__*) #1

declare dso_local i32 @EDIT_WM_Copy(%struct.TYPE_20__*) #1

declare dso_local i32 @EDIT_IsInsideDialog(%struct.TYPE_20__*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @PostMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

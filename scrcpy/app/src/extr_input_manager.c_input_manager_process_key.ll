; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_input_manager.c_input_manager_process_key.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_input_manager.c_input_manager_process_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_manager = type { %struct.TYPE_7__*, i32, %struct.controller* }
%struct.TYPE_7__ = type { %struct.fps_counter* }
%struct.fps_counter = type { i32 }
%struct.controller = type { i32 }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.control_msg = type { i32 }

@KMOD_LCTRL = common dso_local global i32 0, align 4
@KMOD_RCTRL = common dso_local global i32 0, align 4
@KMOD_LALT = common dso_local global i32 0, align 4
@KMOD_RALT = common dso_local global i32 0, align 4
@KMOD_LGUI = common dso_local global i32 0, align 4
@KMOD_RGUI = common dso_local global i32 0, align 4
@SDL_KEYDOWN = common dso_local global i64 0, align 8
@ACTION_DOWN = common dso_local global i32 0, align 4
@ACTION_UP = common dso_local global i32 0, align 4
@KMOD_LSHIFT = common dso_local global i32 0, align 4
@KMOD_RSHIFT = common dso_local global i32 0, align 4
@SCREEN_POWER_MODE_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Could not request 'inject keycode'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_manager_process_key(%struct.input_manager* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.input_manager*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.controller*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.fps_counter*, align 8
  %18 = alloca %struct.control_msg, align 4
  store %struct.input_manager* %0, %struct.input_manager** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @KMOD_LCTRL, align 4
  %24 = load i32, i32* @KMOD_RCTRL, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @KMOD_LALT, align 4
  %32 = load i32, i32* @KMOD_RALT, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @KMOD_LGUI, align 4
  %40 = load i32, i32* @KMOD_RGUI, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %3
  br label %383

46:                                               ; preds = %3
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %383

51:                                               ; preds = %46
  %52 = load %struct.input_manager*, %struct.input_manager** %4, align 8
  %53 = getelementptr inbounds %struct.input_manager, %struct.input_manager* %52, i32 0, i32 2
  %54 = load %struct.controller*, %struct.controller** %53, align 8
  store %struct.controller* %54, %struct.controller** %11, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %368

60:                                               ; preds = %57, %51
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %12, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SDL_KEYDOWN, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = load i32, i32* @ACTION_DOWN, align 4
  br label %77

75:                                               ; preds = %60
  %76 = load i32, i32* @ACTION_UP, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %14, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %15, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @KMOD_LSHIFT, align 4
  %87 = load i32, i32* @KMOD_RSHIFT, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %12, align 4
  switch i32 %90, label %367 [
    i32 136, label %91
    i32 140, label %111
    i32 143, label %111
    i32 130, label %128
    i32 134, label %145
    i32 131, label %165
    i32 132, label %182
    i32 142, label %199
    i32 141, label %213
    i32 139, label %227
    i32 129, label %246
    i32 138, label %269
    i32 128, label %287
    i32 137, label %305
    i32 135, label %323
    i32 133, label %344
  ]

91:                                               ; preds = %77
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = load %struct.controller*, %struct.controller** %11, align 8
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @action_home(%struct.controller* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %103, %100, %97, %94, %91
  br label %383

111:                                              ; preds = %77, %77
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %111
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = load %struct.controller*, %struct.controller** %11, align 8
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @action_back(%struct.controller* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %120, %117, %114, %111
  br label %383

128:                                              ; preds = %77
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %128
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %131
  %135 = load i32, i32* %16, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %15, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = load %struct.controller*, %struct.controller** %11, align 8
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @action_app_switch(%struct.controller* %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %137, %134, %131, %128
  br label %383

145:                                              ; preds = %77
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %145
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %148
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %164, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %16, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = load %struct.controller*, %struct.controller** %11, align 8
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @action_menu(%struct.controller* %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %157, %154, %151, %148, %145
  br label %383

165:                                              ; preds = %77
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %165
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  %172 = load i32, i32* %16, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %15, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %174
  %178 = load %struct.controller*, %struct.controller** %11, align 8
  %179 = load i32, i32* %14, align 4
  %180 = call i32 @action_power(%struct.controller* %178, i32 %179)
  br label %181

181:                                              ; preds = %177, %174, %171, %168, %165
  br label %383

182:                                              ; preds = %77
  %183 = load i32, i32* %6, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %198

185:                                              ; preds = %182
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %185
  %189 = load i32, i32* %16, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %188
  %192 = load i32, i32* %13, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load %struct.controller*, %struct.controller** %11, align 8
  %196 = load i32, i32* @SCREEN_POWER_MODE_OFF, align 4
  %197 = call i32 @set_screen_power_mode(%struct.controller* %195, i32 %196)
  br label %198

198:                                              ; preds = %194, %191, %188, %185, %182
  br label %383

199:                                              ; preds = %77
  %200 = load i32, i32* %6, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %199
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load i32, i32* %16, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %205
  %209 = load %struct.controller*, %struct.controller** %11, align 8
  %210 = load i32, i32* %14, align 4
  %211 = call i32 @action_volume_down(%struct.controller* %209, i32 %210)
  br label %212

212:                                              ; preds = %208, %205, %202, %199
  br label %383

213:                                              ; preds = %77
  %214 = load i32, i32* %6, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %213
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %216
  %220 = load i32, i32* %16, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %219
  %223 = load %struct.controller*, %struct.controller** %11, align 8
  %224 = load i32, i32* %14, align 4
  %225 = call i32 @action_volume_up(%struct.controller* %223, i32 %224)
  br label %226

226:                                              ; preds = %222, %219, %216, %213
  br label %383

227:                                              ; preds = %77
  %228 = load i32, i32* %6, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %245

230:                                              ; preds = %227
  %231 = load i32, i32* %10, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %245

233:                                              ; preds = %230
  %234 = load i32, i32* %16, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %245, label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %15, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %245, label %239

239:                                              ; preds = %236
  %240 = load i32, i32* %13, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load %struct.controller*, %struct.controller** %11, align 8
  %244 = call i32 @request_device_clipboard(%struct.controller* %243)
  br label %245

245:                                              ; preds = %242, %239, %236, %233, %230, %227
  br label %383

246:                                              ; preds = %77
  %247 = load i32, i32* %6, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %268

249:                                              ; preds = %246
  %250 = load i32, i32* %10, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %268

252:                                              ; preds = %249
  %253 = load i32, i32* %15, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %268, label %255

255:                                              ; preds = %252
  %256 = load i32, i32* %13, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %268

258:                                              ; preds = %255
  %259 = load i32, i32* %16, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load %struct.controller*, %struct.controller** %11, align 8
  %263 = call i32 @set_device_clipboard(%struct.controller* %262)
  br label %267

264:                                              ; preds = %258
  %265 = load %struct.controller*, %struct.controller** %11, align 8
  %266 = call i32 @clipboard_paste(%struct.controller* %265)
  br label %267

267:                                              ; preds = %264, %261
  br label %268

268:                                              ; preds = %267, %255, %252, %249, %246
  br label %383

269:                                              ; preds = %77
  %270 = load i32, i32* %16, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %286, label %272

272:                                              ; preds = %269
  %273 = load i32, i32* %10, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %286

275:                                              ; preds = %272
  %276 = load i32, i32* %15, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %286, label %278

278:                                              ; preds = %275
  %279 = load i32, i32* %13, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %278
  %282 = load %struct.input_manager*, %struct.input_manager** %4, align 8
  %283 = getelementptr inbounds %struct.input_manager, %struct.input_manager* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @screen_switch_fullscreen(i32 %284)
  br label %286

286:                                              ; preds = %281, %278, %275, %272, %269
  br label %383

287:                                              ; preds = %77
  %288 = load i32, i32* %16, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %304, label %290

290:                                              ; preds = %287
  %291 = load i32, i32* %10, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %290
  %294 = load i32, i32* %15, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %304, label %296

296:                                              ; preds = %293
  %297 = load i32, i32* %13, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %296
  %300 = load %struct.input_manager*, %struct.input_manager** %4, align 8
  %301 = getelementptr inbounds %struct.input_manager, %struct.input_manager* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @screen_resize_to_fit(i32 %302)
  br label %304

304:                                              ; preds = %299, %296, %293, %290, %287
  br label %383

305:                                              ; preds = %77
  %306 = load i32, i32* %16, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %322, label %308

308:                                              ; preds = %305
  %309 = load i32, i32* %10, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %322

311:                                              ; preds = %308
  %312 = load i32, i32* %15, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %322, label %314

314:                                              ; preds = %311
  %315 = load i32, i32* %13, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %314
  %318 = load %struct.input_manager*, %struct.input_manager** %4, align 8
  %319 = getelementptr inbounds %struct.input_manager, %struct.input_manager* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @screen_resize_to_pixel_perfect(i32 %320)
  br label %322

322:                                              ; preds = %317, %314, %311, %308, %305
  br label %383

323:                                              ; preds = %77
  %324 = load i32, i32* %16, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %343, label %326

326:                                              ; preds = %323
  %327 = load i32, i32* %10, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %343

329:                                              ; preds = %326
  %330 = load i32, i32* %15, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %343, label %332

332:                                              ; preds = %329
  %333 = load i32, i32* %13, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %343

335:                                              ; preds = %332
  %336 = load %struct.input_manager*, %struct.input_manager** %4, align 8
  %337 = getelementptr inbounds %struct.input_manager, %struct.input_manager* %336, i32 0, i32 0
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 0
  %340 = load %struct.fps_counter*, %struct.fps_counter** %339, align 8
  store %struct.fps_counter* %340, %struct.fps_counter** %17, align 8
  %341 = load %struct.fps_counter*, %struct.fps_counter** %17, align 8
  %342 = call i32 @switch_fps_counter_state(%struct.fps_counter* %341)
  br label %343

343:                                              ; preds = %335, %332, %329, %326, %323
  br label %383

344:                                              ; preds = %77
  %345 = load i32, i32* %6, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %366

347:                                              ; preds = %344
  %348 = load i32, i32* %10, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %366

350:                                              ; preds = %347
  %351 = load i32, i32* %15, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %366, label %353

353:                                              ; preds = %350
  %354 = load i32, i32* %13, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %366

356:                                              ; preds = %353
  %357 = load i32, i32* %16, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %356
  %360 = load %struct.controller*, %struct.controller** %11, align 8
  %361 = call i32 @collapse_notification_panel(%struct.controller* %360)
  br label %365

362:                                              ; preds = %356
  %363 = load %struct.controller*, %struct.controller** %11, align 8
  %364 = call i32 @expand_notification_panel(%struct.controller* %363)
  br label %365

365:                                              ; preds = %362, %359
  br label %366

366:                                              ; preds = %365, %353, %350, %347, %344
  br label %383

367:                                              ; preds = %77
  br label %383

368:                                              ; preds = %57
  %369 = load i32, i32* %6, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %372, label %371

371:                                              ; preds = %368
  br label %383

372:                                              ; preds = %368
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %374 = call i64 @convert_input_key(%struct.TYPE_8__* %373, %struct.control_msg* %18)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %383

376:                                              ; preds = %372
  %377 = load %struct.controller*, %struct.controller** %11, align 8
  %378 = call i32 @controller_push_msg(%struct.controller* %377, %struct.control_msg* %18)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %382, label %380

380:                                              ; preds = %376
  %381 = call i32 @LOGW(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %382

382:                                              ; preds = %380, %376
  br label %383

383:                                              ; preds = %45, %50, %110, %127, %144, %164, %181, %198, %212, %226, %245, %268, %286, %304, %322, %343, %366, %367, %371, %382, %372
  ret void
}

declare dso_local i32 @action_home(%struct.controller*, i32) #1

declare dso_local i32 @action_back(%struct.controller*, i32) #1

declare dso_local i32 @action_app_switch(%struct.controller*, i32) #1

declare dso_local i32 @action_menu(%struct.controller*, i32) #1

declare dso_local i32 @action_power(%struct.controller*, i32) #1

declare dso_local i32 @set_screen_power_mode(%struct.controller*, i32) #1

declare dso_local i32 @action_volume_down(%struct.controller*, i32) #1

declare dso_local i32 @action_volume_up(%struct.controller*, i32) #1

declare dso_local i32 @request_device_clipboard(%struct.controller*) #1

declare dso_local i32 @set_device_clipboard(%struct.controller*) #1

declare dso_local i32 @clipboard_paste(%struct.controller*) #1

declare dso_local i32 @screen_switch_fullscreen(i32) #1

declare dso_local i32 @screen_resize_to_fit(i32) #1

declare dso_local i32 @screen_resize_to_pixel_perfect(i32) #1

declare dso_local i32 @switch_fps_counter_state(%struct.fps_counter*) #1

declare dso_local i32 @collapse_notification_panel(%struct.controller*) #1

declare dso_local i32 @expand_notification_panel(%struct.controller*) #1

declare dso_local i64 @convert_input_key(%struct.TYPE_8__*, %struct.control_msg*) #1

declare dso_local i32 @controller_push_msg(%struct.controller*, %struct.control_msg*) #1

declare dso_local i32 @LOGW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

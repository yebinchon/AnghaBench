; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_....codeccc.h_cc_Extract.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_....codeccc.h_cc_Extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i32 }

@CC_PAYLOAD_NONE = common dso_local global i64 0, align 8
@CC_PAYLOAD_RAW = common dso_local global i32 0, align 4
@CC_MAX_DATA_SIZE = common dso_local global i64 0, align 8
@CC_PAYLOAD_GA94 = common dso_local global i32 0, align 4
@CC_PAYLOAD_DVD = common dso_local global i32 0, align 4
@CC_PAYLOAD_REPLAYTV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, i32*, i32)* @cc_Extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_Extract(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca [2 x i32], align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CC_PAYLOAD_NONE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %5
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %53, 50
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %381

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %39, %5
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 0, i32* %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @CC_PAYLOAD_RAW, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %99

67:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %93, %67
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 2
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %68
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 3
  %78 = load i64, i64* @CC_MAX_DATA_SIZE, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %96

81:                                               ; preds = %73
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32* %85, i32** %12, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = call i32 @cc_AppendData(%struct.TYPE_4__* %86, i32 %89, i32* %91)
  br label %93

93:                                               ; preds = %81
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 3
  store i32 %95, i32* %11, align 4
  br label %68

96:                                               ; preds = %80, %68
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  store i32 1, i32* %98, align 8
  br label %381

99:                                               ; preds = %57
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @CC_PAYLOAD_GA94, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %169

103:                                              ; preds = %99
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32* %105, i32** %13, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 31
  store i32 %109, i32* %14, align 4
  %110 = load i32*, i32** %13, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 64
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %103
  br label %381

116:                                              ; preds = %103
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %14, align 4
  %119 = mul nsw i32 %118, 3
  %120 = add nsw i32 2, %119
  %121 = add nsw i32 %120, 1
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %381

124:                                              ; preds = %116
  %125 = load i32, i32* %14, align 4
  %126 = icmp sle i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %381

128:                                              ; preds = %124
  %129 = load i32*, i32** %13, align 8
  %130 = load i32, i32* %14, align 4
  %131 = mul nsw i32 %130, 3
  %132 = add nsw i32 2, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 255
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %381

138:                                              ; preds = %128
  %139 = load i32*, i32** %13, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  store i32* %140, i32** %13, align 8
  store i32 0, i32* %15, align 4
  br label %141

141:                                              ; preds = %161, %138
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %166

145:                                              ; preds = %141
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 3
  %150 = load i64, i64* @CC_MAX_DATA_SIZE, align 8
  %151 = icmp sgt i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %166

153:                                              ; preds = %145
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %155 = load i32*, i32** %13, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %13, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = call i32 @cc_AppendData(%struct.TYPE_4__* %154, i32 %157, i32* %159)
  br label %161

161:                                              ; preds = %153
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %15, align 4
  %164 = load i32*, i32** %13, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 3
  store i32* %165, i32** %13, align 8
  br label %141

166:                                              ; preds = %152, %141
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 3
  store i32 1, i32* %168, align 8
  br label %380

169:                                              ; preds = %99
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @CC_PAYLOAD_DVD, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %263

173:                                              ; preds = %169
  %174 = load i32*, i32** %9, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 4
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, 1
  store i32 %177, i32* %16, align 4
  %178 = load i32*, i32** %9, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 4
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, 128
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 0, i32 1
  store i32 %184, i32* %17, align 4
  %185 = load i32*, i32** %9, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 4
  %187 = load i32, i32* %186, align 4
  %188 = ashr i32 %187, 1
  %189 = and i32 %188, 15
  store i32 %189, i32* %18, align 4
  %190 = load i32*, i32** %9, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 5
  store i32* %191, i32** %19, align 8
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %18, align 4
  %194 = mul nsw i32 6, %193
  %195 = add nsw i32 5, %194
  %196 = load i32, i32* %16, align 4
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 3, i32 0
  %200 = sub nsw i32 %195, %199
  %201 = icmp slt i32 %192, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %173
  br label %381

203:                                              ; preds = %173
  store i32 0, i32* %20, align 4
  br label %204

204:                                              ; preds = %257, %203
  %205 = load i32, i32* %20, align 4
  %206 = load i32, i32* %18, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %260

208:                                              ; preds = %204
  store i32 0, i32* %21, align 4
  br label %209

209:                                              ; preds = %251, %208
  %210 = load i32, i32* %21, align 4
  %211 = icmp slt i32 %210, 2
  br i1 %211, label %212, label %256

212:                                              ; preds = %209
  %213 = load i32, i32* %21, align 4
  %214 = load i32, i32* %17, align 4
  %215 = icmp eq i32 %213, %214
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i32 0, i32 1
  store i32 %217, i32* %22, align 4
  %218 = load i32, i32* %16, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %212
  %221 = load i32, i32* %20, align 4
  %222 = load i32, i32* %18, align 4
  %223 = sub nsw i32 %222, 1
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load i32, i32* %21, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  br label %256

229:                                              ; preds = %225, %220, %212
  %230 = load i32*, i32** %19, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, 254
  %234 = icmp ne i32 %233, 254
  br i1 %234, label %235, label %236

235:                                              ; preds = %229
  br label %251

236:                                              ; preds = %229
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %239, 3
  %241 = load i64, i64* @CC_MAX_DATA_SIZE, align 8
  %242 = icmp sgt i64 %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %251

244:                                              ; preds = %236
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %246 = load i32, i32* %22, align 4
  %247 = call i32 @CC_PKT_BYTE0(i32 %246)
  %248 = load i32*, i32** %19, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 1
  %250 = call i32 @cc_AppendData(%struct.TYPE_4__* %245, i32 %247, i32* %249)
  br label %251

251:                                              ; preds = %244, %243, %235
  %252 = load i32, i32* %21, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %21, align 4
  %254 = load i32*, i32** %19, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 3
  store i32* %255, i32** %19, align 8
  br label %209

256:                                              ; preds = %228, %209
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %20, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %20, align 4
  br label %204

260:                                              ; preds = %204
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 3
  store i32 0, i32* %262, align 8
  br label %379

263:                                              ; preds = %169
  %264 = load i32, i32* %7, align 4
  %265 = load i32, i32* @CC_PAYLOAD_REPLAYTV, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %303

267:                                              ; preds = %263
  %268 = load i32*, i32** %9, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 0
  store i32* %269, i32** %23, align 8
  %270 = load i32, i32* %10, align 4
  %271 = ashr i32 %270, 2
  store i32 %271, i32* %24, align 4
  br label %272

272:                                              ; preds = %295, %267
  %273 = load i32, i32* %24, align 4
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %275, label %300

275:                                              ; preds = %272
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %278, 3
  %280 = load i64, i64* @CC_MAX_DATA_SIZE, align 8
  %281 = icmp sgt i64 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %275
  br label %381

283:                                              ; preds = %275
  %284 = load i32*, i32** %23, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, 2
  %288 = ashr i32 %287, 1
  store i32 %288, i32* %25, align 4
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %290 = load i32, i32* %25, align 4
  %291 = call i32 @CC_PKT_BYTE0(i32 %290)
  %292 = load i32*, i32** %23, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 2
  %294 = call i32 @cc_AppendData(%struct.TYPE_4__* %289, i32 %291, i32* %293)
  br label %295

295:                                              ; preds = %283
  %296 = load i32, i32* %24, align 4
  %297 = add nsw i32 %296, -1
  store i32 %297, i32* %24, align 4
  %298 = load i32*, i32** %23, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 4
  store i32* %299, i32** %23, align 8
  br label %272

300:                                              ; preds = %272
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 3
  store i32 0, i32* %302, align 8
  br label %378

303:                                              ; preds = %263
  %304 = load i32*, i32** %9, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 2
  %306 = load i32, i32* %10, align 4
  %307 = sub nsw i32 %306, 2
  %308 = call i32 @bs_init(i32* %26, i32* %305, i32 %307)
  %309 = call i32 @bs_read(i32* %26, i32 5)
  store i32 %309, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %310

310:                                              ; preds = %372, %303
  %311 = load i32, i32* %28, align 4
  %312 = load i32, i32* %27, align 4
  %313 = icmp slt i32 %311, %312
  br i1 %313, label %314, label %375

314:                                              ; preds = %310
  %315 = call i32 @bs_skip(i32* %26, i32 2)
  %316 = call i32 @bs_read(i32* %26, i32 2)
  store i32 %316, i32* %29, align 4
  %317 = call i32 @bs_skip(i32* %26, i32 5)
  store i32 0, i32* %31, align 4
  br label %318

318:                                              ; preds = %341, %314
  %319 = load i32, i32* %31, align 4
  %320 = icmp slt i32 %319, 2
  br i1 %320, label %321, label %344

321:                                              ; preds = %318
  %322 = load i32, i32* %31, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 %323
  store i32 0, i32* %324, align 4
  store i32 0, i32* %32, align 4
  br label %325

325:                                              ; preds = %337, %321
  %326 = load i32, i32* %32, align 4
  %327 = icmp slt i32 %326, 8
  br i1 %327, label %328, label %340

328:                                              ; preds = %325
  %329 = call i32 @bs_read(i32* %26, i32 1)
  %330 = load i32, i32* %32, align 4
  %331 = shl i32 %329, %330
  %332 = load i32, i32* %31, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %335, %331
  store i32 %336, i32* %334, align 4
  br label %337

337:                                              ; preds = %328
  %338 = load i32, i32* %32, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %32, align 4
  br label %325

340:                                              ; preds = %325
  br label %341

341:                                              ; preds = %340
  %342 = load i32, i32* %31, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %31, align 4
  br label %318

344:                                              ; preds = %318
  %345 = call i32 @bs_skip(i32* %26, i32 1)
  %346 = load i32, i32* %29, align 4
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %344
  br label %372

349:                                              ; preds = %344
  %350 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 2
  %352 = load i64, i64* %351, align 8
  %353 = add nsw i64 %352, 6
  %354 = load i64, i64* @CC_MAX_DATA_SIZE, align 8
  %355 = icmp sgt i64 %353, %354
  br i1 %355, label %356, label %357

356:                                              ; preds = %349
  br label %372

357:                                              ; preds = %349
  %358 = load i32, i32* %29, align 4
  %359 = sub nsw i32 %358, 1
  %360 = and i32 %359, 1
  store i32 %360, i32* %33, align 4
  %361 = load i32, i32* %8, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %366, label %363

363:                                              ; preds = %357
  %364 = load i32, i32* %33, align 4
  %365 = xor i32 %364, 1
  store i32 %365, i32* %33, align 4
  br label %366

366:                                              ; preds = %363, %357
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %368 = load i32, i32* %33, align 4
  %369 = call i32 @CC_PKT_BYTE0(i32 %368)
  %370 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 0
  %371 = call i32 @cc_AppendData(%struct.TYPE_4__* %367, i32 %369, i32* %370)
  br label %372

372:                                              ; preds = %366, %356, %348
  %373 = load i32, i32* %28, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %28, align 4
  br label %310

375:                                              ; preds = %310
  %376 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 3
  store i32 1, i32* %377, align 8
  br label %378

378:                                              ; preds = %375, %300
  br label %379

379:                                              ; preds = %378, %260
  br label %380

380:                                              ; preds = %379, %166
  br label %381

381:                                              ; preds = %55, %115, %123, %127, %137, %202, %282, %380, %96
  ret void
}

declare dso_local i32 @cc_AppendData(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @CC_PKT_BYTE0(i32) #1

declare dso_local i32 @bs_init(i32*, i32*, i32) #1

declare dso_local i32 @bs_read(i32*, i32) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

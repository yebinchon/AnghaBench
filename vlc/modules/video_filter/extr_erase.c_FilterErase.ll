; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_erase.c_FilterErase.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_erase.c_FilterErase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_13__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32* }
%struct.TYPE_13__ = type { i64 }

@A_PLANE = common dso_local global i64 0, align 8
@VLC_CODEC_I422 = common dso_local global i64 0, align 8
@VLC_CODEC_J422 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__*)* @FilterErase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FilterErase(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %7, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = load i64, i64* @A_PLANE, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = load i64, i64* @A_PLANE, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %477, %3
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %480

65:                                               ; preds = %59
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = shl i32 %74, 1
  store i32 %75, i32* %13, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %14, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %15, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  store i32* %96, i32** %16, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %17, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %20, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %65
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @VLC_CODEC_I422, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %121, label %114

114:                                              ; preds = %107
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @VLC_CODEC_J422, align 8
  %120 = icmp eq i64 %118, %119
  br label %121

121:                                              ; preds = %114, %107
  %122 = phi i1 [ true, %107 ], [ %120, %114 ]
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %121, %65
  %125 = phi i1 [ false, %65 ], [ %123, %121 ]
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %21, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i32, i32* %20, align 4
  %131 = ashr i32 %130, 1
  store i32 %131, i32* %20, align 4
  %132 = load i32, i32* %17, align 4
  %133 = ashr i32 %132, 1
  store i32 %133, i32* %17, align 4
  br label %134

134:                                              ; preds = %129, %124
  %135 = load i32, i32* %21, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load i32, i32* %19, align 4
  %139 = ashr i32 %138, 1
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %18, align 4
  %141 = ashr i32 %140, 1
  store i32 %141, i32* %18, align 4
  br label %142

142:                                              ; preds = %137, %134
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %18, align 4
  %145 = sub nsw i32 %143, %144
  %146 = load i32, i32* %19, align 4
  %147 = call i32 @__MIN(i32 %145, i32 %146)
  store i32 %147, i32* %19, align 4
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %17, align 4
  %150 = sub nsw i32 %148, %149
  %151 = load i32, i32* %20, align 4
  %152 = call i32 @__MIN(i32 %150, i32 %151)
  store i32 %152, i32* %20, align 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i64 %157
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %160, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i64 %163
  %165 = call i32 @plane_CopyPixels(%struct.TYPE_18__* %158, %struct.TYPE_18__* %164)
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* %12, align 4
  %176 = mul nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = load i32, i32* %17, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32* %181, i32** %22, align 8
  store i32 0, i32* %23, align 4
  br label %182

182:                                              ; preds = %336, %142
  %183 = load i32, i32* %23, align 4
  %184 = load i32, i32* %19, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %347

186:                                              ; preds = %182
  store i32 0, i32* %25, align 4
  store i32 -1, i32* %26, align 4
  store i32 -2, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = load i32*, i32** %22, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 -1
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %24, align 4
  br label %208

193:                                              ; preds = %186
  %194 = load i32, i32* %23, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %18, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %196, %193
  %200 = load i32*, i32** %22, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = sub i64 0, %202
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %24, align 4
  br label %207

206:                                              ; preds = %196
  store i32 255, i32* %24, align 4
  br label %207

207:                                              ; preds = %206, %199
  br label %208

208:                                              ; preds = %207, %189
  store i32 0, i32* %29, align 4
  br label %209

209:                                              ; preds = %332, %208
  %210 = load i32, i32* %29, align 4
  %211 = load i32, i32* %20, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %335

213:                                              ; preds = %209
  %214 = load i32*, i32** %16, align 8
  %215 = load i32, i32* %11, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = load i32, i32* %29, align 4
  %219 = shl i32 %218, 1
  br label %222

220:                                              ; preds = %213
  %221 = load i32, i32* %29, align 4
  br label %222

222:                                              ; preds = %220, %217
  %223 = phi i32 [ %219, %217 ], [ %221, %220 ]
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %214, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = icmp sgt i32 %226, 127
  br i1 %227, label %228, label %324

228:                                              ; preds = %222
  %229 = load i32, i32* %27, align 4
  %230 = load i32, i32* %26, align 4
  %231 = icmp sle i32 %229, %230
  br i1 %231, label %232, label %310

232:                                              ; preds = %228
  %233 = load i32, i32* %29, align 4
  store i32 %233, i32* %30, align 4
  br label %234

234:                                              ; preds = %261, %232
  %235 = load i32, i32* %30, align 4
  %236 = load i32, i32* %20, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %264

238:                                              ; preds = %234
  %239 = load i32*, i32** %16, align 8
  %240 = load i32, i32* %11, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = load i32, i32* %30, align 4
  %244 = shl i32 %243, 1
  br label %247

245:                                              ; preds = %238
  %246 = load i32, i32* %30, align 4
  br label %247

247:                                              ; preds = %245, %242
  %248 = phi i32 [ %244, %242 ], [ %246, %245 ]
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %239, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = icmp sle i32 %251, 127
  br i1 %252, label %253, label %260

253:                                              ; preds = %247
  %254 = load i32, i32* %30, align 4
  store i32 %254, i32* %27, align 4
  %255 = load i32*, i32** %22, align 8
  %256 = load i32, i32* %30, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  store i32 %259, i32* %25, align 4
  br label %264

260:                                              ; preds = %247
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %30, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %30, align 4
  br label %234

264:                                              ; preds = %253, %234
  %265 = load i32, i32* %27, align 4
  %266 = load i32, i32* %26, align 4
  %267 = icmp sle i32 %265, %266
  br i1 %267, label %268, label %290

268:                                              ; preds = %264
  %269 = load i32, i32* %30, align 4
  %270 = load i32, i32* %29, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %268
  %273 = load i32, i32* %30, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %30, align 4
  br label %275

275:                                              ; preds = %272, %268
  %276 = load i32, i32* %30, align 4
  %277 = load i32, i32* %14, align 4
  %278 = icmp slt i32 %276, %277
  br i1 %278, label %279, label %286

279:                                              ; preds = %275
  %280 = load i32, i32* %30, align 4
  store i32 %280, i32* %27, align 4
  %281 = load i32*, i32** %22, align 8
  %282 = load i32, i32* %30, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  store i32 %285, i32* %25, align 4
  br label %289

286:                                              ; preds = %275
  %287 = load i32, i32* %30, align 4
  store i32 %287, i32* %27, align 4
  %288 = load i32, i32* %24, align 4
  store i32 %288, i32* %25, align 4
  br label %289

289:                                              ; preds = %286, %279
  br label %290

290:                                              ; preds = %289, %264
  %291 = load i32, i32* %17, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %301, label %293

293:                                              ; preds = %290
  %294 = load i32, i32* %23, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %301, label %296

296:                                              ; preds = %293
  %297 = load i32, i32* %18, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %301, label %299

299:                                              ; preds = %296
  %300 = load i32, i32* %25, align 4
  store i32 %300, i32* %24, align 4
  br label %301

301:                                              ; preds = %299, %296, %293, %290
  %302 = load i32, i32* %25, align 4
  %303 = load i32, i32* %24, align 4
  %304 = sub nsw i32 %302, %303
  %305 = shl i32 %304, 16
  %306 = load i32, i32* %27, align 4
  %307 = load i32, i32* %26, align 4
  %308 = sub nsw i32 %306, %307
  %309 = sdiv i32 %305, %308
  store i32 %309, i32* %28, align 4
  br label %310

310:                                              ; preds = %301, %228
  %311 = load i32, i32* %24, align 4
  %312 = load i32, i32* %29, align 4
  %313 = load i32, i32* %26, align 4
  %314 = sub nsw i32 %312, %313
  %315 = load i32, i32* %28, align 4
  %316 = mul nsw i32 %314, %315
  %317 = add nsw i32 %316, 65536
  %318 = ashr i32 %317, 16
  %319 = add nsw i32 %311, %318
  %320 = load i32*, i32** %22, align 8
  %321 = load i32, i32* %29, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  store i32 %319, i32* %323, align 4
  br label %331

324:                                              ; preds = %222
  %325 = load i32*, i32** %22, align 8
  %326 = load i32, i32* %29, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %24, align 4
  %330 = load i32, i32* %29, align 4
  store i32 %330, i32* %26, align 4
  br label %331

331:                                              ; preds = %324, %310
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %29, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %29, align 4
  br label %209

335:                                              ; preds = %209
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %23, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %23, align 4
  %339 = load i32, i32* %8, align 4
  %340 = load i32*, i32** %16, align 8
  %341 = sext i32 %339 to i64
  %342 = getelementptr inbounds i32, i32* %340, i64 %341
  store i32* %342, i32** %16, align 8
  %343 = load i32, i32* %12, align 4
  %344 = load i32*, i32** %22, align 8
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds i32, i32* %344, i64 %345
  store i32* %346, i32** %22, align 8
  br label %182

347:                                              ; preds = %182
  %348 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 2
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  store i32* %352, i32** %16, align 8
  %353 = load i32, i32* %21, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %347
  %356 = load i32, i32* %10, align 4
  %357 = ashr i32 %356, 1
  br label %360

358:                                              ; preds = %347
  %359 = load i32, i32* %10, align 4
  br label %360

360:                                              ; preds = %358, %355
  %361 = phi i32 [ %357, %355 ], [ %359, %358 ]
  store i32 %361, i32* %19, align 4
  %362 = load i32, i32* %15, align 4
  %363 = load i32, i32* %18, align 4
  %364 = sub nsw i32 %362, %363
  %365 = sub nsw i32 %364, 2
  %366 = load i32, i32* %19, align 4
  %367 = call i32 @__MIN(i32 %365, i32 %366)
  store i32 %367, i32* %19, align 4
  %368 = load i32, i32* %18, align 4
  %369 = call i32 @__MAX(i32 %368, i32 2)
  store i32 %369, i32* %31, align 4
  %370 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_18__*, %struct.TYPE_18__** %371, align 8
  %373 = load i32, i32* %11, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %375, i32 0, i32 3
  %377 = load i32*, i32** %376, align 8
  %378 = load i32, i32* %18, align 4
  %379 = load i32, i32* %31, align 4
  %380 = add nsw i32 %378, %379
  %381 = load i32, i32* %12, align 4
  %382 = mul nsw i32 %380, %381
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %377, i64 %383
  %385 = load i32, i32* %17, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  store i32* %387, i32** %22, align 8
  br label %388

388:                                              ; preds = %465, %360
  %389 = load i32, i32* %31, align 4
  %390 = load i32, i32* %19, align 4
  %391 = icmp slt i32 %389, %390
  br i1 %391, label %392, label %476

392:                                              ; preds = %388
  store i32 0, i32* %32, align 4
  br label %393

393:                                              ; preds = %461, %392
  %394 = load i32, i32* %32, align 4
  %395 = load i32, i32* %20, align 4
  %396 = icmp slt i32 %394, %395
  br i1 %396, label %397, label %464

397:                                              ; preds = %393
  %398 = load i32*, i32** %16, align 8
  %399 = load i32, i32* %11, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %397
  %402 = load i32, i32* %32, align 4
  %403 = shl i32 %402, 1
  br label %406

404:                                              ; preds = %397
  %405 = load i32, i32* %32, align 4
  br label %406

406:                                              ; preds = %404, %401
  %407 = phi i32 [ %403, %401 ], [ %405, %404 ]
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %398, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = icmp sgt i32 %410, 127
  br i1 %411, label %412, label %460

412:                                              ; preds = %406
  %413 = load i32*, i32** %22, align 8
  %414 = load i32, i32* %32, align 4
  %415 = load i32, i32* %13, align 4
  %416 = sub nsw i32 %414, %415
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %413, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = shl i32 %419, 1
  %421 = load i32*, i32** %22, align 8
  %422 = load i32, i32* %32, align 4
  %423 = load i32, i32* %12, align 4
  %424 = sub nsw i32 %422, %423
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %421, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = shl i32 %427, 2
  %429 = add nsw i32 %420, %428
  %430 = load i32*, i32** %22, align 8
  %431 = load i32, i32* %32, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = shl i32 %434, 2
  %436 = add nsw i32 %429, %435
  %437 = load i32*, i32** %22, align 8
  %438 = load i32, i32* %32, align 4
  %439 = load i32, i32* %12, align 4
  %440 = add nsw i32 %438, %439
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %437, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = shl i32 %443, 2
  %445 = add nsw i32 %436, %444
  %446 = load i32*, i32** %22, align 8
  %447 = load i32, i32* %32, align 4
  %448 = load i32, i32* %13, align 4
  %449 = add nsw i32 %447, %448
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %446, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = shl i32 %452, 1
  %454 = add nsw i32 %445, %453
  %455 = ashr i32 %454, 4
  %456 = load i32*, i32** %22, align 8
  %457 = load i32, i32* %32, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %456, i64 %458
  store i32 %455, i32* %459, align 4
  br label %460

460:                                              ; preds = %412, %406
  br label %461

461:                                              ; preds = %460
  %462 = load i32, i32* %32, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %32, align 4
  br label %393

464:                                              ; preds = %393
  br label %465

465:                                              ; preds = %464
  %466 = load i32, i32* %31, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %31, align 4
  %468 = load i32, i32* %8, align 4
  %469 = load i32*, i32** %16, align 8
  %470 = sext i32 %468 to i64
  %471 = getelementptr inbounds i32, i32* %469, i64 %470
  store i32* %471, i32** %16, align 8
  %472 = load i32, i32* %12, align 4
  %473 = load i32*, i32** %22, align 8
  %474 = sext i32 %472 to i64
  %475 = getelementptr inbounds i32, i32* %473, i64 %474
  store i32* %475, i32** %22, align 8
  br label %388

476:                                              ; preds = %388
  br label %477

477:                                              ; preds = %476
  %478 = load i32, i32* %11, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %11, align 4
  br label %59

480:                                              ; preds = %59
  ret void
}

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local i32 @plane_CopyPixels(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @__MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

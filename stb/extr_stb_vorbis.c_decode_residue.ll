; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_decode_residue.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_decode_residue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, %struct.TYPE_18__*, i32, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32**, i32, i32** }

@EOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, float**, i32, i32, i32, i32*)* @decode_residue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_residue(%struct.TYPE_16__* %0, float** %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca float**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32***, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_18__*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.TYPE_18__*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca %struct.TYPE_18__*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca %struct.TYPE_18__*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca %struct.TYPE_18__*, align 8
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca %struct.TYPE_18__*, align 8
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca %struct.TYPE_18__*, align 8
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca float*, align 8
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store float** %1, float*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i64 %70
  store %struct.TYPE_17__* %71, %struct.TYPE_17__** %16, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %17, align 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %18, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %95

92:                                               ; preds = %6
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 %93, 2
  br label %97

95:                                               ; preds = %6
  %96 = load i32, i32* %10, align 4
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi i32 [ %94, %92 ], [ %96, %95 ]
  store i32 %98, i32* %20, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %20, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  br label %110

108:                                              ; preds = %97
  %109 = load i32, i32* %20, align 4
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi i32 [ %107, %104 ], [ %109, %108 ]
  store i32 %111, i32* %21, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %20, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  br label %123

121:                                              ; preds = %110
  %122 = load i32, i32* %20, align 4
  br label %123

123:                                              ; preds = %121, %117
  %124 = phi i32 [ %120, %117 ], [ %122, %121 ]
  store i32 %124, i32* %22, align 4
  %125 = load i32, i32* %22, align 4
  %126 = load i32, i32* %21, align 4
  %127 = sub i32 %125, %126
  store i32 %127, i32* %23, align 4
  %128 = load i32, i32* %23, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = sdiv i32 %128, %131
  store i32 %132, i32* %24, align 4
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %134 = call i32 @temp_alloc_save(%struct.TYPE_16__* %133)
  store i32 %134, i32* %25, align 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %24, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 8
  %142 = trunc i64 %141 to i32
  %143 = call i64 @temp_block_array(%struct.TYPE_16__* %135, i32 %138, i32 %142)
  %144 = inttoptr i64 %143 to i32***
  store i32*** %144, i32**** %26, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %146 = call i32 @CHECK(%struct.TYPE_16__* %145)
  store i32 0, i32* %13, align 4
  br label %147

147:                                              ; preds = %170, %123
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %173

151:                                              ; preds = %147
  %152 = load i32*, i32** %12, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %169, label %158

158:                                              ; preds = %151
  %159 = load float**, float*** %8, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float*, float** %159, i64 %161
  %163 = load float*, float** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = mul i64 4, %165
  %167 = trunc i64 %166 to i32
  %168 = call i32 @memset(float* %163, i32 0, i32 %167)
  br label %169

169:                                              ; preds = %158, %151
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %147

173:                                              ; preds = %147
  %174 = load i32, i32* %17, align 4
  %175 = icmp eq i32 %174, 2
  br i1 %175, label %176, label %623

176:                                              ; preds = %173
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 1
  br i1 %178, label %179, label %623

179:                                              ; preds = %176
  store i32 0, i32* %14, align 4
  br label %180

180:                                              ; preds = %193, %179
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %180
  %185 = load i32*, i32** %12, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %184
  br label %196

192:                                              ; preds = %184
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %14, align 4
  br label %180

196:                                              ; preds = %191, %180
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* %9, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  br label %790

201:                                              ; preds = %196
  store i32 0, i32* %15, align 4
  br label %202

202:                                              ; preds = %619, %201
  %203 = load i32, i32* %15, align 4
  %204 = icmp slt i32 %203, 8
  br i1 %204, label %205, label %622

205:                                              ; preds = %202
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %206 = load i32, i32* %9, align 4
  %207 = icmp eq i32 %206, 2
  br i1 %207, label %208, label %344

208:                                              ; preds = %205
  br label %209

209:                                              ; preds = %340, %208
  %210 = load i32, i32* %27, align 4
  %211 = load i32, i32* %24, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %343

213:                                              ; preds = %209
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %27, align 4
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %217, %220
  %222 = add i32 %216, %221
  store i32 %222, i32* %29, align 4
  %223 = load i32, i32* %29, align 4
  %224 = and i32 %223, 1
  store i32 %224, i32* %30, align 4
  %225 = load i32, i32* %29, align 4
  %226 = ashr i32 %225, 1
  store i32 %226, i32* %31, align 4
  %227 = load i32, i32* %15, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %260

229:                                              ; preds = %213
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %231, align 8
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i64 %236
  store %struct.TYPE_18__* %237, %struct.TYPE_18__** %32, align 8
  %238 = load i32, i32* %33, align 4
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %241 = call i32 @DECODE(i32 %238, %struct.TYPE_16__* %239, %struct.TYPE_18__* %240)
  %242 = load i32, i32* %33, align 4
  %243 = load i32, i32* @EOP, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %229
  br label %790

246:                                              ; preds = %229
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 4
  %249 = load i32**, i32*** %248, align 8
  %250 = load i32, i32* %33, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %249, i64 %251
  %253 = load i32*, i32** %252, align 8
  %254 = load i32***, i32**** %26, align 8
  %255 = getelementptr inbounds i32**, i32*** %254, i64 0
  %256 = load i32**, i32*** %255, align 8
  %257 = load i32, i32* %28, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32*, i32** %256, i64 %258
  store i32* %253, i32** %259, align 8
  br label %260

260:                                              ; preds = %246, %213
  store i32 0, i32* %13, align 4
  br label %261

261:                                              ; preds = %335, %260
  %262 = load i32, i32* %13, align 4
  %263 = load i32, i32* %19, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %269

265:                                              ; preds = %261
  %266 = load i32, i32* %27, align 4
  %267 = load i32, i32* %24, align 4
  %268 = icmp slt i32 %266, %267
  br label %269

269:                                              ; preds = %265, %261
  %270 = phi i1 [ false, %261 ], [ %268, %265 ]
  br i1 %270, label %271, label %340

271:                                              ; preds = %269
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %27, align 4
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = mul nsw i32 %275, %278
  %280 = add i32 %274, %279
  store i32 %280, i32* %34, align 4
  %281 = load i32***, i32**** %26, align 8
  %282 = getelementptr inbounds i32**, i32*** %281, i64 0
  %283 = load i32**, i32*** %282, align 8
  %284 = load i32, i32* %28, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32*, i32** %283, i64 %285
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %13, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %35, align 4
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 6
  %294 = load i32**, i32*** %293, align 8
  %295 = load i32, i32* %35, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32*, i32** %294, i64 %296
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %15, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  store i32 %302, i32* %36, align 4
  %303 = load i32, i32* %36, align 4
  %304 = icmp sge i32 %303, 0
  br i1 %304, label %305, label %324

305:                                              ; preds = %271
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %307, align 8
  %309 = load i32, i32* %36, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i64 %310
  store %struct.TYPE_18__* %311, %struct.TYPE_18__** %37, align 8
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %313 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %314 = load float**, float*** %8, align 8
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* %10, align 4
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @codebook_decode_deinterleave_repeat(%struct.TYPE_16__* %312, %struct.TYPE_18__* %313, float** %314, i32 %315, i32* %30, i32* %31, i32 %316, i32 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %323, label %322

322:                                              ; preds = %305
  br label %790

323:                                              ; preds = %305
  br label %334

324:                                              ; preds = %271
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %34, align 4
  %329 = add nsw i32 %328, %327
  store i32 %329, i32* %34, align 4
  %330 = load i32, i32* %34, align 4
  %331 = and i32 %330, 1
  store i32 %331, i32* %30, align 4
  %332 = load i32, i32* %34, align 4
  %333 = ashr i32 %332, 1
  store i32 %333, i32* %31, align 4
  br label %334

334:                                              ; preds = %324, %323
  br label %335

335:                                              ; preds = %334
  %336 = load i32, i32* %13, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %13, align 4
  %338 = load i32, i32* %27, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %27, align 4
  br label %261

340:                                              ; preds = %269
  %341 = load i32, i32* %28, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %28, align 4
  br label %209

343:                                              ; preds = %209
  br label %618

344:                                              ; preds = %205
  %345 = load i32, i32* %9, align 4
  %346 = icmp eq i32 %345, 1
  br i1 %346, label %347, label %477

347:                                              ; preds = %344
  br label %348

348:                                              ; preds = %473, %347
  %349 = load i32, i32* %27, align 4
  %350 = load i32, i32* %24, align 4
  %351 = icmp slt i32 %349, %350
  br i1 %351, label %352, label %476

352:                                              ; preds = %348
  %353 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* %27, align 4
  %357 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %358 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = mul nsw i32 %356, %359
  %361 = add i32 %355, %360
  store i32 %361, i32* %38, align 4
  store i32 0, i32* %39, align 4
  %362 = load i32, i32* %38, align 4
  store i32 %362, i32* %40, align 4
  %363 = load i32, i32* %15, align 4
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %396

365:                                              ; preds = %352
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 1
  %368 = load %struct.TYPE_18__*, %struct.TYPE_18__** %367, align 8
  %369 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %370 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i64 %372
  store %struct.TYPE_18__* %373, %struct.TYPE_18__** %41, align 8
  %374 = load i32, i32* %42, align 4
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %376 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %377 = call i32 @DECODE(i32 %374, %struct.TYPE_16__* %375, %struct.TYPE_18__* %376)
  %378 = load i32, i32* %42, align 4
  %379 = load i32, i32* @EOP, align 4
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %381, label %382

381:                                              ; preds = %365
  br label %790

382:                                              ; preds = %365
  %383 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %384 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %383, i32 0, i32 4
  %385 = load i32**, i32*** %384, align 8
  %386 = load i32, i32* %42, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32*, i32** %385, i64 %387
  %389 = load i32*, i32** %388, align 8
  %390 = load i32***, i32**** %26, align 8
  %391 = getelementptr inbounds i32**, i32*** %390, i64 0
  %392 = load i32**, i32*** %391, align 8
  %393 = load i32, i32* %28, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32*, i32** %392, i64 %394
  store i32* %389, i32** %395, align 8
  br label %396

396:                                              ; preds = %382, %352
  store i32 0, i32* %13, align 4
  br label %397

397:                                              ; preds = %468, %396
  %398 = load i32, i32* %13, align 4
  %399 = load i32, i32* %19, align 4
  %400 = icmp slt i32 %398, %399
  br i1 %400, label %401, label %405

401:                                              ; preds = %397
  %402 = load i32, i32* %27, align 4
  %403 = load i32, i32* %24, align 4
  %404 = icmp slt i32 %402, %403
  br label %405

405:                                              ; preds = %401, %397
  %406 = phi i1 [ false, %397 ], [ %404, %401 ]
  br i1 %406, label %407, label %473

407:                                              ; preds = %405
  %408 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %409 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* %27, align 4
  %412 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %413 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %412, i32 0, i32 3
  %414 = load i32, i32* %413, align 4
  %415 = mul nsw i32 %411, %414
  %416 = add i32 %410, %415
  store i32 %416, i32* %43, align 4
  %417 = load i32***, i32**** %26, align 8
  %418 = getelementptr inbounds i32**, i32*** %417, i64 0
  %419 = load i32**, i32*** %418, align 8
  %420 = load i32, i32* %28, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32*, i32** %419, i64 %421
  %423 = load i32*, i32** %422, align 8
  %424 = load i32, i32* %13, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %423, i64 %425
  %427 = load i32, i32* %426, align 4
  store i32 %427, i32* %44, align 4
  %428 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %429 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %428, i32 0, i32 6
  %430 = load i32**, i32*** %429, align 8
  %431 = load i32, i32* %44, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32*, i32** %430, i64 %432
  %434 = load i32*, i32** %433, align 8
  %435 = load i32, i32* %15, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  %438 = load i32, i32* %437, align 4
  store i32 %438, i32* %45, align 4
  %439 = load i32, i32* %45, align 4
  %440 = icmp sge i32 %439, 0
  br i1 %440, label %441, label %460

441:                                              ; preds = %407
  %442 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %443 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %442, i32 0, i32 1
  %444 = load %struct.TYPE_18__*, %struct.TYPE_18__** %443, align 8
  %445 = load i32, i32* %45, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %444, i64 %446
  store %struct.TYPE_18__* %447, %struct.TYPE_18__** %46, align 8
  %448 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %449 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %450 = load float**, float*** %8, align 8
  %451 = load i32, i32* %9, align 4
  %452 = load i32, i32* %10, align 4
  %453 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %454 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %453, i32 0, i32 3
  %455 = load i32, i32* %454, align 4
  %456 = call i32 @codebook_decode_deinterleave_repeat(%struct.TYPE_16__* %448, %struct.TYPE_18__* %449, float** %450, i32 %451, i32* %39, i32* %40, i32 %452, i32 %455)
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %459, label %458

458:                                              ; preds = %441
  br label %790

459:                                              ; preds = %441
  br label %467

460:                                              ; preds = %407
  %461 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %462 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %461, i32 0, i32 3
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* %43, align 4
  %465 = add nsw i32 %464, %463
  store i32 %465, i32* %43, align 4
  store i32 0, i32* %39, align 4
  %466 = load i32, i32* %43, align 4
  store i32 %466, i32* %40, align 4
  br label %467

467:                                              ; preds = %460, %459
  br label %468

468:                                              ; preds = %467
  %469 = load i32, i32* %13, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %13, align 4
  %471 = load i32, i32* %27, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %27, align 4
  br label %397

473:                                              ; preds = %405
  %474 = load i32, i32* %28, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %28, align 4
  br label %348

476:                                              ; preds = %348
  br label %617

477:                                              ; preds = %344
  br label %478

478:                                              ; preds = %613, %477
  %479 = load i32, i32* %27, align 4
  %480 = load i32, i32* %24, align 4
  %481 = icmp slt i32 %479, %480
  br i1 %481, label %482, label %616

482:                                              ; preds = %478
  %483 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %484 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* %27, align 4
  %487 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %488 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %487, i32 0, i32 3
  %489 = load i32, i32* %488, align 4
  %490 = mul nsw i32 %486, %489
  %491 = add i32 %485, %490
  store i32 %491, i32* %47, align 4
  %492 = load i32, i32* %47, align 4
  %493 = load i32, i32* %9, align 4
  %494 = srem i32 %492, %493
  store i32 %494, i32* %48, align 4
  %495 = load i32, i32* %47, align 4
  %496 = load i32, i32* %9, align 4
  %497 = sdiv i32 %495, %496
  store i32 %497, i32* %49, align 4
  %498 = load i32, i32* %15, align 4
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %531

500:                                              ; preds = %482
  %501 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %502 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %501, i32 0, i32 1
  %503 = load %struct.TYPE_18__*, %struct.TYPE_18__** %502, align 8
  %504 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %505 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 8
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %503, i64 %507
  store %struct.TYPE_18__* %508, %struct.TYPE_18__** %50, align 8
  %509 = load i32, i32* %51, align 4
  %510 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %511 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %512 = call i32 @DECODE(i32 %509, %struct.TYPE_16__* %510, %struct.TYPE_18__* %511)
  %513 = load i32, i32* %51, align 4
  %514 = load i32, i32* @EOP, align 4
  %515 = icmp eq i32 %513, %514
  br i1 %515, label %516, label %517

516:                                              ; preds = %500
  br label %790

517:                                              ; preds = %500
  %518 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %519 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %518, i32 0, i32 4
  %520 = load i32**, i32*** %519, align 8
  %521 = load i32, i32* %51, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i32*, i32** %520, i64 %522
  %524 = load i32*, i32** %523, align 8
  %525 = load i32***, i32**** %26, align 8
  %526 = getelementptr inbounds i32**, i32*** %525, i64 0
  %527 = load i32**, i32*** %526, align 8
  %528 = load i32, i32* %28, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i32*, i32** %527, i64 %529
  store i32* %524, i32** %530, align 8
  br label %531

531:                                              ; preds = %517, %482
  store i32 0, i32* %13, align 4
  br label %532

532:                                              ; preds = %608, %531
  %533 = load i32, i32* %13, align 4
  %534 = load i32, i32* %19, align 4
  %535 = icmp slt i32 %533, %534
  br i1 %535, label %536, label %540

536:                                              ; preds = %532
  %537 = load i32, i32* %27, align 4
  %538 = load i32, i32* %24, align 4
  %539 = icmp slt i32 %537, %538
  br label %540

540:                                              ; preds = %536, %532
  %541 = phi i1 [ false, %532 ], [ %539, %536 ]
  br i1 %541, label %542, label %613

542:                                              ; preds = %540
  %543 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %544 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = load i32, i32* %27, align 4
  %547 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %548 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %547, i32 0, i32 3
  %549 = load i32, i32* %548, align 4
  %550 = mul nsw i32 %546, %549
  %551 = add i32 %545, %550
  store i32 %551, i32* %52, align 4
  %552 = load i32***, i32**** %26, align 8
  %553 = getelementptr inbounds i32**, i32*** %552, i64 0
  %554 = load i32**, i32*** %553, align 8
  %555 = load i32, i32* %28, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i32*, i32** %554, i64 %556
  %558 = load i32*, i32** %557, align 8
  %559 = load i32, i32* %13, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %558, i64 %560
  %562 = load i32, i32* %561, align 4
  store i32 %562, i32* %53, align 4
  %563 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %564 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %563, i32 0, i32 6
  %565 = load i32**, i32*** %564, align 8
  %566 = load i32, i32* %53, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i32*, i32** %565, i64 %567
  %569 = load i32*, i32** %568, align 8
  %570 = load i32, i32* %15, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i32, i32* %569, i64 %571
  %573 = load i32, i32* %572, align 4
  store i32 %573, i32* %54, align 4
  %574 = load i32, i32* %54, align 4
  %575 = icmp sge i32 %574, 0
  br i1 %575, label %576, label %595

576:                                              ; preds = %542
  %577 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %578 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %577, i32 0, i32 1
  %579 = load %struct.TYPE_18__*, %struct.TYPE_18__** %578, align 8
  %580 = load i32, i32* %54, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %579, i64 %581
  store %struct.TYPE_18__* %582, %struct.TYPE_18__** %55, align 8
  %583 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %584 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %585 = load float**, float*** %8, align 8
  %586 = load i32, i32* %9, align 4
  %587 = load i32, i32* %10, align 4
  %588 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %589 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %588, i32 0, i32 3
  %590 = load i32, i32* %589, align 4
  %591 = call i32 @codebook_decode_deinterleave_repeat(%struct.TYPE_16__* %583, %struct.TYPE_18__* %584, float** %585, i32 %586, i32* %48, i32* %49, i32 %587, i32 %590)
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %594, label %593

593:                                              ; preds = %576
  br label %790

594:                                              ; preds = %576
  br label %607

595:                                              ; preds = %542
  %596 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %597 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %596, i32 0, i32 3
  %598 = load i32, i32* %597, align 4
  %599 = load i32, i32* %52, align 4
  %600 = add nsw i32 %599, %598
  store i32 %600, i32* %52, align 4
  %601 = load i32, i32* %52, align 4
  %602 = load i32, i32* %9, align 4
  %603 = srem i32 %601, %602
  store i32 %603, i32* %48, align 4
  %604 = load i32, i32* %52, align 4
  %605 = load i32, i32* %9, align 4
  %606 = sdiv i32 %604, %605
  store i32 %606, i32* %49, align 4
  br label %607

607:                                              ; preds = %595, %594
  br label %608

608:                                              ; preds = %607
  %609 = load i32, i32* %13, align 4
  %610 = add nsw i32 %609, 1
  store i32 %610, i32* %13, align 4
  %611 = load i32, i32* %27, align 4
  %612 = add nsw i32 %611, 1
  store i32 %612, i32* %27, align 4
  br label %532

613:                                              ; preds = %540
  %614 = load i32, i32* %28, align 4
  %615 = add nsw i32 %614, 1
  store i32 %615, i32* %28, align 4
  br label %478

616:                                              ; preds = %478
  br label %617

617:                                              ; preds = %616, %476
  br label %618

618:                                              ; preds = %617, %343
  br label %619

619:                                              ; preds = %618
  %620 = load i32, i32* %15, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %15, align 4
  br label %202

622:                                              ; preds = %202
  br label %790

623:                                              ; preds = %176, %173
  %624 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %625 = call i32 @CHECK(%struct.TYPE_16__* %624)
  store i32 0, i32* %15, align 4
  br label %626

626:                                              ; preds = %786, %623
  %627 = load i32, i32* %15, align 4
  %628 = icmp slt i32 %627, 8
  br i1 %628, label %629, label %789

629:                                              ; preds = %626
  store i32 0, i32* %56, align 4
  store i32 0, i32* %57, align 4
  br label %630

630:                                              ; preds = %782, %629
  %631 = load i32, i32* %56, align 4
  %632 = load i32, i32* %24, align 4
  %633 = icmp slt i32 %631, %632
  br i1 %633, label %634, label %785

634:                                              ; preds = %630
  %635 = load i32, i32* %15, align 4
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %637, label %687

637:                                              ; preds = %634
  store i32 0, i32* %14, align 4
  br label %638

638:                                              ; preds = %683, %637
  %639 = load i32, i32* %14, align 4
  %640 = load i32, i32* %9, align 4
  %641 = icmp slt i32 %639, %640
  br i1 %641, label %642, label %686

642:                                              ; preds = %638
  %643 = load i32*, i32** %12, align 8
  %644 = load i32, i32* %14, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds i32, i32* %643, i64 %645
  %647 = load i32, i32* %646, align 4
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %682, label %649

649:                                              ; preds = %642
  %650 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %651 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %650, i32 0, i32 1
  %652 = load %struct.TYPE_18__*, %struct.TYPE_18__** %651, align 8
  %653 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %654 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %653, i32 0, i32 0
  %655 = load i32, i32* %654, align 8
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %652, i64 %656
  store %struct.TYPE_18__* %657, %struct.TYPE_18__** %58, align 8
  %658 = load i32, i32* %59, align 4
  %659 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %660 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  %661 = call i32 @DECODE(i32 %658, %struct.TYPE_16__* %659, %struct.TYPE_18__* %660)
  %662 = load i32, i32* %59, align 4
  %663 = load i32, i32* @EOP, align 4
  %664 = icmp eq i32 %662, %663
  br i1 %664, label %665, label %666

665:                                              ; preds = %649
  br label %790

666:                                              ; preds = %649
  %667 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %668 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %667, i32 0, i32 4
  %669 = load i32**, i32*** %668, align 8
  %670 = load i32, i32* %59, align 4
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i32*, i32** %669, i64 %671
  %673 = load i32*, i32** %672, align 8
  %674 = load i32***, i32**** %26, align 8
  %675 = load i32, i32* %14, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds i32**, i32*** %674, i64 %676
  %678 = load i32**, i32*** %677, align 8
  %679 = load i32, i32* %57, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds i32*, i32** %678, i64 %680
  store i32* %673, i32** %681, align 8
  br label %682

682:                                              ; preds = %666, %642
  br label %683

683:                                              ; preds = %682
  %684 = load i32, i32* %14, align 4
  %685 = add nsw i32 %684, 1
  store i32 %685, i32* %14, align 4
  br label %638

686:                                              ; preds = %638
  br label %687

687:                                              ; preds = %686, %634
  store i32 0, i32* %13, align 4
  br label %688

688:                                              ; preds = %777, %687
  %689 = load i32, i32* %13, align 4
  %690 = load i32, i32* %19, align 4
  %691 = icmp slt i32 %689, %690
  br i1 %691, label %692, label %696

692:                                              ; preds = %688
  %693 = load i32, i32* %56, align 4
  %694 = load i32, i32* %24, align 4
  %695 = icmp slt i32 %693, %694
  br label %696

696:                                              ; preds = %692, %688
  %697 = phi i1 [ false, %688 ], [ %695, %692 ]
  br i1 %697, label %698, label %782

698:                                              ; preds = %696
  store i32 0, i32* %14, align 4
  br label %699

699:                                              ; preds = %773, %698
  %700 = load i32, i32* %14, align 4
  %701 = load i32, i32* %9, align 4
  %702 = icmp slt i32 %700, %701
  br i1 %702, label %703, label %776

703:                                              ; preds = %699
  %704 = load i32*, i32** %12, align 8
  %705 = load i32, i32* %14, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds i32, i32* %704, i64 %706
  %708 = load i32, i32* %707, align 4
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %772, label %710

710:                                              ; preds = %703
  %711 = load i32***, i32**** %26, align 8
  %712 = load i32, i32* %14, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds i32**, i32*** %711, i64 %713
  %715 = load i32**, i32*** %714, align 8
  %716 = load i32, i32* %57, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds i32*, i32** %715, i64 %717
  %719 = load i32*, i32** %718, align 8
  %720 = load i32, i32* %13, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds i32, i32* %719, i64 %721
  %723 = load i32, i32* %722, align 4
  store i32 %723, i32* %60, align 4
  %724 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %725 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %724, i32 0, i32 6
  %726 = load i32**, i32*** %725, align 8
  %727 = load i32, i32* %60, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds i32*, i32** %726, i64 %728
  %730 = load i32*, i32** %729, align 8
  %731 = load i32, i32* %15, align 4
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds i32, i32* %730, i64 %732
  %734 = load i32, i32* %733, align 4
  store i32 %734, i32* %61, align 4
  %735 = load i32, i32* %61, align 4
  %736 = icmp sge i32 %735, 0
  br i1 %736, label %737, label %771

737:                                              ; preds = %710
  %738 = load float**, float*** %8, align 8
  %739 = load i32, i32* %14, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds float*, float** %738, i64 %740
  %742 = load float*, float** %741, align 8
  store float* %742, float** %62, align 8
  %743 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %744 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %743, i32 0, i32 1
  %745 = load i32, i32* %744, align 4
  %746 = load i32, i32* %56, align 4
  %747 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %748 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %747, i32 0, i32 3
  %749 = load i32, i32* %748, align 4
  %750 = mul nsw i32 %746, %749
  %751 = add i32 %745, %750
  store i32 %751, i32* %63, align 4
  %752 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %753 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %752, i32 0, i32 3
  %754 = load i32, i32* %753, align 4
  store i32 %754, i32* %64, align 4
  %755 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %756 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %755, i32 0, i32 1
  %757 = load %struct.TYPE_18__*, %struct.TYPE_18__** %756, align 8
  %758 = load i32, i32* %61, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %757, i64 %759
  store %struct.TYPE_18__* %760, %struct.TYPE_18__** %65, align 8
  %761 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %762 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %763 = load float*, float** %62, align 8
  %764 = load i32, i32* %63, align 4
  %765 = load i32, i32* %64, align 4
  %766 = load i32, i32* %17, align 4
  %767 = call i32 @residue_decode(%struct.TYPE_16__* %761, %struct.TYPE_18__* %762, float* %763, i32 %764, i32 %765, i32 %766)
  %768 = icmp ne i32 %767, 0
  br i1 %768, label %770, label %769

769:                                              ; preds = %737
  br label %790

770:                                              ; preds = %737
  br label %771

771:                                              ; preds = %770, %710
  br label %772

772:                                              ; preds = %771, %703
  br label %773

773:                                              ; preds = %772
  %774 = load i32, i32* %14, align 4
  %775 = add nsw i32 %774, 1
  store i32 %775, i32* %14, align 4
  br label %699

776:                                              ; preds = %699
  br label %777

777:                                              ; preds = %776
  %778 = load i32, i32* %13, align 4
  %779 = add nsw i32 %778, 1
  store i32 %779, i32* %13, align 4
  %780 = load i32, i32* %56, align 4
  %781 = add nsw i32 %780, 1
  store i32 %781, i32* %56, align 4
  br label %688

782:                                              ; preds = %696
  %783 = load i32, i32* %57, align 4
  %784 = add nsw i32 %783, 1
  store i32 %784, i32* %57, align 4
  br label %630

785:                                              ; preds = %630
  br label %786

786:                                              ; preds = %785
  %787 = load i32, i32* %15, align 4
  %788 = add nsw i32 %787, 1
  store i32 %788, i32* %15, align 4
  br label %626

789:                                              ; preds = %626
  br label %790

790:                                              ; preds = %789, %769, %665, %622, %593, %516, %458, %381, %322, %245, %200
  %791 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %792 = call i32 @CHECK(%struct.TYPE_16__* %791)
  %793 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %794 = load i32***, i32**** %26, align 8
  %795 = call i32 (%struct.TYPE_16__*, ...) @temp_free(%struct.TYPE_16__* %793, i32*** %794)
  %796 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %797 = load i32, i32* %25, align 4
  %798 = call i32 @temp_alloc_restore(%struct.TYPE_16__* %796, i32 %797)
  ret void
}

declare dso_local i32 @temp_alloc_save(%struct.TYPE_16__*) #1

declare dso_local i64 @temp_block_array(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @CHECK(%struct.TYPE_16__*) #1

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @DECODE(i32, %struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i32 @codebook_decode_deinterleave_repeat(%struct.TYPE_16__*, %struct.TYPE_18__*, float**, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @residue_decode(%struct.TYPE_16__*, %struct.TYPE_18__*, float*, i32, i32, i32) #1

declare dso_local i32 @temp_free(%struct.TYPE_16__*, ...) #1

declare dso_local i32 @temp_alloc_restore(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

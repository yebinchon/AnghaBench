; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_analysis_enc.c_AssignSegments.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_analysis_enc.c_AssignSegments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@MAX_ALPHA = common dso_local global i32 0, align 4
@NUM_MB_SEGMENTS = common dso_local global i32 0, align 4
@MAX_ITERS_K_MEANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*)* @AssignSegments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AssignSegments(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %24 = load i32, i32* @MAX_ALPHA, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @NUM_MB_SEGMENTS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @NUM_MB_SEGMENTS, align 4
  br label %40

40:                                               ; preds = %38, %33
  %41 = phi i32 [ %37, %33 ], [ %39, %38 ]
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @NUM_MB_SEGMENTS, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %6, align 8
  %45 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %46 = load i32, i32* @MAX_ALPHA, align 4
  %47 = add nsw i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = alloca i32, i64 %48, align 16
  store i64 %48, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %50 = load i32, i32* @MAX_ALPHA, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* @NUM_MB_SEGMENTS, align 4
  %52 = zext i32 %51 to i64
  %53 = alloca i32, i64 %52, align 16
  store i64 %52, i64* %16, align 8
  %54 = load i32, i32* @NUM_MB_SEGMENTS, align 4
  %55 = zext i32 %54 to i64
  %56 = alloca i32, i64 %55, align 16
  store i64 %55, i64* %17, align 8
  %57 = load i32, i32* %5, align 4
  %58 = icmp sge i32 %57, 1
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @NUM_MB_SEGMENTS, align 4
  %63 = icmp sle i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %80, %40
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @MAX_ALPHA, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br label %77

77:                                               ; preds = %70, %66
  %78 = phi i1 [ false, %66 ], [ %76, %70 ]
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %66

83:                                               ; preds = %77
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* @MAX_ALPHA, align 4
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %100, %83
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 0
  br label %97

97:                                               ; preds = %90, %86
  %98 = phi i1 [ false, %86 ], [ %96, %90 ]
  br i1 %98, label %99, label %103

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %11, align 4
  br label %86

103:                                              ; preds = %97
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %13, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %15, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %108

108:                                              ; preds = %130, %103
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %135

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %5, align 4
  %115 = mul nsw i32 2, %114
  %116 = icmp slt i32 %113, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %15, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* %5, align 4
  %124 = mul nsw i32 2, %123
  %125 = sdiv i32 %122, %124
  %126 = add nsw i32 %119, %125
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %45, i64 %128
  store i32 %126, i32* %129, align 4
  br label %130

130:                                              ; preds = %112
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 2
  store i32 %134, i32* %11, align 4
  br label %108

135:                                              ; preds = %108
  store i32 0, i32* %12, align 4
  br label %136

136:                                              ; preds = %298, %135
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @MAX_ITERS_K_MEANS, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %301

140:                                              ; preds = %136
  store i32 0, i32* %11, align 4
  br label %141

141:                                              ; preds = %152, %140
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %141
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %53, i64 %147
  store i32 0, i32* %148, align 4
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %56, i64 %150
  store i32 0, i32* %151, align 4
  br label %152

152:                                              ; preds = %145
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %141

155:                                              ; preds = %141
  store i32 0, i32* %11, align 4
  %156 = load i32, i32* %13, align 4
  store i32 %156, i32* %10, align 4
  br label %157

157:                                              ; preds = %224, %155
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp sle i32 %158, %159
  br i1 %160, label %161, label %227

161:                                              ; preds = %157
  %162 = load i32*, i32** %4, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %223

168:                                              ; preds = %161
  br label %169

169:                                              ; preds = %193, %168
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  %172 = load i32, i32* %5, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %191

174:                                              ; preds = %169
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %45, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %175, %180
  %182 = call i64 @abs(i32 %181)
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %45, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %183, %187
  %189 = call i64 @abs(i32 %188)
  %190 = icmp slt i64 %182, %189
  br label %191

191:                                              ; preds = %174, %169
  %192 = phi i1 [ false, %169 ], [ %190, %174 ]
  br i1 %192, label %193, label %196

193:                                              ; preds = %191
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %11, align 4
  br label %169

196:                                              ; preds = %191
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %49, i64 %199
  store i32 %197, i32* %200, align 4
  %201 = load i32, i32* %10, align 4
  %202 = load i32*, i32** %4, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %201, %206
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %56, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, %207
  store i32 %212, i32* %210, align 4
  %213 = load i32*, i32** %4, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %53, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, %217
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %196, %161
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  br label %157

227:                                              ; preds = %157
  store i32 0, i32* %19, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %11, align 4
  br label %228

228:                                              ; preds = %284, %227
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %5, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %287

232:                                              ; preds = %228
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %53, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %283

238:                                              ; preds = %232
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %56, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %11, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %53, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = sdiv i32 %246, 2
  %248 = add nsw i32 %242, %247
  %249 = load i32, i32* %11, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %53, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = sdiv i32 %248, %252
  store i32 %253, i32* %20, align 4
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %45, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %20, align 4
  %259 = sub nsw i32 %257, %258
  %260 = call i64 @abs(i32 %259)
  %261 = load i32, i32* %19, align 4
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %262, %260
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %19, align 4
  %265 = load i32, i32* %20, align 4
  %266 = load i32, i32* %11, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %45, i64 %267
  store i32 %265, i32* %268, align 4
  %269 = load i32, i32* %20, align 4
  %270 = load i32, i32* %11, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %53, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = mul nsw i32 %269, %273
  %275 = load i32, i32* %8, align 4
  %276 = add nsw i32 %275, %274
  store i32 %276, i32* %8, align 4
  %277 = load i32, i32* %11, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %53, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %18, align 4
  %282 = add nsw i32 %281, %280
  store i32 %282, i32* %18, align 4
  br label %283

283:                                              ; preds = %238, %232
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %11, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %11, align 4
  br label %228

287:                                              ; preds = %228
  %288 = load i32, i32* %8, align 4
  %289 = load i32, i32* %18, align 4
  %290 = sdiv i32 %289, 2
  %291 = add nsw i32 %288, %290
  %292 = load i32, i32* %18, align 4
  %293 = sdiv i32 %291, %292
  store i32 %293, i32* %8, align 4
  %294 = load i32, i32* %19, align 4
  %295 = icmp slt i32 %294, 5
  br i1 %295, label %296, label %297

296:                                              ; preds = %287
  br label %301

297:                                              ; preds = %287
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %12, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %12, align 4
  br label %136

301:                                              ; preds = %296, %136
  store i32 0, i32* %11, align 4
  br label %302

302:                                              ; preds = %337, %301
  %303 = load i32, i32* %11, align 4
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = mul nsw i32 %306, %309
  %311 = icmp slt i32 %303, %310
  br i1 %311, label %312, label %340

312:                                              ; preds = %302
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 3
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %314, align 8
  %316 = load i32, i32* %11, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i64 %317
  store %struct.TYPE_10__* %318, %struct.TYPE_10__** %21, align 8
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  store i32 %321, i32* %22, align 4
  %322 = load i32, i32* %22, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %49, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 1
  store i32 %325, i32* %327, align 4
  %328 = load i32, i32* %22, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %49, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %45, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 0
  store i32 %334, i32* %336, align 4
  br label %337

337:                                              ; preds = %312
  %338 = load i32, i32* %11, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %11, align 4
  br label %302

340:                                              ; preds = %302
  %341 = load i32, i32* %5, align 4
  %342 = icmp sgt i32 %341, 1
  br i1 %342, label %343, label %356

343:                                              ; preds = %340
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 2
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = and i32 %348, 1
  store i32 %349, i32* %23, align 4
  %350 = load i32, i32* %23, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %343
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %354 = call i32 @SmoothSegmentMap(%struct.TYPE_11__* %353)
  br label %355

355:                                              ; preds = %352, %343
  br label %356

356:                                              ; preds = %355, %340
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %358 = load i32, i32* %8, align 4
  %359 = call i32 @SetSegmentAlphas(%struct.TYPE_11__* %357, i32* %45, i32 %358)
  %360 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %360)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @abs(i32) #2

declare dso_local i32 @SmoothSegmentMap(%struct.TYPE_11__*) #2

declare dso_local i32 @SetSegmentAlphas(%struct.TYPE_11__*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_libass.c_BuildRegions.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_libass.c_BuildRegions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_6__* }

@INT_MAX = common dso_local global i32 0, align 4
@p_spu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_6__*, i32, i32)* @BuildRegions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BuildRegions(i32* %0, i32 %1, %struct.TYPE_6__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_6__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %57, %5
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %53, %48, %43
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %12, align 8
  br label %40

61:                                               ; preds = %40
  %62 = load i32, i32* %13, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %336

65:                                               ; preds = %61
  %66 = load i32, i32* %13, align 4
  %67 = call %struct.TYPE_6__** @calloc(i32 %66, i32 8)
  store %struct.TYPE_6__** %67, %struct.TYPE_6__*** %14, align 8
  %68 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %69 = icmp ne %struct.TYPE_6__** %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %336

71:                                               ; preds = %65
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %94, %71
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %75 = icmp ne %struct.TYPE_6__* %74, null
  br i1 %75, label %76, label %98

76:                                               ; preds = %73
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %88, i64 %91
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %92, align 8
  br label %93

93:                                               ; preds = %86, %81, %76
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %12, align 8
  br label %73

98:                                               ; preds = %73
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 49
  %101 = sdiv i32 %100, 50
  %102 = call i32 @__MAX(i32 %101, i32 32)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 99
  %105 = sdiv i32 %104, 100
  %106 = call i32 @__MAX(i32 %105, i32 32)
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  %111 = zext i32 %110 to i64
  %112 = call i8* @llvm.stacksave()
  store i8* %112, i8** %20, align 8
  %113 = alloca i32, i64 %111, align 16
  store i64 %111, i64* %21, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %22, align 4
  br label %114

114:                                              ; preds = %313, %98
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %314

118:                                              ; preds = %114
  store i32 0, i32* %23, align 4
  br label %119

119:                                              ; preds = %132, %118
  %120 = load i32, i32* %23, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %119
  %124 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %125 = load i32, i32* %23, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %124, i64 %126
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = icmp ne %struct.TYPE_6__* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %135

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %23, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %23, align 4
  br label %119

135:                                              ; preds = %130, %119
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  %139 = icmp slt i32 %136, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %143 = load i32, i32* %23, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %142, i64 %144
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = call i32 @r_img(%struct.TYPE_6__* %146)
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %19, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %113, i64 %150
  store i32 %147, i32* %151, align 4
  %152 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %153 = load i32, i32* %23, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %152, i64 %154
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %155, align 8
  %156 = load i32, i32* %22, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %22, align 4
  br label %158

158:                                              ; preds = %220, %135
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  br label %159

159:                                              ; preds = %216, %158
  %160 = load i32, i32* %23, align 4
  %161 = load i32, i32* %13, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %219

163:                                              ; preds = %159
  %164 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %165 = load i32, i32* %23, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %164, i64 %166
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  store %struct.TYPE_6__* %168, %struct.TYPE_6__** %25, align 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %170 = icmp ne %struct.TYPE_6__* %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %163
  br label %216

172:                                              ; preds = %163
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %174 = call i32 @r_img(%struct.TYPE_6__* %173)
  store i32 %174, i32* %26, align 4
  store i32 -1, i32* %28, align 4
  %175 = load i32, i32* @INT_MAX, align 4
  store i32 %175, i32* %29, align 4
  store i32 0, i32* %27, align 4
  br label %176

176:                                              ; preds = %198, %172
  %177 = load i32, i32* %27, align 4
  %178 = load i32, i32* %19, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %201

180:                                              ; preds = %176
  %181 = load i32, i32* %27, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %113, i64 %182
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* %17, align 4
  %186 = call i32 @r_overlap(i32* %183, i32* %26, i32 %184, i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %180
  br label %198

189:                                              ; preds = %180
  %190 = call i32 @r_surface(i32* %26)
  store i32 %190, i32* %30, align 4
  %191 = load i32, i32* %30, align 4
  %192 = load i32, i32* %29, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load i32, i32* %30, align 4
  store i32 %195, i32* %29, align 4
  %196 = load i32, i32* %27, align 4
  store i32 %196, i32* %28, align 4
  br label %197

197:                                              ; preds = %194, %189
  br label %198

198:                                              ; preds = %197, %188
  %199 = load i32, i32* %27, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %27, align 4
  br label %176

201:                                              ; preds = %176
  %202 = load i32, i32* %28, align 4
  %203 = icmp sge i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %201
  %205 = load i32, i32* %28, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %113, i64 %206
  %208 = call i32 @r_add(i32* %207, i32* %26)
  %209 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %210 = load i32, i32* %23, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %209, i64 %211
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %212, align 8
  %213 = load i32, i32* %22, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %22, align 4
  store i32 1, i32* %24, align 4
  br label %215

215:                                              ; preds = %204, %201
  br label %216

216:                                              ; preds = %215, %171
  %217 = load i32, i32* %23, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %23, align 4
  br label %159

219:                                              ; preds = %159
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %24, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %158, label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %19, align 4
  %225 = load i32, i32* %8, align 4
  %226 = icmp sgt i32 %224, %225
  br i1 %226, label %227, label %313

227:                                              ; preds = %223
  store i32 -1, i32* %31, align 4
  store i32 -1, i32* %32, align 4
  %228 = load i32, i32* @INT_MAX, align 4
  store i32 %228, i32* %33, align 4
  store i32 0, i32* %34, align 4
  br label %229

229:                                              ; preds = %272, %227
  %230 = load i32, i32* %34, align 4
  %231 = load i32, i32* %19, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %275

233:                                              ; preds = %229
  %234 = load i32, i32* %34, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %35, align 4
  br label %236

236:                                              ; preds = %268, %233
  %237 = load i32, i32* %35, align 4
  %238 = load i32, i32* %19, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %271

240:                                              ; preds = %236
  %241 = load i32, i32* %34, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %113, i64 %242
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %36, align 4
  %245 = load i32, i32* %35, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %113, i64 %246
  %248 = call i32 @r_add(i32* %36, i32* %247)
  %249 = call i32 @r_surface(i32* %36)
  %250 = load i32, i32* %34, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %113, i64 %251
  %253 = call i32 @r_surface(i32* %252)
  %254 = sub nsw i32 %249, %253
  %255 = load i32, i32* %35, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %113, i64 %256
  %258 = call i32 @r_surface(i32* %257)
  %259 = sub nsw i32 %254, %258
  store i32 %259, i32* %37, align 4
  %260 = load i32, i32* %37, align 4
  %261 = load i32, i32* %33, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %240
  %264 = load i32, i32* %34, align 4
  store i32 %264, i32* %31, align 4
  %265 = load i32, i32* %35, align 4
  store i32 %265, i32* %32, align 4
  %266 = load i32, i32* %37, align 4
  store i32 %266, i32* %33, align 4
  br label %267

267:                                              ; preds = %263, %240
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %35, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %35, align 4
  br label %236

271:                                              ; preds = %236
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %34, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %34, align 4
  br label %229

275:                                              ; preds = %229
  %276 = load i32, i32* %32, align 4
  %277 = icmp sge i32 %276, 0
  br i1 %277, label %278, label %312

278:                                              ; preds = %275
  %279 = load i32, i32* %31, align 4
  %280 = icmp sge i32 %279, 0
  br i1 %280, label %281, label %312

281:                                              ; preds = %278
  %282 = load i32, i32* %31, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %113, i64 %283
  %285 = load i32, i32* %32, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %113, i64 %286
  %288 = call i32 @r_add(i32* %284, i32* %287)
  %289 = load i32, i32* %32, align 4
  %290 = add nsw i32 %289, 1
  %291 = load i32, i32* %19, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %309

293:                                              ; preds = %281
  %294 = load i32, i32* %32, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %113, i64 %295
  %297 = load i32, i32* %32, align 4
  %298 = add nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %113, i64 %299
  %301 = load i32, i32* %19, align 4
  %302 = load i32, i32* %32, align 4
  %303 = add nsw i32 %302, 1
  %304 = sub nsw i32 %301, %303
  %305 = sext i32 %304 to i64
  %306 = mul i64 4, %305
  %307 = trunc i64 %306 to i32
  %308 = call i32 @memmove(i32* %296, i32* %300, i32 %307)
  br label %309

309:                                              ; preds = %293, %281
  %310 = load i32, i32* %19, align 4
  %311 = add nsw i32 %310, -1
  store i32 %311, i32* %19, align 4
  br label %312

312:                                              ; preds = %309, %278, %275
  br label %313

313:                                              ; preds = %312, %223
  br label %114

314:                                              ; preds = %114
  store i32 0, i32* %38, align 4
  br label %315

315:                                              ; preds = %328, %314
  %316 = load i32, i32* %38, align 4
  %317 = load i32, i32* %19, align 4
  %318 = icmp slt i32 %316, %317
  br i1 %318, label %319, label %331

319:                                              ; preds = %315
  %320 = load i32, i32* %38, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %113, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = load i32*, i32** %7, align 8
  %325 = load i32, i32* %38, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  store i32 %323, i32* %327, align 4
  br label %328

328:                                              ; preds = %319
  %329 = load i32, i32* %38, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %38, align 4
  br label %315

331:                                              ; preds = %315
  %332 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %333 = call i32 @free(%struct.TYPE_6__** %332)
  %334 = load i32, i32* %19, align 4
  store i32 %334, i32* %6, align 4
  %335 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %335)
  br label %336

336:                                              ; preds = %331, %70, %64
  %337 = load i32, i32* %6, align 4
  ret i32 %337
}

declare dso_local %struct.TYPE_6__** @calloc(i32, i32) #1

declare dso_local i32 @__MAX(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @r_img(%struct.TYPE_6__*) #1

declare dso_local i32 @r_overlap(i32*, i32*, i32, i32) #1

declare dso_local i32 @r_surface(i32*) #1

declare dso_local i32 @r_add(i32*, i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

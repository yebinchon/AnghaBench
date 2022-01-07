; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_image.c_jbig2_image_compose_unopt.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_image.c_jbig2_image_compose_unopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32, i32)* @jbig2_image_compose_unopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbig2_image_compose_unopt(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %6
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 0, %28
  %30 = load i32, i32* %17, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %15, align 4
  br label %42

37:                                               ; preds = %27
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 0, %38
  %40 = load i32, i32* %15, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %37, %36
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %6
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = sub nsw i32 0, %47
  %49 = load i32, i32* %18, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 0, i32* %16, align 4
  br label %61

56:                                               ; preds = %46
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 0, %57
  %59 = load i32, i32* %16, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %56, %55
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %63, %64
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %65, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %62
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %15, align 4
  br label %83

82:                                               ; preds = %70
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %82, %76
  br label %84

84:                                               ; preds = %83, %62
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %85, %86
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %87, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %84
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %101, %102
  store i32 %103, i32* %16, align 4
  br label %105

104:                                              ; preds = %92
  store i32 0, i32* %16, align 4
  br label %105

105:                                              ; preds = %104, %98
  br label %106

106:                                              ; preds = %105, %84
  %107 = load i32, i32* %12, align 4
  switch i32 %107, label %320 [
    i32 131, label %108
    i32 132, label %152
    i32 128, label %196
    i32 129, label %240
    i32 130, label %285
  ]

108:                                              ; preds = %106
  store i32 0, i32* %14, align 4
  br label %109

109:                                              ; preds = %148, %108
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %151

113:                                              ; preds = %109
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %144, %113
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %147

118:                                              ; preds = %114
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %123, %124
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %127, %128
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 %130, %131
  %133 = call i32 @jbig2_image_get_pixel(%struct.TYPE_6__* %126, i32 %129, i32 %132)
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %135, %136
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %138, %139
  %141 = call i32 @jbig2_image_get_pixel(%struct.TYPE_6__* %134, i32 %137, i32 %140)
  %142 = or i32 %133, %141
  %143 = call i32 @jbig2_image_set_pixel(%struct.TYPE_6__* %119, i32 %122, i32 %125, i32 %142)
  br label %144

144:                                              ; preds = %118
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  br label %114

147:                                              ; preds = %114
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %14, align 4
  br label %109

151:                                              ; preds = %109
  br label %320

152:                                              ; preds = %106
  store i32 0, i32* %14, align 4
  br label %153

153:                                              ; preds = %192, %152
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %16, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %195

157:                                              ; preds = %153
  store i32 0, i32* %13, align 4
  br label %158

158:                                              ; preds = %188, %157
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %15, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %191

162:                                              ; preds = %158
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %167, %168
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %17, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %18, align 4
  %176 = add nsw i32 %174, %175
  %177 = call i32 @jbig2_image_get_pixel(%struct.TYPE_6__* %170, i32 %173, i32 %176)
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %182, %183
  %185 = call i32 @jbig2_image_get_pixel(%struct.TYPE_6__* %178, i32 %181, i32 %184)
  %186 = and i32 %177, %185
  %187 = call i32 @jbig2_image_set_pixel(%struct.TYPE_6__* %163, i32 %166, i32 %169, i32 %186)
  br label %188

188:                                              ; preds = %162
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %158

191:                                              ; preds = %158
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %14, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %14, align 4
  br label %153

195:                                              ; preds = %153
  br label %320

196:                                              ; preds = %106
  store i32 0, i32* %14, align 4
  br label %197

197:                                              ; preds = %236, %196
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %16, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %239

201:                                              ; preds = %197
  store i32 0, i32* %13, align 4
  br label %202

202:                                              ; preds = %232, %201
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %15, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %235

206:                                              ; preds = %202
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %208, %209
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %211, %212
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %17, align 4
  %217 = add nsw i32 %215, %216
  %218 = load i32, i32* %14, align 4
  %219 = load i32, i32* %18, align 4
  %220 = add nsw i32 %218, %219
  %221 = call i32 @jbig2_image_get_pixel(%struct.TYPE_6__* %214, i32 %217, i32 %220)
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %223 = load i32, i32* %13, align 4
  %224 = load i32, i32* %10, align 4
  %225 = add nsw i32 %223, %224
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* %11, align 4
  %228 = add nsw i32 %226, %227
  %229 = call i32 @jbig2_image_get_pixel(%struct.TYPE_6__* %222, i32 %225, i32 %228)
  %230 = xor i32 %221, %229
  %231 = call i32 @jbig2_image_set_pixel(%struct.TYPE_6__* %207, i32 %210, i32 %213, i32 %230)
  br label %232

232:                                              ; preds = %206
  %233 = load i32, i32* %13, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %13, align 4
  br label %202

235:                                              ; preds = %202
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %14, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %14, align 4
  br label %197

239:                                              ; preds = %197
  br label %320

240:                                              ; preds = %106
  store i32 0, i32* %14, align 4
  br label %241

241:                                              ; preds = %281, %240
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %16, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %284

245:                                              ; preds = %241
  store i32 0, i32* %13, align 4
  br label %246

246:                                              ; preds = %277, %245
  %247 = load i32, i32* %13, align 4
  %248 = load i32, i32* %15, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %280

250:                                              ; preds = %246
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* %10, align 4
  %254 = add nsw i32 %252, %253
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %255, %256
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %259 = load i32, i32* %13, align 4
  %260 = load i32, i32* %17, align 4
  %261 = add nsw i32 %259, %260
  %262 = load i32, i32* %14, align 4
  %263 = load i32, i32* %18, align 4
  %264 = add nsw i32 %262, %263
  %265 = call i32 @jbig2_image_get_pixel(%struct.TYPE_6__* %258, i32 %261, i32 %264)
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %267 = load i32, i32* %13, align 4
  %268 = load i32, i32* %10, align 4
  %269 = add nsw i32 %267, %268
  %270 = load i32, i32* %14, align 4
  %271 = load i32, i32* %11, align 4
  %272 = add nsw i32 %270, %271
  %273 = call i32 @jbig2_image_get_pixel(%struct.TYPE_6__* %266, i32 %269, i32 %272)
  %274 = icmp eq i32 %265, %273
  %275 = zext i1 %274 to i32
  %276 = call i32 @jbig2_image_set_pixel(%struct.TYPE_6__* %251, i32 %254, i32 %257, i32 %275)
  br label %277

277:                                              ; preds = %250
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %13, align 4
  br label %246

280:                                              ; preds = %246
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %14, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %14, align 4
  br label %241

284:                                              ; preds = %241
  br label %320

285:                                              ; preds = %106
  store i32 0, i32* %14, align 4
  br label %286

286:                                              ; preds = %316, %285
  %287 = load i32, i32* %14, align 4
  %288 = load i32, i32* %16, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %319

290:                                              ; preds = %286
  store i32 0, i32* %13, align 4
  br label %291

291:                                              ; preds = %312, %290
  %292 = load i32, i32* %13, align 4
  %293 = load i32, i32* %15, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %315

295:                                              ; preds = %291
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %297 = load i32, i32* %13, align 4
  %298 = load i32, i32* %10, align 4
  %299 = add nsw i32 %297, %298
  %300 = load i32, i32* %14, align 4
  %301 = load i32, i32* %11, align 4
  %302 = add nsw i32 %300, %301
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %304 = load i32, i32* %13, align 4
  %305 = load i32, i32* %17, align 4
  %306 = add nsw i32 %304, %305
  %307 = load i32, i32* %14, align 4
  %308 = load i32, i32* %18, align 4
  %309 = add nsw i32 %307, %308
  %310 = call i32 @jbig2_image_get_pixel(%struct.TYPE_6__* %303, i32 %306, i32 %309)
  %311 = call i32 @jbig2_image_set_pixel(%struct.TYPE_6__* %296, i32 %299, i32 %302, i32 %310)
  br label %312

312:                                              ; preds = %295
  %313 = load i32, i32* %13, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %13, align 4
  br label %291

315:                                              ; preds = %291
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %14, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %14, align 4
  br label %286

319:                                              ; preds = %286
  br label %320

320:                                              ; preds = %106, %319, %284, %239, %195, %151
  ret i32 0
}

declare dso_local i32 @jbig2_image_set_pixel(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @jbig2_image_get_pixel(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_vga.c_vga_mem_wr_handler.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_vga.c_vga_mem_wr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vga_softc = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@KB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @vga_mem_wr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_mem_wr_handler(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vga_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.vga_softc*
  store %struct.vga_softc* %21, %struct.vga_softc** %7, align 8
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %19, align 4
  %23 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %24 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %53 [
    i32 0, label %27
    i32 1, label %35
    i32 2, label %43
    i32 3, label %45
  ]

27:                                               ; preds = %3
  %28 = load i32, i32* %19, align 4
  %29 = sub nsw i32 %28, 655360
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* @KB, align 4
  %31 = mul nsw i32 128, %30
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* %19, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %19, align 4
  br label %53

35:                                               ; preds = %3
  %36 = load i32, i32* %19, align 4
  %37 = sub nsw i32 %36, 655360
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* @KB, align 4
  %39 = mul nsw i32 64, %38
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %19, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %19, align 4
  br label %53

43:                                               ; preds = %3
  %44 = call i32 @assert(i32 0)
  br label %45

45:                                               ; preds = %3, %43
  %46 = load i32, i32* %19, align 4
  %47 = sub nsw i32 %46, 753664
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* @KB, align 4
  %49 = mul nsw i32 32, %48
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* %19, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %19, align 4
  br label %53

53:                                               ; preds = %3, %45, %35, %27
  %54 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %55 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %16, align 4
  %58 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %59 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %17, align 4
  %62 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %63 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %8, align 4
  %66 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %67 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %9, align 4
  %70 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %71 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  %74 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %75 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %11, align 4
  %78 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %79 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %871 [
    i32 0, label %82
    i32 1, label %466
    i32 2, label %467
    i32 3, label %661
  ]

82:                                               ; preds = %53
  %83 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %84 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %89 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %87, %91
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %95 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 8, %97
  %99 = shl i32 %93, %98
  %100 = or i32 %92, %99
  store i32 %100, i32* %5, align 4
  %101 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %102 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 11
  %104 = load i32, i32* %103, align 8
  switch i32 %104, label %465 [
    i32 0, label %105
    i32 8, label %206
    i32 16, label %295
    i32 24, label %380
  ]

105:                                              ; preds = %82
  %106 = load i32, i32* %16, align 4
  %107 = and i32 %106, 1
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* %18, align 4
  br label %112

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i32 [ %110, %109 ], [ 0, %111 ]
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %16, align 4
  %115 = and i32 %114, 2
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* %18, align 4
  br label %120

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119, %117
  %121 = phi i32 [ %118, %117 ], [ 0, %119 ]
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %16, align 4
  %123 = and i32 %122, 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %18, align 4
  br label %128

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127, %125
  %129 = phi i32 [ %126, %125 ], [ 0, %127 ]
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %16, align 4
  %131 = and i32 %130, 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* %18, align 4
  br label %136

135:                                              ; preds = %128
  br label %136

136:                                              ; preds = %135, %133
  %137 = phi i32 [ %134, %133 ], [ 0, %135 ]
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %17, align 4
  %139 = and i32 %138, 1
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %18, align 4
  %144 = xor i32 %143, -1
  %145 = and i32 %142, %144
  br label %150

146:                                              ; preds = %136
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %18, align 4
  %149 = and i32 %147, %148
  br label %150

150:                                              ; preds = %146, %141
  %151 = phi i32 [ %145, %141 ], [ %149, %146 ]
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %17, align 4
  %153 = and i32 %152, 2
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %18, align 4
  %158 = xor i32 %157, -1
  %159 = and i32 %156, %158
  br label %164

160:                                              ; preds = %150
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* %18, align 4
  %163 = and i32 %161, %162
  br label %164

164:                                              ; preds = %160, %155
  %165 = phi i32 [ %159, %155 ], [ %163, %160 ]
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %17, align 4
  %167 = and i32 %166, 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %18, align 4
  %172 = xor i32 %171, -1
  %173 = and i32 %170, %172
  br label %178

174:                                              ; preds = %164
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* %18, align 4
  %177 = and i32 %175, %176
  br label %178

178:                                              ; preds = %174, %169
  %179 = phi i32 [ %173, %169 ], [ %177, %174 ]
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %17, align 4
  %181 = and i32 %180, 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %18, align 4
  %186 = xor i32 %185, -1
  %187 = and i32 %184, %186
  br label %192

188:                                              ; preds = %178
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* %18, align 4
  %191 = and i32 %189, %190
  br label %192

192:                                              ; preds = %188, %183
  %193 = phi i32 [ %187, %183 ], [ %191, %188 ]
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %8, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %9, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %10, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %10, align 4
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %11, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %11, align 4
  br label %465

206:                                              ; preds = %82
  %207 = load i32, i32* %16, align 4
  %208 = and i32 %207, 1
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  br label %214

211:                                              ; preds = %206
  %212 = load i32, i32* %18, align 4
  %213 = xor i32 %212, -1
  br label %214

214:                                              ; preds = %211, %210
  %215 = phi i32 [ 255, %210 ], [ %213, %211 ]
  store i32 %215, i32* %12, align 4
  %216 = load i32, i32* %16, align 4
  %217 = and i32 %216, 2
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  br label %223

220:                                              ; preds = %214
  %221 = load i32, i32* %18, align 4
  %222 = xor i32 %221, -1
  br label %223

223:                                              ; preds = %220, %219
  %224 = phi i32 [ 255, %219 ], [ %222, %220 ]
  store i32 %224, i32* %13, align 4
  %225 = load i32, i32* %16, align 4
  %226 = and i32 %225, 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  br label %232

229:                                              ; preds = %223
  %230 = load i32, i32* %18, align 4
  %231 = xor i32 %230, -1
  br label %232

232:                                              ; preds = %229, %228
  %233 = phi i32 [ 255, %228 ], [ %231, %229 ]
  store i32 %233, i32* %14, align 4
  %234 = load i32, i32* %16, align 4
  %235 = and i32 %234, 8
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  br label %241

238:                                              ; preds = %232
  %239 = load i32, i32* %18, align 4
  %240 = xor i32 %239, -1
  br label %241

241:                                              ; preds = %238, %237
  %242 = phi i32 [ 255, %237 ], [ %240, %238 ]
  store i32 %242, i32* %15, align 4
  %243 = load i32, i32* %17, align 4
  %244 = and i32 %243, 1
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* %12, align 4
  %249 = and i32 %247, %248
  br label %254

250:                                              ; preds = %241
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* %12, align 4
  %253 = and i32 %251, %252
  br label %254

254:                                              ; preds = %250, %246
  %255 = phi i32 [ %249, %246 ], [ %253, %250 ]
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* %17, align 4
  %257 = and i32 %256, 2
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %254
  %260 = load i32, i32* %9, align 4
  %261 = load i32, i32* %13, align 4
  %262 = and i32 %260, %261
  br label %267

263:                                              ; preds = %254
  %264 = load i32, i32* %5, align 4
  %265 = load i32, i32* %13, align 4
  %266 = and i32 %264, %265
  br label %267

267:                                              ; preds = %263, %259
  %268 = phi i32 [ %262, %259 ], [ %266, %263 ]
  store i32 %268, i32* %9, align 4
  %269 = load i32, i32* %17, align 4
  %270 = and i32 %269, 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %267
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %14, align 4
  %275 = and i32 %273, %274
  br label %280

276:                                              ; preds = %267
  %277 = load i32, i32* %5, align 4
  %278 = load i32, i32* %14, align 4
  %279 = and i32 %277, %278
  br label %280

280:                                              ; preds = %276, %272
  %281 = phi i32 [ %275, %272 ], [ %279, %276 ]
  store i32 %281, i32* %10, align 4
  %282 = load i32, i32* %17, align 4
  %283 = and i32 %282, 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %280
  %286 = load i32, i32* %11, align 4
  %287 = load i32, i32* %15, align 4
  %288 = and i32 %286, %287
  br label %293

289:                                              ; preds = %280
  %290 = load i32, i32* %5, align 4
  %291 = load i32, i32* %15, align 4
  %292 = and i32 %290, %291
  br label %293

293:                                              ; preds = %289, %285
  %294 = phi i32 [ %288, %285 ], [ %292, %289 ]
  store i32 %294, i32* %11, align 4
  br label %465

295:                                              ; preds = %82
  %296 = load i32, i32* %16, align 4
  %297 = and i32 %296, 1
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %295
  %300 = load i32, i32* %18, align 4
  br label %302

301:                                              ; preds = %295
  br label %302

302:                                              ; preds = %301, %299
  %303 = phi i32 [ %300, %299 ], [ 0, %301 ]
  store i32 %303, i32* %12, align 4
  %304 = load i32, i32* %16, align 4
  %305 = and i32 %304, 2
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %302
  %308 = load i32, i32* %18, align 4
  br label %310

309:                                              ; preds = %302
  br label %310

310:                                              ; preds = %309, %307
  %311 = phi i32 [ %308, %307 ], [ 0, %309 ]
  store i32 %311, i32* %13, align 4
  %312 = load i32, i32* %16, align 4
  %313 = and i32 %312, 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %310
  %316 = load i32, i32* %18, align 4
  br label %318

317:                                              ; preds = %310
  br label %318

318:                                              ; preds = %317, %315
  %319 = phi i32 [ %316, %315 ], [ 0, %317 ]
  store i32 %319, i32* %14, align 4
  %320 = load i32, i32* %16, align 4
  %321 = and i32 %320, 8
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %318
  %324 = load i32, i32* %18, align 4
  br label %326

325:                                              ; preds = %318
  br label %326

326:                                              ; preds = %325, %323
  %327 = phi i32 [ %324, %323 ], [ 0, %325 ]
  store i32 %327, i32* %15, align 4
  %328 = load i32, i32* %17, align 4
  %329 = and i32 %328, 1
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %326
  %332 = load i32, i32* %8, align 4
  %333 = load i32, i32* %12, align 4
  %334 = or i32 %332, %333
  br label %339

335:                                              ; preds = %326
  %336 = load i32, i32* %5, align 4
  %337 = load i32, i32* %12, align 4
  %338 = or i32 %336, %337
  br label %339

339:                                              ; preds = %335, %331
  %340 = phi i32 [ %334, %331 ], [ %338, %335 ]
  store i32 %340, i32* %8, align 4
  %341 = load i32, i32* %17, align 4
  %342 = and i32 %341, 2
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %339
  %345 = load i32, i32* %9, align 4
  %346 = load i32, i32* %13, align 4
  %347 = or i32 %345, %346
  br label %352

348:                                              ; preds = %339
  %349 = load i32, i32* %5, align 4
  %350 = load i32, i32* %13, align 4
  %351 = or i32 %349, %350
  br label %352

352:                                              ; preds = %348, %344
  %353 = phi i32 [ %347, %344 ], [ %351, %348 ]
  store i32 %353, i32* %9, align 4
  %354 = load i32, i32* %17, align 4
  %355 = and i32 %354, 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %352
  %358 = load i32, i32* %10, align 4
  %359 = load i32, i32* %14, align 4
  %360 = or i32 %358, %359
  br label %365

361:                                              ; preds = %352
  %362 = load i32, i32* %5, align 4
  %363 = load i32, i32* %14, align 4
  %364 = or i32 %362, %363
  br label %365

365:                                              ; preds = %361, %357
  %366 = phi i32 [ %360, %357 ], [ %364, %361 ]
  store i32 %366, i32* %10, align 4
  %367 = load i32, i32* %17, align 4
  %368 = and i32 %367, 8
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %374

370:                                              ; preds = %365
  %371 = load i32, i32* %11, align 4
  %372 = load i32, i32* %15, align 4
  %373 = or i32 %371, %372
  br label %378

374:                                              ; preds = %365
  %375 = load i32, i32* %5, align 4
  %376 = load i32, i32* %15, align 4
  %377 = or i32 %375, %376
  br label %378

378:                                              ; preds = %374, %370
  %379 = phi i32 [ %373, %370 ], [ %377, %374 ]
  store i32 %379, i32* %11, align 4
  br label %465

380:                                              ; preds = %82
  %381 = load i32, i32* %16, align 4
  %382 = and i32 %381, 1
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %380
  %385 = load i32, i32* %18, align 4
  br label %387

386:                                              ; preds = %380
  br label %387

387:                                              ; preds = %386, %384
  %388 = phi i32 [ %385, %384 ], [ 0, %386 ]
  store i32 %388, i32* %12, align 4
  %389 = load i32, i32* %16, align 4
  %390 = and i32 %389, 2
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %387
  %393 = load i32, i32* %18, align 4
  br label %395

394:                                              ; preds = %387
  br label %395

395:                                              ; preds = %394, %392
  %396 = phi i32 [ %393, %392 ], [ 0, %394 ]
  store i32 %396, i32* %13, align 4
  %397 = load i32, i32* %16, align 4
  %398 = and i32 %397, 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %402

400:                                              ; preds = %395
  %401 = load i32, i32* %18, align 4
  br label %403

402:                                              ; preds = %395
  br label %403

403:                                              ; preds = %402, %400
  %404 = phi i32 [ %401, %400 ], [ 0, %402 ]
  store i32 %404, i32* %14, align 4
  %405 = load i32, i32* %16, align 4
  %406 = and i32 %405, 8
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %403
  %409 = load i32, i32* %18, align 4
  br label %411

410:                                              ; preds = %403
  br label %411

411:                                              ; preds = %410, %408
  %412 = phi i32 [ %409, %408 ], [ 0, %410 ]
  store i32 %412, i32* %15, align 4
  %413 = load i32, i32* %17, align 4
  %414 = and i32 %413, 1
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %411
  %417 = load i32, i32* %8, align 4
  %418 = load i32, i32* %12, align 4
  %419 = xor i32 %417, %418
  br label %424

420:                                              ; preds = %411
  %421 = load i32, i32* %5, align 4
  %422 = load i32, i32* %12, align 4
  %423 = xor i32 %421, %422
  br label %424

424:                                              ; preds = %420, %416
  %425 = phi i32 [ %419, %416 ], [ %423, %420 ]
  store i32 %425, i32* %8, align 4
  %426 = load i32, i32* %17, align 4
  %427 = and i32 %426, 2
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %424
  %430 = load i32, i32* %9, align 4
  %431 = load i32, i32* %13, align 4
  %432 = xor i32 %430, %431
  br label %437

433:                                              ; preds = %424
  %434 = load i32, i32* %5, align 4
  %435 = load i32, i32* %13, align 4
  %436 = xor i32 %434, %435
  br label %437

437:                                              ; preds = %433, %429
  %438 = phi i32 [ %432, %429 ], [ %436, %433 ]
  store i32 %438, i32* %9, align 4
  %439 = load i32, i32* %17, align 4
  %440 = and i32 %439, 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %446

442:                                              ; preds = %437
  %443 = load i32, i32* %10, align 4
  %444 = load i32, i32* %14, align 4
  %445 = xor i32 %443, %444
  br label %450

446:                                              ; preds = %437
  %447 = load i32, i32* %5, align 4
  %448 = load i32, i32* %14, align 4
  %449 = xor i32 %447, %448
  br label %450

450:                                              ; preds = %446, %442
  %451 = phi i32 [ %445, %442 ], [ %449, %446 ]
  store i32 %451, i32* %10, align 4
  %452 = load i32, i32* %17, align 4
  %453 = and i32 %452, 8
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %459

455:                                              ; preds = %450
  %456 = load i32, i32* %11, align 4
  %457 = load i32, i32* %15, align 4
  %458 = xor i32 %456, %457
  br label %463

459:                                              ; preds = %450
  %460 = load i32, i32* %5, align 4
  %461 = load i32, i32* %15, align 4
  %462 = xor i32 %460, %461
  br label %463

463:                                              ; preds = %459, %455
  %464 = phi i32 [ %458, %455 ], [ %462, %459 ]
  store i32 %464, i32* %11, align 4
  br label %465

465:                                              ; preds = %82, %463, %378, %293, %192
  br label %871

466:                                              ; preds = %53
  br label %871

467:                                              ; preds = %53
  %468 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %469 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %468, i32 0, i32 2
  %470 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %469, i32 0, i32 8
  %471 = load i32, i32* %470, align 8
  store i32 %471, i32* %18, align 4
  %472 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %473 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %472, i32 0, i32 2
  %474 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %473, i32 0, i32 11
  %475 = load i32, i32* %474, align 8
  switch i32 %475, label %660 [
    i32 0, label %476
    i32 8, label %533
    i32 16, label %578
    i32 24, label %619
  ]

476:                                              ; preds = %467
  %477 = load i32, i32* %5, align 4
  %478 = and i32 %477, 1
  %479 = icmp ne i32 %478, 0
  %480 = zext i1 %479 to i64
  %481 = select i1 %479, i32 255, i32 0
  %482 = load i32, i32* %18, align 4
  %483 = and i32 %481, %482
  store i32 %483, i32* %12, align 4
  %484 = load i32, i32* %5, align 4
  %485 = and i32 %484, 2
  %486 = icmp ne i32 %485, 0
  %487 = zext i1 %486 to i64
  %488 = select i1 %486, i32 255, i32 0
  %489 = load i32, i32* %18, align 4
  %490 = and i32 %488, %489
  store i32 %490, i32* %13, align 4
  %491 = load i32, i32* %5, align 4
  %492 = and i32 %491, 4
  %493 = icmp ne i32 %492, 0
  %494 = zext i1 %493 to i64
  %495 = select i1 %493, i32 255, i32 0
  %496 = load i32, i32* %18, align 4
  %497 = and i32 %495, %496
  store i32 %497, i32* %14, align 4
  %498 = load i32, i32* %5, align 4
  %499 = and i32 %498, 8
  %500 = icmp ne i32 %499, 0
  %501 = zext i1 %500 to i64
  %502 = select i1 %500, i32 255, i32 0
  %503 = load i32, i32* %18, align 4
  %504 = and i32 %502, %503
  store i32 %504, i32* %15, align 4
  %505 = load i32, i32* %18, align 4
  %506 = xor i32 %505, -1
  %507 = load i32, i32* %8, align 4
  %508 = and i32 %507, %506
  store i32 %508, i32* %8, align 4
  %509 = load i32, i32* %18, align 4
  %510 = xor i32 %509, -1
  %511 = load i32, i32* %9, align 4
  %512 = and i32 %511, %510
  store i32 %512, i32* %9, align 4
  %513 = load i32, i32* %18, align 4
  %514 = xor i32 %513, -1
  %515 = load i32, i32* %10, align 4
  %516 = and i32 %515, %514
  store i32 %516, i32* %10, align 4
  %517 = load i32, i32* %18, align 4
  %518 = xor i32 %517, -1
  %519 = load i32, i32* %11, align 4
  %520 = and i32 %519, %518
  store i32 %520, i32* %11, align 4
  %521 = load i32, i32* %12, align 4
  %522 = load i32, i32* %8, align 4
  %523 = or i32 %522, %521
  store i32 %523, i32* %8, align 4
  %524 = load i32, i32* %13, align 4
  %525 = load i32, i32* %9, align 4
  %526 = or i32 %525, %524
  store i32 %526, i32* %9, align 4
  %527 = load i32, i32* %14, align 4
  %528 = load i32, i32* %10, align 4
  %529 = or i32 %528, %527
  store i32 %529, i32* %10, align 4
  %530 = load i32, i32* %15, align 4
  %531 = load i32, i32* %11, align 4
  %532 = or i32 %531, %530
  store i32 %532, i32* %11, align 4
  br label %660

533:                                              ; preds = %467
  %534 = load i32, i32* %5, align 4
  %535 = and i32 %534, 1
  %536 = icmp ne i32 %535, 0
  %537 = zext i1 %536 to i64
  %538 = select i1 %536, i32 255, i32 0
  %539 = load i32, i32* %18, align 4
  %540 = xor i32 %539, -1
  %541 = or i32 %538, %540
  store i32 %541, i32* %12, align 4
  %542 = load i32, i32* %5, align 4
  %543 = and i32 %542, 2
  %544 = icmp ne i32 %543, 0
  %545 = zext i1 %544 to i64
  %546 = select i1 %544, i32 255, i32 0
  %547 = load i32, i32* %18, align 4
  %548 = xor i32 %547, -1
  %549 = or i32 %546, %548
  store i32 %549, i32* %13, align 4
  %550 = load i32, i32* %5, align 4
  %551 = and i32 %550, 4
  %552 = icmp ne i32 %551, 0
  %553 = zext i1 %552 to i64
  %554 = select i1 %552, i32 255, i32 0
  %555 = load i32, i32* %18, align 4
  %556 = xor i32 %555, -1
  %557 = or i32 %554, %556
  store i32 %557, i32* %14, align 4
  %558 = load i32, i32* %5, align 4
  %559 = and i32 %558, 8
  %560 = icmp ne i32 %559, 0
  %561 = zext i1 %560 to i64
  %562 = select i1 %560, i32 255, i32 0
  %563 = load i32, i32* %18, align 4
  %564 = xor i32 %563, -1
  %565 = or i32 %562, %564
  store i32 %565, i32* %15, align 4
  %566 = load i32, i32* %12, align 4
  %567 = load i32, i32* %8, align 4
  %568 = and i32 %567, %566
  store i32 %568, i32* %8, align 4
  %569 = load i32, i32* %13, align 4
  %570 = load i32, i32* %9, align 4
  %571 = and i32 %570, %569
  store i32 %571, i32* %9, align 4
  %572 = load i32, i32* %14, align 4
  %573 = load i32, i32* %10, align 4
  %574 = and i32 %573, %572
  store i32 %574, i32* %10, align 4
  %575 = load i32, i32* %15, align 4
  %576 = load i32, i32* %11, align 4
  %577 = and i32 %576, %575
  store i32 %577, i32* %11, align 4
  br label %660

578:                                              ; preds = %467
  %579 = load i32, i32* %5, align 4
  %580 = and i32 %579, 1
  %581 = icmp ne i32 %580, 0
  %582 = zext i1 %581 to i64
  %583 = select i1 %581, i32 255, i32 0
  %584 = load i32, i32* %18, align 4
  %585 = and i32 %583, %584
  store i32 %585, i32* %12, align 4
  %586 = load i32, i32* %5, align 4
  %587 = and i32 %586, 2
  %588 = icmp ne i32 %587, 0
  %589 = zext i1 %588 to i64
  %590 = select i1 %588, i32 255, i32 0
  %591 = load i32, i32* %18, align 4
  %592 = and i32 %590, %591
  store i32 %592, i32* %13, align 4
  %593 = load i32, i32* %5, align 4
  %594 = and i32 %593, 4
  %595 = icmp ne i32 %594, 0
  %596 = zext i1 %595 to i64
  %597 = select i1 %595, i32 255, i32 0
  %598 = load i32, i32* %18, align 4
  %599 = and i32 %597, %598
  store i32 %599, i32* %14, align 4
  %600 = load i32, i32* %5, align 4
  %601 = and i32 %600, 8
  %602 = icmp ne i32 %601, 0
  %603 = zext i1 %602 to i64
  %604 = select i1 %602, i32 255, i32 0
  %605 = load i32, i32* %18, align 4
  %606 = and i32 %604, %605
  store i32 %606, i32* %15, align 4
  %607 = load i32, i32* %12, align 4
  %608 = load i32, i32* %8, align 4
  %609 = or i32 %608, %607
  store i32 %609, i32* %8, align 4
  %610 = load i32, i32* %13, align 4
  %611 = load i32, i32* %9, align 4
  %612 = or i32 %611, %610
  store i32 %612, i32* %9, align 4
  %613 = load i32, i32* %14, align 4
  %614 = load i32, i32* %10, align 4
  %615 = or i32 %614, %613
  store i32 %615, i32* %10, align 4
  %616 = load i32, i32* %15, align 4
  %617 = load i32, i32* %11, align 4
  %618 = or i32 %617, %616
  store i32 %618, i32* %11, align 4
  br label %660

619:                                              ; preds = %467
  %620 = load i32, i32* %5, align 4
  %621 = and i32 %620, 1
  %622 = icmp ne i32 %621, 0
  %623 = zext i1 %622 to i64
  %624 = select i1 %622, i32 255, i32 0
  %625 = load i32, i32* %18, align 4
  %626 = and i32 %624, %625
  store i32 %626, i32* %12, align 4
  %627 = load i32, i32* %5, align 4
  %628 = and i32 %627, 2
  %629 = icmp ne i32 %628, 0
  %630 = zext i1 %629 to i64
  %631 = select i1 %629, i32 255, i32 0
  %632 = load i32, i32* %18, align 4
  %633 = and i32 %631, %632
  store i32 %633, i32* %13, align 4
  %634 = load i32, i32* %5, align 4
  %635 = and i32 %634, 4
  %636 = icmp ne i32 %635, 0
  %637 = zext i1 %636 to i64
  %638 = select i1 %636, i32 255, i32 0
  %639 = load i32, i32* %18, align 4
  %640 = and i32 %638, %639
  store i32 %640, i32* %14, align 4
  %641 = load i32, i32* %5, align 4
  %642 = and i32 %641, 8
  %643 = icmp ne i32 %642, 0
  %644 = zext i1 %643 to i64
  %645 = select i1 %643, i32 255, i32 0
  %646 = load i32, i32* %18, align 4
  %647 = and i32 %645, %646
  store i32 %647, i32* %15, align 4
  %648 = load i32, i32* %12, align 4
  %649 = load i32, i32* %8, align 4
  %650 = xor i32 %649, %648
  store i32 %650, i32* %8, align 4
  %651 = load i32, i32* %13, align 4
  %652 = load i32, i32* %9, align 4
  %653 = xor i32 %652, %651
  store i32 %653, i32* %9, align 4
  %654 = load i32, i32* %14, align 4
  %655 = load i32, i32* %10, align 4
  %656 = xor i32 %655, %654
  store i32 %656, i32* %10, align 4
  %657 = load i32, i32* %15, align 4
  %658 = load i32, i32* %11, align 4
  %659 = xor i32 %658, %657
  store i32 %659, i32* %11, align 4
  br label %660

660:                                              ; preds = %467, %619, %578, %533, %476
  br label %871

661:                                              ; preds = %53
  %662 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %663 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %662, i32 0, i32 2
  %664 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %663, i32 0, i32 8
  %665 = load i32, i32* %664, align 8
  %666 = load i32, i32* %5, align 4
  %667 = and i32 %665, %666
  store i32 %667, i32* %18, align 4
  %668 = load i32, i32* %5, align 4
  %669 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %670 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %669, i32 0, i32 2
  %671 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %670, i32 0, i32 9
  %672 = load i32, i32* %671, align 4
  %673 = ashr i32 %668, %672
  %674 = load i32, i32* %5, align 4
  %675 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %676 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %675, i32 0, i32 2
  %677 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %676, i32 0, i32 9
  %678 = load i32, i32* %677, align 4
  %679 = sub nsw i32 8, %678
  %680 = shl i32 %674, %679
  %681 = or i32 %673, %680
  store i32 %681, i32* %5, align 4
  %682 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %683 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %682, i32 0, i32 2
  %684 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %683, i32 0, i32 11
  %685 = load i32, i32* %684, align 8
  switch i32 %685, label %870 [
    i32 0, label %686
    i32 8, label %743
    i32 16, label %788
    i32 24, label %829
  ]

686:                                              ; preds = %661
  %687 = load i32, i32* %16, align 4
  %688 = and i32 %687, 1
  %689 = icmp ne i32 %688, 0
  %690 = zext i1 %689 to i64
  %691 = select i1 %689, i32 255, i32 0
  %692 = load i32, i32* %18, align 4
  %693 = and i32 %691, %692
  store i32 %693, i32* %12, align 4
  %694 = load i32, i32* %16, align 4
  %695 = and i32 %694, 2
  %696 = icmp ne i32 %695, 0
  %697 = zext i1 %696 to i64
  %698 = select i1 %696, i32 255, i32 0
  %699 = load i32, i32* %18, align 4
  %700 = and i32 %698, %699
  store i32 %700, i32* %13, align 4
  %701 = load i32, i32* %16, align 4
  %702 = and i32 %701, 4
  %703 = icmp ne i32 %702, 0
  %704 = zext i1 %703 to i64
  %705 = select i1 %703, i32 255, i32 0
  %706 = load i32, i32* %18, align 4
  %707 = and i32 %705, %706
  store i32 %707, i32* %14, align 4
  %708 = load i32, i32* %16, align 4
  %709 = and i32 %708, 8
  %710 = icmp ne i32 %709, 0
  %711 = zext i1 %710 to i64
  %712 = select i1 %710, i32 255, i32 0
  %713 = load i32, i32* %18, align 4
  %714 = and i32 %712, %713
  store i32 %714, i32* %15, align 4
  %715 = load i32, i32* %18, align 4
  %716 = xor i32 %715, -1
  %717 = load i32, i32* %8, align 4
  %718 = and i32 %717, %716
  store i32 %718, i32* %8, align 4
  %719 = load i32, i32* %18, align 4
  %720 = xor i32 %719, -1
  %721 = load i32, i32* %9, align 4
  %722 = and i32 %721, %720
  store i32 %722, i32* %9, align 4
  %723 = load i32, i32* %18, align 4
  %724 = xor i32 %723, -1
  %725 = load i32, i32* %10, align 4
  %726 = and i32 %725, %724
  store i32 %726, i32* %10, align 4
  %727 = load i32, i32* %18, align 4
  %728 = xor i32 %727, -1
  %729 = load i32, i32* %11, align 4
  %730 = and i32 %729, %728
  store i32 %730, i32* %11, align 4
  %731 = load i32, i32* %12, align 4
  %732 = load i32, i32* %8, align 4
  %733 = or i32 %732, %731
  store i32 %733, i32* %8, align 4
  %734 = load i32, i32* %13, align 4
  %735 = load i32, i32* %9, align 4
  %736 = or i32 %735, %734
  store i32 %736, i32* %9, align 4
  %737 = load i32, i32* %14, align 4
  %738 = load i32, i32* %10, align 4
  %739 = or i32 %738, %737
  store i32 %739, i32* %10, align 4
  %740 = load i32, i32* %15, align 4
  %741 = load i32, i32* %11, align 4
  %742 = or i32 %741, %740
  store i32 %742, i32* %11, align 4
  br label %870

743:                                              ; preds = %661
  %744 = load i32, i32* %16, align 4
  %745 = and i32 %744, 1
  %746 = icmp ne i32 %745, 0
  %747 = zext i1 %746 to i64
  %748 = select i1 %746, i32 255, i32 0
  %749 = load i32, i32* %18, align 4
  %750 = xor i32 %749, -1
  %751 = or i32 %748, %750
  store i32 %751, i32* %12, align 4
  %752 = load i32, i32* %16, align 4
  %753 = and i32 %752, 2
  %754 = icmp ne i32 %753, 0
  %755 = zext i1 %754 to i64
  %756 = select i1 %754, i32 255, i32 0
  %757 = load i32, i32* %18, align 4
  %758 = xor i32 %757, -1
  %759 = or i32 %756, %758
  store i32 %759, i32* %13, align 4
  %760 = load i32, i32* %16, align 4
  %761 = and i32 %760, 4
  %762 = icmp ne i32 %761, 0
  %763 = zext i1 %762 to i64
  %764 = select i1 %762, i32 255, i32 0
  %765 = load i32, i32* %18, align 4
  %766 = xor i32 %765, -1
  %767 = or i32 %764, %766
  store i32 %767, i32* %14, align 4
  %768 = load i32, i32* %16, align 4
  %769 = and i32 %768, 8
  %770 = icmp ne i32 %769, 0
  %771 = zext i1 %770 to i64
  %772 = select i1 %770, i32 255, i32 0
  %773 = load i32, i32* %18, align 4
  %774 = xor i32 %773, -1
  %775 = or i32 %772, %774
  store i32 %775, i32* %15, align 4
  %776 = load i32, i32* %12, align 4
  %777 = load i32, i32* %8, align 4
  %778 = and i32 %777, %776
  store i32 %778, i32* %8, align 4
  %779 = load i32, i32* %13, align 4
  %780 = load i32, i32* %9, align 4
  %781 = and i32 %780, %779
  store i32 %781, i32* %9, align 4
  %782 = load i32, i32* %14, align 4
  %783 = load i32, i32* %10, align 4
  %784 = and i32 %783, %782
  store i32 %784, i32* %10, align 4
  %785 = load i32, i32* %15, align 4
  %786 = load i32, i32* %11, align 4
  %787 = and i32 %786, %785
  store i32 %787, i32* %11, align 4
  br label %870

788:                                              ; preds = %661
  %789 = load i32, i32* %16, align 4
  %790 = and i32 %789, 1
  %791 = icmp ne i32 %790, 0
  %792 = zext i1 %791 to i64
  %793 = select i1 %791, i32 255, i32 0
  %794 = load i32, i32* %18, align 4
  %795 = and i32 %793, %794
  store i32 %795, i32* %12, align 4
  %796 = load i32, i32* %16, align 4
  %797 = and i32 %796, 2
  %798 = icmp ne i32 %797, 0
  %799 = zext i1 %798 to i64
  %800 = select i1 %798, i32 255, i32 0
  %801 = load i32, i32* %18, align 4
  %802 = and i32 %800, %801
  store i32 %802, i32* %13, align 4
  %803 = load i32, i32* %16, align 4
  %804 = and i32 %803, 4
  %805 = icmp ne i32 %804, 0
  %806 = zext i1 %805 to i64
  %807 = select i1 %805, i32 255, i32 0
  %808 = load i32, i32* %18, align 4
  %809 = and i32 %807, %808
  store i32 %809, i32* %14, align 4
  %810 = load i32, i32* %16, align 4
  %811 = and i32 %810, 8
  %812 = icmp ne i32 %811, 0
  %813 = zext i1 %812 to i64
  %814 = select i1 %812, i32 255, i32 0
  %815 = load i32, i32* %18, align 4
  %816 = and i32 %814, %815
  store i32 %816, i32* %15, align 4
  %817 = load i32, i32* %12, align 4
  %818 = load i32, i32* %8, align 4
  %819 = or i32 %818, %817
  store i32 %819, i32* %8, align 4
  %820 = load i32, i32* %13, align 4
  %821 = load i32, i32* %9, align 4
  %822 = or i32 %821, %820
  store i32 %822, i32* %9, align 4
  %823 = load i32, i32* %14, align 4
  %824 = load i32, i32* %10, align 4
  %825 = or i32 %824, %823
  store i32 %825, i32* %10, align 4
  %826 = load i32, i32* %15, align 4
  %827 = load i32, i32* %11, align 4
  %828 = or i32 %827, %826
  store i32 %828, i32* %11, align 4
  br label %870

829:                                              ; preds = %661
  %830 = load i32, i32* %16, align 4
  %831 = and i32 %830, 1
  %832 = icmp ne i32 %831, 0
  %833 = zext i1 %832 to i64
  %834 = select i1 %832, i32 255, i32 0
  %835 = load i32, i32* %18, align 4
  %836 = and i32 %834, %835
  store i32 %836, i32* %12, align 4
  %837 = load i32, i32* %16, align 4
  %838 = and i32 %837, 2
  %839 = icmp ne i32 %838, 0
  %840 = zext i1 %839 to i64
  %841 = select i1 %839, i32 255, i32 0
  %842 = load i32, i32* %18, align 4
  %843 = and i32 %841, %842
  store i32 %843, i32* %13, align 4
  %844 = load i32, i32* %16, align 4
  %845 = and i32 %844, 4
  %846 = icmp ne i32 %845, 0
  %847 = zext i1 %846 to i64
  %848 = select i1 %846, i32 255, i32 0
  %849 = load i32, i32* %18, align 4
  %850 = and i32 %848, %849
  store i32 %850, i32* %14, align 4
  %851 = load i32, i32* %16, align 4
  %852 = and i32 %851, 8
  %853 = icmp ne i32 %852, 0
  %854 = zext i1 %853 to i64
  %855 = select i1 %853, i32 255, i32 0
  %856 = load i32, i32* %18, align 4
  %857 = and i32 %855, %856
  store i32 %857, i32* %15, align 4
  %858 = load i32, i32* %12, align 4
  %859 = load i32, i32* %8, align 4
  %860 = xor i32 %859, %858
  store i32 %860, i32* %8, align 4
  %861 = load i32, i32* %13, align 4
  %862 = load i32, i32* %9, align 4
  %863 = xor i32 %862, %861
  store i32 %863, i32* %9, align 4
  %864 = load i32, i32* %14, align 4
  %865 = load i32, i32* %10, align 4
  %866 = xor i32 %865, %864
  store i32 %866, i32* %10, align 4
  %867 = load i32, i32* %15, align 4
  %868 = load i32, i32* %11, align 4
  %869 = xor i32 %868, %867
  store i32 %869, i32* %11, align 4
  br label %870

870:                                              ; preds = %661, %829, %788, %743, %686
  br label %871

871:                                              ; preds = %53, %870, %660, %466, %465
  %872 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %873 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %872, i32 0, i32 2
  %874 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %873, i32 0, i32 10
  %875 = load i64, i64* %874, align 8
  %876 = icmp ne i64 %875, 0
  br i1 %876, label %877, label %958

877:                                              ; preds = %871
  %878 = load i32, i32* %19, align 4
  %879 = and i32 %878, 1
  %880 = icmp ne i32 %879, 0
  br i1 %880, label %881, label %920

881:                                              ; preds = %877
  %882 = load i32, i32* %19, align 4
  %883 = and i32 %882, -2
  store i32 %883, i32* %19, align 4
  %884 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %885 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %884, i32 0, i32 1
  %886 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %885, i32 0, i32 0
  %887 = load i32, i32* %886, align 8
  %888 = and i32 %887, 2
  %889 = icmp ne i32 %888, 0
  br i1 %889, label %890, label %901

890:                                              ; preds = %881
  %891 = load i32, i32* %9, align 4
  %892 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %893 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %892, i32 0, i32 0
  %894 = load i32*, i32** %893, align 8
  %895 = load i32, i32* %19, align 4
  %896 = load i32, i32* @KB, align 4
  %897 = mul nsw i32 64, %896
  %898 = add nsw i32 %895, %897
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds i32, i32* %894, i64 %899
  store i32 %891, i32* %900, align 4
  br label %901

901:                                              ; preds = %890, %881
  %902 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %903 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %902, i32 0, i32 1
  %904 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %903, i32 0, i32 0
  %905 = load i32, i32* %904, align 8
  %906 = and i32 %905, 8
  %907 = icmp ne i32 %906, 0
  br i1 %907, label %908, label %919

908:                                              ; preds = %901
  %909 = load i32, i32* %11, align 4
  %910 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %911 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %910, i32 0, i32 0
  %912 = load i32*, i32** %911, align 8
  %913 = load i32, i32* %19, align 4
  %914 = load i32, i32* @KB, align 4
  %915 = mul nsw i32 192, %914
  %916 = add nsw i32 %913, %915
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds i32, i32* %912, i64 %917
  store i32 %909, i32* %918, align 4
  br label %919

919:                                              ; preds = %908, %901
  br label %957

920:                                              ; preds = %877
  %921 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %922 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %921, i32 0, i32 1
  %923 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %922, i32 0, i32 0
  %924 = load i32, i32* %923, align 8
  %925 = and i32 %924, 1
  %926 = icmp ne i32 %925, 0
  br i1 %926, label %927, label %938

927:                                              ; preds = %920
  %928 = load i32, i32* %8, align 4
  %929 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %930 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %929, i32 0, i32 0
  %931 = load i32*, i32** %930, align 8
  %932 = load i32, i32* %19, align 4
  %933 = load i32, i32* @KB, align 4
  %934 = mul nsw i32 0, %933
  %935 = add nsw i32 %932, %934
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds i32, i32* %931, i64 %936
  store i32 %928, i32* %937, align 4
  br label %938

938:                                              ; preds = %927, %920
  %939 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %940 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %939, i32 0, i32 1
  %941 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %940, i32 0, i32 0
  %942 = load i32, i32* %941, align 8
  %943 = and i32 %942, 4
  %944 = icmp ne i32 %943, 0
  br i1 %944, label %945, label %956

945:                                              ; preds = %938
  %946 = load i32, i32* %10, align 4
  %947 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %948 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %947, i32 0, i32 0
  %949 = load i32*, i32** %948, align 8
  %950 = load i32, i32* %19, align 4
  %951 = load i32, i32* @KB, align 4
  %952 = mul nsw i32 128, %951
  %953 = add nsw i32 %950, %952
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds i32, i32* %949, i64 %954
  store i32 %946, i32* %955, align 4
  br label %956

956:                                              ; preds = %945, %938
  br label %957

957:                                              ; preds = %956, %919
  br label %1031

958:                                              ; preds = %871
  %959 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %960 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %959, i32 0, i32 1
  %961 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %960, i32 0, i32 0
  %962 = load i32, i32* %961, align 8
  %963 = and i32 %962, 1
  %964 = icmp ne i32 %963, 0
  br i1 %964, label %965, label %976

965:                                              ; preds = %958
  %966 = load i32, i32* %8, align 4
  %967 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %968 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %967, i32 0, i32 0
  %969 = load i32*, i32** %968, align 8
  %970 = load i32, i32* %19, align 4
  %971 = load i32, i32* @KB, align 4
  %972 = mul nsw i32 0, %971
  %973 = add nsw i32 %970, %972
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds i32, i32* %969, i64 %974
  store i32 %966, i32* %975, align 4
  br label %976

976:                                              ; preds = %965, %958
  %977 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %978 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %977, i32 0, i32 1
  %979 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %978, i32 0, i32 0
  %980 = load i32, i32* %979, align 8
  %981 = and i32 %980, 2
  %982 = icmp ne i32 %981, 0
  br i1 %982, label %983, label %994

983:                                              ; preds = %976
  %984 = load i32, i32* %9, align 4
  %985 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %986 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %985, i32 0, i32 0
  %987 = load i32*, i32** %986, align 8
  %988 = load i32, i32* %19, align 4
  %989 = load i32, i32* @KB, align 4
  %990 = mul nsw i32 64, %989
  %991 = add nsw i32 %988, %990
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds i32, i32* %987, i64 %992
  store i32 %984, i32* %993, align 4
  br label %994

994:                                              ; preds = %983, %976
  %995 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %996 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %995, i32 0, i32 1
  %997 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %996, i32 0, i32 0
  %998 = load i32, i32* %997, align 8
  %999 = and i32 %998, 4
  %1000 = icmp ne i32 %999, 0
  br i1 %1000, label %1001, label %1012

1001:                                             ; preds = %994
  %1002 = load i32, i32* %10, align 4
  %1003 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %1004 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %1003, i32 0, i32 0
  %1005 = load i32*, i32** %1004, align 8
  %1006 = load i32, i32* %19, align 4
  %1007 = load i32, i32* @KB, align 4
  %1008 = mul nsw i32 128, %1007
  %1009 = add nsw i32 %1006, %1008
  %1010 = sext i32 %1009 to i64
  %1011 = getelementptr inbounds i32, i32* %1005, i64 %1010
  store i32 %1002, i32* %1011, align 4
  br label %1012

1012:                                             ; preds = %1001, %994
  %1013 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %1014 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %1013, i32 0, i32 1
  %1015 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1014, i32 0, i32 0
  %1016 = load i32, i32* %1015, align 8
  %1017 = and i32 %1016, 8
  %1018 = icmp ne i32 %1017, 0
  br i1 %1018, label %1019, label %1030

1019:                                             ; preds = %1012
  %1020 = load i32, i32* %11, align 4
  %1021 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %1022 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %1021, i32 0, i32 0
  %1023 = load i32*, i32** %1022, align 8
  %1024 = load i32, i32* %19, align 4
  %1025 = load i32, i32* @KB, align 4
  %1026 = mul nsw i32 192, %1025
  %1027 = add nsw i32 %1024, %1026
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds i32, i32* %1023, i64 %1028
  store i32 %1020, i32* %1029, align 4
  br label %1030

1030:                                             ; preds = %1019, %1012
  br label %1031

1031:                                             ; preds = %1030, %957
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

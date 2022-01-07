; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_rfb.c_rfb_send_screen.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_rfb.c_rfb_send_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfb_softc = type { i32, i32, i32, i32*, i32, i64, i32 }
%struct.bhyvegc_image = type { i32, i32, i32* }

@PIX_PER_CELL = common dso_local global i32 0, align 4
@PIXCELL_MASK = common dso_local global i32 0, align 4
@RFB_SEND_ALL_THRESH = common dso_local global i32 0, align 4
@PIXCELL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rfb_softc*, i32, i32)* @rfb_send_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rfb_send_screen(%struct.rfb_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.rfb_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bhyvegc_image*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.rfb_softc* %0, %struct.rfb_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %25 = call i32 (...) @console_refresh()
  %26 = call %struct.bhyvegc_image* (...) @console_get_image()
  store %struct.bhyvegc_image* %26, %struct.bhyvegc_image** %8, align 8
  %27 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %28 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %27, i32 0, i32 4
  %29 = call i32 @pthread_mutex_lock(i32* %28)
  %30 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %31 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %36 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %35, i32 0, i32 4
  %37 = call i32 @pthread_mutex_unlock(i32* %36)
  store i64 1, i64* %4, align 8
  br label %421

38:                                               ; preds = %3
  %39 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %40 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %42 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %41, i32 0, i32 4
  %43 = call i32 @pthread_mutex_unlock(i32* %42)
  store i64 0, i64* %21, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %50 = call i64 @rfb_send_all(%struct.rfb_softc* %47, i32 %48, %struct.bhyvegc_image* %49)
  store i64 %50, i64* %21, align 8
  br label %411

51:                                               ; preds = %38
  %52 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %53 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %56 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %58 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %61 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %63 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %16, align 4
  %65 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %66 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %17, align 4
  %68 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %69 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PIX_PER_CELL, align 4
  %72 = call i64 @howmany(i32 %70, i32 %71)
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %14, align 4
  %74 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %75 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PIX_PER_CELL, align 4
  %78 = call i64 @howmany(i32 %76, i32 %77)
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @PIXCELL_MASK, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* @PIXCELL_MASK, align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %20, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %51
  %89 = load i32, i32* @PIX_PER_CELL, align 4
  store i32 %89, i32* %20, align 4
  br label %90

90:                                               ; preds = %88, %51
  %91 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %92 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  store i32* %93, i32** %18, align 8
  %94 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %95 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = zext i32 %97 to i64
  %99 = sub i64 0, %98
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32* %100, i32** %22, align 8
  %101 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %102 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sub i32 %103, %104
  %106 = zext i32 %105 to i64
  %107 = inttoptr i64 %106 to i32*
  store i32* %107, i32** %23, align 8
  store i32 0, i32* %24, align 4
  %108 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %109 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = zext i32 %111 to i64
  %113 = mul i64 4, %112
  %114 = load i32, i32* %15, align 4
  %115 = zext i32 %114 to i64
  %116 = mul i64 %113, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memset(i32* %110, i32 0, i32 %117)
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %323, %90
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %326

123:                                              ; preds = %119
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @PIXCELL_MASK, align 4
  %126 = and i32 %124, %125
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load i32, i32* %14, align 4
  %130 = load i32*, i32** %22, align 8
  %131 = zext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32* %132, i32** %22, align 8
  %133 = load i32, i32* %14, align 4
  %134 = load i32*, i32** %23, align 8
  %135 = zext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32* %136, i32** %23, align 8
  br label %137

137:                                              ; preds = %128, %123
  store i32 0, i32* %10, align 4
  br label %138

138:                                              ; preds = %229, %137
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %142, label %232

142:                                              ; preds = %138
  %143 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %144 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %142
  %148 = load i32*, i32** %18, align 8
  %149 = load i32, i32* @PIX_PER_CELL, align 4
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 4
  %152 = load i32*, i32** %22, align 8
  %153 = load i32, i32* %10, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @fast_crc32(i32* %148, i64 %151, i32 %156)
  %158 = load i32*, i32** %22, align 8
  %159 = load i32, i32* %10, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %157, i32* %161, align 4
  br label %179

162:                                              ; preds = %142
  %163 = load i32*, i32** %22, align 8
  %164 = load i32, i32* %10, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %18, align 8
  %169 = load i32, i32* @PIX_PER_CELL, align 4
  %170 = sext i32 %169 to i64
  %171 = mul i64 %170, 4
  %172 = trunc i64 %171 to i32
  %173 = call i64 @crc32(i32 %167, i32* %168, i32 %172)
  %174 = trunc i64 %173 to i32
  %175 = load i32*, i32** %22, align 8
  %176 = load i32, i32* %10, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %174, i32* %178, align 4
  br label %179

179:                                              ; preds = %162, %147
  %180 = load i32, i32* @PIX_PER_CELL, align 4
  %181 = load i32*, i32** %18, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  store i32* %183, i32** %18, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @PIXCELL_MASK, align 4
  %186 = and i32 %184, %185
  %187 = load i32, i32* @PIXCELL_MASK, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %194, label %189

189:                                              ; preds = %179
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %17, align 4
  %192 = sub i32 %191, 1
  %193 = icmp eq i32 %190, %192
  br i1 %193, label %194, label %228

194:                                              ; preds = %189, %179
  %195 = load i32*, i32** %23, align 8
  %196 = load i32, i32* %10, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %22, align 8
  %201 = load i32, i32* %10, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %199, %204
  br i1 %205, label %206, label %222

206:                                              ; preds = %194
  %207 = load i32*, i32** %22, align 8
  %208 = load i32, i32* %10, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %23, align 8
  %213 = load i32, i32* %10, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 %211, i32* %215, align 4
  %216 = load i32*, i32** %22, align 8
  %217 = load i32, i32* %10, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 1, i32* %219, align 4
  %220 = load i32, i32* %24, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %24, align 4
  br label %227

222:                                              ; preds = %194
  %223 = load i32*, i32** %22, align 8
  %224 = load i32, i32* %10, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32 0, i32* %226, align 4
  br label %227

227:                                              ; preds = %222, %206
  br label %228

228:                                              ; preds = %227, %189
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %10, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %10, align 4
  br label %138

232:                                              ; preds = %138
  %233 = load i32, i32* %19, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %322

235:                                              ; preds = %232
  %236 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %237 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %236, i32 0, i32 5
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %255

240:                                              ; preds = %235
  %241 = load i32*, i32** %18, align 8
  %242 = load i32, i32* %19, align 4
  %243 = zext i32 %242 to i64
  %244 = mul i64 %243, 4
  %245 = load i32*, i32** %22, align 8
  %246 = load i32, i32* %10, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @fast_crc32(i32* %241, i64 %244, i32 %249)
  %251 = load i32*, i32** %22, align 8
  %252 = load i32, i32* %10, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32 %250, i32* %254, align 4
  br label %272

255:                                              ; preds = %235
  %256 = load i32*, i32** %22, align 8
  %257 = load i32, i32* %10, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = load i32*, i32** %18, align 8
  %262 = load i32, i32* %19, align 4
  %263 = zext i32 %262 to i64
  %264 = mul i64 %263, 4
  %265 = trunc i64 %264 to i32
  %266 = call i64 @crc32(i32 %260, i32* %261, i32 %265)
  %267 = trunc i64 %266 to i32
  %268 = load i32*, i32** %22, align 8
  %269 = load i32, i32* %10, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  store i32 %267, i32* %271, align 4
  br label %272

272:                                              ; preds = %255, %240
  %273 = load i32, i32* %19, align 4
  %274 = load i32*, i32** %18, align 8
  %275 = zext i32 %273 to i64
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  store i32* %276, i32** %18, align 8
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* @PIXCELL_MASK, align 4
  %279 = and i32 %277, %278
  %280 = load i32, i32* @PIXCELL_MASK, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %287, label %282

282:                                              ; preds = %272
  %283 = load i32, i32* %11, align 4
  %284 = load i32, i32* %17, align 4
  %285 = sub i32 %284, 1
  %286 = icmp eq i32 %283, %285
  br i1 %286, label %287, label %321

287:                                              ; preds = %282, %272
  %288 = load i32*, i32** %23, align 8
  %289 = load i32, i32* %10, align 4
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32*, i32** %22, align 8
  %294 = load i32, i32* %10, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %292, %297
  br i1 %298, label %299, label %315

299:                                              ; preds = %287
  %300 = load i32*, i32** %22, align 8
  %301 = load i32, i32* %10, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load i32*, i32** %23, align 8
  %306 = load i32, i32* %10, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  store i32 %304, i32* %308, align 4
  %309 = load i32*, i32** %22, align 8
  %310 = load i32, i32* %10, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  store i32 1, i32* %312, align 4
  %313 = load i32, i32* %24, align 4
  %314 = add i32 %313, 1
  store i32 %314, i32* %24, align 4
  br label %320

315:                                              ; preds = %287
  %316 = load i32*, i32** %22, align 8
  %317 = load i32, i32* %10, align 4
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  store i32 0, i32* %319, align 4
  br label %320

320:                                              ; preds = %315, %299
  br label %321

321:                                              ; preds = %320, %282
  br label %322

322:                                              ; preds = %321, %232
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %11, align 4
  %325 = add i32 %324, 1
  store i32 %325, i32* %11, align 4
  br label %119

326:                                              ; preds = %119
  %327 = load i32, i32* %24, align 4
  %328 = mul i32 %327, 100
  %329 = load i32, i32* %14, align 4
  %330 = load i32, i32* %15, align 4
  %331 = mul i32 %329, %330
  %332 = udiv i32 %328, %331
  %333 = load i32, i32* @RFB_SEND_ALL_THRESH, align 4
  %334 = icmp uge i32 %332, %333
  br i1 %334, label %335, label %340

335:                                              ; preds = %326
  %336 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %337 = load i32, i32* %6, align 4
  %338 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %339 = call i64 @rfb_send_all(%struct.rfb_softc* %336, i32 %337, %struct.bhyvegc_image* %338)
  store i64 %339, i64* %21, align 8
  br label %411

340:                                              ; preds = %326
  %341 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %342 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %341, i32 0, i32 3
  %343 = load i32*, i32** %342, align 8
  store i32* %343, i32** %22, align 8
  store i32 0, i32* %11, align 4
  br label %344

344:                                              ; preds = %406, %340
  %345 = load i32, i32* %11, align 4
  %346 = load i32, i32* %17, align 4
  %347 = icmp ult i32 %345, %346
  br i1 %347, label %348, label %410

348:                                              ; preds = %344
  %349 = load i32, i32* %11, align 4
  %350 = load i32, i32* @PIXCELL_SHIFT, align 4
  %351 = lshr i32 %349, %350
  store i32 %351, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %352

352:                                              ; preds = %402, %348
  %353 = load i32, i32* %10, align 4
  %354 = load i32, i32* %14, align 4
  %355 = icmp ult i32 %353, %354
  br i1 %355, label %356, label %405

356:                                              ; preds = %352
  %357 = load i32*, i32** %22, align 8
  %358 = getelementptr inbounds i32, i32* %357, i32 1
  store i32* %358, i32** %22, align 8
  %359 = load i32, i32* %357, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %356
  br label %402

362:                                              ; preds = %356
  %363 = load i32, i32* %10, align 4
  %364 = load i32, i32* %14, align 4
  %365 = sub i32 %364, 1
  %366 = icmp eq i32 %363, %365
  br i1 %366, label %367, label %372

367:                                              ; preds = %362
  %368 = load i32, i32* %19, align 4
  %369 = icmp ugt i32 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %367
  %371 = load i32, i32* %19, align 4
  store i32 %371, i32* %13, align 4
  br label %374

372:                                              ; preds = %367, %362
  %373 = load i32, i32* @PIX_PER_CELL, align 4
  store i32 %373, i32* %13, align 4
  br label %374

374:                                              ; preds = %372, %370
  %375 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %376 = load i32, i32* %6, align 4
  %377 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %378 = load i32, i32* %10, align 4
  %379 = load i32, i32* @PIX_PER_CELL, align 4
  %380 = mul i32 %378, %379
  %381 = load i32, i32* %12, align 4
  %382 = load i32, i32* @PIX_PER_CELL, align 4
  %383 = mul i32 %381, %382
  %384 = load i32, i32* %13, align 4
  %385 = load i32, i32* %11, align 4
  %386 = load i32, i32* @PIX_PER_CELL, align 4
  %387 = add i32 %385, %386
  %388 = load i32, i32* %17, align 4
  %389 = icmp uge i32 %387, %388
  br i1 %389, label %390, label %392

390:                                              ; preds = %374
  %391 = load i32, i32* %20, align 4
  br label %394

392:                                              ; preds = %374
  %393 = load i32, i32* @PIX_PER_CELL, align 4
  br label %394

394:                                              ; preds = %392, %390
  %395 = phi i32 [ %391, %390 ], [ %393, %392 ]
  %396 = call i64 @rfb_send_rect(%struct.rfb_softc* %375, i32 %376, %struct.bhyvegc_image* %377, i32 %380, i32 %383, i32 %384, i32 %395)
  store i64 %396, i64* %9, align 8
  %397 = load i64, i64* %9, align 8
  %398 = icmp sle i64 %397, 0
  br i1 %398, label %399, label %401

399:                                              ; preds = %394
  %400 = load i64, i64* %9, align 8
  store i64 %400, i64* %21, align 8
  br label %411

401:                                              ; preds = %394
  br label %402

402:                                              ; preds = %401, %361
  %403 = load i32, i32* %10, align 4
  %404 = add i32 %403, 1
  store i32 %404, i32* %10, align 4
  br label %352

405:                                              ; preds = %352
  br label %406

406:                                              ; preds = %405
  %407 = load i32, i32* @PIX_PER_CELL, align 4
  %408 = load i32, i32* %11, align 4
  %409 = add i32 %408, %407
  store i32 %409, i32* %11, align 4
  br label %344

410:                                              ; preds = %344
  store i64 1, i64* %21, align 8
  br label %411

411:                                              ; preds = %410, %399, %335, %46
  %412 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %413 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %412, i32 0, i32 4
  %414 = call i32 @pthread_mutex_lock(i32* %413)
  %415 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %416 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %415, i32 0, i32 0
  store i32 0, i32* %416, align 8
  %417 = load %struct.rfb_softc*, %struct.rfb_softc** %5, align 8
  %418 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %417, i32 0, i32 4
  %419 = call i32 @pthread_mutex_unlock(i32* %418)
  %420 = load i64, i64* %21, align 8
  store i64 %420, i64* %4, align 8
  br label %421

421:                                              ; preds = %411, %34
  %422 = load i64, i64* %4, align 8
  ret i64 %422
}

declare dso_local i32 @console_refresh(...) #1

declare dso_local %struct.bhyvegc_image* @console_get_image(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @rfb_send_all(%struct.rfb_softc*, i32, %struct.bhyvegc_image*) #1

declare dso_local i64 @howmany(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @fast_crc32(i32*, i64, i32) #1

declare dso_local i64 @crc32(i32, i32*, i32) #1

declare dso_local i64 @rfb_send_rect(%struct.rfb_softc*, i32, %struct.bhyvegc_image*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_strscan.c_strscan_dec.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_strscan.c_strscan_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, double }

@STRSCAN_DDIG = common dso_local global i32 0, align 4
@STRSCAN_MAXDIG = common dso_local global i32 0, align 4
@STRSCAN_OPT_TONUM = common dso_local global i32 0, align 4
@STRSCAN_OPT_C = common dso_local global i32 0, align 4
@STRSCAN_NUM = common dso_local global i32 0, align 4
@STRSCAN_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_6__*, i32, i32, i32, i32, i32)* @strscan_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strscan_dec(i8* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
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
  store i8* %0, i8** %9, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %36 = load i32, i32* @STRSCAN_DDIG, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %16, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %17, align 8
  store i8* %39, i8** %18, align 8
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %221

42:                                               ; preds = %7
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* @STRSCAN_MAXDIG, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* @STRSCAN_MAXDIG, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* @STRSCAN_MAXDIG, align 4
  store i32 %53, i32* %19, align 4
  br label %54

54:                                               ; preds = %47, %42
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %19, align 4
  %57 = xor i32 %55, %56
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %54
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 46
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i8*, i8** %9, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  br label %74

69:                                               ; preds = %60
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %9, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi i32 [ %68, %65 ], [ %73, %69 ]
  %76 = and i32 %75, 15
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %18, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %18, align 8
  store i8 %77, i8* %78, align 1
  %80 = load i32, i32* %19, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %19, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %9, align 8
  br label %84

84:                                               ; preds = %74, %54
  br label %85

85:                                               ; preds = %131, %84
  %86 = load i32, i32* %19, align 4
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %134

88:                                               ; preds = %85
  %89 = load i8*, i8** %9, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 46
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i8*, i8** %9, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  br label %102

97:                                               ; preds = %88
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %9, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  br label %102

102:                                              ; preds = %97, %93
  %103 = phi i32 [ %96, %93 ], [ %101, %97 ]
  %104 = and i32 %103, 15
  %105 = mul nsw i32 10, %104
  store i32 %105, i32* %20, align 4
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %9, align 8
  %108 = load i32, i32* %20, align 4
  %109 = load i8*, i8** %9, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 46
  br i1 %112, label %113, label %117

113:                                              ; preds = %102
  %114 = load i8*, i8** %9, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  br label %122

117:                                              ; preds = %102
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %9, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  br label %122

122:                                              ; preds = %117, %113
  %123 = phi i32 [ %116, %113 ], [ %121, %117 ]
  %124 = and i32 %123, 15
  %125 = add nsw i32 %108, %124
  %126 = trunc i32 %125 to i8
  %127 = load i8*, i8** %18, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %18, align 8
  store i8 %126, i8* %127, align 1
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %9, align 8
  br label %131

131:                                              ; preds = %122
  %132 = load i32, i32* %19, align 4
  %133 = sub nsw i32 %132, 2
  store i32 %133, i32* %19, align 4
  br label %85

134:                                              ; preds = %85
  %135 = load i32, i32* %19, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %164

137:                                              ; preds = %134
  %138 = load i8*, i8** %9, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 46
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i8*, i8** %9, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  br label %151

146:                                              ; preds = %137
  %147 = load i8*, i8** %9, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %9, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  br label %151

151:                                              ; preds = %146, %142
  %152 = phi i32 [ %145, %142 ], [ %150, %146 ]
  %153 = and i32 %152, 15
  %154 = mul nsw i32 10, %153
  %155 = trunc i32 %154 to i8
  %156 = load i8*, i8** %18, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %18, align 8
  store i8 %155, i8* %156, align 1
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %15, align 4
  %162 = load i8*, i8** %9, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %9, align 8
  br label %164

164:                                              ; preds = %151, %134
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* @STRSCAN_MAXDIG, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %203

168:                                              ; preds = %164
  br label %169

169:                                              ; preds = %196, %168
  %170 = load i8*, i8** %9, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp ne i32 %172, 46
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i8*, i8** %9, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  br label %183

178:                                              ; preds = %169
  %179 = load i8*, i8** %9, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %9, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  br label %183

183:                                              ; preds = %178, %174
  %184 = phi i32 [ %177, %174 ], [ %182, %178 ]
  %185 = icmp ne i32 %184, 48
  br i1 %185, label %186, label %193

186:                                              ; preds = %183
  %187 = load i8*, i8** %18, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 -1
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = or i32 %190, 1
  %192 = trunc i32 %191 to i8
  store i8 %192, i8* %188, align 1
  br label %201

193:                                              ; preds = %183
  %194 = load i8*, i8** %9, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %9, align 8
  br label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %15, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* @STRSCAN_MAXDIG, align 4
  %200 = icmp sgt i32 %198, %199
  br i1 %200, label %169, label %201

201:                                              ; preds = %196, %186
  %202 = load i32, i32* @STRSCAN_MAXDIG, align 4
  store i32 %202, i32* %15, align 4
  br label %220

203:                                              ; preds = %164
  br label %204

204:                                              ; preds = %212, %203
  %205 = load i32, i32* %13, align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32, i32* %15, align 4
  %209 = icmp sle i32 %208, 18
  br label %210

210:                                              ; preds = %207, %204
  %211 = phi i1 [ false, %204 ], [ %209, %207 ]
  br i1 %211, label %212, label %219

212:                                              ; preds = %210
  %213 = load i8*, i8** %18, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %18, align 8
  store i8 0, i8* %213, align 1
  %215 = load i32, i32* %13, align 4
  %216 = sub nsw i32 %215, 2
  store i32 %216, i32* %13, align 4
  %217 = load i32, i32* %15, align 4
  %218 = add nsw i32 %217, 2
  store i32 %218, i32* %15, align 4
  br label %204

219:                                              ; preds = %210
  br label %220

220:                                              ; preds = %219, %201
  br label %223

221:                                              ; preds = %7
  store i32 0, i32* %13, align 4
  %222 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %222, align 16
  br label %223

223:                                              ; preds = %221, %220
  %224 = load i32, i32* %15, align 4
  %225 = icmp sle i32 %224, 20
  br i1 %225, label %226, label %347

226:                                              ; preds = %223
  %227 = load i32, i32* %13, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %347

229:                                              ; preds = %226
  %230 = getelementptr inbounds i8, i8* %39, i64 0
  %231 = load i8, i8* %230, align 16
  %232 = sext i8 %231 to i32
  store i32 %232, i32* %22, align 4
  %233 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %233, i8** %21, align 8
  br label %234

234:                                              ; preds = %245, %229
  %235 = load i8*, i8** %21, align 8
  %236 = load i8*, i8** %18, align 8
  %237 = icmp ult i8* %235, %236
  br i1 %237, label %238, label %248

238:                                              ; preds = %234
  %239 = load i32, i32* %22, align 4
  %240 = mul nsw i32 %239, 100
  %241 = load i8*, i8** %21, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = add nsw i32 %240, %243
  store i32 %244, i32* %22, align 4
  br label %245

245:                                              ; preds = %238
  %246 = load i8*, i8** %21, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %21, align 8
  br label %234

248:                                              ; preds = %234
  %249 = load i32, i32* %15, align 4
  %250 = icmp eq i32 %249, 20
  br i1 %250, label %251, label %260

251:                                              ; preds = %248
  %252 = getelementptr inbounds i8, i8* %39, i64 0
  %253 = load i8, i8* %252, align 16
  %254 = sext i8 %253 to i32
  %255 = icmp sgt i32 %254, 18
  br i1 %255, label %346, label %256

256:                                              ; preds = %251
  %257 = load i32, i32* %22, align 4
  %258 = sext i32 %257 to i64
  %259 = icmp sge i64 %258, 0
  br i1 %259, label %346, label %260

260:                                              ; preds = %256, %248
  %261 = load i32, i32* %11, align 4
  switch i32 %261, label %325 [
    i32 130, label %262
    i32 129, label %292
    i32 131, label %310
    i32 128, label %310
  ]

262:                                              ; preds = %260
  %263 = load i32, i32* %12, align 4
  %264 = load i32, i32* @STRSCAN_OPT_TONUM, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %284, label %267

267:                                              ; preds = %262
  %268 = load i32, i32* %22, align 4
  %269 = load i32, i32* %14, align 4
  %270 = add i32 -2147483648, %269
  %271 = icmp ult i32 %268, %270
  br i1 %271, label %272, label %284

272:                                              ; preds = %267
  %273 = load i32, i32* %14, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load i32, i32* %22, align 4
  %277 = sub nsw i32 0, %276
  br label %280

278:                                              ; preds = %272
  %279 = load i32, i32* %22, align 4
  br label %280

280:                                              ; preds = %278, %275
  %281 = phi i32 [ %277, %275 ], [ %279, %278 ]
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  store i32 %281, i32* %283, align 8
  store i32 130, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %665

284:                                              ; preds = %267, %262
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* @STRSCAN_OPT_C, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %291, label %289

289:                                              ; preds = %284
  %290 = load i32, i32* @STRSCAN_NUM, align 4
  store i32 %290, i32* %11, align 4
  br label %326

291:                                              ; preds = %284
  br label %292

292:                                              ; preds = %260, %291
  %293 = load i32, i32* %22, align 4
  %294 = ashr i32 %293, 32
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %292
  %297 = load i32, i32* @STRSCAN_ERROR, align 4
  store i32 %297, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %665

298:                                              ; preds = %292
  %299 = load i32, i32* %14, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = load i32, i32* %22, align 4
  %303 = sub nsw i32 0, %302
  br label %306

304:                                              ; preds = %298
  %305 = load i32, i32* %22, align 4
  br label %306

306:                                              ; preds = %304, %301
  %307 = phi i32 [ %303, %301 ], [ %305, %304 ]
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 0
  store i32 %307, i32* %309, align 8
  store i32 129, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %665

310:                                              ; preds = %260, %260
  %311 = load i32, i32* %14, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %310
  %314 = load i32, i32* %22, align 4
  %315 = sext i32 %314 to i64
  %316 = sub nsw i64 0, %315
  %317 = trunc i64 %316 to i32
  br label %320

318:                                              ; preds = %310
  %319 = load i32, i32* %22, align 4
  br label %320

320:                                              ; preds = %318, %313
  %321 = phi i32 [ %317, %313 ], [ %319, %318 ]
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 1
  store i32 %321, i32* %323, align 4
  %324 = load i32, i32* %11, align 4
  store i32 %324, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %665

325:                                              ; preds = %260
  br label %326

326:                                              ; preds = %325, %289
  %327 = load i32, i32* %22, align 4
  %328 = sext i32 %327 to i64
  %329 = icmp slt i64 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %326
  br label %345

331:                                              ; preds = %326
  %332 = load i32, i32* %22, align 4
  %333 = sext i32 %332 to i64
  %334 = sitofp i64 %333 to double
  store double %334, double* %23, align 8
  %335 = load i32, i32* %14, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %331
  %338 = load double, double* %23, align 8
  %339 = fneg double %338
  store double %339, double* %23, align 8
  br label %340

340:                                              ; preds = %337, %331
  %341 = load double, double* %23, align 8
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 2
  store double %341, double* %343, align 8
  %344 = load i32, i32* %11, align 4
  store i32 %344, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %665

345:                                              ; preds = %330
  br label %346

346:                                              ; preds = %345, %256, %251
  br label %347

347:                                              ; preds = %346, %226, %223
  %348 = load i32, i32* %11, align 4
  %349 = icmp eq i32 %348, 130
  br i1 %349, label %350, label %359

350:                                              ; preds = %347
  %351 = load i32, i32* %12, align 4
  %352 = load i32, i32* @STRSCAN_OPT_C, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %350
  %356 = load i32, i32* @STRSCAN_ERROR, align 4
  store i32 %356, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %665

357:                                              ; preds = %350
  %358 = load i32, i32* @STRSCAN_NUM, align 4
  store i32 %358, i32* %11, align 4
  br label %365

359:                                              ; preds = %347
  %360 = load i32, i32* %11, align 4
  %361 = icmp sgt i32 %360, 130
  br i1 %361, label %362, label %364

362:                                              ; preds = %359
  %363 = load i32, i32* @STRSCAN_ERROR, align 4
  store i32 %363, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %665

364:                                              ; preds = %359
  br label %365

365:                                              ; preds = %364, %357
  store i32 0, i32* %25, align 4
  %366 = load i8*, i8** %18, align 8
  %367 = ptrtoint i8* %366 to i64
  %368 = ptrtoint i8* %39 to i64
  %369 = sub i64 %367, %368
  %370 = trunc i64 %369 to i32
  store i32 %370, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %371 = load i32, i32* %26, align 4
  %372 = load i32, i32* %13, align 4
  %373 = ashr i32 %372, 1
  %374 = add nsw i32 %371, %373
  store i32 %374, i32* %28, align 4
  %375 = load i32, i32* %26, align 4
  %376 = icmp sgt i32 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %365
  %378 = load i32, i32* %13, align 4
  %379 = and i32 %378, 1
  %380 = icmp eq i32 %379, 0
  br label %381

381:                                              ; preds = %377, %365
  %382 = phi i1 [ false, %365 ], [ %380, %377 ]
  %383 = zext i1 %382 to i32
  %384 = call i32 @lua_assert(i32 %383)
  %385 = load i32, i32* %28, align 4
  %386 = icmp sgt i32 %385, 155
  br i1 %386, label %387, label %398

387:                                              ; preds = %381
  %388 = load i32, i32* %14, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %393

390:                                              ; preds = %387
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %392 = call i32 @setminfV(%struct.TYPE_6__* %391)
  br label %396

393:                                              ; preds = %387
  %394 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %395 = call i32 @setpinfV(%struct.TYPE_6__* %394)
  br label %396

396:                                              ; preds = %393, %390
  %397 = load i32, i32* %11, align 4
  store i32 %397, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %665

398:                                              ; preds = %381
  %399 = load i32, i32* %28, align 4
  %400 = icmp slt i32 %399, -163
  br i1 %400, label %401, label %409

401:                                              ; preds = %398
  %402 = load i32, i32* %14, align 4
  %403 = icmp ne i32 %402, 0
  %404 = zext i1 %403 to i64
  %405 = select i1 %403, double -0.000000e+00, double 0.000000e+00
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 2
  store double %405, double* %407, align 8
  %408 = load i32, i32* %11, align 4
  store i32 %408, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %665

409:                                              ; preds = %398
  br label %410

410:                                              ; preds = %409
  br label %411

411:                                              ; preds = %516, %410
  %412 = load i32, i32* %28, align 4
  %413 = icmp slt i32 %412, 9
  br i1 %413, label %414, label %420

414:                                              ; preds = %411
  %415 = load i32, i32* %28, align 4
  %416 = load i32, i32* %26, align 4
  %417 = load i32, i32* %25, align 4
  %418 = call i32 @DLEN(i32 %416, i32 %417)
  %419 = icmp slt i32 %415, %418
  br label %420

420:                                              ; preds = %414, %411
  %421 = phi i1 [ false, %411 ], [ %419, %414 ]
  br i1 %421, label %422, label %517

422:                                              ; preds = %420
  store i32 0, i32* %30, align 4
  %423 = load i32, i32* %27, align 4
  %424 = sub nsw i32 %423, 6
  store i32 %424, i32* %27, align 4
  %425 = load i32, i32* %26, align 4
  %426 = call i64 @DPREV(i32 %425)
  %427 = trunc i64 %426 to i32
  store i32 %427, i32* %29, align 4
  br label %428

428:                                              ; preds = %466, %422
  %429 = load i32, i32* %29, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i8, i8* %39, i64 %430
  %432 = load i8, i8* %431, align 1
  %433 = sext i8 %432 to i32
  %434 = shl i32 %433, 6
  %435 = load i32, i32* %30, align 4
  %436 = add nsw i32 %434, %435
  store i32 %436, i32* %31, align 4
  %437 = load i32, i32* %31, align 4
  %438 = ashr i32 %437, 2
  %439 = mul nsw i32 %438, 5243
  %440 = ashr i32 %439, 17
  store i32 %440, i32* %30, align 4
  %441 = load i32, i32* %31, align 4
  %442 = load i32, i32* %30, align 4
  %443 = mul nsw i32 %442, 100
  %444 = sub nsw i32 %441, %443
  store i32 %444, i32* %31, align 4
  %445 = load i32, i32* %31, align 4
  %446 = trunc i32 %445 to i8
  %447 = load i32, i32* %29, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i8, i8* %39, i64 %448
  store i8 %446, i8* %449, align 1
  %450 = load i32, i32* %29, align 4
  %451 = load i32, i32* %25, align 4
  %452 = icmp eq i32 %450, %451
  br i1 %452, label %453, label %454

453:                                              ; preds = %428
  br label %470

454:                                              ; preds = %428
  %455 = load i32, i32* %31, align 4
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %465

457:                                              ; preds = %454
  %458 = load i32, i32* %29, align 4
  %459 = sext i32 %458 to i64
  %460 = load i32, i32* %26, align 4
  %461 = call i64 @DPREV(i32 %460)
  %462 = icmp eq i64 %459, %461
  br i1 %462, label %463, label %465

463:                                              ; preds = %457
  %464 = load i32, i32* %29, align 4
  store i32 %464, i32* %26, align 4
  br label %465

465:                                              ; preds = %463, %457, %454
  br label %466

466:                                              ; preds = %465
  %467 = load i32, i32* %29, align 4
  %468 = call i64 @DPREV(i32 %467)
  %469 = trunc i64 %468 to i32
  store i32 %469, i32* %29, align 4
  br label %428

470:                                              ; preds = %453
  %471 = load i32, i32* %30, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %516

473:                                              ; preds = %470
  %474 = load i32, i32* %25, align 4
  %475 = call i64 @DPREV(i32 %474)
  %476 = trunc i64 %475 to i32
  store i32 %476, i32* %25, align 4
  %477 = load i32, i32* %26, align 4
  %478 = call i64 @DPREV(i32 %477)
  %479 = getelementptr inbounds i8, i8* %39, i64 %478
  %480 = load i8, i8* %479, align 1
  %481 = sext i8 %480 to i32
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %487

483:                                              ; preds = %473
  %484 = load i32, i32* %26, align 4
  %485 = call i64 @DPREV(i32 %484)
  %486 = trunc i64 %485 to i32
  store i32 %486, i32* %26, align 4
  br label %508

487:                                              ; preds = %473
  %488 = load i32, i32* %25, align 4
  %489 = load i32, i32* %26, align 4
  %490 = icmp eq i32 %488, %489
  br i1 %490, label %491, label %507

491:                                              ; preds = %487
  %492 = load i32, i32* %26, align 4
  %493 = call i64 @DPREV(i32 %492)
  %494 = trunc i64 %493 to i32
  store i32 %494, i32* %26, align 4
  %495 = load i32, i32* %26, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i8, i8* %39, i64 %496
  %498 = load i8, i8* %497, align 1
  %499 = sext i8 %498 to i32
  %500 = load i32, i32* %26, align 4
  %501 = call i64 @DPREV(i32 %500)
  %502 = getelementptr inbounds i8, i8* %39, i64 %501
  %503 = load i8, i8* %502, align 1
  %504 = sext i8 %503 to i32
  %505 = or i32 %504, %499
  %506 = trunc i32 %505 to i8
  store i8 %506, i8* %502, align 1
  br label %507

507:                                              ; preds = %491, %487
  br label %508

508:                                              ; preds = %507, %483
  %509 = load i32, i32* %30, align 4
  %510 = trunc i32 %509 to i8
  %511 = load i32, i32* %25, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i8, i8* %39, i64 %512
  store i8 %510, i8* %513, align 1
  %514 = load i32, i32* %28, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %28, align 4
  br label %516

516:                                              ; preds = %508, %470
  br label %411

517:                                              ; preds = %420
  br label %518

518:                                              ; preds = %592, %517
  %519 = load i32, i32* %28, align 4
  %520 = icmp sgt i32 %519, 9
  br i1 %520, label %521, label %593

521:                                              ; preds = %518
  %522 = load i32, i32* %25, align 4
  store i32 %522, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %523 = load i32, i32* %27, align 4
  %524 = add nsw i32 %523, 6
  store i32 %524, i32* %27, align 4
  br label %525

525:                                              ; preds = %560, %521
  %526 = load i32, i32* %32, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i8, i8* %39, i64 %527
  %529 = load i8, i8* %528, align 1
  %530 = sext i8 %529 to i32
  %531 = load i32, i32* %33, align 4
  %532 = add nsw i32 %531, %530
  store i32 %532, i32* %33, align 4
  %533 = load i32, i32* %33, align 4
  %534 = ashr i32 %533, 6
  %535 = trunc i32 %534 to i8
  %536 = load i32, i32* %32, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i8, i8* %39, i64 %537
  store i8 %535, i8* %538, align 1
  %539 = load i32, i32* %33, align 4
  %540 = and i32 %539, 63
  %541 = mul nsw i32 100, %540
  store i32 %541, i32* %33, align 4
  %542 = load i32, i32* %32, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i8, i8* %39, i64 %543
  %545 = load i8, i8* %544, align 1
  %546 = sext i8 %545 to i32
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %557

548:                                              ; preds = %525
  %549 = load i32, i32* %32, align 4
  %550 = load i32, i32* %25, align 4
  %551 = icmp eq i32 %549, %550
  br i1 %551, label %552, label %557

552:                                              ; preds = %548
  %553 = load i32, i32* %25, align 4
  %554 = call i32 @DNEXT(i32 %553)
  store i32 %554, i32* %25, align 4
  %555 = load i32, i32* %28, align 4
  %556 = add nsw i32 %555, -1
  store i32 %556, i32* %28, align 4
  br label %557

557:                                              ; preds = %552, %548, %525
  %558 = load i32, i32* %32, align 4
  %559 = call i32 @DNEXT(i32 %558)
  store i32 %559, i32* %32, align 4
  br label %560

560:                                              ; preds = %557
  %561 = load i32, i32* %32, align 4
  %562 = load i32, i32* %26, align 4
  %563 = icmp ne i32 %561, %562
  br i1 %563, label %525, label %564

564:                                              ; preds = %560
  br label %565

565:                                              ; preds = %580, %564
  %566 = load i32, i32* %33, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %592

568:                                              ; preds = %565
  %569 = load i32, i32* %25, align 4
  %570 = load i32, i32* %26, align 4
  %571 = icmp eq i32 %569, %570
  br i1 %571, label %572, label %580

572:                                              ; preds = %568
  %573 = load i32, i32* %26, align 4
  %574 = call i64 @DPREV(i32 %573)
  %575 = getelementptr inbounds i8, i8* %39, i64 %574
  %576 = load i8, i8* %575, align 1
  %577 = sext i8 %576 to i32
  %578 = or i32 %577, 1
  %579 = trunc i32 %578 to i8
  store i8 %579, i8* %575, align 1
  br label %592

580:                                              ; preds = %568
  %581 = load i32, i32* %33, align 4
  %582 = ashr i32 %581, 6
  %583 = trunc i32 %582 to i8
  %584 = load i32, i32* %26, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i8, i8* %39, i64 %585
  store i8 %583, i8* %586, align 1
  %587 = load i32, i32* %26, align 4
  %588 = call i32 @DNEXT(i32 %587)
  store i32 %588, i32* %26, align 4
  %589 = load i32, i32* %33, align 4
  %590 = and i32 %589, 63
  %591 = mul nsw i32 100, %590
  store i32 %591, i32* %33, align 4
  br label %565

592:                                              ; preds = %572, %565
  br label %518

593:                                              ; preds = %518
  %594 = load i32, i32* %25, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i8, i8* %39, i64 %595
  %597 = load i8, i8* %596, align 1
  %598 = sext i8 %597 to i32
  store i32 %598, i32* %34, align 4
  %599 = load i32, i32* %25, align 4
  %600 = call i32 @DNEXT(i32 %599)
  store i32 %600, i32* %35, align 4
  br label %601

601:                                              ; preds = %620, %593
  %602 = load i32, i32* %28, align 4
  %603 = add nsw i32 %602, -1
  store i32 %603, i32* %28, align 4
  %604 = icmp sgt i32 %603, 0
  br i1 %604, label %605, label %609

605:                                              ; preds = %601
  %606 = load i32, i32* %35, align 4
  %607 = load i32, i32* %26, align 4
  %608 = icmp ne i32 %606, %607
  br label %609

609:                                              ; preds = %605, %601
  %610 = phi i1 [ false, %601 ], [ %608, %605 ]
  br i1 %610, label %611, label %623

611:                                              ; preds = %609
  %612 = load i32, i32* %34, align 4
  %613 = mul nsw i32 %612, 100
  %614 = load i32, i32* %35, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i8, i8* %39, i64 %615
  %617 = load i8, i8* %616, align 1
  %618 = sext i8 %617 to i32
  %619 = add nsw i32 %613, %618
  store i32 %619, i32* %34, align 4
  br label %620

620:                                              ; preds = %611
  %621 = load i32, i32* %35, align 4
  %622 = call i32 @DNEXT(i32 %621)
  store i32 %622, i32* %35, align 4
  br label %601

623:                                              ; preds = %609
  %624 = load i32, i32* %35, align 4
  %625 = load i32, i32* %26, align 4
  %626 = icmp eq i32 %624, %625
  br i1 %626, label %627, label %636

627:                                              ; preds = %623
  br label %628

628:                                              ; preds = %632, %627
  %629 = load i32, i32* %28, align 4
  %630 = add nsw i32 %629, -1
  store i32 %630, i32* %28, align 4
  %631 = icmp sge i32 %630, 0
  br i1 %631, label %632, label %635

632:                                              ; preds = %628
  %633 = load i32, i32* %34, align 4
  %634 = mul nsw i32 %633, 100
  store i32 %634, i32* %34, align 4
  br label %628

635:                                              ; preds = %628
  br label %658

636:                                              ; preds = %623
  %637 = load i32, i32* %34, align 4
  %638 = shl i32 %637, 1
  store i32 %638, i32* %34, align 4
  %639 = load i32, i32* %27, align 4
  %640 = add nsw i32 %639, -1
  store i32 %640, i32* %27, align 4
  br label %641

641:                                              ; preds = %653, %636
  %642 = load i32, i32* %35, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds i8, i8* %39, i64 %643
  %645 = load i8, i8* %644, align 1
  %646 = icmp ne i8 %645, 0
  br i1 %646, label %647, label %650

647:                                              ; preds = %641
  %648 = load i32, i32* %34, align 4
  %649 = or i32 %648, 1
  store i32 %649, i32* %34, align 4
  br label %657

650:                                              ; preds = %641
  %651 = load i32, i32* %35, align 4
  %652 = call i32 @DNEXT(i32 %651)
  store i32 %652, i32* %35, align 4
  br label %653

653:                                              ; preds = %650
  %654 = load i32, i32* %35, align 4
  %655 = load i32, i32* %26, align 4
  %656 = icmp ne i32 %654, %655
  br i1 %656, label %641, label %657

657:                                              ; preds = %653, %647
  br label %658

658:                                              ; preds = %657, %635
  %659 = load i32, i32* %34, align 4
  %660 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %661 = load i32, i32* %27, align 4
  %662 = load i32, i32* %14, align 4
  %663 = call i32 @strscan_double(i32 %659, %struct.TYPE_6__* %660, i32 %661, i32 %662)
  %664 = load i32, i32* %11, align 4
  store i32 %664, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %665

665:                                              ; preds = %658, %401, %396, %362, %355, %340, %320, %306, %296, %280
  %666 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %666)
  %667 = load i32, i32* %8, align 4
  ret i32 %667
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lua_assert(i32) #2

declare dso_local i32 @setminfV(%struct.TYPE_6__*) #2

declare dso_local i32 @setpinfV(%struct.TYPE_6__*) #2

declare dso_local i32 @DLEN(i32, i32) #2

declare dso_local i64 @DPREV(i32) #2

declare dso_local i32 @DNEXT(i32) #2

declare dso_local i32 @strscan_double(i32, %struct.TYPE_6__*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

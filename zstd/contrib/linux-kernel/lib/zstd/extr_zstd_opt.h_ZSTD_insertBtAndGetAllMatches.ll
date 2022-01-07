; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_zstd_opt.h_ZSTD_insertBtAndGetAllMatches.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_zstd_opt.h_ZSTD_insertBtAndGetAllMatches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64*, i32*, i32*, i64*, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@MINMATCH = common dso_local global i64 0, align 8
@ZSTD_REP_MOVE_OPT = common dso_local global i32 0, align 4
@ZSTD_OPT_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64*, i64*, i32, i32, i32, %struct.TYPE_10__*, i32)* @ZSTD_insertBtAndGetAllMatches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ZSTD_insertBtAndGetAllMatches(%struct.TYPE_11__* %0, i64* %1, i64* %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_10__* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64*, align 8
  %31 = alloca i64*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  %41 = alloca i32, align 4
  %42 = alloca i64*, align 8
  %43 = alloca i64, align 8
  %44 = alloca i32*, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %15, align 8
  store i32 %7, i32* %16, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  store i64* %49, i64** %17, align 8
  %50 = load i64*, i64** %10, align 8
  %51 = load i64*, i64** %17, align 8
  %52 = ptrtoint i64* %50 to i64
  %53 = ptrtoint i64* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %18, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 7
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %19, align 4
  %62 = load i64*, i64** %10, align 8
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i64 @ZSTD_hashPtr(i64* %62, i32 %63, i32 %64)
  store i64 %65, i64* %20, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %21, align 8
  %69 = load i32*, i32** %21, align 8
  %70 = load i64, i64* %20, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %22, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %23, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub i32 %80, 1
  store i32 %81, i32* %24, align 4
  %82 = load i32, i32* %24, align 4
  %83 = shl i32 1, %82
  %84 = sub i32 %83, 1
  store i32 %84, i32* %25, align 4
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 3
  %87 = load i64*, i64** %86, align 8
  store i64* %87, i64** %28, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %29, align 4
  %91 = load i64*, i64** %28, align 8
  %92 = load i32, i32* %29, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  store i64* %94, i64** %30, align 8
  %95 = load i64*, i64** %17, align 8
  %96 = load i32, i32* %29, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64* %98, i64** %31, align 8
  %99 = load i32, i32* %25, align 4
  %100 = load i32, i32* %18, align 4
  %101 = icmp uge i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %8
  br label %107

103:                                              ; preds = %8
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %25, align 4
  %106 = sub i32 %104, %105
  br label %107

107:                                              ; preds = %103, %102
  %108 = phi i32 [ 0, %102 ], [ %106, %103 ]
  store i32 %108, i32* %32, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %33, align 4
  %112 = load i32*, i32** %23, align 8
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* %25, align 4
  %115 = and i32 %113, %114
  %116 = mul i32 2, %115
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %112, i64 %117
  store i32* %118, i32** %34, align 8
  %119 = load i32*, i32** %23, align 8
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %25, align 4
  %122 = and i32 %120, %121
  %123 = mul i32 2, %122
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %119, i64 %124
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  store i32* %126, i32** %35, align 8
  %127 = load i32, i32* %18, align 4
  %128 = add i32 %127, 8
  store i32 %128, i32* %36, align 4
  store i32 0, i32* %38, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp eq i32 %129, 3
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 3, i32 4
  store i32 %132, i32* %39, align 4
  %133 = load i32, i32* %16, align 4
  %134 = sub i32 %133, 1
  %135 = zext i32 %134 to i64
  store i64 %135, i64* %40, align 8
  %136 = load i32, i32* %39, align 4
  %137 = icmp eq i32 %136, 3
  br i1 %137, label %138, label %242

138:                                              ; preds = %107
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %140 = load i64*, i64** %10, align 8
  %141 = call i32 @ZSTD_insertAndFindFirstIndexHash3(%struct.TYPE_11__* %139, i64* %140)
  store i32 %141, i32* %41, align 4
  %142 = load i32, i32* %41, align 4
  %143 = load i32, i32* %33, align 4
  %144 = icmp ugt i32 %142, %143
  br i1 %144, label %145, label %241

145:                                              ; preds = %138
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %41, align 4
  %148 = sub i32 %146, %147
  %149 = icmp ult i32 %148, 262144
  br i1 %149, label %150, label %241

150:                                              ; preds = %145
  store i64 0, i64* %43, align 8
  %151 = load i32, i32* %14, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load i32, i32* %41, align 4
  %155 = load i32, i32* %29, align 4
  %156 = icmp uge i32 %154, %155
  br i1 %156, label %157, label %177

157:                                              ; preds = %153, %150
  %158 = load i64*, i64** %17, align 8
  %159 = load i32, i32* %41, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  store i64* %161, i64** %42, align 8
  %162 = load i64*, i64** %42, align 8
  %163 = load i64, i64* %40, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load i64*, i64** %10, align 8
  %167 = load i64, i64* %40, align 8
  %168 = getelementptr inbounds i64, i64* %166, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %165, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %157
  %172 = load i64*, i64** %10, align 8
  %173 = load i64*, i64** %42, align 8
  %174 = load i64*, i64** %11, align 8
  %175 = call i64 @ZSTD_count(i64* %172, i64* %173, i64* %174)
  store i64 %175, i64* %43, align 8
  br label %176

176:                                              ; preds = %171, %157
  br label %203

177:                                              ; preds = %153
  %178 = load i64*, i64** %28, align 8
  %179 = load i32, i32* %41, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  store i64* %181, i64** %42, align 8
  %182 = load i64*, i64** %42, align 8
  %183 = load i64, i64* @MINMATCH, align 8
  %184 = call i64 @ZSTD_readMINMATCH(i64* %182, i64 %183)
  %185 = load i64*, i64** %10, align 8
  %186 = load i64, i64* @MINMATCH, align 8
  %187 = call i64 @ZSTD_readMINMATCH(i64* %185, i64 %186)
  %188 = icmp eq i64 %184, %187
  br i1 %188, label %189, label %202

189:                                              ; preds = %177
  %190 = load i64*, i64** %10, align 8
  %191 = load i64, i64* @MINMATCH, align 8
  %192 = getelementptr inbounds i64, i64* %190, i64 %191
  %193 = load i64*, i64** %42, align 8
  %194 = load i64, i64* @MINMATCH, align 8
  %195 = getelementptr inbounds i64, i64* %193, i64 %194
  %196 = load i64*, i64** %11, align 8
  %197 = load i64*, i64** %30, align 8
  %198 = load i64*, i64** %31, align 8
  %199 = call i64 @ZSTD_count_2segments(i64* %192, i64* %195, i64* %196, i64* %197, i64* %198)
  %200 = load i64, i64* @MINMATCH, align 8
  %201 = add i64 %199, %200
  store i64 %201, i64* %43, align 8
  br label %202

202:                                              ; preds = %189, %177
  br label %203

203:                                              ; preds = %202, %176
  %204 = load i64, i64* %43, align 8
  %205 = load i64, i64* %40, align 8
  %206 = icmp ugt i64 %204, %205
  br i1 %206, label %207, label %240

207:                                              ; preds = %203
  %208 = load i64, i64* %43, align 8
  store i64 %208, i64* %40, align 8
  %209 = load i32, i32* @ZSTD_REP_MOVE_OPT, align 4
  %210 = load i32, i32* %18, align 4
  %211 = add i32 %209, %210
  %212 = load i32, i32* %41, align 4
  %213 = sub i32 %211, %212
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %215 = load i32, i32* %38, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  store i32 %213, i32* %218, align 4
  %219 = load i64, i64* %43, align 8
  %220 = trunc i64 %219 to i32
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %222 = load i32, i32* %38, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 1
  store i32 %220, i32* %225, align 4
  %226 = load i32, i32* %38, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %38, align 4
  %228 = load i64, i64* %43, align 8
  %229 = load i64, i64* @ZSTD_OPT_NUM, align 8
  %230 = icmp ugt i64 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %207
  br label %427

232:                                              ; preds = %207
  %233 = load i64*, i64** %10, align 8
  %234 = load i64, i64* %43, align 8
  %235 = getelementptr inbounds i64, i64* %233, i64 %234
  %236 = load i64*, i64** %11, align 8
  %237 = icmp eq i64* %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %232
  br label %427

239:                                              ; preds = %232
  br label %240

240:                                              ; preds = %239, %203
  br label %241

241:                                              ; preds = %240, %145, %138
  br label %242

242:                                              ; preds = %241, %107
  %243 = load i32, i32* %18, align 4
  %244 = load i32*, i32** %21, align 8
  %245 = load i64, i64* %20, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  store i32 %243, i32* %246, align 4
  br label %247

247:                                              ; preds = %423, %242
  %248 = load i32, i32* %12, align 4
  %249 = add i32 %248, -1
  store i32 %249, i32* %12, align 4
  %250 = icmp ne i32 %248, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %247
  %252 = load i32, i32* %22, align 4
  %253 = load i32, i32* %33, align 4
  %254 = icmp ugt i32 %252, %253
  br label %255

255:                                              ; preds = %251, %247
  %256 = phi i1 [ false, %247 ], [ %254, %251 ]
  br i1 %256, label %257, label %424

257:                                              ; preds = %255
  %258 = load i32*, i32** %23, align 8
  %259 = load i32, i32* %22, align 4
  %260 = load i32, i32* %25, align 4
  %261 = and i32 %259, %260
  %262 = mul i32 2, %261
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %258, i64 %263
  store i32* %264, i32** %44, align 8
  %265 = load i64, i64* %26, align 8
  %266 = load i64, i64* %27, align 8
  %267 = call i64 @MIN(i64 %265, i64 %266)
  store i64 %267, i64* %45, align 8
  %268 = load i32, i32* %14, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %257
  %271 = load i32, i32* %22, align 4
  %272 = zext i32 %271 to i64
  %273 = load i64, i64* %45, align 8
  %274 = add i64 %272, %273
  %275 = load i32, i32* %29, align 4
  %276 = zext i32 %275 to i64
  %277 = icmp uge i64 %274, %276
  br i1 %277, label %278, label %307

278:                                              ; preds = %270, %257
  %279 = load i64*, i64** %17, align 8
  %280 = load i32, i32* %22, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds i64, i64* %279, i64 %281
  store i64* %282, i64** %46, align 8
  %283 = load i64*, i64** %46, align 8
  %284 = load i64, i64* %45, align 8
  %285 = getelementptr inbounds i64, i64* %283, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = load i64*, i64** %10, align 8
  %288 = load i64, i64* %45, align 8
  %289 = getelementptr inbounds i64, i64* %287, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = icmp eq i64 %286, %290
  br i1 %291, label %292, label %306

292:                                              ; preds = %278
  %293 = load i64*, i64** %10, align 8
  %294 = load i64, i64* %45, align 8
  %295 = getelementptr inbounds i64, i64* %293, i64 %294
  %296 = getelementptr inbounds i64, i64* %295, i64 1
  %297 = load i64*, i64** %46, align 8
  %298 = load i64, i64* %45, align 8
  %299 = getelementptr inbounds i64, i64* %297, i64 %298
  %300 = getelementptr inbounds i64, i64* %299, i64 1
  %301 = load i64*, i64** %11, align 8
  %302 = call i64 @ZSTD_count(i64* %296, i64* %300, i64* %301)
  %303 = add i64 %302, 1
  %304 = load i64, i64* %45, align 8
  %305 = add i64 %304, %303
  store i64 %305, i64* %45, align 8
  br label %306

306:                                              ; preds = %292, %278
  br label %337

307:                                              ; preds = %270
  %308 = load i64*, i64** %28, align 8
  %309 = load i32, i32* %22, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds i64, i64* %308, i64 %310
  store i64* %311, i64** %46, align 8
  %312 = load i64*, i64** %10, align 8
  %313 = load i64, i64* %45, align 8
  %314 = getelementptr inbounds i64, i64* %312, i64 %313
  %315 = load i64*, i64** %46, align 8
  %316 = load i64, i64* %45, align 8
  %317 = getelementptr inbounds i64, i64* %315, i64 %316
  %318 = load i64*, i64** %11, align 8
  %319 = load i64*, i64** %30, align 8
  %320 = load i64*, i64** %31, align 8
  %321 = call i64 @ZSTD_count_2segments(i64* %314, i64* %317, i64* %318, i64* %319, i64* %320)
  %322 = load i64, i64* %45, align 8
  %323 = add i64 %322, %321
  store i64 %323, i64* %45, align 8
  %324 = load i32, i32* %22, align 4
  %325 = zext i32 %324 to i64
  %326 = load i64, i64* %45, align 8
  %327 = add i64 %325, %326
  %328 = load i32, i32* %29, align 4
  %329 = zext i32 %328 to i64
  %330 = icmp uge i64 %327, %329
  br i1 %330, label %331, label %336

331:                                              ; preds = %307
  %332 = load i64*, i64** %17, align 8
  %333 = load i32, i32* %22, align 4
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds i64, i64* %332, i64 %334
  store i64* %335, i64** %46, align 8
  br label %336

336:                                              ; preds = %331, %307
  br label %337

337:                                              ; preds = %336, %306
  %338 = load i64, i64* %45, align 8
  %339 = load i64, i64* %40, align 8
  %340 = icmp ugt i64 %338, %339
  br i1 %340, label %341, label %386

341:                                              ; preds = %337
  %342 = load i64, i64* %45, align 8
  %343 = load i32, i32* %36, align 4
  %344 = load i32, i32* %22, align 4
  %345 = sub i32 %343, %344
  %346 = zext i32 %345 to i64
  %347 = icmp ugt i64 %342, %346
  br i1 %347, label %348, label %353

348:                                              ; preds = %341
  %349 = load i32, i32* %22, align 4
  %350 = load i64, i64* %45, align 8
  %351 = trunc i64 %350 to i32
  %352 = add i32 %349, %351
  store i32 %352, i32* %36, align 4
  br label %353

353:                                              ; preds = %348, %341
  %354 = load i64, i64* %45, align 8
  store i64 %354, i64* %40, align 8
  %355 = load i32, i32* @ZSTD_REP_MOVE_OPT, align 4
  %356 = load i32, i32* %18, align 4
  %357 = add i32 %355, %356
  %358 = load i32, i32* %22, align 4
  %359 = sub i32 %357, %358
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %361 = load i32, i32* %38, align 4
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 0
  store i32 %359, i32* %364, align 4
  %365 = load i64, i64* %45, align 8
  %366 = trunc i64 %365 to i32
  %367 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %368 = load i32, i32* %38, align 4
  %369 = zext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 1
  store i32 %366, i32* %371, align 4
  %372 = load i32, i32* %38, align 4
  %373 = add i32 %372, 1
  store i32 %373, i32* %38, align 4
  %374 = load i64, i64* %45, align 8
  %375 = load i64, i64* @ZSTD_OPT_NUM, align 8
  %376 = icmp ugt i64 %374, %375
  br i1 %376, label %377, label %378

377:                                              ; preds = %353
  br label %424

378:                                              ; preds = %353
  %379 = load i64*, i64** %10, align 8
  %380 = load i64, i64* %45, align 8
  %381 = getelementptr inbounds i64, i64* %379, i64 %380
  %382 = load i64*, i64** %11, align 8
  %383 = icmp eq i64* %381, %382
  br i1 %383, label %384, label %385

384:                                              ; preds = %378
  br label %424

385:                                              ; preds = %378
  br label %386

386:                                              ; preds = %385, %337
  %387 = load i64*, i64** %46, align 8
  %388 = load i64, i64* %45, align 8
  %389 = getelementptr inbounds i64, i64* %387, i64 %388
  %390 = load i64, i64* %389, align 8
  %391 = load i64*, i64** %10, align 8
  %392 = load i64, i64* %45, align 8
  %393 = getelementptr inbounds i64, i64* %391, i64 %392
  %394 = load i64, i64* %393, align 8
  %395 = icmp slt i64 %390, %394
  br i1 %395, label %396, label %410

396:                                              ; preds = %386
  %397 = load i32, i32* %22, align 4
  %398 = load i32*, i32** %34, align 8
  store i32 %397, i32* %398, align 4
  %399 = load i64, i64* %45, align 8
  store i64 %399, i64* %26, align 8
  %400 = load i32, i32* %22, align 4
  %401 = load i32, i32* %32, align 4
  %402 = icmp ule i32 %400, %401
  br i1 %402, label %403, label %404

403:                                              ; preds = %396
  store i32* %37, i32** %34, align 8
  br label %424

404:                                              ; preds = %396
  %405 = load i32*, i32** %44, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 1
  store i32* %406, i32** %34, align 8
  %407 = load i32*, i32** %44, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 1
  %409 = load i32, i32* %408, align 4
  store i32 %409, i32* %22, align 4
  br label %423

410:                                              ; preds = %386
  %411 = load i32, i32* %22, align 4
  %412 = load i32*, i32** %35, align 8
  store i32 %411, i32* %412, align 4
  %413 = load i64, i64* %45, align 8
  store i64 %413, i64* %27, align 8
  %414 = load i32, i32* %22, align 4
  %415 = load i32, i32* %32, align 4
  %416 = icmp ule i32 %414, %415
  br i1 %416, label %417, label %418

417:                                              ; preds = %410
  store i32* %37, i32** %35, align 8
  br label %424

418:                                              ; preds = %410
  %419 = load i32*, i32** %44, align 8
  store i32* %419, i32** %35, align 8
  %420 = load i32*, i32** %44, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 0
  %422 = load i32, i32* %421, align 4
  store i32 %422, i32* %22, align 4
  br label %423

423:                                              ; preds = %418, %404
  br label %247

424:                                              ; preds = %417, %403, %384, %377, %255
  %425 = load i32*, i32** %35, align 8
  store i32 0, i32* %425, align 4
  %426 = load i32*, i32** %34, align 8
  store i32 0, i32* %426, align 4
  br label %427

427:                                              ; preds = %424, %238, %231
  %428 = load i32, i32* %36, align 4
  %429 = load i32, i32* %18, align 4
  %430 = add i32 %429, 8
  %431 = icmp ugt i32 %428, %430
  br i1 %431, label %432, label %435

432:                                              ; preds = %427
  %433 = load i32, i32* %36, align 4
  %434 = sub i32 %433, 8
  br label %438

435:                                              ; preds = %427
  %436 = load i32, i32* %18, align 4
  %437 = add i32 %436, 1
  br label %438

438:                                              ; preds = %435, %432
  %439 = phi i32 [ %434, %432 ], [ %437, %435 ]
  %440 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 6
  store i32 %439, i32* %441, align 8
  %442 = load i32, i32* %38, align 4
  ret i32 %442
}

declare dso_local i64 @ZSTD_hashPtr(i64*, i32, i32) #1

declare dso_local i32 @ZSTD_insertAndFindFirstIndexHash3(%struct.TYPE_11__*, i64*) #1

declare dso_local i64 @ZSTD_count(i64*, i64*, i64*) #1

declare dso_local i64 @ZSTD_readMINMATCH(i64*, i64) #1

declare dso_local i64 @ZSTD_count_2segments(i64*, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/rtl/extr_text.c_TEXT_NextLineW.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/rtl/extr_text.c_TEXT_NextLineW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i64, i32, i32 }

@TAB = common dso_local global i64 0, align 8
@DT_EXPANDTABS = common dso_local global i32 0, align 4
@CR = common dso_local global i64 0, align 8
@LF = common dso_local global i64 0, align 8
@DT_SINGLELINE = common dso_local global i32 0, align 4
@DT_NOPREFIX = common dso_local global i32 0, align 4
@PREFIX = common dso_local global i64 0, align 8
@ALPHA_PREFIX = common dso_local global i64 0, align 8
@KANA_PREFIX = common dso_local global i64 0, align 8
@DT_WORDBREAK = common dso_local global i32 0, align 4
@DT_PATH_ELLIPSIS = common dso_local global i32 0, align 4
@DT_WORD_ELLIPSIS = common dso_local global i32 0, align 4
@DT_END_ELLIPSIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32, i64*, i32*, i64*, i32*, i32, i32, %struct.TYPE_13__*, i32, i64**, i32, i32*, %struct.TYPE_12__*)* @TEXT_NextLineW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @TEXT_NextLineW(i32 %0, i64* %1, i32* %2, i64* %3, i32* %4, i32 %5, i32 %6, %struct.TYPE_13__* %7, i32 %8, i64** %9, i32 %10, i32* %11, %struct.TYPE_12__* %12) #0 {
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64**, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_12__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_13__, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i64*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  store i32 %0, i32* %15, align 4
  store i64* %1, i64** %16, align 8
  store i32* %2, i32** %17, align 8
  store i64* %3, i64** %18, align 8
  store i32* %4, i32** %19, align 8
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %22, align 8
  store i32 %8, i32* %23, align 4
  store i64** %9, i64*** %24, align 8
  store i32 %10, i32* %25, align 4
  store i32* %11, i32** %26, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %27, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %46 = bitcast %struct.TYPE_13__* %31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %46, i8 0, i64 24, i1 false)
  %47 = load i32*, i32** %19, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %32, align 4
  %49 = load i32*, i32** %26, align 8
  store i32 -1, i32* %49, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %686, %13
  %53 = load i32*, i32** %17, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %687

56:                                               ; preds = %52
  %57 = load i64*, i64** %16, align 8
  %58 = load i32, i32* %28, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TAB, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %139

64:                                               ; preds = %56
  %65 = load i32, i32* %21, align 4
  %66 = load i32, i32* @DT_EXPANDTABS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %139

69:                                               ; preds = %64
  %70 = load i32, i32* %30, align 4
  %71 = load i32, i32* %25, align 4
  %72 = sdiv i32 %70, %71
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %25, align 4
  %75 = mul nsw i32 %73, %74
  store i32 %75, i32* %30, align 4
  %76 = load i32*, i32** %17, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %29, align 4
  %80 = load i32, i32* %32, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %69
  %83 = load i64*, i64** %16, align 8
  %84 = load i32, i32* %28, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %28, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %18, align 8
  %90 = load i32, i32* %29, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %29, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i64, i64* %89, i64 %92
  store i64 %88, i64* %93, align 8
  br label %97

94:                                               ; preds = %69
  %95 = load i32, i32* %28, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %28, align 4
  br label %97

97:                                               ; preds = %94, %82
  br label %98

98:                                               ; preds = %137, %97
  %99 = load i32*, i32** %17, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i64*, i64** %16, align 8
  %104 = load i32, i32* %28, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TAB, align 8
  %109 = icmp eq i64 %107, %108
  br label %110

110:                                              ; preds = %102, %98
  %111 = phi i1 [ false, %98 ], [ %109, %102 ]
  br i1 %111, label %112, label %138

112:                                              ; preds = %110
  %113 = load i32, i32* %25, align 4
  %114 = load i32, i32* %30, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %30, align 4
  %116 = load i32*, i32** %17, align 8
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* %29, align 4
  %120 = load i32, i32* %32, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %112
  %123 = load i64*, i64** %16, align 8
  %124 = load i32, i32* %28, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %28, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i64, i64* %123, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i64*, i64** %18, align 8
  %130 = load i32, i32* %29, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %29, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  store i64 %128, i64* %133, align 8
  br label %137

134:                                              ; preds = %112
  %135 = load i32, i32* %28, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %28, align 4
  br label %137

137:                                              ; preds = %134, %122
  br label %98

138:                                              ; preds = %110
  br label %139

139:                                              ; preds = %138, %64, %56
  %140 = load i32, i32* %28, align 4
  store i32 %140, i32* %33, align 4
  %141 = load i32*, i32** %17, align 8
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %34, align 4
  %143 = load i32, i32* %29, align 4
  store i32 %143, i32* %35, align 4
  br label %144

144:                                              ; preds = %327, %217, %139
  %145 = load i32*, i32** %17, align 8
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %184

148:                                              ; preds = %144
  %149 = load i64*, i64** %16, align 8
  %150 = load i32, i32* %28, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @TAB, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %161, label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %21, align 4
  %158 = load i32, i32* @DT_EXPANDTABS, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %184, label %161

161:                                              ; preds = %156, %148
  %162 = load i64*, i64** %16, align 8
  %163 = load i32, i32* %28, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @CR, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %161
  %170 = load i64*, i64** %16, align 8
  %171 = load i32, i32* %28, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @LF, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %182, label %177

177:                                              ; preds = %169, %161
  %178 = load i32, i32* %21, align 4
  %179 = load i32, i32* @DT_SINGLELINE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br label %182

182:                                              ; preds = %177, %169
  %183 = phi i1 [ true, %169 ], [ %181, %177 ]
  br label %184

184:                                              ; preds = %182, %156, %144
  %185 = phi i1 [ false, %156 ], [ false, %144 ], [ %183, %182 ]
  br i1 %185, label %186, label %328

186:                                              ; preds = %184
  %187 = load i32, i32* %21, align 4
  %188 = load i32, i32* @DT_NOPREFIX, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %186
  %192 = load i32*, i32** %17, align 8
  %193 = load i32, i32* %192, align 4
  %194 = icmp sle i32 %193, 1
  br i1 %194, label %195, label %218

195:                                              ; preds = %191, %186
  %196 = load i32*, i32** %17, align 8
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %196, align 4
  %199 = load i32, i32* %29, align 4
  %200 = load i32, i32* %32, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %214

202:                                              ; preds = %195
  %203 = load i64*, i64** %16, align 8
  %204 = load i32, i32* %28, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %28, align 4
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i64, i64* %203, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = load i64*, i64** %18, align 8
  %210 = load i32, i32* %29, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %29, align 4
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i64, i64* %209, i64 %212
  store i64 %208, i64* %213, align 8
  br label %217

214:                                              ; preds = %195
  %215 = load i32, i32* %28, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %28, align 4
  br label %217

217:                                              ; preds = %214, %202
  br label %144

218:                                              ; preds = %191
  %219 = load i64*, i64** %16, align 8
  %220 = load i32, i32* %28, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @PREFIX, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %234, label %226

226:                                              ; preds = %218
  %227 = load i64*, i64** %16, align 8
  %228 = load i32, i32* %28, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64, i64* %227, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @ALPHA_PREFIX, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %284

234:                                              ; preds = %226, %218
  %235 = load i32*, i32** %17, align 8
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %235, align 4
  %238 = load i32, i32* %28, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %28, align 4
  %240 = load i64*, i64** %16, align 8
  %241 = load i32, i32* %28, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i64, i64* %240, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @PREFIX, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %270

247:                                              ; preds = %234
  %248 = load i32*, i32** %17, align 8
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %248, align 4
  %251 = load i32, i32* %29, align 4
  %252 = load i32, i32* %32, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %266

254:                                              ; preds = %247
  %255 = load i64*, i64** %16, align 8
  %256 = load i32, i32* %28, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %28, align 4
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i64, i64* %255, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = load i64*, i64** %18, align 8
  %262 = load i32, i32* %29, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %29, align 4
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds i64, i64* %261, i64 %264
  store i64 %260, i64* %265, align 8
  br label %269

266:                                              ; preds = %247
  %267 = load i32, i32* %28, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %28, align 4
  br label %269

269:                                              ; preds = %266, %254
  br label %283

270:                                              ; preds = %234
  %271 = load i32*, i32** %26, align 8
  %272 = load i32, i32* %271, align 4
  %273 = icmp eq i32 %272, -1
  br i1 %273, label %279, label %274

274:                                              ; preds = %270
  %275 = load i32*, i32** %26, align 8
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %35, align 4
  %278 = icmp sge i32 %276, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %274, %270
  %280 = load i32, i32* %29, align 4
  %281 = load i32*, i32** %26, align 8
  store i32 %280, i32* %281, align 4
  br label %282

282:                                              ; preds = %279, %274
  br label %283

283:                                              ; preds = %282, %269
  br label %327

284:                                              ; preds = %226
  %285 = load i64*, i64** %16, align 8
  %286 = load i32, i32* %28, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i64, i64* %285, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @KANA_PREFIX, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %303

292:                                              ; preds = %284
  %293 = load i32*, i32** %17, align 8
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %294, -1
  store i32 %295, i32* %293, align 4
  %296 = load i32, i32* %28, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %28, align 4
  %298 = load i32*, i32** %17, align 8
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, -1
  store i32 %300, i32* %298, align 4
  %301 = load i32, i32* %28, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %28, align 4
  br label %326

303:                                              ; preds = %284
  %304 = load i32*, i32** %17, align 8
  %305 = load i32, i32* %304, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %304, align 4
  %307 = load i32, i32* %29, align 4
  %308 = load i32, i32* %32, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %322

310:                                              ; preds = %303
  %311 = load i64*, i64** %16, align 8
  %312 = load i32, i32* %28, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %28, align 4
  %314 = sext i32 %312 to i64
  %315 = getelementptr inbounds i64, i64* %311, i64 %314
  %316 = load i64, i64* %315, align 8
  %317 = load i64*, i64** %18, align 8
  %318 = load i32, i32* %29, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %29, align 4
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds i64, i64* %317, i64 %320
  store i64 %316, i64* %321, align 8
  br label %325

322:                                              ; preds = %303
  %323 = load i32, i32* %28, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %28, align 4
  br label %325

325:                                              ; preds = %322, %310
  br label %326

326:                                              ; preds = %325, %292
  br label %327

327:                                              ; preds = %326, %283
  br label %144

328:                                              ; preds = %184
  %329 = load i32, i32* %29, align 4
  %330 = load i32, i32* %35, align 4
  %331 = sub nsw i32 %329, %330
  store i32 %331, i32* %40, align 4
  %332 = load i32, i32* %20, align 4
  %333 = load i32, i32* %30, align 4
  %334 = sub nsw i32 %332, %333
  store i32 %334, i32* %36, align 4
  %335 = load i32, i32* %15, align 4
  %336 = load i64*, i64** %18, align 8
  %337 = load i32, i32* %35, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i64, i64* %336, i64 %338
  %340 = load i32, i32* %40, align 4
  %341 = load i32, i32* %36, align 4
  %342 = call i32 @GetTextExtentExPointW(i32 %335, i64* %339, i32 %340, i32 %341, i32* %37, i32* null, %struct.TYPE_13__* %31)
  store i32 0, i32* %38, align 4
  %343 = load i32, i32* %37, align 4
  %344 = load i32, i32* %40, align 4
  %345 = icmp uge i32 %343, %344
  %346 = zext i1 %345 to i32
  store i32 %346, i32* %39, align 4
  %347 = load i32, i32* %39, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %396, label %349

349:                                              ; preds = %328
  %350 = load i32, i32* %21, align 4
  %351 = load i32, i32* @DT_WORDBREAK, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %396

354:                                              ; preds = %349
  %355 = load i32, i32* %15, align 4
  %356 = load i64*, i64** %18, align 8
  %357 = load i32, i32* %35, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i64, i64* %356, i64 %358
  %360 = load i32, i32* %32, align 4
  %361 = load i32, i32* %35, align 4
  %362 = sub nsw i32 %360, %361
  %363 = load i32, i32* %36, align 4
  %364 = load i32, i32* %21, align 4
  %365 = load i32, i32* %37, align 4
  %366 = call i32 @TEXT_WordBreak(i32 %355, i64* %359, i32 %362, i32* %40, i32 %363, i32 %364, i32 %365, i32* %43, %struct.TYPE_13__* %31)
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* %36, align 4
  %370 = icmp sle i32 %368, %369
  %371 = zext i1 %370 to i32
  store i32 %371, i32* %39, align 4
  %372 = load i32*, i32** %17, align 8
  %373 = load i32, i32* %34, align 4
  %374 = load i64*, i64** %16, align 8
  %375 = load i32, i32* %33, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i64, i64* %374, i64 %376
  %378 = load i32, i32* %28, align 4
  %379 = load i32, i32* %33, align 4
  %380 = sub nsw i32 %378, %379
  %381 = load i32, i32* %43, align 4
  %382 = load i32, i32* %21, align 4
  %383 = load i32, i32* @DT_NOPREFIX, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  %386 = xor i1 %385, true
  %387 = zext i1 %386 to i32
  %388 = call i32 @TEXT_SkipChars(i32* %372, i64** %42, i32 %373, i64* %377, i32 %380, i32 %381, i32 %387)
  %389 = load i64*, i64** %42, align 8
  %390 = load i64*, i64** %16, align 8
  %391 = ptrtoint i64* %389 to i64
  %392 = ptrtoint i64* %390 to i64
  %393 = sub i64 %391, %392
  %394 = sdiv exact i64 %393, 8
  %395 = trunc i64 %394 to i32
  store i32 %395, i32* %28, align 4
  store i32 1, i32* %38, align 4
  br label %396

396:                                              ; preds = %354, %349, %328
  %397 = load i32, i32* %40, align 4
  %398 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 0
  store i32 %397, i32* %399, align 8
  %400 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 1
  store i64 0, i64* %401, align 8
  %402 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 2
  store i32 0, i32* %403, align 8
  %404 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 3
  store i32 0, i32* %405, align 4
  store i32 0, i32* %41, align 4
  %406 = load i32, i32* %39, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %432, label %408

408:                                              ; preds = %396
  %409 = load i32, i32* %21, align 4
  %410 = load i32, i32* @DT_PATH_ELLIPSIS, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %432

413:                                              ; preds = %408
  %414 = load i32, i32* %15, align 4
  %415 = load i64*, i64** %18, align 8
  %416 = load i32, i32* %35, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i64, i64* %415, i64 %417
  %419 = load i32, i32* %32, align 4
  %420 = load i32, i32* %35, align 4
  %421 = sub nsw i32 %419, %420
  %422 = load i32, i32* %36, align 4
  %423 = load i64**, i64*** %24, align 8
  %424 = load i64*, i64** %423, align 8
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %426 = call i32 @TEXT_PathEllipsify(i32 %414, i64* %418, i32 %421, i32* %40, i32 %422, %struct.TYPE_13__* %31, i64* %424, %struct.TYPE_12__* %425)
  %427 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* %36, align 4
  %430 = icmp sle i32 %428, %429
  %431 = zext i1 %430 to i32
  store i32 %431, i32* %39, align 4
  store i32 1, i32* %41, align 4
  br label %432

432:                                              ; preds = %413, %408, %396
  %433 = load i32, i32* %39, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %440, label %435

435:                                              ; preds = %432
  %436 = load i32, i32* %21, align 4
  %437 = load i32, i32* @DT_WORD_ELLIPSIS, align 4
  %438 = and i32 %436, %437
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %464, label %440

440:                                              ; preds = %435, %432
  %441 = load i32, i32* %21, align 4
  %442 = load i32, i32* @DT_END_ELLIPSIS, align 4
  %443 = and i32 %441, %442
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %520

445:                                              ; preds = %440
  %446 = load i32, i32* %23, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %452

448:                                              ; preds = %445
  %449 = load i32*, i32** %17, align 8
  %450 = load i32, i32* %449, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %464, label %452

452:                                              ; preds = %448, %445
  %453 = load i32*, i32** %17, align 8
  %454 = load i32, i32* %453, align 4
  %455 = load i64*, i64** %16, align 8
  %456 = load i32, i32* %28, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i64, i64* %455, i64 %457
  %459 = call i64 @remainder_is_none_or_newline(i32 %454, i64* %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %520

461:                                              ; preds = %452
  %462 = load i32, i32* %39, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %520, label %464

464:                                              ; preds = %461, %448, %435
  %465 = load i32, i32* %15, align 4
  %466 = load i64*, i64** %18, align 8
  %467 = load i32, i32* %35, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i64, i64* %466, i64 %468
  %470 = load i32, i32* %32, align 4
  %471 = load i32, i32* %35, align 4
  %472 = sub nsw i32 %470, %471
  %473 = load i32, i32* %36, align 4
  %474 = load i64**, i64*** %24, align 8
  %475 = load i64*, i64** %474, align 8
  %476 = call i32 @TEXT_Ellipsify(i32 %465, i64* %469, i32 %472, i32* %40, i32 %473, %struct.TYPE_13__* %31, i64* %475, i32* %44, i32* %45)
  %477 = load i32, i32* %44, align 4
  %478 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %479 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = icmp ugt i32 %477, %480
  br i1 %481, label %482, label %494

482:                                              ; preds = %464
  %483 = load i32, i32* %44, align 4
  %484 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %485 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = sub i32 %483, %486
  %488 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %489 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %488, i32 0, i32 3
  %490 = load i32, i32* %489, align 4
  %491 = sub i32 %487, %490
  %492 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %493 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %492, i32 0, i32 2
  store i32 %491, i32* %493, align 8
  br label %514

494:                                              ; preds = %464
  %495 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %496 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %495, i32 0, i32 1
  %497 = load i64, i64* %496, align 8
  %498 = icmp eq i64 %497, 0
  br i1 %498, label %499, label %504

499:                                              ; preds = %494
  %500 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %501 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %500, i32 0, i32 2
  %502 = load i32, i32* %501, align 8
  %503 = icmp eq i32 %502, 0
  br label %504

504:                                              ; preds = %499, %494
  %505 = phi i1 [ false, %494 ], [ %503, %499 ]
  %506 = zext i1 %505 to i32
  %507 = call i32 @assert(i32 %506)
  %508 = load i32, i32* %44, align 4
  %509 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %510 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %509, i32 0, i32 0
  store i32 %508, i32* %510, align 8
  %511 = load i32, i32* %45, align 4
  %512 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %513 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %512, i32 0, i32 3
  store i32 %511, i32* %513, align 4
  br label %514

514:                                              ; preds = %504, %482
  %515 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %516 = load i32, i32* %515, align 8
  %517 = load i32, i32* %36, align 4
  %518 = icmp sle i32 %516, %517
  %519 = zext i1 %518 to i32
  store i32 %519, i32* %39, align 4
  store i32 1, i32* %41, align 4
  br label %520

520:                                              ; preds = %514, %461, %452, %440
  %521 = load i32, i32* %21, align 4
  %522 = load i32, i32* @DT_EXPANDTABS, align 4
  %523 = and i32 %521, %522
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %566

525:                                              ; preds = %520
  %526 = load i32, i32* %41, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %566

528:                                              ; preds = %525
  %529 = load i32, i32* %21, align 4
  %530 = load i32, i32* @DT_SINGLELINE, align 4
  %531 = and i32 %529, %530
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %535

533:                                              ; preds = %528
  %534 = load i32*, i32** %17, align 8
  store i32 0, i32* %534, align 4
  br label %565

535:                                              ; preds = %528
  br label %536

536:                                              ; preds = %558, %535
  %537 = load i32*, i32** %17, align 8
  %538 = load i32, i32* %537, align 4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %556

540:                                              ; preds = %536
  %541 = load i64*, i64** %16, align 8
  %542 = load i32, i32* %28, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i64, i64* %541, i64 %543
  %545 = load i64, i64* %544, align 8
  %546 = load i64, i64* @CR, align 8
  %547 = icmp ne i64 %545, %546
  br i1 %547, label %548, label %556

548:                                              ; preds = %540
  %549 = load i64*, i64** %16, align 8
  %550 = load i32, i32* %28, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i64, i64* %549, i64 %551
  %553 = load i64, i64* %552, align 8
  %554 = load i64, i64* @LF, align 8
  %555 = icmp ne i64 %553, %554
  br label %556

556:                                              ; preds = %548, %540, %536
  %557 = phi i1 [ false, %540 ], [ false, %536 ], [ %555, %548 ]
  br i1 %557, label %558, label %564

558:                                              ; preds = %556
  %559 = load i32*, i32** %17, align 8
  %560 = load i32, i32* %559, align 4
  %561 = add nsw i32 %560, -1
  store i32 %561, i32* %559, align 4
  %562 = load i32, i32* %28, align 4
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %28, align 4
  br label %536

564:                                              ; preds = %556
  br label %565

565:                                              ; preds = %564, %533
  br label %566

566:                                              ; preds = %565, %525, %520
  %567 = load i32, i32* %35, align 4
  %568 = load i32, i32* %40, align 4
  %569 = add i32 %567, %568
  store i32 %569, i32* %29, align 4
  %570 = load i32*, i32** %26, align 8
  %571 = load i32, i32* %570, align 4
  %572 = load i32, i32* %35, align 4
  %573 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %574 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 8
  %576 = add i32 %572, %575
  %577 = icmp uge i32 %571, %576
  br i1 %577, label %578, label %598

578:                                              ; preds = %566
  %579 = load i64*, i64** %16, align 8
  %580 = load i32, i32* %33, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i64, i64* %579, i64 %581
  %583 = load i32, i32* %28, align 4
  %584 = load i32, i32* %33, align 4
  %585 = sub nsw i32 %583, %584
  %586 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %587 = call i32 @TEXT_Reprefix(i64* %582, i32 %585, %struct.TYPE_12__* %586)
  %588 = load i32*, i32** %26, align 8
  store i32 %587, i32* %588, align 4
  %589 = load i32*, i32** %26, align 8
  %590 = load i32, i32* %589, align 4
  %591 = icmp ne i32 %590, -1
  br i1 %591, label %592, label %597

592:                                              ; preds = %578
  %593 = load i32, i32* %35, align 4
  %594 = load i32*, i32** %26, align 8
  %595 = load i32, i32* %594, align 4
  %596 = add nsw i32 %595, %593
  store i32 %596, i32* %594, align 4
  br label %597

597:                                              ; preds = %592, %578
  br label %598

598:                                              ; preds = %597, %566
  %599 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %600 = load i32, i32* %599, align 8
  %601 = load i32, i32* %30, align 4
  %602 = add nsw i32 %601, %600
  store i32 %602, i32* %30, align 4
  %603 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %604 = load i64, i64* %603, align 8
  %605 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %606 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %605, i32 0, i32 0
  %607 = load i64, i64* %606, align 8
  %608 = icmp sgt i64 %604, %607
  br i1 %608, label %609, label %614

609:                                              ; preds = %598
  %610 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %611 = load i64, i64* %610, align 8
  %612 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %613 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %612, i32 0, i32 0
  store i64 %611, i64* %613, align 8
  br label %614

614:                                              ; preds = %609, %598
  %615 = load i32, i32* %38, align 4
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %618

617:                                              ; preds = %614
  br label %687

618:                                              ; preds = %614
  %619 = load i32*, i32** %17, align 8
  %620 = load i32, i32* %619, align 4
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %623, label %622

622:                                              ; preds = %618
  br label %687

623:                                              ; preds = %618
  %624 = load i64*, i64** %16, align 8
  %625 = load i32, i32* %28, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds i64, i64* %624, i64 %626
  %628 = load i64, i64* %627, align 8
  %629 = load i64, i64* @CR, align 8
  %630 = icmp eq i64 %628, %629
  br i1 %630, label %639, label %631

631:                                              ; preds = %623
  %632 = load i64*, i64** %16, align 8
  %633 = load i32, i32* %28, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds i64, i64* %632, i64 %634
  %636 = load i64, i64* %635, align 8
  %637 = load i64, i64* @LF, align 8
  %638 = icmp eq i64 %636, %637
  br i1 %638, label %639, label %684

639:                                              ; preds = %631, %623
  %640 = load i32*, i32** %17, align 8
  %641 = load i32, i32* %640, align 4
  %642 = add nsw i32 %641, -1
  store i32 %642, i32* %640, align 4
  %643 = load i32, i32* %28, align 4
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %28, align 4
  %645 = load i32*, i32** %17, align 8
  %646 = load i32, i32* %645, align 4
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %648, label %683

648:                                              ; preds = %639
  %649 = load i64*, i64** %16, align 8
  %650 = load i32, i32* %28, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds i64, i64* %649, i64 %651
  %653 = load i64, i64* %652, align 8
  %654 = load i64, i64* @CR, align 8
  %655 = icmp eq i64 %653, %654
  br i1 %655, label %664, label %656

656:                                              ; preds = %648
  %657 = load i64*, i64** %16, align 8
  %658 = load i32, i32* %28, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i64, i64* %657, i64 %659
  %661 = load i64, i64* %660, align 8
  %662 = load i64, i64* @LF, align 8
  %663 = icmp eq i64 %661, %662
  br i1 %663, label %664, label %683

664:                                              ; preds = %656, %648
  %665 = load i64*, i64** %16, align 8
  %666 = load i32, i32* %28, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds i64, i64* %665, i64 %667
  %669 = load i64, i64* %668, align 8
  %670 = load i64*, i64** %16, align 8
  %671 = load i32, i32* %28, align 4
  %672 = sub nsw i32 %671, 1
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds i64, i64* %670, i64 %673
  %675 = load i64, i64* %674, align 8
  %676 = icmp ne i64 %669, %675
  br i1 %676, label %677, label %683

677:                                              ; preds = %664
  %678 = load i32*, i32** %17, align 8
  %679 = load i32, i32* %678, align 4
  %680 = add nsw i32 %679, -1
  store i32 %680, i32* %678, align 4
  %681 = load i32, i32* %28, align 4
  %682 = add nsw i32 %681, 1
  store i32 %682, i32* %28, align 4
  br label %683

683:                                              ; preds = %677, %664, %656, %639
  br label %687

684:                                              ; preds = %631
  br label %685

685:                                              ; preds = %684
  br label %686

686:                                              ; preds = %685
  br label %52

687:                                              ; preds = %683, %622, %617, %52
  %688 = load i32, i32* %30, align 4
  %689 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %690 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %689, i32 0, i32 1
  store i32 %688, i32* %690, align 8
  %691 = load i32, i32* %29, align 4
  %692 = load i32*, i32** %19, align 8
  store i32 %691, i32* %692, align 4
  %693 = load i32*, i32** %17, align 8
  %694 = load i32, i32* %693, align 4
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %696, label %701

696:                                              ; preds = %687
  %697 = load i64*, i64** %16, align 8
  %698 = load i32, i32* %28, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds i64, i64* %697, i64 %699
  store i64* %700, i64** %14, align 8
  br label %702

701:                                              ; preds = %687
  store i64* null, i64** %14, align 8
  br label %702

702:                                              ; preds = %701, %696
  %703 = load i64*, i64** %14, align 8
  ret i64* %703
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetTextExtentExPointW(i32, i64*, i32, i32, i32*, i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @TEXT_WordBreak(i32, i64*, i32, i32*, i32, i32, i32, i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @TEXT_SkipChars(i32*, i64**, i32, i64*, i32, i32, i32) #2

declare dso_local i32 @TEXT_PathEllipsify(i32, i64*, i32, i32*, i32, %struct.TYPE_13__*, i64*, %struct.TYPE_12__*) #2

declare dso_local i64 @remainder_is_none_or_newline(i32, i64*) #2

declare dso_local i32 @TEXT_Ellipsify(i32, i64*, i32, i32*, i32, %struct.TYPE_13__*, i64*, i32*, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @TEXT_Reprefix(i64*, i32, %struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

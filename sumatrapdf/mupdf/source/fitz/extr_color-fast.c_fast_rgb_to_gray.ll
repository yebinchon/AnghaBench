; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_rgb_to_gray.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_rgb_to_gray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i32, i32, i32, i32, i64 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"incompatible number of spots when converting pixmap\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"cannot drop alpha when converting pixmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32)* @fast_rgb_to_gray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fast_rgb_to_gray(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32 %3, i32* %8, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %9, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %14, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %15, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %17, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %18, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %60, %62
  %64 = sub i64 %59, %63
  store i64 %64, i64* %19, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %68, %70
  %72 = sub i64 %67, %71
  store i64 %72, i64* %20, align 8
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %82 = call i32 @fz_throw(i32* %80, i32 %81, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %79, %75, %4
  %84 = load i32, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %92 = call i32 @fz_throw(i32* %90, i32 %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %86, %83
  %94 = load i64, i64* %11, align 8
  %95 = trunc i64 %94 to i32
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97, %93
  br label %429

101:                                              ; preds = %97
  %102 = load i64, i64* %19, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load i64, i64* %20, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %11, align 8
  %111 = mul i64 %110, %109
  store i64 %111, i64* %11, align 8
  store i32 1, i32* %12, align 4
  br label %112

112:                                              ; preds = %107, %104, %101
  %113 = load i32, i32* %14, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %277

115:                                              ; preds = %112
  %116 = load i32, i32* %17, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %277

118:                                              ; preds = %115
  %119 = load i32, i32* %18, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %228

121:                                              ; preds = %118
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %177

124:                                              ; preds = %121
  br label %125

125:                                              ; preds = %169, %124
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %12, align 4
  %128 = icmp ne i32 %126, 0
  br i1 %128, label %129, label %176

129:                                              ; preds = %125
  %130 = load i64, i64* %11, align 8
  store i64 %130, i64* %21, align 8
  br label %131

131:                                              ; preds = %135, %129
  %132 = load i64, i64* %21, align 8
  %133 = add i64 %132, -1
  store i64 %133, i64* %21, align 8
  %134 = icmp ne i64 %132, 0
  br i1 %134, label %135, label %169

135:                                              ; preds = %131
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = add nsw i32 %139, 1
  %141 = mul nsw i32 %140, 77
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = add nsw i32 %145, 1
  %147 = mul nsw i32 %146, 150
  %148 = add nsw i32 %141, %147
  %149 = load i8*, i8** %9, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = add nsw i32 %152, 1
  %154 = mul nsw i32 %153, 28
  %155 = add nsw i32 %148, %154
  %156 = ashr i32 %155, 8
  %157 = trunc i32 %156 to i8
  %158 = load i8*, i8** %10, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  store i8 %157, i8* %159, align 1
  %160 = load i8*, i8** %9, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 3
  %162 = load i8, i8* %161, align 1
  %163 = load i8*, i8** %10, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  store i8 %162, i8* %164, align 1
  %165 = load i8*, i8** %9, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 4
  store i8* %166, i8** %9, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 2
  store i8* %168, i8** %10, align 8
  br label %131

169:                                              ; preds = %131
  %170 = load i64, i64* %19, align 8
  %171 = load i8*, i8** %10, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 %170
  store i8* %172, i8** %10, align 8
  %173 = load i64, i64* %20, align 8
  %174 = load i8*, i8** %9, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 %173
  store i8* %175, i8** %9, align 8
  br label %125

176:                                              ; preds = %125
  br label %227

177:                                              ; preds = %121
  br label %178

178:                                              ; preds = %219, %177
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %12, align 4
  %181 = icmp ne i32 %179, 0
  br i1 %181, label %182, label %226

182:                                              ; preds = %178
  %183 = load i64, i64* %11, align 8
  store i64 %183, i64* %22, align 8
  br label %184

184:                                              ; preds = %188, %182
  %185 = load i64, i64* %22, align 8
  %186 = add i64 %185, -1
  store i64 %186, i64* %22, align 8
  %187 = icmp ne i64 %185, 0
  br i1 %187, label %188, label %219

188:                                              ; preds = %184
  %189 = load i8*, i8** %9, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = add nsw i32 %192, 1
  %194 = mul nsw i32 %193, 77
  %195 = load i8*, i8** %9, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 1
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = add nsw i32 %198, 1
  %200 = mul nsw i32 %199, 150
  %201 = add nsw i32 %194, %200
  %202 = load i8*, i8** %9, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 2
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = add nsw i32 %205, 1
  %207 = mul nsw i32 %206, 28
  %208 = add nsw i32 %201, %207
  %209 = ashr i32 %208, 8
  %210 = trunc i32 %209 to i8
  %211 = load i8*, i8** %10, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 0
  store i8 %210, i8* %212, align 1
  %213 = load i8*, i8** %10, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 1
  store i8 -1, i8* %214, align 1
  %215 = load i8*, i8** %9, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 3
  store i8* %216, i8** %9, align 8
  %217 = load i8*, i8** %10, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 2
  store i8* %218, i8** %10, align 8
  br label %184

219:                                              ; preds = %184
  %220 = load i64, i64* %19, align 8
  %221 = load i8*, i8** %10, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 %220
  store i8* %222, i8** %10, align 8
  %223 = load i64, i64* %20, align 8
  %224 = load i8*, i8** %9, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 %223
  store i8* %225, i8** %9, align 8
  br label %178

226:                                              ; preds = %178
  br label %227

227:                                              ; preds = %226, %176
  br label %276

228:                                              ; preds = %118
  br label %229

229:                                              ; preds = %268, %228
  %230 = load i32, i32* %12, align 4
  %231 = add nsw i32 %230, -1
  store i32 %231, i32* %12, align 4
  %232 = icmp ne i32 %230, 0
  br i1 %232, label %233, label %275

233:                                              ; preds = %229
  %234 = load i64, i64* %11, align 8
  store i64 %234, i64* %23, align 8
  br label %235

235:                                              ; preds = %239, %233
  %236 = load i64, i64* %23, align 8
  %237 = add i64 %236, -1
  store i64 %237, i64* %23, align 8
  %238 = icmp ne i64 %236, 0
  br i1 %238, label %239, label %268

239:                                              ; preds = %235
  %240 = load i8*, i8** %9, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 0
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = add nsw i32 %243, 1
  %245 = mul nsw i32 %244, 77
  %246 = load i8*, i8** %9, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 1
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = add nsw i32 %249, 1
  %251 = mul nsw i32 %250, 150
  %252 = add nsw i32 %245, %251
  %253 = load i8*, i8** %9, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 2
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = add nsw i32 %256, 1
  %258 = mul nsw i32 %257, 28
  %259 = add nsw i32 %252, %258
  %260 = ashr i32 %259, 8
  %261 = trunc i32 %260 to i8
  %262 = load i8*, i8** %10, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 0
  store i8 %261, i8* %263, align 1
  %264 = load i8*, i8** %9, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 3
  store i8* %265, i8** %9, align 8
  %266 = load i8*, i8** %10, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %10, align 8
  br label %235

268:                                              ; preds = %235
  %269 = load i64, i64* %19, align 8
  %270 = load i8*, i8** %10, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 %269
  store i8* %271, i8** %10, align 8
  %272 = load i64, i64* %20, align 8
  %273 = load i8*, i8** %9, align 8
  %274 = getelementptr inbounds i8, i8* %273, i64 %272
  store i8* %274, i8** %9, align 8
  br label %229

275:                                              ; preds = %229
  br label %276

276:                                              ; preds = %275, %227
  br label %429

277:                                              ; preds = %115, %112
  %278 = load i32, i32* %8, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %359

280:                                              ; preds = %277
  br label %281

281:                                              ; preds = %351, %280
  %282 = load i32, i32* %12, align 4
  %283 = add nsw i32 %282, -1
  store i32 %283, i32* %12, align 4
  %284 = icmp ne i32 %282, 0
  br i1 %284, label %285, label %358

285:                                              ; preds = %281
  %286 = load i64, i64* %11, align 8
  store i64 %286, i64* %25, align 8
  br label %287

287:                                              ; preds = %350, %285
  %288 = load i64, i64* %25, align 8
  %289 = add i64 %288, -1
  store i64 %289, i64* %25, align 8
  %290 = icmp ne i64 %288, 0
  br i1 %290, label %291, label %351

291:                                              ; preds = %287
  %292 = load i8*, i8** %9, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 0
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = add nsw i32 %295, 1
  %297 = mul nsw i32 %296, 77
  %298 = load i8*, i8** %9, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 1
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i32
  %302 = add nsw i32 %301, 1
  %303 = mul nsw i32 %302, 150
  %304 = add nsw i32 %297, %303
  %305 = load i8*, i8** %9, align 8
  %306 = getelementptr inbounds i8, i8* %305, i64 2
  %307 = load i8, i8* %306, align 1
  %308 = zext i8 %307 to i32
  %309 = add nsw i32 %308, 1
  %310 = mul nsw i32 %309, 28
  %311 = add nsw i32 %304, %310
  %312 = ashr i32 %311, 8
  %313 = trunc i32 %312 to i8
  %314 = load i8*, i8** %10, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 0
  store i8 %313, i8* %315, align 1
  %316 = load i8*, i8** %9, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 3
  store i8* %317, i8** %9, align 8
  %318 = load i8*, i8** %10, align 8
  %319 = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %319, i8** %10, align 8
  %320 = load i32, i32* %14, align 4
  store i32 %320, i32* %24, align 4
  br label %321

321:                                              ; preds = %330, %291
  %322 = load i32, i32* %24, align 4
  %323 = icmp sgt i32 %322, 0
  br i1 %323, label %324, label %333

324:                                              ; preds = %321
  %325 = load i8*, i8** %9, align 8
  %326 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %326, i8** %9, align 8
  %327 = load i8, i8* %325, align 1
  %328 = load i8*, i8** %10, align 8
  %329 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %329, i8** %10, align 8
  store i8 %327, i8* %328, align 1
  br label %330

330:                                              ; preds = %324
  %331 = load i32, i32* %24, align 4
  %332 = add nsw i32 %331, -1
  store i32 %332, i32* %24, align 4
  br label %321

333:                                              ; preds = %321
  %334 = load i32, i32* %18, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %350

336:                                              ; preds = %333
  %337 = load i32, i32* %15, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %336
  %340 = load i8*, i8** %9, align 8
  %341 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %341, i8** %9, align 8
  %342 = load i8, i8* %340, align 1
  %343 = zext i8 %342 to i32
  br label %345

344:                                              ; preds = %336
  br label %345

345:                                              ; preds = %344, %339
  %346 = phi i32 [ %343, %339 ], [ 255, %344 ]
  %347 = trunc i32 %346 to i8
  %348 = load i8*, i8** %10, align 8
  %349 = getelementptr inbounds i8, i8* %348, i32 1
  store i8* %349, i8** %10, align 8
  store i8 %347, i8* %348, align 1
  br label %350

350:                                              ; preds = %345, %333
  br label %287

351:                                              ; preds = %287
  %352 = load i64, i64* %19, align 8
  %353 = load i8*, i8** %10, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 %352
  store i8* %354, i8** %10, align 8
  %355 = load i64, i64* %20, align 8
  %356 = load i8*, i8** %9, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 %355
  store i8* %357, i8** %9, align 8
  br label %281

358:                                              ; preds = %281
  br label %428

359:                                              ; preds = %277
  br label %360

360:                                              ; preds = %420, %359
  %361 = load i32, i32* %12, align 4
  %362 = add nsw i32 %361, -1
  store i32 %362, i32* %12, align 4
  %363 = icmp ne i32 %361, 0
  br i1 %363, label %364, label %427

364:                                              ; preds = %360
  %365 = load i64, i64* %11, align 8
  store i64 %365, i64* %26, align 8
  br label %366

366:                                              ; preds = %419, %364
  %367 = load i64, i64* %26, align 8
  %368 = add i64 %367, -1
  store i64 %368, i64* %26, align 8
  %369 = icmp ne i64 %367, 0
  br i1 %369, label %370, label %420

370:                                              ; preds = %366
  %371 = load i8*, i8** %9, align 8
  %372 = getelementptr inbounds i8, i8* %371, i64 0
  %373 = load i8, i8* %372, align 1
  %374 = zext i8 %373 to i32
  %375 = add nsw i32 %374, 1
  %376 = mul nsw i32 %375, 77
  %377 = load i8*, i8** %9, align 8
  %378 = getelementptr inbounds i8, i8* %377, i64 1
  %379 = load i8, i8* %378, align 1
  %380 = zext i8 %379 to i32
  %381 = add nsw i32 %380, 1
  %382 = mul nsw i32 %381, 150
  %383 = add nsw i32 %376, %382
  %384 = load i8*, i8** %9, align 8
  %385 = getelementptr inbounds i8, i8* %384, i64 2
  %386 = load i8, i8* %385, align 1
  %387 = zext i8 %386 to i32
  %388 = add nsw i32 %387, 1
  %389 = mul nsw i32 %388, 28
  %390 = add nsw i32 %383, %389
  %391 = ashr i32 %390, 8
  %392 = trunc i32 %391 to i8
  %393 = load i8*, i8** %10, align 8
  %394 = getelementptr inbounds i8, i8* %393, i64 0
  store i8 %392, i8* %394, align 1
  %395 = load i32, i32* %13, align 4
  %396 = load i8*, i8** %9, align 8
  %397 = sext i32 %395 to i64
  %398 = getelementptr inbounds i8, i8* %396, i64 %397
  store i8* %398, i8** %9, align 8
  %399 = load i32, i32* %16, align 4
  %400 = load i8*, i8** %10, align 8
  %401 = sext i32 %399 to i64
  %402 = getelementptr inbounds i8, i8* %400, i64 %401
  store i8* %402, i8** %10, align 8
  %403 = load i32, i32* %18, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %419

405:                                              ; preds = %370
  %406 = load i32, i32* %15, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %405
  %409 = load i8*, i8** %9, align 8
  %410 = getelementptr inbounds i8, i8* %409, i64 -1
  %411 = load i8, i8* %410, align 1
  %412 = zext i8 %411 to i32
  br label %414

413:                                              ; preds = %405
  br label %414

414:                                              ; preds = %413, %408
  %415 = phi i32 [ %412, %408 ], [ 255, %413 ]
  %416 = trunc i32 %415 to i8
  %417 = load i8*, i8** %10, align 8
  %418 = getelementptr inbounds i8, i8* %417, i64 -1
  store i8 %416, i8* %418, align 1
  br label %419

419:                                              ; preds = %414, %370
  br label %366

420:                                              ; preds = %366
  %421 = load i64, i64* %19, align 8
  %422 = load i8*, i8** %10, align 8
  %423 = getelementptr inbounds i8, i8* %422, i64 %421
  store i8* %423, i8** %10, align 8
  %424 = load i64, i64* %20, align 8
  %425 = load i8*, i8** %9, align 8
  %426 = getelementptr inbounds i8, i8* %425, i64 %424
  store i8* %426, i8** %9, align 8
  br label %360

427:                                              ; preds = %360
  br label %428

428:                                              ; preds = %427, %358
  br label %429

429:                                              ; preds = %100, %428, %276
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

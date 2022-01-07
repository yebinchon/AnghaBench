; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_bgr_to_gray.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_bgr_to_gray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i32, i32, i32, i32, i64 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"incompatible number of spots when converting pixmap\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"cannot drop alpha when converting pixmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32)* @fast_bgr_to_gray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fast_bgr_to_gray(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, i32 %3) #0 {
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
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32 %3, i32* %8, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %9, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %10, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %12, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %14, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %15, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %16, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %17, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %18, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %61, %63
  %65 = sub i64 %60, %64
  store i64 %65, i64* %19, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %69, %71
  %73 = sub i64 %68, %72
  store i64 %73, i64* %20, align 8
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %83 = call i32 @fz_throw(i32* %81, i32 %82, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %80, %76, %4
  %85 = load i32, i32* %18, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %93 = call i32 @fz_throw(i32* %91, i32 %92, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %87, %84
  %95 = load i64, i64* %11, align 8
  %96 = trunc i64 %95 to i32
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %94
  br label %436

102:                                              ; preds = %98
  %103 = load i64, i64* %19, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i64, i64* %20, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %11, align 8
  %112 = mul i64 %111, %110
  store i64 %112, i64* %11, align 8
  store i32 1, i32* %12, align 4
  br label %113

113:                                              ; preds = %108, %105, %102
  %114 = load i32, i32* %14, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %284

116:                                              ; preds = %113
  %117 = load i32, i32* %17, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %284

119:                                              ; preds = %116
  %120 = load i32, i32* %18, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %229

122:                                              ; preds = %119
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %178

125:                                              ; preds = %122
  br label %126

126:                                              ; preds = %170, %125
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %12, align 4
  %129 = icmp ne i32 %127, 0
  br i1 %129, label %130, label %177

130:                                              ; preds = %126
  %131 = load i64, i64* %11, align 8
  store i64 %131, i64* %21, align 8
  br label %132

132:                                              ; preds = %136, %130
  %133 = load i64, i64* %21, align 8
  %134 = add i64 %133, -1
  store i64 %134, i64* %21, align 8
  %135 = icmp ne i64 %133, 0
  br i1 %135, label %136, label %170

136:                                              ; preds = %132
  %137 = load i8*, i8** %9, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = add nsw i32 %140, 1
  %142 = mul nsw i32 %141, 28
  %143 = load i8*, i8** %9, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = add nsw i32 %146, 1
  %148 = mul nsw i32 %147, 150
  %149 = add nsw i32 %142, %148
  %150 = load i8*, i8** %9, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 2
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = add nsw i32 %153, 1
  %155 = mul nsw i32 %154, 77
  %156 = add nsw i32 %149, %155
  %157 = ashr i32 %156, 8
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %10, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 0
  store i8 %158, i8* %160, align 1
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 3
  %163 = load i8, i8* %162, align 1
  %164 = load i8*, i8** %10, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  store i8 %163, i8* %165, align 1
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 4
  store i8* %167, i8** %9, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 2
  store i8* %169, i8** %10, align 8
  br label %132

170:                                              ; preds = %132
  %171 = load i64, i64* %19, align 8
  %172 = load i8*, i8** %10, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 %171
  store i8* %173, i8** %10, align 8
  %174 = load i64, i64* %20, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 %174
  store i8* %176, i8** %9, align 8
  br label %126

177:                                              ; preds = %126
  br label %228

178:                                              ; preds = %122
  br label %179

179:                                              ; preds = %220, %178
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %12, align 4
  %182 = icmp ne i32 %180, 0
  br i1 %182, label %183, label %227

183:                                              ; preds = %179
  %184 = load i64, i64* %11, align 8
  store i64 %184, i64* %22, align 8
  br label %185

185:                                              ; preds = %189, %183
  %186 = load i64, i64* %22, align 8
  %187 = add i64 %186, -1
  store i64 %187, i64* %22, align 8
  %188 = icmp ne i64 %186, 0
  br i1 %188, label %189, label %220

189:                                              ; preds = %185
  %190 = load i8*, i8** %9, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 0
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = add nsw i32 %193, 1
  %195 = mul nsw i32 %194, 28
  %196 = load i8*, i8** %9, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 1
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = add nsw i32 %199, 1
  %201 = mul nsw i32 %200, 150
  %202 = add nsw i32 %195, %201
  %203 = load i8*, i8** %9, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 2
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = add nsw i32 %206, 1
  %208 = mul nsw i32 %207, 77
  %209 = add nsw i32 %202, %208
  %210 = ashr i32 %209, 8
  %211 = trunc i32 %210 to i8
  %212 = load i8*, i8** %10, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 0
  store i8 %211, i8* %213, align 1
  %214 = load i8*, i8** %10, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 1
  store i8 -1, i8* %215, align 1
  %216 = load i8*, i8** %9, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 3
  store i8* %217, i8** %9, align 8
  %218 = load i8*, i8** %10, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 2
  store i8* %219, i8** %10, align 8
  br label %185

220:                                              ; preds = %185
  %221 = load i64, i64* %19, align 8
  %222 = load i8*, i8** %10, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 %221
  store i8* %223, i8** %10, align 8
  %224 = load i64, i64* %20, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 %224
  store i8* %226, i8** %9, align 8
  br label %179

227:                                              ; preds = %179
  br label %228

228:                                              ; preds = %227, %177
  br label %283

229:                                              ; preds = %119
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 3, %232
  store i32 %233, i32* %23, align 4
  br label %234

234:                                              ; preds = %275, %229
  %235 = load i32, i32* %12, align 4
  %236 = add nsw i32 %235, -1
  store i32 %236, i32* %12, align 4
  %237 = icmp ne i32 %235, 0
  br i1 %237, label %238, label %282

238:                                              ; preds = %234
  %239 = load i64, i64* %11, align 8
  store i64 %239, i64* %24, align 8
  br label %240

240:                                              ; preds = %244, %238
  %241 = load i64, i64* %24, align 8
  %242 = add i64 %241, -1
  store i64 %242, i64* %24, align 8
  %243 = icmp ne i64 %241, 0
  br i1 %243, label %244, label %275

244:                                              ; preds = %240
  %245 = load i8*, i8** %9, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 0
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = add nsw i32 %248, 1
  %250 = mul nsw i32 %249, 28
  %251 = load i8*, i8** %9, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 1
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = add nsw i32 %254, 1
  %256 = mul nsw i32 %255, 150
  %257 = add nsw i32 %250, %256
  %258 = load i8*, i8** %9, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 2
  %260 = load i8, i8* %259, align 1
  %261 = zext i8 %260 to i32
  %262 = add nsw i32 %261, 1
  %263 = mul nsw i32 %262, 77
  %264 = add nsw i32 %257, %263
  %265 = ashr i32 %264, 8
  %266 = trunc i32 %265 to i8
  %267 = load i8*, i8** %10, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 0
  store i8 %266, i8* %268, align 1
  %269 = load i32, i32* %23, align 4
  %270 = load i8*, i8** %9, align 8
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i8, i8* %270, i64 %271
  store i8* %272, i8** %9, align 8
  %273 = load i8*, i8** %10, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %10, align 8
  br label %240

275:                                              ; preds = %240
  %276 = load i64, i64* %19, align 8
  %277 = load i8*, i8** %10, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 %276
  store i8* %278, i8** %10, align 8
  %279 = load i64, i64* %20, align 8
  %280 = load i8*, i8** %9, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 %279
  store i8* %281, i8** %9, align 8
  br label %234

282:                                              ; preds = %234
  br label %283

283:                                              ; preds = %282, %228
  br label %436

284:                                              ; preds = %116, %113
  %285 = load i32, i32* %8, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %366

287:                                              ; preds = %284
  br label %288

288:                                              ; preds = %358, %287
  %289 = load i32, i32* %12, align 4
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* %12, align 4
  %291 = icmp ne i32 %289, 0
  br i1 %291, label %292, label %365

292:                                              ; preds = %288
  %293 = load i64, i64* %11, align 8
  store i64 %293, i64* %26, align 8
  br label %294

294:                                              ; preds = %357, %292
  %295 = load i64, i64* %26, align 8
  %296 = add i64 %295, -1
  store i64 %296, i64* %26, align 8
  %297 = icmp ne i64 %295, 0
  br i1 %297, label %298, label %358

298:                                              ; preds = %294
  %299 = load i8*, i8** %9, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 0
  %301 = load i8, i8* %300, align 1
  %302 = zext i8 %301 to i32
  %303 = add nsw i32 %302, 1
  %304 = mul nsw i32 %303, 28
  %305 = load i8*, i8** %9, align 8
  %306 = getelementptr inbounds i8, i8* %305, i64 1
  %307 = load i8, i8* %306, align 1
  %308 = zext i8 %307 to i32
  %309 = add nsw i32 %308, 1
  %310 = mul nsw i32 %309, 150
  %311 = add nsw i32 %304, %310
  %312 = load i8*, i8** %9, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 2
  %314 = load i8, i8* %313, align 1
  %315 = zext i8 %314 to i32
  %316 = add nsw i32 %315, 1
  %317 = mul nsw i32 %316, 77
  %318 = add nsw i32 %311, %317
  %319 = ashr i32 %318, 8
  %320 = trunc i32 %319 to i8
  %321 = load i8*, i8** %10, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 0
  store i8 %320, i8* %322, align 1
  %323 = load i8*, i8** %9, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 3
  store i8* %324, i8** %9, align 8
  %325 = load i8*, i8** %10, align 8
  %326 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %326, i8** %10, align 8
  %327 = load i32, i32* %14, align 4
  store i32 %327, i32* %25, align 4
  br label %328

328:                                              ; preds = %337, %298
  %329 = load i32, i32* %25, align 4
  %330 = icmp sgt i32 %329, 0
  br i1 %330, label %331, label %340

331:                                              ; preds = %328
  %332 = load i8*, i8** %9, align 8
  %333 = getelementptr inbounds i8, i8* %332, i32 1
  store i8* %333, i8** %9, align 8
  %334 = load i8, i8* %332, align 1
  %335 = load i8*, i8** %10, align 8
  %336 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %336, i8** %10, align 8
  store i8 %334, i8* %335, align 1
  br label %337

337:                                              ; preds = %331
  %338 = load i32, i32* %25, align 4
  %339 = add nsw i32 %338, -1
  store i32 %339, i32* %25, align 4
  br label %328

340:                                              ; preds = %328
  %341 = load i32, i32* %18, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %357

343:                                              ; preds = %340
  %344 = load i32, i32* %15, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %351

346:                                              ; preds = %343
  %347 = load i8*, i8** %9, align 8
  %348 = getelementptr inbounds i8, i8* %347, i32 1
  store i8* %348, i8** %9, align 8
  %349 = load i8, i8* %347, align 1
  %350 = zext i8 %349 to i32
  br label %352

351:                                              ; preds = %343
  br label %352

352:                                              ; preds = %351, %346
  %353 = phi i32 [ %350, %346 ], [ 255, %351 ]
  %354 = trunc i32 %353 to i8
  %355 = load i8*, i8** %10, align 8
  %356 = getelementptr inbounds i8, i8* %355, i32 1
  store i8* %356, i8** %10, align 8
  store i8 %354, i8* %355, align 1
  br label %357

357:                                              ; preds = %352, %340
  br label %294

358:                                              ; preds = %294
  %359 = load i64, i64* %19, align 8
  %360 = load i8*, i8** %10, align 8
  %361 = getelementptr inbounds i8, i8* %360, i64 %359
  store i8* %361, i8** %10, align 8
  %362 = load i64, i64* %20, align 8
  %363 = load i8*, i8** %9, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 %362
  store i8* %364, i8** %9, align 8
  br label %288

365:                                              ; preds = %288
  br label %435

366:                                              ; preds = %284
  br label %367

367:                                              ; preds = %427, %366
  %368 = load i32, i32* %12, align 4
  %369 = add nsw i32 %368, -1
  store i32 %369, i32* %12, align 4
  %370 = icmp ne i32 %368, 0
  br i1 %370, label %371, label %434

371:                                              ; preds = %367
  %372 = load i64, i64* %11, align 8
  store i64 %372, i64* %27, align 8
  br label %373

373:                                              ; preds = %426, %371
  %374 = load i64, i64* %27, align 8
  %375 = add i64 %374, -1
  store i64 %375, i64* %27, align 8
  %376 = icmp ne i64 %374, 0
  br i1 %376, label %377, label %427

377:                                              ; preds = %373
  %378 = load i8*, i8** %9, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 0
  %380 = load i8, i8* %379, align 1
  %381 = zext i8 %380 to i32
  %382 = add nsw i32 %381, 1
  %383 = mul nsw i32 %382, 28
  %384 = load i8*, i8** %9, align 8
  %385 = getelementptr inbounds i8, i8* %384, i64 1
  %386 = load i8, i8* %385, align 1
  %387 = zext i8 %386 to i32
  %388 = add nsw i32 %387, 1
  %389 = mul nsw i32 %388, 150
  %390 = add nsw i32 %383, %389
  %391 = load i8*, i8** %9, align 8
  %392 = getelementptr inbounds i8, i8* %391, i64 2
  %393 = load i8, i8* %392, align 1
  %394 = zext i8 %393 to i32
  %395 = add nsw i32 %394, 1
  %396 = mul nsw i32 %395, 77
  %397 = add nsw i32 %390, %396
  %398 = ashr i32 %397, 8
  %399 = trunc i32 %398 to i8
  %400 = load i8*, i8** %10, align 8
  %401 = getelementptr inbounds i8, i8* %400, i64 0
  store i8 %399, i8* %401, align 1
  %402 = load i32, i32* %13, align 4
  %403 = load i8*, i8** %9, align 8
  %404 = sext i32 %402 to i64
  %405 = getelementptr inbounds i8, i8* %403, i64 %404
  store i8* %405, i8** %9, align 8
  %406 = load i32, i32* %16, align 4
  %407 = load i8*, i8** %10, align 8
  %408 = sext i32 %406 to i64
  %409 = getelementptr inbounds i8, i8* %407, i64 %408
  store i8* %409, i8** %10, align 8
  %410 = load i32, i32* %18, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %426

412:                                              ; preds = %377
  %413 = load i32, i32* %15, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %420

415:                                              ; preds = %412
  %416 = load i8*, i8** %9, align 8
  %417 = getelementptr inbounds i8, i8* %416, i64 -1
  %418 = load i8, i8* %417, align 1
  %419 = zext i8 %418 to i32
  br label %421

420:                                              ; preds = %412
  br label %421

421:                                              ; preds = %420, %415
  %422 = phi i32 [ %419, %415 ], [ 255, %420 ]
  %423 = trunc i32 %422 to i8
  %424 = load i8*, i8** %10, align 8
  %425 = getelementptr inbounds i8, i8* %424, i64 -1
  store i8 %423, i8* %425, align 1
  br label %426

426:                                              ; preds = %421, %377
  br label %373

427:                                              ; preds = %373
  %428 = load i64, i64* %19, align 8
  %429 = load i8*, i8** %10, align 8
  %430 = getelementptr inbounds i8, i8* %429, i64 %428
  store i8* %430, i8** %10, align 8
  %431 = load i64, i64* %20, align 8
  %432 = load i8*, i8** %9, align 8
  %433 = getelementptr inbounds i8, i8* %432, i64 %431
  store i8* %433, i8** %9, align 8
  br label %367

434:                                              ; preds = %367
  br label %435

435:                                              ; preds = %434, %365
  br label %436

436:                                              ; preds = %101, %435, %283
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

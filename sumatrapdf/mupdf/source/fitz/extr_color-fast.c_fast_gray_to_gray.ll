; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_gray_to_gray.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_gray_to_gray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i32, i32, i32, i32, i64 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"incompatible number of spots when converting pixmap\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"cannot drop alpha when converting pixmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32)* @fast_gray_to_gray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fast_gray_to_gray(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, i32 %3) #0 {
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
  br label %316

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
  br i1 %114, label %115, label %202

115:                                              ; preds = %112
  %116 = load i32, i32* %17, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %202

118:                                              ; preds = %115
  %119 = load i32, i32* %18, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %178

121:                                              ; preds = %118
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %152

124:                                              ; preds = %121
  br label %125

125:                                              ; preds = %150, %124
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %12, align 4
  %128 = icmp ne i32 %126, 0
  br i1 %128, label %129, label %151

129:                                              ; preds = %125
  %130 = load i64, i64* %11, align 8
  store i64 %130, i64* %21, align 8
  br label %131

131:                                              ; preds = %135, %129
  %132 = load i64, i64* %21, align 8
  %133 = add i64 %132, -1
  store i64 %133, i64* %21, align 8
  %134 = icmp ne i64 %132, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %131
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = load i8*, i8** %10, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  store i8 %138, i8* %140, align 1
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i8, i8* %142, align 1
  %144 = load i8*, i8** %10, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  store i8 %143, i8* %145, align 1
  %146 = load i8*, i8** %9, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 2
  store i8* %147, i8** %9, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 2
  store i8* %149, i8** %10, align 8
  br label %131

150:                                              ; preds = %131
  br label %125

151:                                              ; preds = %125
  br label %177

152:                                              ; preds = %121
  br label %153

153:                                              ; preds = %175, %152
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %12, align 4
  %156 = icmp ne i32 %154, 0
  br i1 %156, label %157, label %176

157:                                              ; preds = %153
  %158 = load i64, i64* %11, align 8
  store i64 %158, i64* %22, align 8
  br label %159

159:                                              ; preds = %163, %157
  %160 = load i64, i64* %22, align 8
  %161 = add i64 %160, -1
  store i64 %161, i64* %22, align 8
  %162 = icmp ne i64 %160, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %159
  %164 = load i8*, i8** %9, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = load i8*, i8** %10, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  store i8 %166, i8* %168, align 1
  %169 = load i8*, i8** %10, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  store i8 -1, i8* %170, align 1
  %171 = load i8*, i8** %9, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 1
  store i8* %172, i8** %9, align 8
  %173 = load i8*, i8** %10, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 2
  store i8* %174, i8** %10, align 8
  br label %159

175:                                              ; preds = %159
  br label %153

176:                                              ; preds = %153
  br label %177

177:                                              ; preds = %176, %151
  br label %201

178:                                              ; preds = %118
  br label %179

179:                                              ; preds = %199, %178
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %12, align 4
  %182 = icmp ne i32 %180, 0
  br i1 %182, label %183, label %200

183:                                              ; preds = %179
  %184 = load i64, i64* %11, align 8
  store i64 %184, i64* %23, align 8
  br label %185

185:                                              ; preds = %189, %183
  %186 = load i64, i64* %23, align 8
  %187 = add i64 %186, -1
  store i64 %187, i64* %23, align 8
  %188 = icmp ne i64 %186, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %185
  %190 = load i8*, i8** %9, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 0
  %192 = load i8, i8* %191, align 1
  %193 = load i8*, i8** %10, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 0
  store i8 %192, i8* %194, align 1
  %195 = load i8*, i8** %9, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 1
  store i8* %196, i8** %9, align 8
  %197 = load i8*, i8** %10, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  store i8* %198, i8** %10, align 8
  br label %185

199:                                              ; preds = %185
  br label %179

200:                                              ; preds = %179
  br label %201

201:                                              ; preds = %200, %177
  br label %316

202:                                              ; preds = %115, %112
  %203 = load i32, i32* %8, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %265

205:                                              ; preds = %202
  br label %206

206:                                              ; preds = %257, %205
  %207 = load i32, i32* %12, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %12, align 4
  %209 = icmp ne i32 %207, 0
  br i1 %209, label %210, label %264

210:                                              ; preds = %206
  %211 = load i64, i64* %11, align 8
  store i64 %211, i64* %25, align 8
  br label %212

212:                                              ; preds = %256, %210
  %213 = load i64, i64* %25, align 8
  %214 = add i64 %213, -1
  store i64 %214, i64* %25, align 8
  %215 = icmp ne i64 %213, 0
  br i1 %215, label %216, label %257

216:                                              ; preds = %212
  %217 = load i8*, i8** %9, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  %219 = load i8, i8* %218, align 1
  %220 = load i8*, i8** %10, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 0
  store i8 %219, i8* %221, align 1
  %222 = load i8*, i8** %9, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 1
  store i8* %223, i8** %9, align 8
  %224 = load i8*, i8** %10, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  store i8* %225, i8** %10, align 8
  %226 = load i32, i32* %14, align 4
  store i32 %226, i32* %24, align 4
  br label %227

227:                                              ; preds = %236, %216
  %228 = load i32, i32* %24, align 4
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %227
  %231 = load i8*, i8** %9, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %9, align 8
  %233 = load i8, i8* %231, align 1
  %234 = load i8*, i8** %10, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %10, align 8
  store i8 %233, i8* %234, align 1
  br label %236

236:                                              ; preds = %230
  %237 = load i32, i32* %24, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %24, align 4
  br label %227

239:                                              ; preds = %227
  %240 = load i32, i32* %18, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %256

242:                                              ; preds = %239
  %243 = load i32, i32* %15, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %242
  %246 = load i8*, i8** %9, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %9, align 8
  %248 = load i8, i8* %246, align 1
  %249 = zext i8 %248 to i32
  br label %251

250:                                              ; preds = %242
  br label %251

251:                                              ; preds = %250, %245
  %252 = phi i32 [ %249, %245 ], [ 255, %250 ]
  %253 = trunc i32 %252 to i8
  %254 = load i8*, i8** %10, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %10, align 8
  store i8 %253, i8* %254, align 1
  br label %256

256:                                              ; preds = %251, %239
  br label %212

257:                                              ; preds = %212
  %258 = load i64, i64* %19, align 8
  %259 = load i8*, i8** %10, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 %258
  store i8* %260, i8** %10, align 8
  %261 = load i64, i64* %20, align 8
  %262 = load i8*, i8** %9, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 %261
  store i8* %263, i8** %9, align 8
  br label %206

264:                                              ; preds = %206
  br label %315

265:                                              ; preds = %202
  br label %266

266:                                              ; preds = %307, %265
  %267 = load i32, i32* %12, align 4
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %12, align 4
  %269 = icmp ne i32 %267, 0
  br i1 %269, label %270, label %314

270:                                              ; preds = %266
  %271 = load i64, i64* %11, align 8
  store i64 %271, i64* %26, align 8
  br label %272

272:                                              ; preds = %306, %270
  %273 = load i64, i64* %26, align 8
  %274 = add i64 %273, -1
  store i64 %274, i64* %26, align 8
  %275 = icmp ne i64 %273, 0
  br i1 %275, label %276, label %307

276:                                              ; preds = %272
  %277 = load i8*, i8** %9, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 0
  %279 = load i8, i8* %278, align 1
  %280 = load i8*, i8** %10, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 0
  store i8 %279, i8* %281, align 1
  %282 = load i32, i32* %13, align 4
  %283 = load i8*, i8** %9, align 8
  %284 = sext i32 %282 to i64
  %285 = getelementptr inbounds i8, i8* %283, i64 %284
  store i8* %285, i8** %9, align 8
  %286 = load i32, i32* %16, align 4
  %287 = load i8*, i8** %10, align 8
  %288 = sext i32 %286 to i64
  %289 = getelementptr inbounds i8, i8* %287, i64 %288
  store i8* %289, i8** %10, align 8
  %290 = load i32, i32* %18, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %306

292:                                              ; preds = %276
  %293 = load i32, i32* %15, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %292
  %296 = load i8*, i8** %9, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 -1
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i32
  br label %301

300:                                              ; preds = %292
  br label %301

301:                                              ; preds = %300, %295
  %302 = phi i32 [ %299, %295 ], [ 255, %300 ]
  %303 = trunc i32 %302 to i8
  %304 = load i8*, i8** %10, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 -1
  store i8 %303, i8* %305, align 1
  br label %306

306:                                              ; preds = %301, %276
  br label %272

307:                                              ; preds = %272
  %308 = load i64, i64* %19, align 8
  %309 = load i8*, i8** %10, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 %308
  store i8* %310, i8** %10, align 8
  %311 = load i64, i64* %20, align 8
  %312 = load i8*, i8** %9, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 %311
  store i8* %313, i8** %9, align 8
  br label %266

314:                                              ; preds = %266
  br label %315

315:                                              ; preds = %314, %264
  br label %316

316:                                              ; preds = %100, %315, %201
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

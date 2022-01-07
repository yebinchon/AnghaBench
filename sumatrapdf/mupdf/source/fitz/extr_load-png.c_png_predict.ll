; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_png_predict.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_png_predict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32)* @png_predict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_predict(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = mul i32 %20, %21
  %23 = load i32, i32* %10, align 4
  %24 = mul i32 %22, %23
  %25 = add i32 %24, 7
  %26 = udiv i32 %25, 8
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = mul i32 %27, %28
  %30 = add i32 %29, 7
  %31 = udiv i32 %30, 8
  store i32 %31, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %353, %5
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %356

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = add i32 %38, 1
  %40 = load i32, i32* %14, align 4
  %41 = mul i32 %39, %40
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %37, i64 %42
  store i8* %43, i8** %15, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %14, align 4
  %47 = mul i32 %45, %46
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  store i8* %49, i8** %16, align 8
  %50 = load i8*, i8** %16, align 8
  store i8* %50, i8** %17, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = load i32, i32* %11, align 4
  %53 = zext i32 %52 to i64
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8* %55, i8** %18, align 8
  %56 = load i8*, i8** %16, align 8
  %57 = load i32, i32* %11, align 4
  %58 = zext i32 %57 to i64
  %59 = sub i64 0, %58
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  store i8* %60, i8** %19, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %15, align 8
  %63 = load i8, i8* %61, align 1
  %64 = zext i8 %63 to i32
  switch i32 %64, label %65 [
    i32 0, label %66
    i32 1, label %81
    i32 2, label %118
    i32 3, label %159
    i32 4, label %252
  ]

65:                                               ; preds = %36
  br label %66

66:                                               ; preds = %36, %65
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %77, %66
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load i8*, i8** %15, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %15, align 8
  %74 = load i8, i8* %72, align 1
  %75 = load i8*, i8** %16, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %16, align 8
  store i8 %74, i8* %75, align 1
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %13, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %67

80:                                               ; preds = %67
  br label %352

81:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %82

82:                                               ; preds = %92, %81
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load i8*, i8** %15, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %15, align 8
  %89 = load i8, i8* %87, align 1
  %90 = load i8*, i8** %16, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %16, align 8
  store i8 %89, i8* %90, align 1
  br label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %13, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %82

95:                                               ; preds = %82
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %114, %95
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %97
  %102 = load i8*, i8** %15, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %15, align 8
  %104 = load i8, i8* %102, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8*, i8** %17, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %17, align 8
  %108 = load i8, i8* %106, align 1
  %109 = zext i8 %108 to i32
  %110 = add nsw i32 %105, %109
  %111 = trunc i32 %110 to i8
  %112 = load i8*, i8** %16, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %16, align 8
  store i8 %111, i8* %112, align 1
  br label %114

114:                                              ; preds = %101
  %115 = load i32, i32* %13, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %97

117:                                              ; preds = %97
  br label %352

118:                                              ; preds = %36
  %119 = load i32, i32* %14, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %118
  store i32 0, i32* %13, align 4
  br label %122

122:                                              ; preds = %132, %121
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load i8*, i8** %15, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %15, align 8
  %129 = load i8, i8* %127, align 1
  %130 = load i8*, i8** %16, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %16, align 8
  store i8 %129, i8* %130, align 1
  br label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %13, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %13, align 4
  br label %122

135:                                              ; preds = %122
  br label %158

136:                                              ; preds = %118
  store i32 0, i32* %13, align 4
  br label %137

137:                                              ; preds = %154, %136
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %157

141:                                              ; preds = %137
  %142 = load i8*, i8** %15, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %15, align 8
  %144 = load i8, i8* %142, align 1
  %145 = zext i8 %144 to i32
  %146 = load i8*, i8** %18, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %18, align 8
  %148 = load i8, i8* %146, align 1
  %149 = zext i8 %148 to i32
  %150 = add nsw i32 %145, %149
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %16, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %16, align 8
  store i8 %151, i8* %152, align 1
  br label %154

154:                                              ; preds = %141
  %155 = load i32, i32* %13, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %13, align 4
  br label %137

157:                                              ; preds = %137
  br label %158

158:                                              ; preds = %157, %135
  br label %352

159:                                              ; preds = %36
  %160 = load i32, i32* %14, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %200

162:                                              ; preds = %159
  store i32 0, i32* %13, align 4
  br label %163

163:                                              ; preds = %173, %162
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp ult i32 %164, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %163
  %168 = load i8*, i8** %15, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %15, align 8
  %170 = load i8, i8* %168, align 1
  %171 = load i8*, i8** %16, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %16, align 8
  store i8 %170, i8* %171, align 1
  br label %173

173:                                              ; preds = %167
  %174 = load i32, i32* %13, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %13, align 4
  br label %163

176:                                              ; preds = %163
  %177 = load i32, i32* %12, align 4
  store i32 %177, i32* %13, align 4
  br label %178

178:                                              ; preds = %196, %176
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %182, label %199

182:                                              ; preds = %178
  %183 = load i8*, i8** %15, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %15, align 8
  %185 = load i8, i8* %183, align 1
  %186 = zext i8 %185 to i32
  %187 = load i8*, i8** %17, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %17, align 8
  %189 = load i8, i8* %187, align 1
  %190 = zext i8 %189 to i32
  %191 = ashr i32 %190, 1
  %192 = add nsw i32 %186, %191
  %193 = trunc i32 %192 to i8
  %194 = load i8*, i8** %16, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %16, align 8
  store i8 %193, i8* %194, align 1
  br label %196

196:                                              ; preds = %182
  %197 = load i32, i32* %13, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %13, align 4
  br label %178

199:                                              ; preds = %178
  br label %251

200:                                              ; preds = %159
  store i32 0, i32* %13, align 4
  br label %201

201:                                              ; preds = %219, %200
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* %12, align 4
  %204 = icmp ult i32 %202, %203
  br i1 %204, label %205, label %222

205:                                              ; preds = %201
  %206 = load i8*, i8** %15, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %15, align 8
  %208 = load i8, i8* %206, align 1
  %209 = zext i8 %208 to i32
  %210 = load i8*, i8** %18, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %18, align 8
  %212 = load i8, i8* %210, align 1
  %213 = zext i8 %212 to i32
  %214 = ashr i32 %213, 1
  %215 = add nsw i32 %209, %214
  %216 = trunc i32 %215 to i8
  %217 = load i8*, i8** %16, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %16, align 8
  store i8 %216, i8* %217, align 1
  br label %219

219:                                              ; preds = %205
  %220 = load i32, i32* %13, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %13, align 4
  br label %201

222:                                              ; preds = %201
  %223 = load i32, i32* %12, align 4
  store i32 %223, i32* %13, align 4
  br label %224

224:                                              ; preds = %247, %222
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %11, align 4
  %227 = icmp ult i32 %225, %226
  br i1 %227, label %228, label %250

228:                                              ; preds = %224
  %229 = load i8*, i8** %15, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %15, align 8
  %231 = load i8, i8* %229, align 1
  %232 = zext i8 %231 to i32
  %233 = load i8*, i8** %18, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %18, align 8
  %235 = load i8, i8* %233, align 1
  %236 = zext i8 %235 to i32
  %237 = load i8*, i8** %17, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %17, align 8
  %239 = load i8, i8* %237, align 1
  %240 = zext i8 %239 to i32
  %241 = add nsw i32 %236, %240
  %242 = ashr i32 %241, 1
  %243 = add nsw i32 %232, %242
  %244 = trunc i32 %243 to i8
  %245 = load i8*, i8** %16, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %246, i8** %16, align 8
  store i8 %244, i8* %245, align 1
  br label %247

247:                                              ; preds = %228
  %248 = load i32, i32* %13, align 4
  %249 = add i32 %248, 1
  store i32 %249, i32* %13, align 4
  br label %224

250:                                              ; preds = %224
  br label %251

251:                                              ; preds = %250, %199
  br label %352

252:                                              ; preds = %36
  %253 = load i32, i32* %14, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %297

255:                                              ; preds = %252
  store i32 0, i32* %13, align 4
  br label %256

256:                                              ; preds = %270, %255
  %257 = load i32, i32* %13, align 4
  %258 = load i32, i32* %12, align 4
  %259 = icmp ult i32 %257, %258
  br i1 %259, label %260, label %273

260:                                              ; preds = %256
  %261 = load i8*, i8** %15, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %15, align 8
  %263 = load i8, i8* %261, align 1
  %264 = zext i8 %263 to i32
  %265 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @paeth to i32 (i32, i32, i32, ...)*)(i32 0, i32 0, i32 0)
  %266 = add nsw i32 %264, %265
  %267 = trunc i32 %266 to i8
  %268 = load i8*, i8** %16, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %16, align 8
  store i8 %267, i8* %268, align 1
  br label %270

270:                                              ; preds = %260
  %271 = load i32, i32* %13, align 4
  %272 = add i32 %271, 1
  store i32 %272, i32* %13, align 4
  br label %256

273:                                              ; preds = %256
  %274 = load i32, i32* %12, align 4
  store i32 %274, i32* %13, align 4
  br label %275

275:                                              ; preds = %293, %273
  %276 = load i32, i32* %13, align 4
  %277 = load i32, i32* %11, align 4
  %278 = icmp ult i32 %276, %277
  br i1 %278, label %279, label %296

279:                                              ; preds = %275
  %280 = load i8*, i8** %15, align 8
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %281, i8** %15, align 8
  %282 = load i8, i8* %280, align 1
  %283 = zext i8 %282 to i32
  %284 = load i8*, i8** %17, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %17, align 8
  %286 = load i8, i8* %284, align 1
  %287 = zext i8 %286 to i32
  %288 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @paeth to i32 (i32, i32, i32, ...)*)(i32 %287, i32 0, i32 0)
  %289 = add nsw i32 %283, %288
  %290 = trunc i32 %289 to i8
  %291 = load i8*, i8** %16, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %16, align 8
  store i8 %290, i8* %291, align 1
  br label %293

293:                                              ; preds = %279
  %294 = load i32, i32* %13, align 4
  %295 = add i32 %294, 1
  store i32 %295, i32* %13, align 4
  br label %275

296:                                              ; preds = %275
  br label %351

297:                                              ; preds = %252
  store i32 0, i32* %13, align 4
  br label %298

298:                                              ; preds = %316, %297
  %299 = load i32, i32* %13, align 4
  %300 = load i32, i32* %12, align 4
  %301 = icmp ult i32 %299, %300
  br i1 %301, label %302, label %319

302:                                              ; preds = %298
  %303 = load i8*, i8** %15, align 8
  %304 = getelementptr inbounds i8, i8* %303, i32 1
  store i8* %304, i8** %15, align 8
  %305 = load i8, i8* %303, align 1
  %306 = zext i8 %305 to i32
  %307 = load i8*, i8** %18, align 8
  %308 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %308, i8** %18, align 8
  %309 = load i8, i8* %307, align 1
  %310 = zext i8 %309 to i32
  %311 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @paeth to i32 (i32, i32, i32, ...)*)(i32 0, i32 %310, i32 0)
  %312 = add nsw i32 %306, %311
  %313 = trunc i32 %312 to i8
  %314 = load i8*, i8** %16, align 8
  %315 = getelementptr inbounds i8, i8* %314, i32 1
  store i8* %315, i8** %16, align 8
  store i8 %313, i8* %314, align 1
  br label %316

316:                                              ; preds = %302
  %317 = load i32, i32* %13, align 4
  %318 = add i32 %317, 1
  store i32 %318, i32* %13, align 4
  br label %298

319:                                              ; preds = %298
  %320 = load i32, i32* %12, align 4
  store i32 %320, i32* %13, align 4
  br label %321

321:                                              ; preds = %347, %319
  %322 = load i32, i32* %13, align 4
  %323 = load i32, i32* %11, align 4
  %324 = icmp ult i32 %322, %323
  br i1 %324, label %325, label %350

325:                                              ; preds = %321
  %326 = load i8*, i8** %15, align 8
  %327 = getelementptr inbounds i8, i8* %326, i32 1
  store i8* %327, i8** %15, align 8
  %328 = load i8, i8* %326, align 1
  %329 = zext i8 %328 to i32
  %330 = load i8*, i8** %17, align 8
  %331 = getelementptr inbounds i8, i8* %330, i32 1
  store i8* %331, i8** %17, align 8
  %332 = load i8, i8* %330, align 1
  %333 = zext i8 %332 to i32
  %334 = load i8*, i8** %18, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %18, align 8
  %336 = load i8, i8* %334, align 1
  %337 = zext i8 %336 to i32
  %338 = load i8*, i8** %19, align 8
  %339 = getelementptr inbounds i8, i8* %338, i32 1
  store i8* %339, i8** %19, align 8
  %340 = load i8, i8* %338, align 1
  %341 = zext i8 %340 to i32
  %342 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @paeth to i32 (i32, i32, i32, ...)*)(i32 %333, i32 %337, i32 %341)
  %343 = add nsw i32 %329, %342
  %344 = trunc i32 %343 to i8
  %345 = load i8*, i8** %16, align 8
  %346 = getelementptr inbounds i8, i8* %345, i32 1
  store i8* %346, i8** %16, align 8
  store i8 %344, i8* %345, align 1
  br label %347

347:                                              ; preds = %325
  %348 = load i32, i32* %13, align 4
  %349 = add i32 %348, 1
  store i32 %349, i32* %13, align 4
  br label %321

350:                                              ; preds = %321
  br label %351

351:                                              ; preds = %350, %296
  br label %352

352:                                              ; preds = %351, %251, %158, %117, %80
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %14, align 4
  %355 = add i32 %354, 1
  store i32 %355, i32* %14, align 4
  br label %32

356:                                              ; preds = %32
  ret void
}

declare dso_local i32 @paeth(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

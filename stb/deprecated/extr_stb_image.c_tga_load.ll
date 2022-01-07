; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_tga_load.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_tga_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"bad palette\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Corrupt TGA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i32*, i32*, i32)* @tga_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tga_load(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca [4 x i8], align 1
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i8, align 1
  %41 = alloca i8*, align 8
  %42 = alloca i8, align 1
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i8* @get8u(i32* %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i8* @get8u(i32* %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i8* @get8u(i32* %49)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @get16le(i32* %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @get16le(i32* %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = call i8* @get8u(i32* %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %18, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @get16le(i32* %59)
  store i32 %60, i32* %19, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @get16le(i32* %61)
  store i32 %62, i32* %20, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @get16le(i32* %63)
  store i32 %64, i32* %21, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @get16le(i32* %65)
  store i32 %66, i32* %22, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = call i8* @get8u(i32* %67)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %23, align 4
  %70 = load i32, i32* %23, align 4
  %71 = sdiv i32 %70, 8
  store i32 %71, i32* %24, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = call i8* @get8u(i32* %72)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %25, align 4
  store i8* null, i8** %27, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 1, i32* %33, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp sge i32 %75, 8
  br i1 %76, label %77, label %80

77:                                               ; preds = %5
  %78 = load i32, i32* %14, align 4
  %79 = sub nsw i32 %78, 8
  store i32 %79, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %80

80:                                               ; preds = %77, %5
  %81 = load i32, i32* %25, align 4
  %82 = ashr i32 %81, 5
  %83 = and i32 %82, 1
  %84 = sub nsw i32 1, %83
  store i32 %84, i32* %25, align 4
  %85 = load i32, i32* %21, align 4
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %108, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %22, align 4
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %108, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %108, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %14, align 4
  %95 = icmp sgt i32 %94, 3
  br i1 %95, label %108, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %23, align 4
  %98 = icmp ne i32 %97, 8
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load i32, i32* %23, align 4
  %101 = icmp ne i32 %100, 16
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i32, i32* %23, align 4
  %104 = icmp ne i32 %103, 24
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* %23, align 4
  %107 = icmp ne i32 %106, 32
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %93, %90, %87, %80
  store i8* null, i8** %6, align 8
  br label %444

109:                                              ; preds = %105, %102, %99, %96
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %18, align 4
  %114 = sdiv i32 %113, 8
  store i32 %114, i32* %24, align 4
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i32, i32* %21, align 4
  %117 = load i32*, i32** %8, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %22, align 4
  %119 = load i32*, i32** %9, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32*, i32** %10, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i32, i32* %24, align 4
  %124 = load i32*, i32** %10, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %115
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %22, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32, i32* %11, align 4
  %130 = mul nsw i32 %128, %129
  %131 = call i64 @malloc(i32 %130)
  %132 = inttoptr i64 %131 to i8*
  store i8* %132, i8** %26, align 8
  %133 = load i8*, i8** %26, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %125
  %136 = call i8* @epuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* %136, i8** %6, align 8
  br label %444

137:                                              ; preds = %125
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @skip(i32* %138, i32 %139)
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %181, label %143

143:                                              ; preds = %137
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %181, label %146

146:                                              ; preds = %143
  store i32 0, i32* %28, align 4
  br label %147

147:                                              ; preds = %177, %146
  %148 = load i32, i32* %28, align 4
  %149 = load i32, i32* %22, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %180

151:                                              ; preds = %147
  %152 = load i32, i32* %25, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* %28, align 4
  %157 = sub nsw i32 %155, %156
  %158 = sub nsw i32 %157, 1
  br label %161

159:                                              ; preds = %151
  %160 = load i32, i32* %28, align 4
  br label %161

161:                                              ; preds = %159, %154
  %162 = phi i32 [ %158, %154 ], [ %160, %159 ]
  store i32 %162, i32* %34, align 4
  %163 = load i8*, i8** %26, align 8
  %164 = load i32, i32* %34, align 4
  %165 = load i32, i32* %21, align 4
  %166 = mul nsw i32 %164, %165
  %167 = load i32, i32* %24, align 4
  %168 = mul nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %163, i64 %169
  store i8* %170, i8** %35, align 8
  %171 = load i32*, i32** %7, align 8
  %172 = load i8*, i8** %35, align 8
  %173 = load i32, i32* %21, align 4
  %174 = load i32, i32* %24, align 4
  %175 = mul nsw i32 %173, %174
  %176 = call i32 @getn(i32* %171, i8* %172, i32 %175)
  br label %177

177:                                              ; preds = %161
  %178 = load i32, i32* %28, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %28, align 4
  br label %147

180:                                              ; preds = %147
  br label %397

181:                                              ; preds = %143, %137
  %182 = load i32, i32* %13, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %216

184:                                              ; preds = %181
  %185 = load i32*, i32** %7, align 8
  %186 = load i32, i32* %16, align 4
  %187 = call i32 @skip(i32* %185, i32 %186)
  %188 = load i32, i32* %17, align 4
  %189 = load i32, i32* %18, align 4
  %190 = mul nsw i32 %188, %189
  %191 = sdiv i32 %190, 8
  %192 = call i64 @malloc(i32 %191)
  %193 = inttoptr i64 %192 to i8*
  store i8* %193, i8** %27, align 8
  %194 = load i8*, i8** %27, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %200, label %196

196:                                              ; preds = %184
  %197 = load i8*, i8** %26, align 8
  %198 = call i32 @free(i8* %197)
  %199 = call i8* @epuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* %199, i8** %6, align 8
  br label %444

200:                                              ; preds = %184
  %201 = load i32*, i32** %7, align 8
  %202 = load i8*, i8** %27, align 8
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* %18, align 4
  %205 = mul nsw i32 %203, %204
  %206 = sdiv i32 %205, 8
  %207 = call i32 @getn(i32* %201, i8* %202, i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %200
  %210 = load i8*, i8** %26, align 8
  %211 = call i32 @free(i8* %210)
  %212 = load i8*, i8** %27, align 8
  %213 = call i32 @free(i8* %212)
  %214 = call i8* @epuc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i8* %214, i8** %6, align 8
  br label %444

215:                                              ; preds = %200
  br label %216

216:                                              ; preds = %215, %181
  store i32 0, i32* %28, align 4
  br label %217

217:                                              ; preds = %326, %216
  %218 = load i32, i32* %28, align 4
  %219 = load i32, i32* %21, align 4
  %220 = load i32, i32* %22, align 4
  %221 = mul nsw i32 %219, %220
  %222 = icmp slt i32 %218, %221
  br i1 %222, label %223, label %329

223:                                              ; preds = %217
  %224 = load i32, i32* %15, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %244

226:                                              ; preds = %223
  %227 = load i32, i32* %31, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %226
  %230 = load i32*, i32** %7, align 8
  %231 = call i8* @get8u(i32* %230)
  %232 = ptrtoint i8* %231 to i32
  store i32 %232, i32* %36, align 4
  %233 = load i32, i32* %36, align 4
  %234 = and i32 %233, 127
  %235 = add nsw i32 1, %234
  store i32 %235, i32* %31, align 4
  %236 = load i32, i32* %36, align 4
  %237 = ashr i32 %236, 7
  store i32 %237, i32* %32, align 4
  store i32 1, i32* %33, align 4
  br label %243

238:                                              ; preds = %226
  %239 = load i32, i32* %32, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %238
  store i32 1, i32* %33, align 4
  br label %242

242:                                              ; preds = %241, %238
  br label %243

243:                                              ; preds = %242, %229
  br label %245

244:                                              ; preds = %223
  store i32 1, i32* %33, align 4
  br label %245

245:                                              ; preds = %244, %243
  %246 = load i32, i32* %33, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %302

248:                                              ; preds = %245
  %249 = load i32, i32* %13, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %284

251:                                              ; preds = %248
  %252 = load i32*, i32** %7, align 8
  %253 = call i8* @get8u(i32* %252)
  %254 = ptrtoint i8* %253 to i32
  store i32 %254, i32* %37, align 4
  %255 = load i32, i32* %37, align 4
  %256 = load i32, i32* %17, align 4
  %257 = icmp sge i32 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %251
  store i32 0, i32* %37, align 4
  br label %259

259:                                              ; preds = %258, %251
  %260 = load i32, i32* %23, align 4
  %261 = sdiv i32 %260, 8
  %262 = load i32, i32* %37, align 4
  %263 = mul nsw i32 %262, %261
  store i32 %263, i32* %37, align 4
  store i32 0, i32* %29, align 4
  br label %264

264:                                              ; preds = %280, %259
  %265 = load i32, i32* %29, align 4
  %266 = mul nsw i32 %265, 8
  %267 = load i32, i32* %23, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %283

269:                                              ; preds = %264
  %270 = load i8*, i8** %27, align 8
  %271 = load i32, i32* %37, align 4
  %272 = load i32, i32* %29, align 4
  %273 = add nsw i32 %271, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %270, i64 %274
  %276 = load i8, i8* %275, align 1
  %277 = load i32, i32* %29, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 %278
  store i8 %276, i8* %279, align 1
  br label %280

280:                                              ; preds = %269
  %281 = load i32, i32* %29, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %29, align 4
  br label %264

283:                                              ; preds = %264
  br label %301

284:                                              ; preds = %248
  store i32 0, i32* %29, align 4
  br label %285

285:                                              ; preds = %297, %284
  %286 = load i32, i32* %29, align 4
  %287 = mul nsw i32 %286, 8
  %288 = load i32, i32* %23, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %300

290:                                              ; preds = %285
  %291 = load i32*, i32** %7, align 8
  %292 = call i8* @get8u(i32* %291)
  %293 = ptrtoint i8* %292 to i8
  %294 = load i32, i32* %29, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 %295
  store i8 %293, i8* %296, align 1
  br label %297

297:                                              ; preds = %290
  %298 = load i32, i32* %29, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %29, align 4
  br label %285

300:                                              ; preds = %285
  br label %301

301:                                              ; preds = %300, %283
  store i32 0, i32* %33, align 4
  br label %302

302:                                              ; preds = %301, %245
  store i32 0, i32* %29, align 4
  br label %303

303:                                              ; preds = %320, %302
  %304 = load i32, i32* %29, align 4
  %305 = load i32, i32* %24, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %323

307:                                              ; preds = %303
  %308 = load i32, i32* %29, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 %309
  %311 = load i8, i8* %310, align 1
  %312 = load i8*, i8** %26, align 8
  %313 = load i32, i32* %28, align 4
  %314 = load i32, i32* %24, align 4
  %315 = mul nsw i32 %313, %314
  %316 = load i32, i32* %29, align 4
  %317 = add nsw i32 %315, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, i8* %312, i64 %318
  store i8 %311, i8* %319, align 1
  br label %320

320:                                              ; preds = %307
  %321 = load i32, i32* %29, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %29, align 4
  br label %303

323:                                              ; preds = %303
  %324 = load i32, i32* %31, align 4
  %325 = add nsw i32 %324, -1
  store i32 %325, i32* %31, align 4
  br label %326

326:                                              ; preds = %323
  %327 = load i32, i32* %28, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %28, align 4
  br label %217

329:                                              ; preds = %217
  %330 = load i32, i32* %25, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %390

332:                                              ; preds = %329
  store i32 0, i32* %29, align 4
  br label %333

333:                                              ; preds = %386, %332
  %334 = load i32, i32* %29, align 4
  %335 = mul nsw i32 %334, 2
  %336 = load i32, i32* %22, align 4
  %337 = icmp slt i32 %335, %336
  br i1 %337, label %338, label %389

338:                                              ; preds = %333
  %339 = load i32, i32* %29, align 4
  %340 = load i32, i32* %21, align 4
  %341 = mul nsw i32 %339, %340
  %342 = load i32, i32* %11, align 4
  %343 = mul nsw i32 %341, %342
  store i32 %343, i32* %38, align 4
  %344 = load i32, i32* %22, align 4
  %345 = sub nsw i32 %344, 1
  %346 = load i32, i32* %29, align 4
  %347 = sub nsw i32 %345, %346
  %348 = load i32, i32* %21, align 4
  %349 = mul nsw i32 %347, %348
  %350 = load i32, i32* %11, align 4
  %351 = mul nsw i32 %349, %350
  store i32 %351, i32* %39, align 4
  %352 = load i32, i32* %21, align 4
  %353 = load i32, i32* %11, align 4
  %354 = mul nsw i32 %352, %353
  store i32 %354, i32* %28, align 4
  br label %355

355:                                              ; preds = %382, %338
  %356 = load i32, i32* %28, align 4
  %357 = icmp sgt i32 %356, 0
  br i1 %357, label %358, label %385

358:                                              ; preds = %355
  %359 = load i8*, i8** %26, align 8
  %360 = load i32, i32* %38, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8, i8* %359, i64 %361
  %363 = load i8, i8* %362, align 1
  store i8 %363, i8* %40, align 1
  %364 = load i8*, i8** %26, align 8
  %365 = load i32, i32* %39, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i8, i8* %364, i64 %366
  %368 = load i8, i8* %367, align 1
  %369 = load i8*, i8** %26, align 8
  %370 = load i32, i32* %38, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %369, i64 %371
  store i8 %368, i8* %372, align 1
  %373 = load i8, i8* %40, align 1
  %374 = load i8*, i8** %26, align 8
  %375 = load i32, i32* %39, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i8, i8* %374, i64 %376
  store i8 %373, i8* %377, align 1
  %378 = load i32, i32* %38, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %38, align 4
  %380 = load i32, i32* %39, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %39, align 4
  br label %382

382:                                              ; preds = %358
  %383 = load i32, i32* %28, align 4
  %384 = add nsw i32 %383, -1
  store i32 %384, i32* %28, align 4
  br label %355

385:                                              ; preds = %355
  br label %386

386:                                              ; preds = %385
  %387 = load i32, i32* %29, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %29, align 4
  br label %333

389:                                              ; preds = %333
  br label %390

390:                                              ; preds = %389, %329
  %391 = load i8*, i8** %27, align 8
  %392 = icmp ne i8* %391, null
  br i1 %392, label %393, label %396

393:                                              ; preds = %390
  %394 = load i8*, i8** %27, align 8
  %395 = call i32 @free(i8* %394)
  br label %396

396:                                              ; preds = %393, %390
  br label %397

397:                                              ; preds = %396, %180
  %398 = load i32, i32* %24, align 4
  %399 = icmp sge i32 %398, 3
  br i1 %399, label %400, label %428

400:                                              ; preds = %397
  %401 = load i8*, i8** %26, align 8
  store i8* %401, i8** %41, align 8
  store i32 0, i32* %28, align 4
  br label %402

402:                                              ; preds = %424, %400
  %403 = load i32, i32* %28, align 4
  %404 = load i32, i32* %21, align 4
  %405 = load i32, i32* %22, align 4
  %406 = mul nsw i32 %404, %405
  %407 = icmp slt i32 %403, %406
  br i1 %407, label %408, label %427

408:                                              ; preds = %402
  %409 = load i8*, i8** %41, align 8
  %410 = getelementptr inbounds i8, i8* %409, i64 0
  %411 = load i8, i8* %410, align 1
  store i8 %411, i8* %42, align 1
  %412 = load i8*, i8** %41, align 8
  %413 = getelementptr inbounds i8, i8* %412, i64 2
  %414 = load i8, i8* %413, align 1
  %415 = load i8*, i8** %41, align 8
  %416 = getelementptr inbounds i8, i8* %415, i64 0
  store i8 %414, i8* %416, align 1
  %417 = load i8, i8* %42, align 1
  %418 = load i8*, i8** %41, align 8
  %419 = getelementptr inbounds i8, i8* %418, i64 2
  store i8 %417, i8* %419, align 1
  %420 = load i32, i32* %24, align 4
  %421 = load i8*, i8** %41, align 8
  %422 = sext i32 %420 to i64
  %423 = getelementptr inbounds i8, i8* %421, i64 %422
  store i8* %423, i8** %41, align 8
  br label %424

424:                                              ; preds = %408
  %425 = load i32, i32* %28, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %28, align 4
  br label %402

427:                                              ; preds = %402
  br label %428

428:                                              ; preds = %427, %397
  %429 = load i32, i32* %11, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %442

431:                                              ; preds = %428
  %432 = load i32, i32* %11, align 4
  %433 = load i32, i32* %24, align 4
  %434 = icmp ne i32 %432, %433
  br i1 %434, label %435, label %442

435:                                              ; preds = %431
  %436 = load i8*, i8** %26, align 8
  %437 = load i32, i32* %24, align 4
  %438 = load i32, i32* %11, align 4
  %439 = load i32, i32* %21, align 4
  %440 = load i32, i32* %22, align 4
  %441 = call i8* @convert_format(i8* %436, i32 %437, i32 %438, i32 %439, i32 %440)
  store i8* %441, i8** %26, align 8
  br label %442

442:                                              ; preds = %435, %431, %428
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %443 = load i8*, i8** %26, align 8
  store i8* %443, i8** %6, align 8
  br label %444

444:                                              ; preds = %442, %209, %196, %135, %108
  %445 = load i8*, i8** %6, align 8
  ret i8* %445
}

declare dso_local i8* @get8u(i32*) #1

declare dso_local i32 @get16le(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @epuc(i8*, i8*) #1

declare dso_local i32 @skip(i32*, i32) #1

declare dso_local i32 @getn(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @convert_format(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_parse_date.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_parse_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [35 x i8] c"invalid date format (missing year)\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid date format (garbage at end)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"date overflow error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*)* @pdf_parse_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pdf_parse_date(i32* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tm, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %361

15:                                               ; preds = %2
  %16 = call i32 @memset(%struct.tm* %10, i32 0, i32 12)
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  store i32 1, i32* %17, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 68
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 58
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %29, %23, %15
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @isdigit(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @isdigit(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @isdigit(i8 signext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 3
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @isdigit(i8 signext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50, %44, %38, %32
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @fz_warn(i32* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %361

59:                                               ; preds = %50
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = sub nsw i32 %63, 48
  %65 = mul nsw i32 %64, 1000
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = sub nsw i32 %69, 48
  %71 = mul nsw i32 %70, 100
  %72 = add nsw i32 %65, %71
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = sub nsw i32 %76, 48
  %78 = mul nsw i32 %77, 10
  %79 = add nsw i32 %72, %78
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = sub nsw i32 %83, 48
  %85 = add nsw i32 %79, %84
  %86 = sub nsw i32 %85, 1900
  %87 = trunc i32 %86 to i8
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 1
  store i8 %87, i8* %88, align 4
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 4
  store i8* %90, i8** %5, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @isdigit(i8 signext %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %235

96:                                               ; preds = %59
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = call i64 @isdigit(i8 signext %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %235

102:                                              ; preds = %96
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = sub nsw i32 %106, 48
  %108 = mul nsw i32 %107, 10
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = sub nsw i32 %112, 48
  %114 = add nsw i32 %108, %113
  %115 = sub nsw i32 %114, 1
  %116 = trunc i32 %115 to i8
  %117 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 2
  store i8 %116, i8* %117, align 1
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  store i8* %119, i8** %5, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = call i64 @isdigit(i8 signext %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %234

125:                                              ; preds = %102
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = call i64 @isdigit(i8 signext %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %234

131:                                              ; preds = %125
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = sub nsw i32 %135, 48
  %137 = mul nsw i32 %136, 10
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = sub nsw i32 %141, 48
  %143 = add nsw i32 %137, %142
  %144 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  store i32 %143, i32* %144, align 4
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 2
  store i8* %146, i8** %5, align 8
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = call i64 @isdigit(i8 signext %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %233

152:                                              ; preds = %131
  %153 = load i8*, i8** %5, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  %155 = load i8, i8* %154, align 1
  %156 = call i64 @isdigit(i8 signext %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %233

158:                                              ; preds = %152
  %159 = load i8*, i8** %5, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 0
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = sub nsw i32 %162, 48
  %164 = mul nsw i32 %163, 10
  %165 = load i8*, i8** %5, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 1
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = sub nsw i32 %168, 48
  %170 = add nsw i32 %164, %169
  %171 = trunc i32 %170 to i8
  %172 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 3
  store i8 %171, i8* %172, align 2
  %173 = load i8*, i8** %5, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 2
  store i8* %174, i8** %5, align 8
  %175 = load i8*, i8** %5, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  %177 = load i8, i8* %176, align 1
  %178 = call i64 @isdigit(i8 signext %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %232

180:                                              ; preds = %158
  %181 = load i8*, i8** %5, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  %183 = load i8, i8* %182, align 1
  %184 = call i64 @isdigit(i8 signext %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %232

186:                                              ; preds = %180
  %187 = load i8*, i8** %5, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 0
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = sub nsw i32 %190, 48
  %192 = mul nsw i32 %191, 10
  %193 = load i8*, i8** %5, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = sub nsw i32 %196, 48
  %198 = add nsw i32 %192, %197
  %199 = trunc i32 %198 to i8
  %200 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 4
  store i8 %199, i8* %200, align 1
  %201 = load i8*, i8** %5, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 2
  store i8* %202, i8** %5, align 8
  %203 = load i8*, i8** %5, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 0
  %205 = load i8, i8* %204, align 1
  %206 = call i64 @isdigit(i8 signext %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %231

208:                                              ; preds = %186
  %209 = load i8*, i8** %5, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 1
  %211 = load i8, i8* %210, align 1
  %212 = call i64 @isdigit(i8 signext %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %231

214:                                              ; preds = %208
  %215 = load i8*, i8** %5, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 0
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = sub nsw i32 %218, 48
  %220 = mul nsw i32 %219, 10
  %221 = load i8*, i8** %5, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = sub nsw i32 %224, 48
  %226 = add nsw i32 %220, %225
  %227 = trunc i32 %226 to i8
  %228 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 5
  store i8 %227, i8* %228, align 4
  %229 = load i8*, i8** %5, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 2
  store i8* %230, i8** %5, align 8
  br label %231

231:                                              ; preds = %214, %208, %186
  br label %232

232:                                              ; preds = %231, %180, %158
  br label %233

233:                                              ; preds = %232, %152, %131
  br label %234

234:                                              ; preds = %233, %125, %102
  br label %235

235:                                              ; preds = %234, %96, %59
  %236 = load i8*, i8** %5, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 0
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp eq i32 %239, 90
  br i1 %240, label %241, label %244

241:                                              ; preds = %235
  %242 = load i8*, i8** %5, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 1
  store i8* %243, i8** %5, align 8
  br label %333

244:                                              ; preds = %235
  %245 = load i8*, i8** %5, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 0
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 45
  br i1 %249, label %256, label %250

250:                                              ; preds = %244
  %251 = load i8*, i8** %5, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 0
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 43
  br i1 %255, label %256, label %332

256:                                              ; preds = %250, %244
  %257 = load i8*, i8** %5, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 1
  %259 = load i8, i8* %258, align 1
  %260 = call i64 @isdigit(i8 signext %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %332

262:                                              ; preds = %256
  %263 = load i8*, i8** %5, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 2
  %265 = load i8, i8* %264, align 1
  %266 = call i64 @isdigit(i8 signext %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %332

268:                                              ; preds = %262
  %269 = load i8*, i8** %5, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 0
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp eq i32 %272, 45
  %274 = zext i1 %273 to i64
  %275 = select i1 %273, i32 -1, i32 1
  store i32 %275, i32* %6, align 4
  %276 = load i8*, i8** %5, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 1
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i32
  %280 = sub nsw i32 %279, 48
  %281 = mul nsw i32 %280, 10
  %282 = load i8*, i8** %5, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 2
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = sub nsw i32 %285, 48
  %287 = add nsw i32 %281, %286
  store i32 %287, i32* %7, align 4
  %288 = load i8*, i8** %5, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 3
  store i8* %289, i8** %5, align 8
  %290 = load i8*, i8** %5, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 0
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp eq i32 %293, 39
  br i1 %294, label %295, label %331

295:                                              ; preds = %268
  %296 = load i8*, i8** %5, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 1
  %298 = load i8, i8* %297, align 1
  %299 = call i64 @isdigit(i8 signext %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %331

301:                                              ; preds = %295
  %302 = load i8*, i8** %5, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 2
  %304 = load i8, i8* %303, align 1
  %305 = call i64 @isdigit(i8 signext %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %331

307:                                              ; preds = %301
  %308 = load i8*, i8** %5, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 1
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = sub nsw i32 %311, 48
  %313 = mul nsw i32 %312, 10
  %314 = load i8*, i8** %5, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 2
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = sub nsw i32 %317, 48
  %319 = add nsw i32 %313, %318
  store i32 %319, i32* %8, align 4
  %320 = load i8*, i8** %5, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 3
  store i8* %321, i8** %5, align 8
  %322 = load i8*, i8** %5, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 0
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i32
  %326 = icmp eq i32 %325, 39
  br i1 %326, label %327, label %330

327:                                              ; preds = %307
  %328 = load i8*, i8** %5, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 1
  store i8* %329, i8** %5, align 8
  br label %330

330:                                              ; preds = %327, %307
  br label %331

331:                                              ; preds = %330, %301, %295, %268
  br label %332

332:                                              ; preds = %331, %262, %256, %250
  br label %333

333:                                              ; preds = %332, %241
  %334 = load i8*, i8** %5, align 8
  %335 = getelementptr inbounds i8, i8* %334, i64 0
  %336 = load i8, i8* %335, align 1
  %337 = sext i8 %336 to i32
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %333
  %340 = load i32*, i32** %4, align 8
  %341 = call i32 @fz_warn(i32* %340, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %342

342:                                              ; preds = %339, %333
  %343 = call i64 @timegm(%struct.tm* %10)
  store i64 %343, i64* %11, align 8
  %344 = load i64, i64* %11, align 8
  %345 = icmp eq i64 %344, -1
  br i1 %345, label %346, label %349

346:                                              ; preds = %342
  %347 = load i32*, i32** %4, align 8
  %348 = call i32 @fz_warn(i32* %347, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %361

349:                                              ; preds = %342
  %350 = load i32, i32* %6, align 4
  %351 = load i32, i32* %7, align 4
  %352 = mul nsw i32 %351, 3600
  %353 = load i32, i32* %8, align 4
  %354 = mul nsw i32 %353, 60
  %355 = add nsw i32 %352, %354
  %356 = mul nsw i32 %350, %355
  store i32 %356, i32* %9, align 4
  %357 = load i64, i64* %11, align 8
  %358 = load i32, i32* %9, align 4
  %359 = sext i32 %358 to i64
  %360 = sub nsw i64 %357, %359
  store i64 %360, i64* %3, align 8
  br label %361

361:                                              ; preds = %349, %346, %56, %14
  %362 = load i64, i64* %3, align 8
  ret i64 %362
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i64 @timegm(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

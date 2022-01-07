; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_UnLslRLine.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_UnLslRLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SCANF_LONG_LONG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32*, i64*, i64*, i64, i32, i32*)* @UnLslRLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UnLslRLine(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32* %7, i64* %8, i64* %9, i64 %10, i32 %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca %struct.tm, align 4
  %44 = alloca i64, align 8
  store i8* %0, i8** %15, align 8
  store i8* %1, i8** %16, align 8
  store i64 %2, i64* %17, align 8
  store i8* %3, i8** %18, align 8
  store i64 %4, i64* %19, align 8
  store i8* %5, i8** %20, align 8
  store i64 %6, i64* %21, align 8
  store i32* %7, i32** %22, align 8
  store i64* %8, i64** %23, align 8
  store i64* %9, i64** %24, align 8
  store i64 %10, i64* %25, align 8
  store i32 %11, i32* %26, align 4
  store i32* %12, i32** %27, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i8* null, i8** %40, align 8
  %45 = load i8*, i8** %15, align 8
  store i8* %45, i8** %28, align 8
  br label %46

46:                                               ; preds = %328, %13
  %47 = load i8*, i8** %28, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %331

51:                                               ; preds = %46
  %52 = load i8*, i8** %28, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = call i64 @isdigit(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %327

57:                                               ; preds = %51
  %58 = load i8*, i8** %28, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = call i64 @isspace(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %327

64:                                               ; preds = %57
  %65 = load i8*, i8** %28, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = call i64 @isupper(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %327

71:                                               ; preds = %64
  %72 = load i8*, i8** %28, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = call i64 @islower(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %327

78:                                               ; preds = %71
  %79 = load i8*, i8** %28, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 5
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = call i64 @isspace(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %327

85:                                               ; preds = %78
  %86 = load i8*, i8** %28, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 6
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = call i64 @isdigit(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load i8*, i8** %28, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 7
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = call i64 @isdigit(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %127, label %99

99:                                               ; preds = %92, %85
  %100 = load i8*, i8** %28, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 6
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = call i64 @isdigit(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load i8*, i8** %28, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 7
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = call i64 @isspace(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %106, %99
  %114 = load i8*, i8** %28, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 6
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = call i64 @isspace(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %327

120:                                              ; preds = %113
  %121 = load i8*, i8** %28, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 7
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = call i64 @isdigit(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %327

127:                                              ; preds = %120, %106, %92
  %128 = load i8*, i8** %28, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = call i64 @isspace(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %327

134:                                              ; preds = %127
  %135 = load i8*, i8** %28, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 2
  store i8* %136, i8** %34, align 8
  %137 = load i8*, i8** %28, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 6
  store i8* %138, i8** %35, align 8
  %139 = load i8*, i8** %28, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 9
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = call i64 @isspace(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %134
  %146 = load i8*, i8** %28, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 9
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = call i64 @isdigit(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %244

152:                                              ; preds = %145, %134
  %153 = load i8*, i8** %28, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 10
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = call i64 @isdigit(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %244

159:                                              ; preds = %152
  %160 = load i8*, i8** %28, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 11
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = call i64 @isdigit(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %244

166:                                              ; preds = %159
  %167 = load i8*, i8** %28, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 12
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = call i64 @isdigit(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %244

173:                                              ; preds = %166
  %174 = load i8*, i8** %28, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 13
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = call i64 @isdigit(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %173
  %181 = load i8*, i8** %28, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 13
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = call i64 @isspace(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %244

187:                                              ; preds = %180, %173
  %188 = load i8*, i8** %28, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 9
  store i8* %189, i8** %38, align 8
  %190 = load i8*, i8** %38, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = call i64 @isspace(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %187
  %196 = load i8*, i8** %38, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %38, align 8
  br label %198

198:                                              ; preds = %195, %187
  store i8* null, i8** %36, align 8
  store i8* null, i8** %37, align 8
  %199 = load i8*, i8** %28, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 15
  store i8* %200, i8** %40, align 8
  %201 = load i8*, i8** %28, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  store i8 0, i8* %202, align 1
  %203 = load i8*, i8** %28, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 5
  store i8 0, i8* %204, align 1
  %205 = load i8*, i8** %28, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 8
  store i8 0, i8* %206, align 1
  %207 = load i8*, i8** %28, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 14
  store i8 0, i8* %208, align 1
  %209 = load i8*, i8** %34, align 8
  %210 = call i32 @LsMonthNameToNum(i8* %209)
  store i32 %210, i32* %29, align 4
  %211 = load i8*, i8** %35, align 8
  %212 = call i32 @atoi(i8* %211)
  store i32 %212, i32* %30, align 4
  store i32 23, i32* %31, align 4
  store i32 59, i32* %32, align 4
  %213 = load i8*, i8** %38, align 8
  %214 = call i32 @atoi(i8* %213)
  store i32 %214, i32* %33, align 4
  %215 = load i8*, i8** %28, align 8
  store i8* %215, i8** %42, align 8
  br label %216

216:                                              ; preds = %222, %198
  %217 = load i8*, i8** %42, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = call i64 @isdigit(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %216
  %223 = load i8*, i8** %42, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 -1
  store i8* %224, i8** %42, align 8
  br label %216

225:                                              ; preds = %216
  br label %226

226:                                              ; preds = %232, %225
  %227 = load i8*, i8** %42, align 8
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = call i64 @isspace(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %226
  %233 = load i8*, i8** %42, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 -1
  store i8* %234, i8** %42, align 8
  br label %226

235:                                              ; preds = %226
  %236 = load i8*, i8** %42, align 8
  %237 = load i8*, i8** %15, align 8
  %238 = ptrtoint i8* %236 to i64
  %239 = ptrtoint i8* %237 to i64
  %240 = sub i64 %238, %239
  %241 = trunc i64 %240 to i32
  %242 = add nsw i32 %241, 1
  %243 = load i32*, i32** %27, align 8
  store i32 %242, i32* %243, align 4
  br label %331

244:                                              ; preds = %180, %166, %159, %152, %145
  %245 = load i8*, i8** %28, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 10
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = call i64 @isdigit(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %325

251:                                              ; preds = %244
  %252 = load i8*, i8** %28, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 11
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 58
  br i1 %256, label %257, label %325

257:                                              ; preds = %251
  %258 = load i8*, i8** %28, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 12
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = call i64 @isdigit(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %325

264:                                              ; preds = %257
  %265 = load i8*, i8** %28, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 13
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = call i64 @isdigit(i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %325

271:                                              ; preds = %264
  store i8* null, i8** %38, align 8
  %272 = load i8*, i8** %28, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 9
  store i8* %273, i8** %36, align 8
  %274 = load i8*, i8** %28, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 12
  store i8* %275, i8** %37, align 8
  %276 = load i8*, i8** %28, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 15
  store i8* %277, i8** %40, align 8
  %278 = load i8*, i8** %28, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 1
  store i8 0, i8* %279, align 1
  %280 = load i8*, i8** %28, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 5
  store i8 0, i8* %281, align 1
  %282 = load i8*, i8** %28, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 8
  store i8 0, i8* %283, align 1
  %284 = load i8*, i8** %28, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 11
  store i8 0, i8* %285, align 1
  %286 = load i8*, i8** %28, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 14
  store i8 0, i8* %287, align 1
  %288 = load i8*, i8** %34, align 8
  %289 = call i32 @LsMonthNameToNum(i8* %288)
  store i32 %289, i32* %29, align 4
  %290 = load i8*, i8** %35, align 8
  %291 = call i32 @atoi(i8* %290)
  store i32 %291, i32* %30, align 4
  %292 = load i8*, i8** %36, align 8
  %293 = call i32 @atoi(i8* %292)
  store i32 %293, i32* %31, align 4
  %294 = load i8*, i8** %37, align 8
  %295 = call i32 @atoi(i8* %294)
  store i32 %295, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %296 = load i8*, i8** %28, align 8
  store i8* %296, i8** %42, align 8
  br label %297

297:                                              ; preds = %303, %271
  %298 = load i8*, i8** %42, align 8
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = call i64 @isdigit(i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %297
  %304 = load i8*, i8** %42, align 8
  %305 = getelementptr inbounds i8, i8* %304, i32 -1
  store i8* %305, i8** %42, align 8
  br label %297

306:                                              ; preds = %297
  br label %307

307:                                              ; preds = %313, %306
  %308 = load i8*, i8** %42, align 8
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = call i64 @isspace(i32 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %307
  %314 = load i8*, i8** %42, align 8
  %315 = getelementptr inbounds i8, i8* %314, i32 -1
  store i8* %315, i8** %42, align 8
  br label %307

316:                                              ; preds = %307
  %317 = load i8*, i8** %42, align 8
  %318 = load i8*, i8** %15, align 8
  %319 = ptrtoint i8* %317 to i64
  %320 = ptrtoint i8* %318 to i64
  %321 = sub i64 %319, %320
  %322 = trunc i64 %321 to i32
  %323 = add nsw i32 %322, 1
  %324 = load i32*, i32** %27, align 8
  store i32 %323, i32* %324, align 4
  br label %331

325:                                              ; preds = %264, %257, %251, %244
  br label %326

326:                                              ; preds = %325
  br label %327

327:                                              ; preds = %326, %127, %120, %113, %78, %71, %64, %57, %51
  br label %328

328:                                              ; preds = %327
  %329 = load i8*, i8** %28, align 8
  %330 = getelementptr inbounds i8, i8* %329, i32 1
  store i8* %330, i8** %28, align 8
  br label %46

331:                                              ; preds = %316, %235, %46
  %332 = load i8*, i8** %28, align 8
  %333 = load i8, i8* %332, align 1
  %334 = sext i8 %333 to i32
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %331
  store i32 -1, i32* %14, align 4
  br label %475

337:                                              ; preds = %331
  %338 = load i8*, i8** %40, align 8
  %339 = call i8* @strstr(i8* %338, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %339, i8** %39, align 8
  %340 = load i8*, i8** %39, align 8
  %341 = icmp ne i8* %340, null
  br i1 %341, label %342, label %350

342:                                              ; preds = %337
  %343 = load i8*, i8** %39, align 8
  store i8 0, i8* %343, align 1
  %344 = load i8*, i8** %39, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 4
  store i8* %345, i8** %39, align 8
  %346 = load i8*, i8** %20, align 8
  %347 = load i8*, i8** %39, align 8
  %348 = load i64, i64* %21, align 8
  %349 = call i32 @Strncpy(i8* %346, i8* %347, i64 %348)
  br label %352

350:                                              ; preds = %337
  %351 = load i8*, i8** %20, align 8
  store i8 0, i8* %351, align 1
  br label %352

352:                                              ; preds = %350, %342
  %353 = load i64, i64* %17, align 8
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %352
  %356 = load i8*, i8** %18, align 8
  %357 = load i8*, i8** %40, align 8
  %358 = load i64, i64* %19, align 8
  %359 = call i32 @Strncpy(i8* %356, i8* %357, i64 %358)
  br label %369

360:                                              ; preds = %352
  %361 = load i8*, i8** %18, align 8
  %362 = load i8*, i8** %16, align 8
  %363 = load i64, i64* %19, align 8
  %364 = call i32 @Strncpy(i8* %361, i8* %362, i64 %363)
  %365 = load i8*, i8** %18, align 8
  %366 = load i8*, i8** %40, align 8
  %367 = load i64, i64* %19, align 8
  %368 = call i32 @Strncat(i8* %365, i8* %366, i64 %367)
  br label %369

369:                                              ; preds = %360, %355
  %370 = load i64*, i64** %24, align 8
  %371 = icmp ne i64* %370, null
  br i1 %371, label %372, label %429

372:                                              ; preds = %369
  %373 = call i32 @memset(%struct.tm* %43, i32 0, i32 24)
  %374 = load i32, i32* %29, align 4
  %375 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 0
  store i32 %374, i32* %375, align 4
  %376 = load i32, i32* %30, align 4
  %377 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 1
  store i32 %376, i32* %377, align 4
  %378 = load i32, i32* %31, align 4
  %379 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 2
  store i32 %378, i32* %379, align 4
  %380 = load i32, i32* %32, align 4
  %381 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 3
  store i32 %380, i32* %381, align 4
  %382 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 4
  store i32 -1, i32* %382, align 4
  %383 = load i32, i32* %33, align 4
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %422

385:                                              ; preds = %372
  %386 = load i32, i32* %26, align 4
  %387 = sub nsw i32 %386, 1900
  %388 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 5
  store i32 %387, i32* %388, align 4
  %389 = call i64 @mktime(%struct.tm* %43)
  %390 = load i64*, i64** %24, align 8
  store i64 %389, i64* %390, align 8
  %391 = load i64*, i64** %24, align 8
  %392 = load i64, i64* %391, align 8
  %393 = icmp eq i64 %392, -1
  br i1 %393, label %394, label %395

394:                                              ; preds = %385
  br label %421

395:                                              ; preds = %385
  %396 = load i64*, i64** %24, align 8
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* %25, align 8
  %399 = add nsw i64 %398, 15638400
  %400 = icmp sgt i64 %397, %399
  br i1 %400, label %401, label %407

401:                                              ; preds = %395
  %402 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 5
  %403 = load i32, i32* %402, align 4
  %404 = add nsw i32 %403, -1
  store i32 %404, i32* %402, align 4
  %405 = call i64 @mktime(%struct.tm* %43)
  %406 = load i64*, i64** %24, align 8
  store i64 %405, i64* %406, align 8
  br label %420

407:                                              ; preds = %395
  %408 = load i64*, i64** %24, align 8
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* %25, align 8
  %411 = sub nsw i64 %410, 15638400
  %412 = icmp slt i64 %409, %411
  br i1 %412, label %413, label %419

413:                                              ; preds = %407
  %414 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 5
  %415 = load i32, i32* %414, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %414, align 4
  %417 = call i64 @mktime(%struct.tm* %43)
  %418 = load i64*, i64** %24, align 8
  store i64 %417, i64* %418, align 8
  br label %419

419:                                              ; preds = %413, %407
  br label %420

420:                                              ; preds = %419, %401
  br label %421

421:                                              ; preds = %420, %394
  br label %428

422:                                              ; preds = %372
  %423 = load i32, i32* %33, align 4
  %424 = sub nsw i32 %423, 1900
  %425 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 5
  store i32 %424, i32* %425, align 4
  %426 = call i64 @mktime(%struct.tm* %43)
  %427 = load i64*, i64** %24, align 8
  store i64 %426, i64* %427, align 8
  br label %428

428:                                              ; preds = %422, %421
  br label %429

429:                                              ; preds = %428, %369
  %430 = load i64*, i64** %23, align 8
  %431 = icmp ne i64* %430, null
  br i1 %431, label %432, label %455

432:                                              ; preds = %429
  br label %433

433:                                              ; preds = %445, %432
  %434 = load i8*, i8** %28, align 8
  %435 = load i8*, i8** %15, align 8
  %436 = icmp ugt i8* %434, %435
  br i1 %436, label %437, label %443

437:                                              ; preds = %433
  %438 = load i8*, i8** %28, align 8
  %439 = load i8, i8* %438, align 1
  %440 = sext i8 %439 to i32
  %441 = call i64 @isdigit(i32 %440)
  %442 = icmp ne i64 %441, 0
  br label %443

443:                                              ; preds = %437, %433
  %444 = phi i1 [ false, %433 ], [ %442, %437 ]
  br i1 %444, label %445, label %448

445:                                              ; preds = %443
  %446 = load i8*, i8** %28, align 8
  %447 = getelementptr inbounds i8, i8* %446, i32 -1
  store i8* %447, i8** %28, align 8
  br label %433

448:                                              ; preds = %443
  %449 = load i8*, i8** %28, align 8
  %450 = getelementptr inbounds i8, i8* %449, i64 1
  store i8* %450, i8** %41, align 8
  store i64 0, i64* %44, align 8
  %451 = load i8*, i8** %41, align 8
  %452 = call i32 @sscanf(i8* %451, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %44)
  %453 = load i64, i64* %44, align 8
  %454 = load i64*, i64** %23, align 8
  store i64 %453, i64* %454, align 8
  br label %455

455:                                              ; preds = %448, %429
  %456 = load i8*, i8** %15, align 8
  %457 = getelementptr inbounds i8, i8* %456, i64 0
  %458 = load i8, i8* %457, align 1
  %459 = sext i8 %458 to i32
  switch i32 %459, label %472 [
    i32 100, label %460
    i32 108, label %460
    i32 98, label %466
    i32 99, label %466
    i32 115, label %466
  ]

460:                                              ; preds = %455, %455
  %461 = load i8*, i8** %15, align 8
  %462 = getelementptr inbounds i8, i8* %461, i64 0
  %463 = load i8, i8* %462, align 1
  %464 = sext i8 %463 to i32
  %465 = load i32*, i32** %22, align 8
  store i32 %464, i32* %465, align 4
  br label %474

466:                                              ; preds = %455, %455, %455
  %467 = load i8*, i8** %15, align 8
  %468 = getelementptr inbounds i8, i8* %467, i64 0
  %469 = load i8, i8* %468, align 1
  %470 = sext i8 %469 to i32
  %471 = load i32*, i32** %22, align 8
  store i32 %470, i32* %471, align 4
  store i32 -1, i32* %14, align 4
  br label %475

472:                                              ; preds = %455
  %473 = load i32*, i32** %22, align 8
  store i32 45, i32* %473, align 4
  br label %474

474:                                              ; preds = %472, %460
  store i32 0, i32* %14, align 4
  br label %475

475:                                              ; preds = %474, %466, %336
  %476 = load i32, i32* %14, align 4
  ret i32 %476
}

declare dso_local i64 @isdigit(i32) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i64 @isupper(i32) #1

declare dso_local i64 @islower(i32) #1

declare dso_local i32 @LsMonthNameToNum(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @Strncpy(i8*, i8*, i64) #1

declare dso_local i32 @Strncat(i8*, i8*, i64) #1

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i64 @mktime(%struct.tm*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

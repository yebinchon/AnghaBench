; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_canonicalize_path_hierarchical.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_canonicalize_path_hierarchical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@URL_SCHEME_UNKNOWN = common dso_local global i64 0, align 8
@URL_SCHEME_FILE = common dso_local global i64 0, align 8
@URL_SCHEME_RES = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@Uri_CREATE_FILE_USE_DOS_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS = common dso_local global i32 0, align 4
@URL_SCHEME_WILDCARD = common dso_local global i64 0, align 8
@Uri_CREATE_NO_CANONICALIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Canonicalized path %s len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i32, i32, i32, i8*)* @canonicalize_path_hierarchical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @canonicalize_path_hierarchical(i8* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @URL_SCHEME_UNKNOWN, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %16, align 4
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @URL_SCHEME_FILE, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %17, align 4
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @URL_SCHEME_RES, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %418

42:                                               ; preds = %7
  %43 = load i8*, i8** %9, align 8
  store i8* %43, i8** %19, align 8
  %44 = load i32, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %123

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %123, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %73

52:                                               ; preds = %49
  %53 = load i8*, i8** %19, align 8
  %54 = call i64 @is_drive_path(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @Uri_CREATE_FILE_USE_DOS_PATH, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %15, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i8*, i8** %15, align 8
  %66 = load i32, i32* %21, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 47, i8* %68, align 1
  br label %69

69:                                               ; preds = %64, %61
  %70 = load i32, i32* %21, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %21, align 4
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %20, align 4
  br label %98

73:                                               ; preds = %56, %52, %49
  %74 = load i8*, i8** %19, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 47
  br i1 %77, label %78, label %97

78:                                               ; preds = %73
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @Uri_CREATE_FILE_USE_DOS_PATH, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %15, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i8*, i8** %15, align 8
  %88 = load i32, i32* %21, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 47, i8* %90, align 1
  br label %91

91:                                               ; preds = %86, %83
  %92 = load i32, i32* %21, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %21, align 4
  br label %94

94:                                               ; preds = %91, %78
  %95 = load i8*, i8** %19, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %19, align 8
  br label %97

97:                                               ; preds = %94, %73
  br label %98

98:                                               ; preds = %97, %69
  %99 = load i8*, i8** %19, align 8
  %100 = call i64 @is_drive_path(i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %98
  %103 = load i8*, i8** %15, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load i8*, i8** %19, align 8
  %107 = load i8, i8* %106, align 1
  %108 = load i8*, i8** %15, align 8
  %109 = load i32, i32* %21, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  store i8 %107, i8* %111, align 1
  %112 = load i8*, i8** %15, align 8
  %113 = load i32, i32* %21, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  store i8 58, i8* %116, align 1
  br label %117

117:                                              ; preds = %105, %102
  %118 = load i8*, i8** %19, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  store i8* %119, i8** %19, align 8
  %120 = load i32, i32* %21, align 4
  %121 = add nsw i32 %120, 2
  store i32 %121, i32* %21, align 4
  br label %122

122:                                              ; preds = %117, %98
  br label %123

123:                                              ; preds = %122, %46, %42
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %147, label %126

126:                                              ; preds = %123
  %127 = load i8*, i8** %9, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %126
  %132 = load i8*, i8** %9, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 47
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = load i8*, i8** %15, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i8*, i8** %15, align 8
  %141 = load i32, i32* %21, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  store i8 47, i8* %143, align 1
  br label %144

144:                                              ; preds = %139, %136
  %145 = load i32, i32* %21, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %21, align 4
  br label %147

147:                                              ; preds = %144, %131, %126, %123
  br label %148

148:                                              ; preds = %379, %147
  %149 = load i8*, i8** %19, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = icmp ult i8* %149, %153
  br i1 %154, label %155, label %382

155:                                              ; preds = %148
  %156 = load i32, i32* @TRUE, align 4
  store i32 %156, i32* %22, align 4
  %157 = load i8*, i8** %19, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 37
  br i1 %160, label %161, label %252

161:                                              ; preds = %155
  %162 = load i32, i32* %18, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %252, label %164

164:                                              ; preds = %161
  %165 = load i8*, i8** %19, align 8
  store i8* %165, i8** %23, align 8
  %166 = call i32 @check_pct_encoded(i8** %23)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* %17, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* @Uri_CREATE_FILE_USE_DOS_PATH, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  br label %177

177:                                              ; preds = %171, %168, %164
  %178 = phi i1 [ false, %168 ], [ false, %164 ], [ %176, %171 ]
  %179 = zext i1 %178 to i32
  store i32 %179, i32* %25, align 4
  %180 = load i8*, i8** %19, align 8
  %181 = call signext i8 @decode_pct_val(i8* %180)
  store i8 %181, i8* %24, align 1
  %182 = load i32, i32* %25, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %177
  %185 = load i32, i32* %20, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %202

187:                                              ; preds = %184, %177
  %188 = load i8*, i8** %15, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %198

190:                                              ; preds = %187
  %191 = load i8*, i8** %19, align 8
  %192 = load i8, i8* %191, align 1
  %193 = load i8*, i8** %15, align 8
  %194 = load i32, i32* %21, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = call i32 @pct_encode_val(i8 signext %192, i8* %196)
  br label %198

198:                                              ; preds = %190, %187
  %199 = load i32, i32* %21, align 4
  %200 = add nsw i32 %199, 3
  store i32 %200, i32* %21, align 4
  %201 = load i32, i32* @FALSE, align 4
  store i32 %201, i32* %22, align 4
  br label %251

202:                                              ; preds = %184
  %203 = load i8, i8* %24, align 1
  %204 = call i64 @is_unreserved(i8 signext %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load i32, i32* %16, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %236, label %209

209:                                              ; preds = %206, %202
  %210 = load i32, i32* %17, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %250

212:                                              ; preds = %209
  %213 = load i32, i32* %14, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %250, label %215

215:                                              ; preds = %212
  %216 = load i8, i8* %24, align 1
  %217 = call i64 @is_unreserved(i8 signext %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %236, label %219

219:                                              ; preds = %215
  %220 = load i8, i8* %24, align 1
  %221 = call i64 @is_reserved(i8 signext %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %236, label %223

223:                                              ; preds = %219
  %224 = load i8, i8* %24, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %250

227:                                              ; preds = %223
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* @Uri_CREATE_FILE_USE_DOS_PATH, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %250

232:                                              ; preds = %227
  %233 = load i8, i8* %24, align 1
  %234 = call i32 @is_forbidden_dos_path_char(i8 signext %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %250, label %236

236:                                              ; preds = %232, %219, %215, %206
  %237 = load i8*, i8** %15, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %245

239:                                              ; preds = %236
  %240 = load i8, i8* %24, align 1
  %241 = load i8*, i8** %15, align 8
  %242 = load i32, i32* %21, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %241, i64 %243
  store i8 %240, i8* %244, align 1
  br label %245

245:                                              ; preds = %239, %236
  %246 = load i32, i32* %21, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %21, align 4
  %248 = load i8*, i8** %19, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 2
  store i8* %249, i8** %19, align 8
  br label %379

250:                                              ; preds = %232, %227, %223, %212, %209
  br label %251

251:                                              ; preds = %250, %198
  br label %362

252:                                              ; preds = %161, %155
  %253 = load i8*, i8** %19, align 8
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 47
  br i1 %256, label %257, label %277

257:                                              ; preds = %252
  %258 = load i32, i32* %17, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %277

260:                                              ; preds = %257
  %261 = load i32, i32* %13, align 4
  %262 = load i32, i32* @Uri_CREATE_FILE_USE_DOS_PATH, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %277

265:                                              ; preds = %260
  %266 = load i8*, i8** %15, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %273

268:                                              ; preds = %265
  %269 = load i8*, i8** %15, align 8
  %270 = load i32, i32* %21, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  store i8 92, i8* %272, align 1
  br label %273

273:                                              ; preds = %268, %265
  %274 = load i32, i32* %21, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %21, align 4
  %276 = load i32, i32* @FALSE, align 4
  store i32 %276, i32* %22, align 4
  br label %361

277:                                              ; preds = %260, %257, %252
  %278 = load i8*, i8** %19, align 8
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp eq i32 %280, 92
  br i1 %281, label %282, label %306

282:                                              ; preds = %277
  %283 = load i32, i32* %16, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %306

285:                                              ; preds = %282
  %286 = load i32, i32* %17, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %285
  %289 = load i32, i32* %13, align 4
  %290 = load i32, i32* @Uri_CREATE_FILE_USE_DOS_PATH, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %305, label %293

293:                                              ; preds = %288, %285
  %294 = load i8*, i8** %15, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %301

296:                                              ; preds = %293
  %297 = load i8*, i8** %15, align 8
  %298 = load i32, i32* %21, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %297, i64 %299
  store i8 47, i8* %300, align 1
  br label %301

301:                                              ; preds = %296, %293
  %302 = load i32, i32* %21, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %21, align 4
  %304 = load i32, i32* @FALSE, align 4
  store i32 %304, i32* %22, align 4
  br label %305

305:                                              ; preds = %301, %288
  br label %360

306:                                              ; preds = %282, %277
  %307 = load i32, i32* %16, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %359

309:                                              ; preds = %306
  %310 = load i32, i32* %18, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %359, label %312

312:                                              ; preds = %309
  %313 = load i8*, i8** %19, align 8
  %314 = load i8, i8* %313, align 1
  %315 = call i64 @is_ascii(i8 signext %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %359

317:                                              ; preds = %312
  %318 = load i8*, i8** %19, align 8
  %319 = load i8, i8* %318, align 1
  %320 = call i64 @is_unreserved(i8 signext %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %359, label %322

322:                                              ; preds = %317
  %323 = load i8*, i8** %19, align 8
  %324 = load i8, i8* %323, align 1
  %325 = call i64 @is_reserved(i8 signext %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %359, label %327

327:                                              ; preds = %322
  %328 = load i32, i32* %13, align 4
  %329 = load i32, i32* @Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %327
  %333 = load i32, i32* %17, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %359

335:                                              ; preds = %332, %327
  %336 = load i32, i32* %17, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %335
  %339 = load i32, i32* %13, align 4
  %340 = load i32, i32* @Uri_CREATE_FILE_USE_DOS_PATH, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %358, label %343

343:                                              ; preds = %338, %335
  %344 = load i8*, i8** %15, align 8
  %345 = icmp ne i8* %344, null
  br i1 %345, label %346, label %354

346:                                              ; preds = %343
  %347 = load i8*, i8** %19, align 8
  %348 = load i8, i8* %347, align 1
  %349 = load i8*, i8** %15, align 8
  %350 = load i32, i32* %21, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8, i8* %349, i64 %351
  %353 = call i32 @pct_encode_val(i8 signext %348, i8* %352)
  br label %354

354:                                              ; preds = %346, %343
  %355 = load i32, i32* %21, align 4
  %356 = add nsw i32 %355, 3
  store i32 %356, i32* %21, align 4
  %357 = load i32, i32* @FALSE, align 4
  store i32 %357, i32* %22, align 4
  br label %358

358:                                              ; preds = %354, %338
  br label %359

359:                                              ; preds = %358, %332, %322, %317, %312, %309, %306
  br label %360

360:                                              ; preds = %359, %305
  br label %361

361:                                              ; preds = %360, %273
  br label %362

362:                                              ; preds = %361, %251
  %363 = load i32, i32* %22, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %378

365:                                              ; preds = %362
  %366 = load i8*, i8** %15, align 8
  %367 = icmp ne i8* %366, null
  br i1 %367, label %368, label %375

368:                                              ; preds = %365
  %369 = load i8*, i8** %19, align 8
  %370 = load i8, i8* %369, align 1
  %371 = load i8*, i8** %15, align 8
  %372 = load i32, i32* %21, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8, i8* %371, i64 %373
  store i8 %370, i8* %374, align 1
  br label %375

375:                                              ; preds = %368, %365
  %376 = load i32, i32* %21, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %21, align 4
  br label %378

378:                                              ; preds = %375, %362
  br label %379

379:                                              ; preds = %378, %245
  %380 = load i8*, i8** %19, align 8
  %381 = getelementptr inbounds i8, i8* %380, i32 1
  store i8* %381, i8** %19, align 8
  br label %148

382:                                              ; preds = %148
  %383 = load i32, i32* %17, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %390

385:                                              ; preds = %382
  %386 = load i32, i32* %13, align 4
  %387 = load i32, i32* @Uri_CREATE_FILE_USE_DOS_PATH, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %407, label %390

390:                                              ; preds = %385, %382
  %391 = load i64, i64* %11, align 8
  %392 = load i64, i64* @URL_SCHEME_WILDCARD, align 8
  %393 = icmp ne i64 %391, %392
  br i1 %393, label %394, label %407

394:                                              ; preds = %390
  %395 = load i32, i32* %13, align 4
  %396 = load i32, i32* @Uri_CREATE_NO_CANONICALIZE, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %406, label %399

399:                                              ; preds = %394
  %400 = load i8*, i8** %15, align 8
  %401 = icmp ne i8* %400, null
  br i1 %401, label %402, label %406

402:                                              ; preds = %399
  %403 = load i8*, i8** %15, align 8
  %404 = load i32, i32* %21, align 4
  %405 = call i32 @remove_dot_segments(i8* %403, i32 %404)
  store i32 %405, i32* %21, align 4
  br label %406

406:                                              ; preds = %402, %399, %394
  br label %407

407:                                              ; preds = %406, %390, %385
  %408 = load i8*, i8** %15, align 8
  %409 = icmp ne i8* %408, null
  br i1 %409, label %410, label %416

410:                                              ; preds = %407
  %411 = load i8*, i8** %15, align 8
  %412 = load i32, i32* %21, align 4
  %413 = call i32 @debugstr_wn(i8* %411, i32 %412)
  %414 = load i32, i32* %21, align 4
  %415 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %413, i32 %414)
  br label %416

416:                                              ; preds = %410, %407
  %417 = load i32, i32* %21, align 4
  store i32 %417, i32* %8, align 4
  br label %418

418:                                              ; preds = %416, %41
  %419 = load i32, i32* %8, align 4
  ret i32 %419
}

declare dso_local i64 @is_drive_path(i8*) #1

declare dso_local i32 @check_pct_encoded(i8**) #1

declare dso_local signext i8 @decode_pct_val(i8*) #1

declare dso_local i32 @pct_encode_val(i8 signext, i8*) #1

declare dso_local i64 @is_unreserved(i8 signext) #1

declare dso_local i64 @is_reserved(i8 signext) #1

declare dso_local i32 @is_forbidden_dos_path_char(i8 signext) #1

declare dso_local i64 @is_ascii(i8 signext) #1

declare dso_local i32 @remove_dot_segments(i8*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_wn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

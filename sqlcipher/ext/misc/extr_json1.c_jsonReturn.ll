; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonReturn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonReturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@JSON_NULL = common dso_local global i32 0, align 4
@LARGEST_INT64 = common dso_local global i32 0, align 4
@SMALLEST_INT64 = common dso_local global i32 0, align 4
@JNODE_RAW = common dso_local global i32 0, align 4
@JNODE_ESCAPE = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@sqlite3_free = common dso_local global i32 0, align 4
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32**)* @jsonReturn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsonReturn(%struct.TYPE_6__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %22 [
    i32 128, label %32
    i32 133, label %35
    i32 132, label %38
    i32 130, label %140
    i32 129, label %149
    i32 134, label %391
    i32 131, label %391
  ]

22:                                               ; preds = %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @JSON_NULL, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @sqlite3_result_null(i32* %30)
  br label %396

32:                                               ; preds = %3
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @sqlite3_result_int(i32* %33, i32 1)
  br label %396

35:                                               ; preds = %3
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @sqlite3_result_int(i32* %36, i32 0)
  br label %396

38:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 45
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  br label %51

51:                                               ; preds = %48, %38
  br label %52

52:                                               ; preds = %117, %51
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sge i32 %56, 48
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sle i32 %62, 57
  br label %64

64:                                               ; preds = %58, %52
  %65 = phi i1 [ false, %52 ], [ %63, %58 ]
  br i1 %65, label %66, label %122

66:                                               ; preds = %64
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %8, align 8
  %69 = load i8, i8* %67, align 1
  %70 = sext i8 %69 to i32
  %71 = sub nsw i32 %70, 48
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @LARGEST_INT64, align 4
  %74 = sdiv i32 %73, 10
  %75 = icmp sge i32 %72, %74
  br i1 %75, label %76, label %117

76:                                               ; preds = %66
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @LARGEST_INT64, align 4
  %79 = sdiv i32 %78, 10
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %139

82:                                               ; preds = %76
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp sge i32 %86, 48
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sle i32 %92, 57
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %139

95:                                               ; preds = %88, %82
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %96, 9
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %139

99:                                               ; preds = %95
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 8
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 45
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* @SMALLEST_INT64, align 4
  %114 = call i32 @sqlite3_result_int64(i32* %112, i32 %113)
  br label %138

115:                                              ; preds = %102
  br label %139

116:                                              ; preds = %99
  br label %117

117:                                              ; preds = %116, %66
  %118 = load i32, i32* %7, align 4
  %119 = mul nsw i32 %118, 10
  %120 = load i32, i32* %9, align 4
  %121 = add i32 %119, %120
  store i32 %121, i32* %7, align 4
  br label %52

122:                                              ; preds = %64
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 45
  br i1 %130, label %131, label %134

131:                                              ; preds = %122
  %132 = load i32, i32* %7, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %131, %122
  %135 = load i32*, i32** %5, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @sqlite3_result_int64(i32* %135, i32 %136)
  br label %138

138:                                              ; preds = %134, %111
  br label %396

139:                                              ; preds = %115, %98, %94, %81
  br label %140

140:                                              ; preds = %3, %139
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call double @strtod(i8* %144, i32 0)
  store double %145, double* %10, align 8
  %146 = load i32*, i32** %5, align 8
  %147 = load double, double* %10, align 8
  %148 = call i32 @sqlite3_result_double(i32* %146, double %147)
  br label %396

149:                                              ; preds = %3
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @JNODE_RAW, align 4
  %154 = and i32 %152, %153
  %155 = icmp eq i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @JNODE_ESCAPE, align 4
  %162 = and i32 %160, %161
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %149
  %165 = load i32*, i32** %5, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = sub i64 %173, 2
  %175 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %176 = call i32 @sqlite3_result_text(i32* %165, i8* %170, i64 %174, i32 %175)
  br label %390

177:                                              ; preds = %149
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %12, align 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  store i8* %184, i8** %13, align 8
  %185 = load i64, i64* %12, align 8
  %186 = add i64 %185, 1
  %187 = trunc i64 %186 to i32
  %188 = call i8* @sqlite3_malloc(i32 %187)
  store i8* %188, i8** %14, align 8
  %189 = load i8*, i8** %14, align 8
  %190 = icmp eq i8* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %177
  %192 = load i32*, i32** %5, align 8
  %193 = call i32 @sqlite3_result_error_nomem(i32* %192)
  br label %396

194:                                              ; preds = %177
  store i64 1, i64* %11, align 8
  store i64 0, i64* %15, align 8
  br label %195

195:                                              ; preds = %378, %194
  %196 = load i64, i64* %11, align 8
  %197 = load i64, i64* %12, align 8
  %198 = sub i64 %197, 1
  %199 = icmp ult i64 %196, %198
  br i1 %199, label %200, label %381

200:                                              ; preds = %195
  %201 = load i8*, i8** %13, align 8
  %202 = load i64, i64* %11, align 8
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  %204 = load i8, i8* %203, align 1
  store i8 %204, i8* %16, align 1
  %205 = load i8, i8* %16, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp ne i32 %206, 92
  br i1 %207, label %208, label %214

208:                                              ; preds = %200
  %209 = load i8, i8* %16, align 1
  %210 = load i8*, i8** %14, align 8
  %211 = load i64, i64* %15, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %15, align 8
  %213 = getelementptr inbounds i8, i8* %210, i64 %211
  store i8 %209, i8* %213, align 1
  br label %377

214:                                              ; preds = %200
  %215 = load i8*, i8** %13, align 8
  %216 = load i64, i64* %11, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %11, align 8
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = load i8, i8* %218, align 1
  store i8 %219, i8* %16, align 1
  %220 = load i8, i8* %16, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 117
  br i1 %222, label %223, label %341

223:                                              ; preds = %214
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  br label %224

224:                                              ; preds = %274, %223
  %225 = load i64, i64* %18, align 8
  %226 = icmp ult i64 %225, 4
  br i1 %226, label %227, label %279

227:                                              ; preds = %224
  %228 = load i64, i64* %11, align 8
  %229 = load i64, i64* %12, align 8
  %230 = sub i64 %229, 2
  %231 = icmp ult i64 %228, %230
  %232 = zext i1 %231 to i32
  %233 = call i32 @assert(i32 %232)
  %234 = load i8*, i8** %13, align 8
  %235 = load i64, i64* %11, align 8
  %236 = add i64 %235, 1
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  %238 = load i8, i8* %237, align 1
  store i8 %238, i8* %16, align 1
  %239 = load i8, i8* %16, align 1
  %240 = call i32 @safe_isxdigit(i8 signext %239)
  %241 = call i32 @assert(i32 %240)
  %242 = load i8, i8* %16, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp sle i32 %243, 57
  br i1 %244, label %245, label %252

245:                                              ; preds = %227
  %246 = load i64, i64* %17, align 8
  %247 = mul i64 %246, 16
  %248 = load i8, i8* %16, align 1
  %249 = sext i8 %248 to i64
  %250 = add i64 %247, %249
  %251 = sub i64 %250, 48
  store i64 %251, i64* %17, align 8
  br label %273

252:                                              ; preds = %227
  %253 = load i8, i8* %16, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp sle i32 %254, 70
  br i1 %255, label %256, label %264

256:                                              ; preds = %252
  %257 = load i64, i64* %17, align 8
  %258 = mul i64 %257, 16
  %259 = load i8, i8* %16, align 1
  %260 = sext i8 %259 to i64
  %261 = add i64 %258, %260
  %262 = sub i64 %261, 65
  %263 = add i64 %262, 10
  store i64 %263, i64* %17, align 8
  br label %272

264:                                              ; preds = %252
  %265 = load i64, i64* %17, align 8
  %266 = mul i64 %265, 16
  %267 = load i8, i8* %16, align 1
  %268 = sext i8 %267 to i64
  %269 = add i64 %266, %268
  %270 = sub i64 %269, 97
  %271 = add i64 %270, 10
  store i64 %271, i64* %17, align 8
  br label %272

272:                                              ; preds = %264, %256
  br label %273

273:                                              ; preds = %272, %245
  br label %274

274:                                              ; preds = %273
  %275 = load i64, i64* %11, align 8
  %276 = add i64 %275, 1
  store i64 %276, i64* %11, align 8
  %277 = load i64, i64* %18, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %18, align 8
  br label %224

279:                                              ; preds = %224
  %280 = load i64, i64* %17, align 8
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  br label %381

283:                                              ; preds = %279
  %284 = load i64, i64* %17, align 8
  %285 = icmp ule i64 %284, 127
  br i1 %285, label %286, label %293

286:                                              ; preds = %283
  %287 = load i64, i64* %17, align 8
  %288 = trunc i64 %287 to i8
  %289 = load i8*, i8** %14, align 8
  %290 = load i64, i64* %15, align 8
  %291 = add i64 %290, 1
  store i64 %291, i64* %15, align 8
  %292 = getelementptr inbounds i8, i8* %289, i64 %290
  store i8 %288, i8* %292, align 1
  br label %340

293:                                              ; preds = %283
  %294 = load i64, i64* %17, align 8
  %295 = icmp ule i64 %294, 2047
  br i1 %295, label %296, label %313

296:                                              ; preds = %293
  %297 = load i64, i64* %17, align 8
  %298 = lshr i64 %297, 6
  %299 = or i64 192, %298
  %300 = trunc i64 %299 to i8
  %301 = load i8*, i8** %14, align 8
  %302 = load i64, i64* %15, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %15, align 8
  %304 = getelementptr inbounds i8, i8* %301, i64 %302
  store i8 %300, i8* %304, align 1
  %305 = load i64, i64* %17, align 8
  %306 = and i64 %305, 63
  %307 = or i64 128, %306
  %308 = trunc i64 %307 to i8
  %309 = load i8*, i8** %14, align 8
  %310 = load i64, i64* %15, align 8
  %311 = add i64 %310, 1
  store i64 %311, i64* %15, align 8
  %312 = getelementptr inbounds i8, i8* %309, i64 %310
  store i8 %308, i8* %312, align 1
  br label %339

313:                                              ; preds = %293
  %314 = load i64, i64* %17, align 8
  %315 = lshr i64 %314, 12
  %316 = or i64 224, %315
  %317 = trunc i64 %316 to i8
  %318 = load i8*, i8** %14, align 8
  %319 = load i64, i64* %15, align 8
  %320 = add i64 %319, 1
  store i64 %320, i64* %15, align 8
  %321 = getelementptr inbounds i8, i8* %318, i64 %319
  store i8 %317, i8* %321, align 1
  %322 = load i64, i64* %17, align 8
  %323 = lshr i64 %322, 6
  %324 = and i64 %323, 63
  %325 = or i64 128, %324
  %326 = trunc i64 %325 to i8
  %327 = load i8*, i8** %14, align 8
  %328 = load i64, i64* %15, align 8
  %329 = add i64 %328, 1
  store i64 %329, i64* %15, align 8
  %330 = getelementptr inbounds i8, i8* %327, i64 %328
  store i8 %326, i8* %330, align 1
  %331 = load i64, i64* %17, align 8
  %332 = and i64 %331, 63
  %333 = or i64 128, %332
  %334 = trunc i64 %333 to i8
  %335 = load i8*, i8** %14, align 8
  %336 = load i64, i64* %15, align 8
  %337 = add i64 %336, 1
  store i64 %337, i64* %15, align 8
  %338 = getelementptr inbounds i8, i8* %335, i64 %336
  store i8 %334, i8* %338, align 1
  br label %339

339:                                              ; preds = %313, %296
  br label %340

340:                                              ; preds = %339, %286
  br label %376

341:                                              ; preds = %214
  %342 = load i8, i8* %16, align 1
  %343 = sext i8 %342 to i32
  %344 = icmp eq i32 %343, 98
  br i1 %344, label %345, label %346

345:                                              ; preds = %341
  store i8 8, i8* %16, align 1
  br label %370

346:                                              ; preds = %341
  %347 = load i8, i8* %16, align 1
  %348 = sext i8 %347 to i32
  %349 = icmp eq i32 %348, 102
  br i1 %349, label %350, label %351

350:                                              ; preds = %346
  store i8 12, i8* %16, align 1
  br label %369

351:                                              ; preds = %346
  %352 = load i8, i8* %16, align 1
  %353 = sext i8 %352 to i32
  %354 = icmp eq i32 %353, 110
  br i1 %354, label %355, label %356

355:                                              ; preds = %351
  store i8 10, i8* %16, align 1
  br label %368

356:                                              ; preds = %351
  %357 = load i8, i8* %16, align 1
  %358 = sext i8 %357 to i32
  %359 = icmp eq i32 %358, 114
  br i1 %359, label %360, label %361

360:                                              ; preds = %356
  store i8 13, i8* %16, align 1
  br label %367

361:                                              ; preds = %356
  %362 = load i8, i8* %16, align 1
  %363 = sext i8 %362 to i32
  %364 = icmp eq i32 %363, 116
  br i1 %364, label %365, label %366

365:                                              ; preds = %361
  store i8 9, i8* %16, align 1
  br label %366

366:                                              ; preds = %365, %361
  br label %367

367:                                              ; preds = %366, %360
  br label %368

368:                                              ; preds = %367, %355
  br label %369

369:                                              ; preds = %368, %350
  br label %370

370:                                              ; preds = %369, %345
  %371 = load i8, i8* %16, align 1
  %372 = load i8*, i8** %14, align 8
  %373 = load i64, i64* %15, align 8
  %374 = add i64 %373, 1
  store i64 %374, i64* %15, align 8
  %375 = getelementptr inbounds i8, i8* %372, i64 %373
  store i8 %371, i8* %375, align 1
  br label %376

376:                                              ; preds = %370, %340
  br label %377

377:                                              ; preds = %376, %208
  br label %378

378:                                              ; preds = %377
  %379 = load i64, i64* %11, align 8
  %380 = add i64 %379, 1
  store i64 %380, i64* %11, align 8
  br label %195

381:                                              ; preds = %282, %195
  %382 = load i8*, i8** %14, align 8
  %383 = load i64, i64* %15, align 8
  %384 = getelementptr inbounds i8, i8* %382, i64 %383
  store i8 0, i8* %384, align 1
  %385 = load i32*, i32** %5, align 8
  %386 = load i8*, i8** %14, align 8
  %387 = load i64, i64* %15, align 8
  %388 = load i32, i32* @sqlite3_free, align 4
  %389 = call i32 @sqlite3_result_text(i32* %385, i8* %386, i64 %387, i32 %388)
  br label %390

390:                                              ; preds = %381, %164
  br label %396

391:                                              ; preds = %3, %3
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %393 = load i32*, i32** %5, align 8
  %394 = load i32**, i32*** %6, align 8
  %395 = call i32 @jsonReturnJson(%struct.TYPE_6__* %392, i32* %393, i32** %394)
  br label %396

396:                                              ; preds = %391, %390, %191, %140, %138, %35, %32, %22
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_result_null(i32*) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i32) #1

declare dso_local double @strtod(i8*, i32) #1

declare dso_local i32 @sqlite3_result_double(i32*, double) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i64, i32) #1

declare dso_local i8* @sqlite3_malloc(i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @safe_isxdigit(i8 signext) #1

declare dso_local i32 @jsonReturnJson(%struct.TYPE_6__*, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

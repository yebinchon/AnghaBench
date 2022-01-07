; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_func.c_patternCompare.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_func.c_patternCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compareInfo = type { i32, i32, i64, i64 }

@SQLITE_NOWILDCARDMATCH = common dso_local global i32 0, align 4
@SQLITE_MATCH = common dso_local global i32 0, align 4
@SQLITE_NOMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, %struct.compareInfo*, i32)* @patternCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patternCompare(i64* %0, i64* %1, %struct.compareInfo* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.compareInfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [3 x i8], align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store %struct.compareInfo* %2, %struct.compareInfo** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %24 = getelementptr inbounds %struct.compareInfo, %struct.compareInfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %27 = getelementptr inbounds %struct.compareInfo, %struct.compareInfo* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %30 = getelementptr inbounds %struct.compareInfo, %struct.compareInfo* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %14, align 8
  store i64* null, i64** %15, align 8
  br label %32

32:                                               ; preds = %315, %303, %285, %277, %4
  %33 = load i64*, i64** %6, align 8
  %34 = call i32 @Utf8Read(i64* %33)
  store i32 %34, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %318

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %184

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %61, %40
  %42 = load i64*, i64** %6, align 8
  %43 = call i32 @Utf8Read(i64* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %47, %48
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i1 [ true, %41 ], [ %49, %46 ]
  br i1 %51, label %52, label %62

52:                                               ; preds = %50
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = call i32 @sqlite3Utf8Read(i64** %7)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @SQLITE_NOWILDCARDMATCH, align 4
  store i32 %60, i32* %5, align 4
  br label %328

61:                                               ; preds = %56, %52
  br label %41

62:                                               ; preds = %50
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @SQLITE_MATCH, align 4
  store i32 %66, i32* %5, align 4
  br label %328

67:                                               ; preds = %62
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %110

71:                                               ; preds = %67
  %72 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %73 = getelementptr inbounds %struct.compareInfo, %struct.compareInfo* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = call i32 @sqlite3Utf8Read(i64** %6)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @SQLITE_NOWILDCARDMATCH, align 4
  store i32 %81, i32* %5, align 4
  br label %328

82:                                               ; preds = %76
  br label %109

83:                                               ; preds = %71
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 128
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  br label %88

88:                                               ; preds = %104, %83
  %89 = load i64*, i64** %7, align 8
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %88
  %93 = load i64*, i64** %6, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 -1
  %95 = load i64*, i64** %7, align 8
  %96 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @patternCompare(i64* %94, i64* %95, %struct.compareInfo* %96, i32 %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* @SQLITE_NOMATCH, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %5, align 4
  br label %328

104:                                              ; preds = %92
  %105 = load i64*, i64** %7, align 8
  %106 = call i32 @SQLITE_SKIP_UTF8(i64* %105)
  br label %88

107:                                              ; preds = %88
  %108 = load i32, i32* @SQLITE_NOWILDCARDMATCH, align 4
  store i32 %108, i32* %5, align 4
  br label %328

109:                                              ; preds = %82
  br label %110

110:                                              ; preds = %109, %67
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = icmp sle i32 %112, 128
  br i1 %113, label %114, label %159

114:                                              ; preds = %111
  %115 = load i64, i64* %14, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load i32, i32* %10, align 4
  %119 = call signext i8 @sqlite3Toupper(i32 %118)
  %120 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  store i8 %119, i8* %120, align 1
  %121 = load i32, i32* %10, align 4
  %122 = call signext i8 @sqlite3Tolower(i32 %121)
  %123 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 1
  store i8 %122, i8* %123, align 1
  %124 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 2
  store i8 0, i8* %124, align 1
  br label %130

125:                                              ; preds = %114
  %126 = load i32, i32* %10, align 4
  %127 = trunc i32 %126 to i8
  %128 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  store i8 %127, i8* %128, align 1
  %129 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 1
  store i8 0, i8* %129, align 1
  br label %130

130:                                              ; preds = %125, %117
  br label %131

131:                                              ; preds = %130, %157
  %132 = load i64*, i64** %7, align 8
  %133 = bitcast i64* %132 to i8*
  %134 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %135 = call i32 @strcspn(i8* %133, i8* %134)
  %136 = load i64*, i64** %7, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  store i64* %138, i64** %7, align 8
  %139 = load i64*, i64** %7, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %131
  br label %158

144:                                              ; preds = %131
  %145 = load i64*, i64** %7, align 8
  %146 = getelementptr inbounds i64, i64* %145, i32 1
  store i64* %146, i64** %7, align 8
  %147 = load i64*, i64** %6, align 8
  %148 = load i64*, i64** %7, align 8
  %149 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @patternCompare(i64* %147, i64* %148, %struct.compareInfo* %149, i32 %150)
  store i32 %151, i32* %18, align 4
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* @SQLITE_NOMATCH, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %144
  %156 = load i32, i32* %18, align 4
  store i32 %156, i32* %5, align 4
  br label %328

157:                                              ; preds = %144
  br label %131

158:                                              ; preds = %143
  br label %182

159:                                              ; preds = %111
  br label %160

160:                                              ; preds = %180, %168, %159
  %161 = load i64*, i64** %7, align 8
  %162 = call i32 @Utf8Read(i64* %161)
  store i32 %162, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %181

164:                                              ; preds = %160
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %160

169:                                              ; preds = %164
  %170 = load i64*, i64** %6, align 8
  %171 = load i64*, i64** %7, align 8
  %172 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @patternCompare(i64* %170, i64* %171, %struct.compareInfo* %172, i32 %173)
  store i32 %174, i32* %19, align 4
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* @SQLITE_NOMATCH, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %169
  %179 = load i32, i32* %19, align 4
  store i32 %179, i32* %5, align 4
  br label %328

180:                                              ; preds = %169
  br label %160

181:                                              ; preds = %160
  br label %182

182:                                              ; preds = %181, %158
  %183 = load i32, i32* @SQLITE_NOWILDCARDMATCH, align 4
  store i32 %183, i32* %5, align 4
  br label %328

184:                                              ; preds = %36
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %279

188:                                              ; preds = %184
  %189 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %190 = getelementptr inbounds %struct.compareInfo, %struct.compareInfo* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %188
  %194 = call i32 @sqlite3Utf8Read(i64** %6)
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i32, i32* @SQLITE_NOMATCH, align 4
  store i32 %198, i32* %5, align 4
  br label %328

199:                                              ; preds = %193
  %200 = load i64*, i64** %6, align 8
  store i64* %200, i64** %15, align 8
  br label %278

201:                                              ; preds = %188
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %202 = call i32 @sqlite3Utf8Read(i64** %7)
  store i32 %202, i32* %10, align 4
  %203 = load i32, i32* %10, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = load i32, i32* @SQLITE_NOMATCH, align 4
  store i32 %206, i32* %5, align 4
  br label %328

207:                                              ; preds = %201
  %208 = call i32 @sqlite3Utf8Read(i64** %6)
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp eq i32 %209, 94
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  store i32 1, i32* %22, align 4
  %212 = call i32 @sqlite3Utf8Read(i64** %6)
  store i32 %212, i32* %11, align 4
  br label %213

213:                                              ; preds = %211, %207
  %214 = load i32, i32* %11, align 4
  %215 = icmp eq i32 %214, 93
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load i32, i32* %10, align 4
  %218 = icmp eq i32 %217, 93
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  store i32 1, i32* %21, align 4
  br label %220

220:                                              ; preds = %219, %216
  %221 = call i32 @sqlite3Utf8Read(i64** %6)
  store i32 %221, i32* %11, align 4
  br label %222

222:                                              ; preds = %220, %213
  br label %223

223:                                              ; preds = %265, %222
  %224 = load i32, i32* %11, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 93
  br label %229

229:                                              ; preds = %226, %223
  %230 = phi i1 [ false, %223 ], [ %228, %226 ]
  br i1 %230, label %231, label %267

231:                                              ; preds = %229
  %232 = load i32, i32* %11, align 4
  %233 = icmp eq i32 %232, 45
  br i1 %233, label %234, label %258

234:                                              ; preds = %231
  %235 = load i64*, i64** %6, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 93
  br i1 %238, label %239, label %258

239:                                              ; preds = %234
  %240 = load i64*, i64** %6, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %258

244:                                              ; preds = %239
  %245 = load i32, i32* %20, align 4
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %244
  %248 = call i32 @sqlite3Utf8Read(i64** %6)
  store i32 %248, i32* %11, align 4
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %20, align 4
  %251 = icmp sge i32 %249, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %247
  %253 = load i32, i32* %10, align 4
  %254 = load i32, i32* %11, align 4
  %255 = icmp sle i32 %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  store i32 1, i32* %21, align 4
  br label %257

257:                                              ; preds = %256, %252, %247
  store i32 0, i32* %20, align 4
  br label %265

258:                                              ; preds = %244, %239, %234, %231
  %259 = load i32, i32* %10, align 4
  %260 = load i32, i32* %11, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %258
  store i32 1, i32* %21, align 4
  br label %263

263:                                              ; preds = %262, %258
  %264 = load i32, i32* %11, align 4
  store i32 %264, i32* %20, align 4
  br label %265

265:                                              ; preds = %263, %257
  %266 = call i32 @sqlite3Utf8Read(i64** %6)
  store i32 %266, i32* %11, align 4
  br label %223

267:                                              ; preds = %229
  %268 = load i32, i32* %11, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %275, label %270

270:                                              ; preds = %267
  %271 = load i32, i32* %21, align 4
  %272 = load i32, i32* %22, align 4
  %273 = xor i32 %271, %272
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %270, %267
  %276 = load i32, i32* @SQLITE_NOMATCH, align 4
  store i32 %276, i32* %5, align 4
  br label %328

277:                                              ; preds = %270
  br label %32

278:                                              ; preds = %199
  br label %279

279:                                              ; preds = %278, %184
  %280 = load i64*, i64** %7, align 8
  %281 = call i32 @Utf8Read(i64* %280)
  store i32 %281, i32* %11, align 4
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* %11, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %279
  br label %32

286:                                              ; preds = %279
  %287 = load i64, i64* %14, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %304

289:                                              ; preds = %286
  %290 = load i32, i32* %10, align 4
  %291 = call signext i8 @sqlite3Tolower(i32 %290)
  %292 = sext i8 %291 to i32
  %293 = load i32, i32* %11, align 4
  %294 = call signext i8 @sqlite3Tolower(i32 %293)
  %295 = sext i8 %294 to i32
  %296 = icmp eq i32 %292, %295
  br i1 %296, label %297, label %304

297:                                              ; preds = %289
  %298 = load i32, i32* %10, align 4
  %299 = icmp slt i32 %298, 128
  br i1 %299, label %300, label %304

300:                                              ; preds = %297
  %301 = load i32, i32* %11, align 4
  %302 = icmp slt i32 %301, 128
  br i1 %302, label %303, label %304

303:                                              ; preds = %300
  br label %32

304:                                              ; preds = %300, %297, %289, %286
  %305 = load i32, i32* %10, align 4
  %306 = load i32, i32* %12, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %316

308:                                              ; preds = %304
  %309 = load i64*, i64** %6, align 8
  %310 = load i64*, i64** %15, align 8
  %311 = icmp ne i64* %309, %310
  br i1 %311, label %312, label %316

312:                                              ; preds = %308
  %313 = load i32, i32* %11, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %312
  br label %32

316:                                              ; preds = %312, %308, %304
  %317 = load i32, i32* @SQLITE_NOMATCH, align 4
  store i32 %317, i32* %5, align 4
  br label %328

318:                                              ; preds = %32
  %319 = load i64*, i64** %7, align 8
  %320 = load i64, i64* %319, align 8
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %318
  %323 = load i32, i32* @SQLITE_MATCH, align 4
  br label %326

324:                                              ; preds = %318
  %325 = load i32, i32* @SQLITE_NOMATCH, align 4
  br label %326

326:                                              ; preds = %324, %322
  %327 = phi i32 [ %323, %322 ], [ %325, %324 ]
  store i32 %327, i32* %5, align 4
  br label %328

328:                                              ; preds = %326, %316, %275, %205, %197, %182, %178, %155, %107, %102, %80, %65, %59
  %329 = load i32, i32* %5, align 4
  ret i32 %329
}

declare dso_local i32 @Utf8Read(i64*) #1

declare dso_local i32 @sqlite3Utf8Read(i64**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SQLITE_SKIP_UTF8(i64*) #1

declare dso_local signext i8 @sqlite3Toupper(i32) #1

declare dso_local signext i8 @sqlite3Tolower(i32) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

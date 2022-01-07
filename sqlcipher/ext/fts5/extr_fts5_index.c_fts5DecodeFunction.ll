; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5DecodeFunction.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5DecodeFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i8*, i32, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_DATA_ZERO_PADDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c" %d(%lld)\00", align 1
@FTS5_AVERAGES_ROWID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c" term=%.*s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"corrupt\00", align 1
@FTS5_CORRUPT = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @fts5DecodeFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5DecodeFunction(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_16__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_17__, align 8
  %20 = alloca %struct.TYPE_16__, align 8
  %21 = alloca %struct.TYPE_16__, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_16__, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32* null, i32** %14, align 8
  %40 = load i32, i32* @SQLITE_OK, align 4
  store i32 %40, i32* %16, align 4
  store i64 0, i64* %17, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @sqlite3_user_data(i32* %41)
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @UNUSED_PARAM(i32 %49)
  %51 = call i32 @memset(%struct.TYPE_16__* %15, i32 0, i32 48)
  %52 = load i32**, i32*** %6, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @sqlite3_value_int64(i32* %54)
  store i64 %55, i64* %7, align 8
  %56 = load i32**, i32*** %6, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @sqlite3_value_bytes(i32* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32**, i32*** %6, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32* @sqlite3_value_blob(i32* %62)
  store i32* %63, i32** %12, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @FTS5_DATA_ZERO_PADDING, align 8
  %67 = add nsw i64 %65, %66
  store i64 %67, i64* %17, align 8
  %68 = load i64, i64* %17, align 8
  %69 = call i64 @sqlite3Fts5MallocZero(i32* %16, i64 %68)
  %70 = inttoptr i64 %69 to i32*
  store i32* %70, i32** %14, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %3
  br label %441

74:                                               ; preds = %3
  %75 = load i32, i32* %13, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32*, i32** %14, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @memcpy(i32* %78, i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @fts5DecodeRowid(i64 %83, i32* %8, i32* %11, i32* %9, i32* %10)
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @fts5DebugRowid(i32* %16, %struct.TYPE_16__* %15, i64 %85)
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %82
  %90 = load i32*, i32** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  store i32* %90, i32** %91, align 8
  %92 = load i32, i32* %13, align 4
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = call i32 @memset(%struct.TYPE_16__* %20, i32 0, i32 48)
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 5
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %95, align 8
  %96 = load i32, i32* %10, align 4
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store i32 %96, i32* %97, align 8
  %98 = call i32 @fts5DlidxLvlNext(%struct.TYPE_16__* %20)
  br label %99

99:                                               ; preds = %109, %89
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @sqlite3Fts5BufferAppendPrintf(i32* %16, %struct.TYPE_16__* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %105, i8* %107)
  br label %109

109:                                              ; preds = %103
  %110 = call i32 @fts5DlidxLvlNext(%struct.TYPE_16__* %20)
  br label %99

111:                                              ; preds = %99
  br label %440

112:                                              ; preds = %82
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %112
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @FTS5_AVERAGES_ROWID, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32*, i32** %14, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @fts5DecodeAverages(i32* %16, %struct.TYPE_16__* %15, i32* %120, i32 %121)
  br label %127

123:                                              ; preds = %115
  %124 = load i32*, i32** %14, align 8
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @fts5DecodeStructure(i32* %16, %struct.TYPE_16__* %15, i32* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %119
  br label %439

128:                                              ; preds = %112
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %237

131:                                              ; preds = %128
  %132 = load i32*, i32** %14, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  %134 = call i32 @fts5GetU16(i32* %133)
  store i32 %134, i32* %22, align 4
  store i32 %134, i32* %23, align 4
  store i32 0, i32* %25, align 4
  %135 = call i32 @memset(%struct.TYPE_16__* %21, i32 0, i32 48)
  %136 = load i32, i32* %22, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %131
  %140 = load i32*, i32** %14, align 8
  %141 = load i32, i32* %23, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %24, align 4
  %145 = call i64 @fts5GetVarint32(i32* %143, i32 %144)
  %146 = load i32, i32* %23, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %23, align 4
  br label %152

150:                                              ; preds = %131
  %151 = load i32, i32* %22, align 4
  store i32 %151, i32* %24, align 4
  br label %152

152:                                              ; preds = %150, %139
  %153 = load i32*, i32** %14, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 4
  %155 = load i32, i32* %24, align 4
  %156 = sub nsw i32 %155, 4
  %157 = call i32 @fts5DecodeRowidList(i32* %16, %struct.TYPE_16__* %15, i32* %154, i32 %156)
  %158 = load i32, i32* %24, align 4
  store i32 %158, i32* %26, align 4
  br label %159

159:                                              ; preds = %234, %152
  %160 = load i32, i32* %26, align 4
  %161 = load i32, i32* %22, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %235

163:                                              ; preds = %159
  %164 = load i32*, i32** %14, align 8
  %165 = load i32, i32* %26, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %27, align 4
  %169 = call i64 @fts5GetVarint32(i32* %167, i32 %168)
  %170 = load i32, i32* %26, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %26, align 4
  %174 = load i32, i32* %25, align 4
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  store i32 %174, i32* %175, align 8
  %176 = load i32, i32* %27, align 4
  %177 = load i32*, i32** %14, align 8
  %178 = load i32, i32* %26, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = call i32 @fts5BufferAppendBlob(i32* %16, %struct.TYPE_16__* %21, i32 %176, i32* %180)
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i8*
  %187 = call i32 @sqlite3Fts5BufferAppendPrintf(i32* %16, %struct.TYPE_16__* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %183, i8* %186)
  %188 = load i32, i32* %27, align 4
  %189 = load i32, i32* %26, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %26, align 4
  %191 = load i32, i32* %23, align 4
  %192 = load i32, i32* %13, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %208

194:                                              ; preds = %163
  %195 = load i32*, i32** %14, align 8
  %196 = load i32, i32* %23, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %28, align 4
  %200 = call i64 @fts5GetVarint32(i32* %198, i32 %199)
  %201 = load i32, i32* %23, align 4
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %202, %200
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %23, align 4
  %205 = load i32, i32* %28, align 4
  %206 = load i32, i32* %24, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %24, align 4
  br label %210

208:                                              ; preds = %163
  %209 = load i32, i32* %22, align 4
  store i32 %209, i32* %24, align 4
  br label %210

210:                                              ; preds = %208, %194
  %211 = load i32*, i32** %14, align 8
  %212 = load i32, i32* %26, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %24, align 4
  %216 = load i32, i32* %26, align 4
  %217 = sub nsw i32 %215, %216
  %218 = call i32 @fts5DecodeRowidList(i32* %16, %struct.TYPE_16__* %15, i32* %214, i32 %217)
  %219 = load i32, i32* %24, align 4
  store i32 %219, i32* %26, align 4
  %220 = load i32, i32* %26, align 4
  %221 = load i32, i32* %22, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %234

223:                                              ; preds = %210
  %224 = load i32*, i32** %14, align 8
  %225 = load i32, i32* %26, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %25, align 4
  %229 = call i64 @fts5GetVarint32(i32* %227, i32 %228)
  %230 = load i32, i32* %26, align 4
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %231, %229
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %26, align 4
  br label %234

234:                                              ; preds = %223, %210
  br label %159

235:                                              ; preds = %159
  %236 = call i32 @fts5BufferFree(%struct.TYPE_16__* %21)
  br label %438

237:                                              ; preds = %128
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %238 = call i32 @memset(%struct.TYPE_16__* %29, i32 0, i32 48)
  %239 = load i32, i32* %13, align 4
  %240 = icmp slt i32 %239, 4
  br i1 %240, label %241, label %243

241:                                              ; preds = %237
  %242 = call i32 @sqlite3Fts5BufferSet(i32* %16, %struct.TYPE_16__* %15, i32 7, i32* bitcast ([8 x i8]* @.str.2 to i32*))
  br label %441

243:                                              ; preds = %237
  %244 = load i32*, i32** %14, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  %246 = call i32 @fts5GetU16(i32* %245)
  store i32 %246, i32* %34, align 4
  %247 = load i32*, i32** %14, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 2
  %249 = call i32 @fts5GetU16(i32* %248)
  store i32 %249, i32* %30, align 4
  store i32 %249, i32* %31, align 4
  %250 = load i32, i32* %31, align 4
  %251 = load i32, i32* %13, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %243
  %254 = load i32*, i32** %14, align 8
  %255 = load i32, i32* %31, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %33, align 4
  %259 = call i64 @fts5GetVarint32(i32* %257, i32 %258)
  br label %267

260:                                              ; preds = %243
  %261 = load i32, i32* %31, align 4
  %262 = load i32, i32* %13, align 4
  %263 = icmp sgt i32 %261, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %260
  %265 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %265, i32* %16, align 4
  br label %441

266:                                              ; preds = %260
  br label %267

267:                                              ; preds = %266, %253
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %34, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = load i32, i32* %34, align 4
  store i32 %272, i32* %35, align 4
  br label %281

273:                                              ; preds = %268
  %274 = load i32, i32* %33, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %273
  %277 = load i32, i32* %33, align 4
  store i32 %277, i32* %35, align 4
  br label %280

278:                                              ; preds = %273
  %279 = load i32, i32* %30, align 4
  store i32 %279, i32* %35, align 4
  br label %280

280:                                              ; preds = %278, %276
  br label %281

281:                                              ; preds = %280, %271
  %282 = load i32, i32* %35, align 4
  %283 = load i32, i32* %13, align 4
  %284 = icmp sgt i32 %282, %283
  br i1 %284, label %285, label %287

285:                                              ; preds = %281
  %286 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %286, i32* %16, align 4
  br label %441

287:                                              ; preds = %281
  %288 = load i32*, i32** %14, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 4
  %290 = load i32, i32* %35, align 4
  %291 = sub nsw i32 %290, 4
  %292 = call i32 @fts5DecodePoslist(i32* %16, %struct.TYPE_16__* %15, i32* %289, i32 %291)
  %293 = load i32, i32* %33, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %287
  %296 = load i32, i32* %33, align 4
  br label %299

297:                                              ; preds = %287
  %298 = load i32, i32* %30, align 4
  br label %299

299:                                              ; preds = %297, %295
  %300 = phi i32 [ %296, %295 ], [ %298, %297 ]
  %301 = load i32, i32* %35, align 4
  %302 = sub nsw i32 %300, %301
  store i32 %302, i32* %36, align 4
  %303 = load i32, i32* %36, align 4
  %304 = load i32, i32* %35, align 4
  %305 = add nsw i32 %303, %304
  %306 = load i32, i32* %13, align 4
  %307 = icmp sgt i32 %305, %306
  br i1 %307, label %308, label %310

308:                                              ; preds = %299
  %309 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %309, i32* %16, align 4
  br label %441

310:                                              ; preds = %299
  %311 = load i32*, i32** %14, align 8
  %312 = load i32, i32* %35, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %36, align 4
  %316 = call i64 @fts5DecodeDoclist(i32* %16, %struct.TYPE_16__* %15, i32* %314, i32 %315)
  br label %317

317:                                              ; preds = %408, %310
  %318 = load i32, i32* %31, align 4
  %319 = load i32, i32* %13, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %325

321:                                              ; preds = %317
  %322 = load i32, i32* %16, align 4
  %323 = load i32, i32* @SQLITE_OK, align 4
  %324 = icmp eq i32 %322, %323
  br label %325

325:                                              ; preds = %321, %317
  %326 = phi i1 [ false, %317 ], [ %324, %321 ]
  br i1 %326, label %327, label %436

327:                                              ; preds = %325
  %328 = load i32, i32* %31, align 4
  %329 = load i32, i32* %30, align 4
  %330 = icmp eq i32 %328, %329
  %331 = zext i1 %330 to i32
  store i32 %331, i32* %37, align 4
  %332 = load i32*, i32** %14, align 8
  %333 = load i32, i32* %31, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %38, align 4
  %337 = call i64 @fts5GetVarint32(i32* %335, i32 %336)
  %338 = load i32, i32* %31, align 4
  %339 = sext i32 %338 to i64
  %340 = add nsw i64 %339, %337
  %341 = trunc i64 %340 to i32
  store i32 %341, i32* %31, align 4
  %342 = load i32, i32* %38, align 4
  %343 = load i32, i32* %32, align 4
  %344 = add nsw i32 %343, %342
  store i32 %344, i32* %32, align 4
  %345 = load i32, i32* %32, align 4
  store i32 %345, i32* %35, align 4
  %346 = load i32, i32* %31, align 4
  %347 = load i32, i32* %13, align 4
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %349, label %359

349:                                              ; preds = %327
  %350 = load i32*, i32** %14, align 8
  %351 = load i32, i32* %31, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  %354 = load i32, i32* %38, align 4
  %355 = call i64 @fts5GetVarint32(i32* %353, i32 %354)
  %356 = load i32, i32* %32, align 4
  %357 = load i32, i32* %38, align 4
  %358 = add nsw i32 %356, %357
  store i32 %358, i32* %39, align 4
  br label %361

359:                                              ; preds = %327
  %360 = load i32, i32* %30, align 4
  store i32 %360, i32* %39, align 4
  br label %361

361:                                              ; preds = %359, %349
  %362 = load i32, i32* %39, align 4
  %363 = load i32, i32* %30, align 4
  %364 = icmp sgt i32 %362, %363
  br i1 %364, label %365, label %367

365:                                              ; preds = %361
  %366 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %366, i32* %16, align 4
  br label %436

367:                                              ; preds = %361
  %368 = load i32, i32* %37, align 4
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %390

370:                                              ; preds = %367
  %371 = load i32*, i32** %14, align 8
  %372 = load i32, i32* %35, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  %375 = load i32, i32* %38, align 4
  %376 = call i64 @fts5GetVarint32(i32* %374, i32 %375)
  %377 = load i32, i32* %35, align 4
  %378 = sext i32 %377 to i64
  %379 = add nsw i64 %378, %376
  %380 = trunc i64 %379 to i32
  store i32 %380, i32* %35, align 4
  %381 = load i32, i32* %38, align 4
  %382 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 3
  %383 = load i32, i32* %382, align 8
  %384 = icmp sgt i32 %381, %383
  br i1 %384, label %385, label %387

385:                                              ; preds = %370
  %386 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %386, i32* %16, align 4
  br label %436

387:                                              ; preds = %370
  %388 = load i32, i32* %38, align 4
  %389 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 3
  store i32 %388, i32* %389, align 8
  br label %390

390:                                              ; preds = %387, %367
  %391 = load i32*, i32** %14, align 8
  %392 = load i32, i32* %35, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %38, align 4
  %396 = call i64 @fts5GetVarint32(i32* %394, i32 %395)
  %397 = load i32, i32* %35, align 4
  %398 = sext i32 %397 to i64
  %399 = add nsw i64 %398, %396
  %400 = trunc i64 %399 to i32
  store i32 %400, i32* %35, align 4
  %401 = load i32, i32* %35, align 4
  %402 = load i32, i32* %38, align 4
  %403 = add nsw i32 %401, %402
  %404 = load i32, i32* %13, align 4
  %405 = icmp sgt i32 %403, %404
  br i1 %405, label %406, label %408

406:                                              ; preds = %390
  %407 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %407, i32* %16, align 4
  br label %436

408:                                              ; preds = %390
  %409 = load i32, i32* %38, align 4
  %410 = load i32*, i32** %14, align 8
  %411 = load i32, i32* %35, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = call i32 @fts5BufferAppendBlob(i32* %16, %struct.TYPE_16__* %29, i32 %409, i32* %413)
  %415 = load i32, i32* %38, align 4
  %416 = load i32, i32* %35, align 4
  %417 = add nsw i32 %416, %415
  store i32 %417, i32* %35, align 4
  %418 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 3
  %419 = load i32, i32* %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 4
  %421 = load i64, i64* %420, align 8
  %422 = inttoptr i64 %421 to i8*
  %423 = call i32 @sqlite3Fts5BufferAppendPrintf(i32* %16, %struct.TYPE_16__* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %419, i8* %422)
  %424 = load i32*, i32** %14, align 8
  %425 = load i32, i32* %35, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = load i32, i32* %39, align 4
  %429 = load i32, i32* %35, align 4
  %430 = sub nsw i32 %428, %429
  %431 = call i64 @fts5DecodeDoclist(i32* %16, %struct.TYPE_16__* %15, i32* %427, i32 %430)
  %432 = load i32, i32* %35, align 4
  %433 = sext i32 %432 to i64
  %434 = add nsw i64 %433, %431
  %435 = trunc i64 %434 to i32
  store i32 %435, i32* %35, align 4
  br label %317

436:                                              ; preds = %406, %385, %365, %325
  %437 = call i32 @fts5BufferFree(%struct.TYPE_16__* %29)
  br label %438

438:                                              ; preds = %436, %235
  br label %439

439:                                              ; preds = %438, %127
  br label %440

440:                                              ; preds = %439, %111
  br label %441

441:                                              ; preds = %440, %308, %285, %264, %241, %73
  %442 = load i32*, i32** %14, align 8
  %443 = call i32 @sqlite3_free(i32* %442)
  %444 = load i32, i32* %16, align 4
  %445 = load i32, i32* @SQLITE_OK, align 4
  %446 = icmp eq i32 %444, %445
  br i1 %446, label %447, label %456

447:                                              ; preds = %441
  %448 = load i32*, i32** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 4
  %450 = load i64, i64* %449, align 8
  %451 = inttoptr i64 %450 to i8*
  %452 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 3
  %453 = load i32, i32* %452, align 8
  %454 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %455 = call i32 @sqlite3_result_text(i32* %448, i8* %451, i32 %453, i32 %454)
  br label %460

456:                                              ; preds = %441
  %457 = load i32*, i32** %4, align 8
  %458 = load i32, i32* %16, align 4
  %459 = call i32 @sqlite3_result_error_code(i32* %457, i32 %458)
  br label %460

460:                                              ; preds = %456, %447
  %461 = call i32 @fts5BufferFree(%struct.TYPE_16__* %15)
  ret void
}

declare dso_local i64 @sqlite3_user_data(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @UNUSED_PARAM(i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32* @sqlite3_value_blob(i32*) #1

declare dso_local i64 @sqlite3Fts5MallocZero(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @fts5DecodeRowid(i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fts5DebugRowid(i32*, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @fts5DlidxLvlNext(%struct.TYPE_16__*) #1

declare dso_local i32 @sqlite3Fts5BufferAppendPrintf(i32*, %struct.TYPE_16__*, i8*, i32, i8*) #1

declare dso_local i32 @fts5DecodeAverages(i32*, %struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @fts5DecodeStructure(i32*, %struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @fts5GetU16(i32*) #1

declare dso_local i64 @fts5GetVarint32(i32*, i32) #1

declare dso_local i32 @fts5DecodeRowidList(i32*, %struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @fts5BufferAppendBlob(i32*, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @fts5BufferFree(%struct.TYPE_16__*) #1

declare dso_local i32 @sqlite3Fts5BufferSet(i32*, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @fts5DecodePoslist(i32*, %struct.TYPE_16__*, i32*, i32) #1

declare dso_local i64 @fts5DecodeDoclist(i32*, %struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @sqlite3_free(i32*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_result_error_code(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

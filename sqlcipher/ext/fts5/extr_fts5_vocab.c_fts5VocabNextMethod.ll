; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_vocab.c_fts5VocabNextMethod.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_vocab.c_fts5VocabNextMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i32, i64*, i32, i32, i8*, i64*, %struct.TYPE_13__*, %struct.TYPE_17__*, %struct.TYPE_18__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32, i8* }
%struct.TYPE_15__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_VOCAB_INSTANCE = common dso_local global i32 0, align 4
@FTS5_DETAIL_FULL = common dso_local global i32 0, align 4
@FTS5_CORRUPT = common dso_local global i32 0, align 4
@FTS5_DETAIL_COLUMNS = common dso_local global i32 0, align 4
@FTS5_DETAIL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @fts5VocabNextMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5VocabNextMethod(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = bitcast %struct.TYPE_14__* %19 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %4, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %5, align 8
  %25 = load i32, i32* @SQLITE_OK, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 6
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FTS5_VOCAB_INSTANCE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = call i32 @fts5VocabInstanceNext(%struct.TYPE_16__* %43)
  store i32 %44, i32* %2, align 4
  br label %431

45:                                               ; preds = %1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 129
  br i1 %49, label %50, label %80

50:                                               ; preds = %45
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %74, %50
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %55
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %64, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %79

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %55

79:                                               ; preds = %72, %55
  br label %80

80:                                               ; preds = %79, %45
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 129
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %384

91:                                               ; preds = %85, %80
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 7
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = call i64 @sqlite3Fts5IterEof(%struct.TYPE_17__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  store i32 1, i32* %99, align 8
  br label %383

100:                                              ; preds = %91
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 7
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  %104 = call i8* @sqlite3Fts5IterTerm(%struct.TYPE_17__* %103, i32* %9)
  store i8* %104, i8** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = icmp sge i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %141

113:                                              ; preds = %100
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @MIN(i32 %114, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @memcmp(i8* %121, i8* %122, i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %113
  %128 = load i32, i32* %11, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %127
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130, %113
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  store i32 1, i32* %138, align 8
  %139 = load i32, i32* @SQLITE_OK, align 4
  store i32 %139, i32* %2, align 4
  br label %431

140:                                              ; preds = %130, %127
  br label %141

141:                                              ; preds = %140, %100
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 8
  %144 = load i32, i32* %9, align 4
  %145 = load i8*, i8** %8, align 8
  %146 = bitcast i8* %145 to i32*
  %147 = call i32 @sqlite3Fts5BufferSet(i32* %6, %struct.TYPE_18__* %143, i32 %144, i32* %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 5
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = mul i64 %152, 4
  %154 = trunc i64 %153 to i32
  %155 = call i32 @memset(i64* %150, i32 0, i32 %154)
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 4
  %162 = trunc i64 %161 to i32
  %163 = call i32 @memset(i64* %158, i32 0, i32 %162)
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 129
  br i1 %169, label %175, label %170

170:                                              ; preds = %141
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 128
  br label %175

175:                                              ; preds = %170, %141
  %176 = phi i1 [ true, %141 ], [ %174, %170 ]
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  br label %179

179:                                              ; preds = %381, %175
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* @SQLITE_OK, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %382

183:                                              ; preds = %179
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 6
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 7
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  store i32* %195, i32** %13, align 8
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 7
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  store i32 %200, i32* %14, align 4
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  switch i32 %203, label %321 [
    i32 128, label %204
    i32 129, label %229
  ]

204:                                              ; preds = %183
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* @FTS5_DETAIL_FULL, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %222

208:                                              ; preds = %204
  br label %209

209:                                              ; preds = %214, %208
  %210 = load i32*, i32** %13, align 8
  %211 = load i32, i32* %14, align 4
  %212 = call i32 @sqlite3Fts5PoslistNext64(i32* %210, i32 %211, i32* %16, i32* %15)
  %213 = icmp eq i32 0, %212
  br i1 %213, label %214, label %221

214:                                              ; preds = %209
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 5
  %217 = load i64*, i64** %216, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 0
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, 1
  store i64 %220, i64* %218, align 8
  br label %209

221:                                              ; preds = %209
  br label %222

222:                                              ; preds = %221, %204
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 1
  %225 = load i64*, i64** %224, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 0
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, 1
  store i64 %228, i64* %226, align 8
  br label %329

229:                                              ; preds = %183
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* @FTS5_DETAIL_FULL, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %271

233:                                              ; preds = %229
  store i32 -1, i32* %17, align 4
  br label %234

234:                                              ; preds = %261, %233
  %235 = load i32*, i32** %13, align 8
  %236 = load i32, i32* %14, align 4
  %237 = call i32 @sqlite3Fts5PoslistNext64(i32* %235, i32 %236, i32* %16, i32* %15)
  %238 = icmp eq i32 0, %237
  br i1 %238, label %239, label %270

239:                                              ; preds = %234
  %240 = load i32, i32* %15, align 4
  %241 = call i32 @FTS5_POS2COLUMN(i32 %240)
  store i32 %241, i32* %18, align 4
  %242 = load i32, i32* %17, align 4
  %243 = load i32, i32* %18, align 4
  %244 = icmp ne i32 %242, %243
  br i1 %244, label %245, label %261

245:                                              ; preds = %239
  %246 = load i32, i32* %18, align 4
  %247 = load i32, i32* %7, align 4
  %248 = icmp sge i32 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %250, i32* %6, align 4
  br label %270

251:                                              ; preds = %245
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 1
  %254 = load i64*, i64** %253, align 8
  %255 = load i32, i32* %18, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i64, i64* %254, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %258, 1
  store i64 %259, i64* %257, align 8
  %260 = load i32, i32* %18, align 4
  store i32 %260, i32* %17, align 4
  br label %261

261:                                              ; preds = %251, %239
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 5
  %264 = load i64*, i64** %263, align 8
  %265 = load i32, i32* %18, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %264, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 %268, 1
  store i64 %269, i64* %267, align 8
  br label %234

270:                                              ; preds = %249, %234
  br label %320

271:                                              ; preds = %229
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* @FTS5_DETAIL_COLUMNS, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %307

275:                                              ; preds = %271
  br label %276

276:                                              ; preds = %297, %275
  %277 = load i32*, i32** %13, align 8
  %278 = load i32, i32* %14, align 4
  %279 = call i32 @sqlite3Fts5PoslistNext64(i32* %277, i32 %278, i32* %16, i32* %15)
  %280 = icmp eq i32 0, %279
  br i1 %280, label %281, label %306

281:                                              ; preds = %276
  %282 = load i32, i32* %15, align 4
  %283 = icmp sge i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %281
  %285 = load i32, i32* %15, align 4
  %286 = load i32, i32* %7, align 4
  %287 = icmp slt i32 %285, %286
  br label %288

288:                                              ; preds = %284, %281
  %289 = phi i1 [ false, %281 ], [ %287, %284 ]
  %290 = zext i1 %289 to i32
  %291 = call i32 @assert_nc(i32 %290)
  %292 = load i32, i32* %15, align 4
  %293 = load i32, i32* %7, align 4
  %294 = icmp sge i32 %292, %293
  br i1 %294, label %295, label %297

295:                                              ; preds = %288
  %296 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %296, i32* %6, align 4
  br label %306

297:                                              ; preds = %288
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 1
  %300 = load i64*, i64** %299, align 8
  %301 = load i32, i32* %15, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i64, i64* %300, i64 %302
  %304 = load i64, i64* %303, align 8
  %305 = add nsw i64 %304, 1
  store i64 %305, i64* %303, align 8
  br label %276

306:                                              ; preds = %295, %276
  br label %319

307:                                              ; preds = %271
  %308 = load i32, i32* %12, align 4
  %309 = load i32, i32* @FTS5_DETAIL_NONE, align 4
  %310 = icmp eq i32 %308, %309
  %311 = zext i1 %310 to i32
  %312 = call i32 @assert(i32 %311)
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 1
  %315 = load i64*, i64** %314, align 8
  %316 = getelementptr inbounds i64, i64* %315, i64 0
  %317 = load i64, i64* %316, align 8
  %318 = add nsw i64 %317, 1
  store i64 %318, i64* %316, align 8
  br label %319

319:                                              ; preds = %307, %306
  br label %320

320:                                              ; preds = %319, %270
  br label %329

321:                                              ; preds = %183
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @FTS5_VOCAB_INSTANCE, align 4
  %326 = icmp eq i32 %324, %325
  %327 = zext i1 %326 to i32
  %328 = call i32 @assert(i32 %327)
  br label %329

329:                                              ; preds = %321, %320, %222
  %330 = load i32, i32* %6, align 4
  %331 = load i32, i32* @SQLITE_OK, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %338

333:                                              ; preds = %329
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 7
  %336 = load %struct.TYPE_17__*, %struct.TYPE_17__** %335, align 8
  %337 = call i32 @sqlite3Fts5IterNextScan(%struct.TYPE_17__* %336)
  store i32 %337, i32* %6, align 4
  br label %338

338:                                              ; preds = %333, %329
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @FTS5_VOCAB_INSTANCE, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %338
  br label %382

345:                                              ; preds = %338
  %346 = load i32, i32* %6, align 4
  %347 = load i32, i32* @SQLITE_OK, align 4
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %349, label %381

349:                                              ; preds = %345
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 7
  %352 = load %struct.TYPE_17__*, %struct.TYPE_17__** %351, align 8
  %353 = call i8* @sqlite3Fts5IterTerm(%struct.TYPE_17__* %352, i32* %9)
  store i8* %353, i8** %8, align 8
  %354 = load i32, i32* %9, align 4
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i32 0, i32 8
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = icmp ne i32 %354, %358
  br i1 %359, label %372, label %360

360:                                              ; preds = %349
  %361 = load i32, i32* %9, align 4
  %362 = icmp sgt i32 %361, 0
  br i1 %362, label %363, label %373

363:                                              ; preds = %360
  %364 = load i8*, i8** %8, align 8
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 8
  %367 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %366, i32 0, i32 1
  %368 = load i8*, i8** %367, align 8
  %369 = load i32, i32* %9, align 4
  %370 = call i32 @memcmp(i8* %364, i8* %368, i32 %369)
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %363, %349
  br label %382

373:                                              ; preds = %363, %360
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %374, i32 0, i32 7
  %376 = load %struct.TYPE_17__*, %struct.TYPE_17__** %375, align 8
  %377 = call i64 @sqlite3Fts5IterEof(%struct.TYPE_17__* %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %373
  br label %382

380:                                              ; preds = %373
  br label %381

381:                                              ; preds = %380, %345
  br label %179

382:                                              ; preds = %379, %372, %344, %179
  br label %383

383:                                              ; preds = %382, %97
  br label %384

384:                                              ; preds = %383, %85
  %385 = load i32, i32* %6, align 4
  %386 = load i32, i32* @SQLITE_OK, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %429

388:                                              ; preds = %384
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %429

393:                                              ; preds = %388
  %394 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = icmp eq i32 %396, 129
  br i1 %397, label %398, label %429

398:                                              ; preds = %393
  br label %399

399:                                              ; preds = %410, %398
  %400 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %400, i32 0, i32 1
  %402 = load i64*, i64** %401, align 8
  %403 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i64, i64* %402, i64 %406
  %408 = load i64, i64* %407, align 8
  %409 = icmp eq i64 %408, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %399
  %411 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %412, align 8
  br label %399

415:                                              ; preds = %399
  %416 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %419, i32 0, i32 6
  %421 = load %struct.TYPE_13__*, %struct.TYPE_13__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %421, i32 0, i32 0
  %423 = load %struct.TYPE_12__*, %struct.TYPE_12__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = icmp slt i32 %418, %425
  %427 = zext i1 %426 to i32
  %428 = call i32 @assert(i32 %427)
  br label %429

429:                                              ; preds = %415, %393, %388, %384
  %430 = load i32, i32* %6, align 4
  store i32 %430, i32* %2, align 4
  br label %431

431:                                              ; preds = %429, %136, %42
  %432 = load i32, i32* %2, align 4
  ret i32 %432
}

declare dso_local i32 @fts5VocabInstanceNext(%struct.TYPE_16__*) #1

declare dso_local i64 @sqlite3Fts5IterEof(%struct.TYPE_17__*) #1

declare dso_local i8* @sqlite3Fts5IterTerm(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3Fts5BufferSet(i32*, %struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @sqlite3Fts5PoslistNext64(i32*, i32, i32*, i32*) #1

declare dso_local i32 @FTS5_POS2COLUMN(i32) #1

declare dso_local i32 @assert_nc(i32) #1

declare dso_local i32 @sqlite3Fts5IterNextScan(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

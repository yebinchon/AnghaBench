; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3IncrmergeLoad.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3IncrmergeLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i8*, i32, %struct.TYPE_17__*, i8*, i8* }
%struct.TYPE_17__ = type { i8*, %struct.TYPE_15__, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i8*, i32 }

@SQL_SELECT_SEGDIR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@FTS_MAX_APPENDABLE_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i8*, i32, i8*, i32, %struct.TYPE_19__*)* @fts3IncrmergeLoad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3IncrmergeLoad(%struct.TYPE_20__* %0, i8* %1, i32 %2, i8* %3, i32 %4, %struct.TYPE_19__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_18__, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_17__*, align 8
  %29 = alloca %struct.TYPE_18__, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %13, align 8
  store i32* null, i32** %15, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %33 = load i32, i32* @SQL_SELECT_SEGDIR, align 4
  %34 = call i32 @fts3SqlStmt(%struct.TYPE_20__* %32, i32 %33, i32** %15, i32 0)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @SQLITE_OK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %370

38:                                               ; preds = %6
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %39 = load i32*, i32** %15, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr i8, i8* %40, i64 1
  %42 = call i32 @sqlite3_bind_int64(i32* %39, i32 1, i8* %41)
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @sqlite3_bind_int(i32* %43, i32 2, i32 %44)
  %46 = load i32*, i32** %15, align 8
  %47 = call i64 @sqlite3_step(i32* %46)
  %48 = load i64, i64* @SQLITE_ROW, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %38
  %51 = load i32*, i32** %15, align 8
  %52 = call i8* @sqlite3_column_int64(i32* %51, i32 1)
  store i8* %52, i8** %16, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = call i8* @sqlite3_column_int64(i32* %53, i32 2)
  store i8* %54, i8** %17, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = call i32 @fts3ReadEndBlockField(i32* %55, i32 3, i8** %18, i32* %57)
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %50
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %66, -1
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %63, %50
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** %15, align 8
  %79 = call i32 @sqlite3_column_bytes(i32* %78, i32 4)
  store i32 %79, i32* %20, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = call i8* @sqlite3_column_blob(i32* %80, i32 4)
  store i8* %81, i8** %19, align 8
  br label %85

82:                                               ; preds = %38
  %83 = load i32*, i32** %15, align 8
  %84 = call i32 @sqlite3_reset(i32* %83)
  store i32 %84, i32* %7, align 4
  br label %372

85:                                               ; preds = %70
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %87 = load i8*, i8** %18, align 8
  %88 = call i32 @fts3IsAppendable(%struct.TYPE_20__* %86, i8* %87, i32* %22)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @SQLITE_OK, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %139

92:                                               ; preds = %85
  %93 = load i32, i32* %22, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %139

95:                                               ; preds = %92
  store i8* null, i8** %23, align 8
  store i32 0, i32* %24, align 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = call i32 @sqlite3Fts3ReadBlock(%struct.TYPE_20__* %96, i8* %97, i8** %23, i32* %24, i32 0)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @SQLITE_OK, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %136

102:                                              ; preds = %95
  %103 = load i8*, i8** %23, align 8
  %104 = load i32, i32* %24, align 4
  %105 = call i32 @nodeReaderInit(%struct.TYPE_18__* %25, i8* %103, i32 %104)
  store i32 %105, i32* %14, align 4
  br label %106

106:                                              ; preds = %120, %102
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @SQLITE_OK, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi i1 [ false, %106 ], [ %113, %110 ]
  br i1 %115, label %116, label %122

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @assert(i64 %118)
  br label %120

120:                                              ; preds = %116
  %121 = call i32 @nodeReaderNext(%struct.TYPE_18__* %25)
  store i32 %121, i32* %14, align 4
  br label %106

122:                                              ; preds = %114
  %123 = load i8*, i8** %11, align 8
  %124 = load i32, i32* %12, align 4
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @fts3TermCmp(i8* %123, i32 %124, i8* %127, i32 %130)
  %132 = icmp sle i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %122
  store i32 0, i32* %22, align 4
  br label %134

134:                                              ; preds = %133, %122
  %135 = call i32 @nodeReaderRelease(%struct.TYPE_18__* %25)
  br label %136

136:                                              ; preds = %134, %95
  %137 = load i8*, i8** %23, align 8
  %138 = call i32 @sqlite3_free(i8* %137)
  br label %139

139:                                              ; preds = %136, %92, %85
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @SQLITE_OK, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %361

143:                                              ; preds = %139
  %144 = load i32, i32* %22, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %361

146:                                              ; preds = %143
  %147 = load i8*, i8** %19, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  store i32 %150, i32* %27, align 4
  %151 = load i8*, i8** %18, align 8
  %152 = load i8*, i8** %16, align 8
  %153 = ptrtoint i8* %151 to i64
  %154 = ptrtoint i8* %152 to i64
  %155 = sub i64 %153, %154
  %156 = add nsw i64 %155, 1
  %157 = trunc i64 %156 to i32
  %158 = load i32, i32* @FTS_MAX_APPENDABLE_HEIGHT, align 4
  %159 = sdiv i32 %157, %158
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load i8*, i8** %16, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 3
  store i8* %162, i8** %164, align 8
  %165 = load i8*, i8** %18, align 8
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 7
  store i8* %165, i8** %167, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 6
  store i8* %168, i8** %170, align 8
  %171 = load i32, i32* %10, align 4
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* %27, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %26, align 4
  br label %176

176:                                              ; preds = %198, %146
  %177 = load i32, i32* %26, align 4
  %178 = load i32, i32* @FTS_MAX_APPENDABLE_HEIGHT, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %201

180:                                              ; preds = %176
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 3
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* %26, align 4
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = mul nsw i32 %184, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr i8, i8* %183, i64 %189
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 5
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %192, align 8
  %194 = load i32, i32* %26, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  store i8* %190, i8** %197, align 8
  br label %198

198:                                              ; preds = %180
  %199 = load i32, i32* %26, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %26, align 4
  br label %176

201:                                              ; preds = %176
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 5
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %203, align 8
  %205 = load i32, i32* %27, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i64 %206
  store %struct.TYPE_17__* %207, %struct.TYPE_17__** %28, align 8
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 3
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %27, align 4
  %215 = mul nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr i8, i8* %210, i64 %216
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  store i8* %217, i8** %219, align 8
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 1
  %222 = load i32, i32* %20, align 4
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @MAX(i32 %222, i32 %225)
  %227 = call i32 @blobGrowBuffer(%struct.TYPE_15__* %221, i32 %226, i32* %14)
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* @SQLITE_OK, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %243

231:                                              ; preds = %201
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = load i8*, i8** %19, align 8
  %237 = load i32, i32* %20, align 4
  %238 = call i32 @memcpy(i8* %235, i8* %236, i32 %237)
  %239 = load i32, i32* %20, align 4
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 1
  store i32 %239, i32* %242, align 8
  br label %243

243:                                              ; preds = %231, %201
  %244 = load i32, i32* %27, align 4
  store i32 %244, i32* %26, align 4
  br label %245

245:                                              ; preds = %357, %243
  %246 = load i32, i32* %26, align 4
  %247 = icmp sge i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* @SQLITE_OK, align 4
  %251 = icmp eq i32 %249, %250
  br label %252

252:                                              ; preds = %248, %245
  %253 = phi i1 [ false, %245 ], [ %251, %248 ]
  br i1 %253, label %254, label %360

254:                                              ; preds = %252
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 5
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %256, align 8
  %258 = load i32, i32* %26, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i64 %259
  store %struct.TYPE_17__* %260, %struct.TYPE_17__** %28, align 8
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 0
  %264 = load i8*, i8** %263, align 8
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @nodeReaderInit(%struct.TYPE_18__* %29, i8* %264, i32 %268)
  store i32 %269, i32* %14, align 4
  br label %270

270:                                              ; preds = %280, %254
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %270
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* @SQLITE_OK, align 4
  %277 = icmp eq i32 %275, %276
  br label %278

278:                                              ; preds = %274, %270
  %279 = phi i1 [ false, %270 ], [ %277, %274 ]
  br i1 %279, label %280, label %282

280:                                              ; preds = %278
  %281 = call i32 @nodeReaderNext(%struct.TYPE_18__* %29)
  store i32 %281, i32* %14, align 4
  br label %270

282:                                              ; preds = %278
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @blobGrowBuffer(%struct.TYPE_15__* %284, i32 %287, i32* %14)
  %289 = load i32, i32* %14, align 4
  %290 = load i32, i32* @SQLITE_OK, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %355

292:                                              ; preds = %282
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 0
  %299 = load i8*, i8** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @memcpy(i8* %296, i8* %299, i32 %302)
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 1
  store i32 %306, i32* %309, align 8
  %310 = load i32, i32* %26, align 4
  %311 = icmp sgt i32 %310, 0
  br i1 %311, label %312, label %354

312:                                              ; preds = %292
  store i8* null, i8** %30, align 8
  store i32 0, i32* %31, align 4
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %313, i32 0, i32 5
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %314, align 8
  %316 = load i32, i32* %26, align 4
  %317 = sub nsw i32 %316, 1
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i64 %318
  store %struct.TYPE_17__* %319, %struct.TYPE_17__** %28, align 8
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %321 = load i8*, i8** %320, align 8
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 0
  store i8* %321, i8** %323, align 8
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %326 = load i8*, i8** %325, align 8
  %327 = call i32 @sqlite3Fts3ReadBlock(%struct.TYPE_20__* %324, i8* %326, i8** %30, i32* %31, i32 0)
  store i32 %327, i32* %14, align 4
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 1
  %330 = load i32, i32* %31, align 4
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @MAX(i32 %330, i32 %333)
  %335 = call i32 @blobGrowBuffer(%struct.TYPE_15__* %329, i32 %334, i32* %14)
  %336 = load i32, i32* %14, align 4
  %337 = load i32, i32* @SQLITE_OK, align 4
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %339, label %351

339:                                              ; preds = %312
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 0
  %343 = load i8*, i8** %342, align 8
  %344 = load i8*, i8** %30, align 8
  %345 = load i32, i32* %31, align 4
  %346 = call i32 @memcpy(i8* %343, i8* %344, i32 %345)
  %347 = load i32, i32* %31, align 4
  %348 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 1
  store i32 %347, i32* %350, align 8
  br label %351

351:                                              ; preds = %339, %312
  %352 = load i8*, i8** %30, align 8
  %353 = call i32 @sqlite3_free(i8* %352)
  br label %354

354:                                              ; preds = %351, %292
  br label %355

355:                                              ; preds = %354, %282
  %356 = call i32 @nodeReaderRelease(%struct.TYPE_18__* %29)
  br label %357

357:                                              ; preds = %355
  %358 = load i32, i32* %26, align 4
  %359 = add nsw i32 %358, -1
  store i32 %359, i32* %26, align 4
  br label %245

360:                                              ; preds = %252
  br label %361

361:                                              ; preds = %360, %143, %139
  %362 = load i32*, i32** %15, align 8
  %363 = call i32 @sqlite3_reset(i32* %362)
  store i32 %363, i32* %21, align 4
  %364 = load i32, i32* %14, align 4
  %365 = load i32, i32* @SQLITE_OK, align 4
  %366 = icmp eq i32 %364, %365
  br i1 %366, label %367, label %369

367:                                              ; preds = %361
  %368 = load i32, i32* %21, align 4
  store i32 %368, i32* %14, align 4
  br label %369

369:                                              ; preds = %367, %361
  br label %370

370:                                              ; preds = %369, %6
  %371 = load i32, i32* %14, align 4
  store i32 %371, i32* %7, align 4
  br label %372

372:                                              ; preds = %370, %82
  %373 = load i32, i32* %7, align 4
  ret i32 %373
}

declare dso_local i32 @fts3SqlStmt(%struct.TYPE_20__*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i8*) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i8* @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @fts3ReadEndBlockField(i32*, i32, i8**, i32*) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @fts3IsAppendable(%struct.TYPE_20__*, i8*, i32*) #1

declare dso_local i32 @sqlite3Fts3ReadBlock(%struct.TYPE_20__*, i8*, i8**, i32*, i32) #1

declare dso_local i32 @nodeReaderInit(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @nodeReaderNext(%struct.TYPE_18__*) #1

declare dso_local i64 @fts3TermCmp(i8*, i32, i8*, i32) #1

declare dso_local i32 @nodeReaderRelease(%struct.TYPE_18__*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @blobGrowBuffer(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

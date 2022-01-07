; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_hash.c_sqlite3Fts5HashWrite.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_hash.c_sqlite3Fts5HashWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, i32*, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, %struct.TYPE_10__* }

@FTS5_DETAIL_FULL = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@FTS5_DETAIL_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5HashWrite(%struct.TYPE_11__* %0, i64 %1, i32 %2, i32 %3, i8 signext %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_10__*, align 8
  %27 = alloca %struct.TYPE_10__**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8 %4, i8* %13, align 1
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %19, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FTS5_DETAIL_FULL, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %20, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i8, i8* %13, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8*, i8** %14, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @fts5HashKey2(i32 %36, i32 %38, i32* %40, i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %44, align 8
  %46 = load i32, i32* %16, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %45, i64 %47
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %17, align 8
  br label %50

50:                                               ; preds = %78, %7
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %52 = icmp ne %struct.TYPE_10__* %51, null
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %55 = call i8* @fts5EntryKey(%struct.TYPE_10__* %54)
  store i8* %55, i8** %21, align 8
  %56 = load i8*, i8** %21, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = load i8, i8* %13, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %53
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i8*, i8** %21, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8*, i8** %14, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i64 @memcmp(i8* %71, i8* %72, i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %82

77:                                               ; preds = %69, %63, %53
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 9
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %17, align 8
  br label %50

82:                                               ; preds = %76, %50
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %84 = icmp eq %struct.TYPE_10__* %83, null
  br i1 %84, label %85, label %245

85:                                               ; preds = %82
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = add i64 56, %88
  %90 = add i64 %89, 1
  %91 = add i64 %90, 64
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %23, align 4
  %93 = load i32, i32* %23, align 4
  %94 = icmp slt i32 %93, 128
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i32 128, i32* %23, align 4
  br label %96

96:                                               ; preds = %95, %85
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, 2
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp sge i32 %100, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %96
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %107 = call i32 @fts5HashResize(%struct.TYPE_11__* %106)
  store i32 %107, i32* %24, align 4
  %108 = load i32, i32* %24, align 4
  %109 = load i32, i32* @SQLITE_OK, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* %24, align 4
  store i32 %112, i32* %8, align 4
  br label %482

113:                                              ; preds = %105
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i8, i8* %13, align 1
  %118 = sext i8 %117 to i32
  %119 = load i8*, i8** %14, align 8
  %120 = bitcast i8* %119 to i32*
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @fts5HashKey2(i32 %116, i32 %118, i32* %120, i32 %121)
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %113, %96
  %124 = load i32, i32* %23, align 4
  %125 = call i64 @sqlite3_malloc64(i32 %124)
  %126 = inttoptr i64 %125 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %126, %struct.TYPE_10__** %17, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %128 = icmp ne %struct.TYPE_10__* %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %130, i32* %8, align 4
  br label %482

131:                                              ; preds = %123
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %133 = call i32 @memset(%struct.TYPE_10__* %132, i32 0, i32 56)
  %134 = load i32, i32* %23, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %138 = call i8* @fts5EntryKey(%struct.TYPE_10__* %137)
  store i8* %138, i8** %22, align 8
  %139 = load i8, i8* %13, align 1
  %140 = load i8*, i8** %22, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  store i8 %139, i8* %141, align 1
  %142 = load i8*, i8** %22, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8*, i8** %14, align 8
  %145 = load i32, i32* %15, align 4
  %146 = call i32 @memcpy(i8* %143, i8* %144, i32 %145)
  %147 = load i32, i32* %16, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i8*, i8** %22, align 8
  %152 = bitcast i8* %151 to i32*
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, 1
  %155 = call i32 @fts5HashKey(i32 %150, i32* %152, i32 %154)
  %156 = icmp eq i32 %147, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load i32, i32* %15, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load i8*, i8** %22, align 8
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %162, i64 %165
  store i8 0, i8* %166, align 1
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %167, 1
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = add i64 %170, 56
  %172 = trunc i64 %171 to i32
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 4
  %177 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %176, align 8
  %178 = load i32, i32* %16, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %177, i64 %179
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 9
  store %struct.TYPE_10__* %181, %struct.TYPE_10__** %183, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 4
  %187 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %186, align 8
  %188 = load i32, i32* %16, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %187, i64 %189
  store %struct.TYPE_10__* %184, %struct.TYPE_10__** %190, align 8
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %196 = bitcast %struct.TYPE_10__* %195 to i32*
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %196, i64 %200
  %202 = load i64, i64* %10, align 8
  %203 = trunc i64 %202 to i32
  %204 = call i64 @sqlite3Fts5PutVarint(i32* %201, i32 %203)
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %208, %204
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %206, align 8
  %211 = load i64, i64* %10, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 3
  store i64 %211, i64* %213, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 4
  store i64 %217, i64* %219, align 8
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @FTS5_DETAIL_NONE, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %239

225:                                              ; preds = %131
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 8
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @FTS5_DETAIL_FULL, align 8
  %234 = icmp eq i64 %232, %233
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i32 0, i32 -1
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 5
  store i32 %236, i32* %238, align 8
  br label %239

239:                                              ; preds = %225, %131
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %19, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %19, align 4
  br label %297

245:                                              ; preds = %82
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = sub nsw i32 %248, %251
  %253 = icmp slt i32 %252, 22
  br i1 %253, label %254, label %291

254:                                              ; preds = %245
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = mul nsw i32 %257, 2
  store i32 %258, i32* %25, align 4
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %260 = load i32, i32* %25, align 4
  %261 = call i64 @sqlite3_realloc64(%struct.TYPE_10__* %259, i32 %260)
  %262 = inttoptr i64 %261 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %262, %struct.TYPE_10__** %26, align 8
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %264 = icmp eq %struct.TYPE_10__* %263, null
  br i1 %264, label %265, label %267

265:                                              ; preds = %254
  %266 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %266, i32* %8, align 4
  br label %482

267:                                              ; preds = %254
  %268 = load i32, i32* %25, align 4
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 4
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 4
  %273 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %272, align 8
  %274 = load i32, i32* %16, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %273, i64 %275
  store %struct.TYPE_10__** %276, %struct.TYPE_10__*** %27, align 8
  br label %277

277:                                              ; preds = %283, %267
  %278 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %27, align 8
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %278, align 8
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %281 = icmp ne %struct.TYPE_10__* %279, %280
  br i1 %281, label %282, label %287

282:                                              ; preds = %277
  br label %283

283:                                              ; preds = %282
  %284 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %27, align 8
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 9
  store %struct.TYPE_10__** %286, %struct.TYPE_10__*** %27, align 8
  br label %277

287:                                              ; preds = %277
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %289 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %27, align 8
  store %struct.TYPE_10__* %288, %struct.TYPE_10__** %289, align 8
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  store %struct.TYPE_10__* %290, %struct.TYPE_10__** %17, align 8
  br label %291

291:                                              ; preds = %287, %245
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* %19, align 4
  %296 = sub nsw i32 %295, %294
  store i32 %296, i32* %19, align 4
  br label %297

297:                                              ; preds = %291, %239
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = sub nsw i32 %300, %303
  %305 = icmp sge i32 %304, 22
  %306 = zext i1 %305 to i32
  %307 = call i32 @assert(i32 %306)
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %309 = bitcast %struct.TYPE_10__* %308 to i32*
  store i32* %309, i32** %18, align 8
  %310 = load i64, i64* %10, align 8
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 3
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %310, %313
  br i1 %314, label %315, label %369

315:                                              ; preds = %297
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %318 = call i32 @fts5HashAddPoslistSize(%struct.TYPE_11__* %316, %struct.TYPE_10__* %317, i32 0)
  %319 = load i32*, i32** %18, align 8
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %319, i64 %323
  %325 = load i64, i64* %10, align 8
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 3
  %328 = load i64, i64* %327, align 8
  %329 = sub nsw i64 %325, %328
  %330 = trunc i64 %329 to i32
  %331 = call i64 @sqlite3Fts5PutVarint(i32* %324, i32 %330)
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = sext i32 %334 to i64
  %336 = add nsw i64 %335, %331
  %337 = trunc i64 %336 to i32
  store i32 %337, i32* %333, align 8
  %338 = load i64, i64* %10, align 8
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 3
  store i64 %338, i64* %340, align 8
  store i32 1, i32* %20, align 4
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = sext i32 %343 to i64
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 4
  store i64 %344, i64* %346, align 8
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @FTS5_DETAIL_NONE, align 8
  %351 = icmp ne i64 %349, %350
  br i1 %351, label %352, label %368

352:                                              ; preds = %315
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %354, align 8
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @FTS5_DETAIL_FULL, align 8
  %361 = icmp eq i64 %359, %360
  %362 = zext i1 %361 to i64
  %363 = select i1 %361, i32 0, i32 -1
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i32 0, i32 5
  store i32 %363, i32* %365, align 8
  %366 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 6
  store i32 0, i32* %367, align 4
  br label %368

368:                                              ; preds = %352, %315
  br label %369

369:                                              ; preds = %368, %297
  %370 = load i32, i32* %11, align 4
  %371 = icmp sge i32 %370, 0
  br i1 %371, label %372, label %466

372:                                              ; preds = %369
  %373 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @FTS5_DETAIL_NONE, align 8
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %381

378:                                              ; preds = %372
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 7
  store i32 1, i32* %380, align 8
  br label %465

381:                                              ; preds = %372
  %382 = load i32, i32* %11, align 4
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 5
  %385 = load i32, i32* %384, align 8
  %386 = icmp sge i32 %382, %385
  %387 = zext i1 %386 to i32
  %388 = call i32 @assert(i32 %387)
  %389 = load i32, i32* %11, align 4
  %390 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i32 0, i32 5
  %392 = load i32, i32* %391, align 8
  %393 = icmp ne i32 %389, %392
  br i1 %393, label %394, label %438

394:                                              ; preds = %381
  %395 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @FTS5_DETAIL_FULL, align 8
  %399 = icmp eq i64 %397, %398
  br i1 %399, label %400, label %430

400:                                              ; preds = %394
  %401 = load i32*, i32** %18, align 8
  %402 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 8
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %403, align 8
  %406 = sext i32 %404 to i64
  %407 = getelementptr inbounds i32, i32* %401, i64 %406
  store i32 1, i32* %407, align 4
  %408 = load i32*, i32** %18, align 8
  %409 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %410 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %408, i64 %412
  %414 = load i32, i32* %11, align 4
  %415 = call i64 @sqlite3Fts5PutVarint(i32* %413, i32 %414)
  %416 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 8
  %419 = sext i32 %418 to i64
  %420 = add nsw i64 %419, %415
  %421 = trunc i64 %420 to i32
  store i32 %421, i32* %417, align 8
  %422 = load i32, i32* %11, align 4
  %423 = sext i32 %422 to i64
  %424 = inttoptr i64 %423 to i8*
  %425 = ptrtoint i8* %424 to i32
  %426 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %427 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %426, i32 0, i32 5
  store i32 %425, i32* %427, align 8
  %428 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %429 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %428, i32 0, i32 6
  store i32 0, i32* %429, align 4
  br label %437

430:                                              ; preds = %394
  store i32 1, i32* %20, align 4
  %431 = load i32, i32* %11, align 4
  store i32 %431, i32* %12, align 4
  %432 = sext i32 %431 to i64
  %433 = inttoptr i64 %432 to i8*
  %434 = ptrtoint i8* %433 to i32
  %435 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %436 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %435, i32 0, i32 5
  store i32 %434, i32* %436, align 8
  br label %437

437:                                              ; preds = %430, %400
  br label %438

438:                                              ; preds = %437, %381
  %439 = load i32, i32* %20, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %464

441:                                              ; preds = %438
  %442 = load i32*, i32** %18, align 8
  %443 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %444 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 8
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %442, i64 %446
  %448 = load i32, i32* %12, align 4
  %449 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %450 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %449, i32 0, i32 6
  %451 = load i32, i32* %450, align 4
  %452 = sub nsw i32 %448, %451
  %453 = add nsw i32 %452, 2
  %454 = call i64 @sqlite3Fts5PutVarint(i32* %447, i32 %453)
  %455 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %456 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 8
  %458 = sext i32 %457 to i64
  %459 = add nsw i64 %458, %454
  %460 = trunc i64 %459 to i32
  store i32 %460, i32* %456, align 8
  %461 = load i32, i32* %12, align 4
  %462 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %463 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %462, i32 0, i32 6
  store i32 %461, i32* %463, align 4
  br label %464

464:                                              ; preds = %441, %438
  br label %465

465:                                              ; preds = %464, %378
  br label %469

466:                                              ; preds = %369
  %467 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %468 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %467, i32 0, i32 8
  store i32 1, i32* %468, align 4
  br label %469

469:                                              ; preds = %466, %465
  %470 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* %19, align 4
  %474 = add nsw i32 %473, %472
  store i32 %474, i32* %19, align 4
  %475 = load i32, i32* %19, align 4
  %476 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %477 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %476, i32 0, i32 3
  %478 = load i32*, i32** %477, align 8
  %479 = load i32, i32* %478, align 4
  %480 = add nsw i32 %479, %475
  store i32 %480, i32* %478, align 4
  %481 = load i32, i32* @SQLITE_OK, align 4
  store i32 %481, i32* %8, align 4
  br label %482

482:                                              ; preds = %469, %265, %129, %111
  %483 = load i32, i32* %8, align 4
  ret i32 %483
}

declare dso_local i32 @fts5HashKey2(i32, i32, i32*, i32) #1

declare dso_local i8* @fts5EntryKey(%struct.TYPE_10__*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @fts5HashResize(%struct.TYPE_11__*) #1

declare dso_local i64 @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5HashKey(i32, i32*, i32) #1

declare dso_local i64 @sqlite3Fts5PutVarint(i32*, i32) #1

declare dso_local i64 @sqlite3_realloc64(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @fts5HashAddPoslistSize(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

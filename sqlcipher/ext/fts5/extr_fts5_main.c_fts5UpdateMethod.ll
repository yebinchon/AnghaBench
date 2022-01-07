; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5UpdateMethod.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5UpdateMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i32, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { %struct.TYPE_18__*, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i32, i64, i32*, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_INTEGER = common dso_local global i32 0, align 4
@SQLITE_NULL = common dso_local global i32 0, align 4
@FTS5_CONTENT_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@SQLITE_ABORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot %s contentless fts5 table: %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"DELETE from\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_MISMATCH = common dso_local global i32 0, align 4
@SQLITE_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32**, i32*)* @fts5UpdateMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5UpdateMethod(%struct.TYPE_16__* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = bitcast %struct.TYPE_16__* %20 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %9, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %10, align 8
  %26 = load i32, i32* @SQLITE_OK, align 4
  store i32 %26, i32* %12, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %50, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 2, %46
  %48 = add nsw i32 %47, 2
  %49 = icmp eq i32 %43, %48
  br label %50

50:                                               ; preds = %42, %4
  %51 = phi i1 [ true, %4 ], [ %49, %42 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32**, i32*** %7, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @sqlite3_value_type(i32* %56)
  %58 = load i32, i32* @SQLITE_INTEGER, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %50
  %61 = load i32**, i32*** %7, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @sqlite3_value_type(i32* %63)
  %65 = load i32, i32* @SQLITE_NULL, align 4
  %66 = icmp eq i32 %64, %65
  br label %67

67:                                               ; preds = %60, %50
  %68 = phi i1 [ true, %50 ], [ %66, %60 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  store i32* %83, i32** %88, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %90 = call i32 @fts5TripCursors(%struct.TYPE_17__* %89)
  %91 = load i32**, i32*** %7, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @sqlite3_value_type(i32* %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @SQLITE_NULL, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %148

98:                                               ; preds = %67
  %99 = load i32**, i32*** %7, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 2, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %99, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @sqlite3_value_type(i32* %106)
  %108 = load i32, i32* @SQLITE_NULL, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %148

110:                                              ; preds = %98
  %111 = load i32**, i32*** %7, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 2, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %111, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = call i64 @sqlite3_value_text(i32* %118)
  %120 = inttoptr i64 %119 to i8*
  store i8* %120, i8** %13, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @FTS5_CONTENT_NORMAL, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %110
  %127 = load i8*, i8** %13, align 8
  %128 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %127)
  %129 = icmp eq i64 0, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %132 = load i32**, i32*** %7, align 8
  %133 = call i32 @fts5SpecialDelete(%struct.TYPE_17__* %131, i32** %132)
  store i32 %133, i32* %12, align 4
  br label %147

134:                                              ; preds = %126, %110
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = load i32**, i32*** %7, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 2, %140
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %137, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @fts5SpecialInsert(%struct.TYPE_17__* %135, i8* %136, i32* %145)
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %134, %130
  br label %342

148:                                              ; preds = %98, %67
  %149 = load i32, i32* @SQLITE_ABORT, align 4
  store i32 %149, i32* %14, align 4
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @FTS5_CONTENT_NORMAL, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @sqlite3_vtab_on_conflict(i32 %158)
  store i32 %159, i32* %14, align 4
  br label %160

160:                                              ; preds = %155, %148
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* @SQLITE_INTEGER, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @SQLITE_NULL, align 4
  %167 = icmp eq i32 %165, %166
  br label %168

168:                                              ; preds = %164, %160
  %169 = phi i1 [ true, %160 ], [ %167, %164 ]
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 1
  br i1 %173, label %178, label %174

174:                                              ; preds = %168
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* @SQLITE_INTEGER, align 4
  %177 = icmp eq i32 %175, %176
  br label %178

178:                                              ; preds = %174, %168
  %179 = phi i1 [ true, %168 ], [ %177, %174 ]
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @SQLITE_INTEGER, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %203

185:                                              ; preds = %178
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %187 = call i64 @fts5IsContentless(%struct.TYPE_17__* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %185
  %190 = load i32, i32* %6, align 4
  %191 = icmp sgt i32 %190, 1
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %193, i32 %196)
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  store i32 %197, i32* %201, align 8
  %202 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %202, i32* %12, align 4
  br label %341

203:                                              ; preds = %185, %178
  %204 = load i32, i32* %6, align 4
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %206, label %216

206:                                              ; preds = %203
  %207 = load i32**, i32*** %7, align 8
  %208 = getelementptr inbounds i32*, i32** %207, i64 0
  %209 = load i32*, i32** %208, align 8
  %210 = call i64 @sqlite3_value_int64(i32* %209)
  store i64 %210, i64* %15, align 8
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load i64, i64* %15, align 8
  %215 = call i32 @sqlite3Fts5StorageDelete(i32 %213, i64 %214, i32 0)
  store i32 %215, i32* %12, align 4
  br label %340

216:                                              ; preds = %203
  %217 = load i32**, i32*** %7, align 8
  %218 = getelementptr inbounds i32*, i32** %217, i64 1
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @sqlite3_value_numeric_type(i32* %219)
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* @SQLITE_INTEGER, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %216
  %225 = load i32, i32* %16, align 4
  %226 = load i32, i32* @SQLITE_NULL, align 4
  %227 = icmp ne i32 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %224
  %229 = load i32, i32* @SQLITE_MISMATCH, align 4
  store i32 %229, i32* %12, align 4
  br label %339

230:                                              ; preds = %224, %216
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* @SQLITE_INTEGER, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %257

234:                                              ; preds = %230
  %235 = load i32, i32* %14, align 4
  %236 = load i32, i32* @SQLITE_REPLACE, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %252

238:                                              ; preds = %234
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* @SQLITE_INTEGER, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %252

242:                                              ; preds = %238
  %243 = load i32**, i32*** %7, align 8
  %244 = getelementptr inbounds i32*, i32** %243, i64 1
  %245 = load i32*, i32** %244, align 8
  %246 = call i64 @sqlite3_value_int64(i32* %245)
  store i64 %246, i64* %17, align 8
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load i64, i64* %17, align 8
  %251 = call i32 @sqlite3Fts5StorageDelete(i32 %249, i64 %250, i32 0)
  store i32 %251, i32* %12, align 4
  br label %252

252:                                              ; preds = %242, %238, %234
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %254 = load i32**, i32*** %7, align 8
  %255 = load i32*, i32** %8, align 8
  %256 = call i32 @fts5StorageInsert(i32* %12, %struct.TYPE_17__* %253, i32** %254, i32* %255)
  br label %338

257:                                              ; preds = %230
  %258 = load i32**, i32*** %7, align 8
  %259 = getelementptr inbounds i32*, i32** %258, i64 0
  %260 = load i32*, i32** %259, align 8
  %261 = call i64 @sqlite3_value_int64(i32* %260)
  store i64 %261, i64* %18, align 8
  %262 = load i32**, i32*** %7, align 8
  %263 = getelementptr inbounds i32*, i32** %262, i64 1
  %264 = load i32*, i32** %263, align 8
  %265 = call i64 @sqlite3_value_int64(i32* %264)
  store i64 %265, i64* %19, align 8
  %266 = load i32, i32* %16, align 4
  %267 = load i32, i32* @SQLITE_INTEGER, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %327

269:                                              ; preds = %257
  %270 = load i64, i64* %18, align 8
  %271 = load i64, i64* %19, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %273, label %327

273:                                              ; preds = %269
  %274 = load i32, i32* %14, align 4
  %275 = load i32, i32* @SQLITE_REPLACE, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %297

277:                                              ; preds = %273
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load i64, i64* %18, align 8
  %282 = call i32 @sqlite3Fts5StorageDelete(i32 %280, i64 %281, i32 0)
  store i32 %282, i32* %12, align 4
  %283 = load i32, i32* %12, align 4
  %284 = load i32, i32* @SQLITE_OK, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %292

286:                                              ; preds = %277
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = load i64, i64* %19, align 8
  %291 = call i32 @sqlite3Fts5StorageDelete(i32 %289, i64 %290, i32 0)
  store i32 %291, i32* %12, align 4
  br label %292

292:                                              ; preds = %286, %277
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %294 = load i32**, i32*** %7, align 8
  %295 = load i32*, i32** %8, align 8
  %296 = call i32 @fts5StorageInsert(i32* %12, %struct.TYPE_17__* %293, i32** %294, i32* %295)
  br label %326

297:                                              ; preds = %273
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = load i32**, i32*** %7, align 8
  %302 = load i32*, i32** %8, align 8
  %303 = call i32 @sqlite3Fts5StorageContentInsert(i32 %300, i32** %301, i32* %302)
  store i32 %303, i32* %12, align 4
  %304 = load i32, i32* %12, align 4
  %305 = load i32, i32* @SQLITE_OK, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %313

307:                                              ; preds = %297
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = load i64, i64* %18, align 8
  %312 = call i32 @sqlite3Fts5StorageDelete(i32 %310, i64 %311, i32 0)
  store i32 %312, i32* %12, align 4
  br label %313

313:                                              ; preds = %307, %297
  %314 = load i32, i32* %12, align 4
  %315 = load i32, i32* @SQLITE_OK, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %325

317:                                              ; preds = %313
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = load i32**, i32*** %7, align 8
  %322 = load i32*, i32** %8, align 8
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @sqlite3Fts5StorageIndexInsert(i32 %320, i32** %321, i32 %323)
  store i32 %324, i32* %12, align 4
  br label %325

325:                                              ; preds = %317, %313
  br label %326

326:                                              ; preds = %325, %292
  br label %337

327:                                              ; preds = %269, %257
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = load i64, i64* %18, align 8
  %332 = call i32 @sqlite3Fts5StorageDelete(i32 %330, i64 %331, i32 0)
  store i32 %332, i32* %12, align 4
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %334 = load i32**, i32*** %7, align 8
  %335 = load i32*, i32** %8, align 8
  %336 = call i32 @fts5StorageInsert(i32* %12, %struct.TYPE_17__* %333, i32** %334, i32* %335)
  br label %337

337:                                              ; preds = %327, %326
  br label %338

338:                                              ; preds = %337, %252
  br label %339

339:                                              ; preds = %338, %228
  br label %340

340:                                              ; preds = %339, %206
  br label %341

341:                                              ; preds = %340, %189
  br label %342

342:                                              ; preds = %341, %147
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_18__*, %struct.TYPE_18__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %346, i32 0, i32 2
  store i32* null, i32** %347, align 8
  %348 = load i32, i32* %12, align 4
  ret i32 %348
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local i32 @fts5TripCursors(%struct.TYPE_17__*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @fts5SpecialDelete(%struct.TYPE_17__*, i32**) #1

declare dso_local i32 @fts5SpecialInsert(%struct.TYPE_17__*, i8*, i32*) #1

declare dso_local i32 @sqlite3_vtab_on_conflict(i32) #1

declare dso_local i64 @fts5IsContentless(%struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3_mprintf(i8*, i8*, i32) #1

declare dso_local i64 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @sqlite3Fts5StorageDelete(i32, i64, i32) #1

declare dso_local i32 @sqlite3_value_numeric_type(i32*) #1

declare dso_local i32 @fts5StorageInsert(i32*, %struct.TYPE_17__*, i32**, i32*) #1

declare dso_local i32 @sqlite3Fts5StorageContentInsert(i32, i32**, i32*) #1

declare dso_local i32 @sqlite3Fts5StorageIndexInsert(i32, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

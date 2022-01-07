; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyUpdate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32*, i32, i32*, i64 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_LOCKED_VTAB = common dso_local global i32 0, align 4
@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"_shape does not contain a valid polygon\00", align 1
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_REPLACE = common dso_local global i64 0, align 8
@SQLITE_TEXT = common dso_local global i64 0, align 8
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32, i32**, i32*)* @geopolyUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geopolyUpdate(%struct.TYPE_18__* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = bitcast %struct.TYPE_18__* %25 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %10, align 8
  %27 = load i32, i32* @SQLITE_OK, align 4
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %17, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @SQLITE_LOCKED_VTAB, align 4
  store i32 %33, i32* %5, align 4
  br label %329

34:                                               ; preds = %4
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %36 = call i32 @rtreeReference(%struct.TYPE_20__* %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp sge i32 %37, 1
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32**, i32*** %8, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @sqlite3_value_type(i32* %43)
  %45 = load i64, i64* @SQLITE_NULL, align 8
  %46 = icmp ne i64 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %34
  %51 = load i32**, i32*** %8, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @sqlite3_value_int64(i32* %53)
  br label %56

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55, %50
  %57 = phi i32 [ %54, %50 ], [ 0, %55 ]
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32**, i32*** %8, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @sqlite3_value_type(i32* %63)
  %65 = load i64, i64* @SQLITE_NULL, align 8
  %66 = icmp ne i64 %64, %65
  br label %67

67:                                               ; preds = %60, %56
  %68 = phi i1 [ false, %56 ], [ %66, %60 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32**, i32*** %8, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @sqlite3_value_int64(i32* %75)
  br label %78

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %72
  %79 = phi i32 [ %76, %72 ], [ 0, %77 ]
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %161

84:                                               ; preds = %78
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i32**, i32*** %8, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 2
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @sqlite3_value_nochange(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %161

97:                                               ; preds = %93, %87, %84
  %98 = load i32**, i32*** %8, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @geopolyBBox(i32 0, i32* %100, i32 %102, i32* %11)
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %97
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @SQLITE_ERROR, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %106
  br label %325

115:                                              ; preds = %97
  store i32 1, i32* %17, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %160

118:                                              ; preds = %115
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %160

125:                                              ; preds = %121, %118
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @sqlite3_bind_int64(i32* %128, i32 1, i32 %130)
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @sqlite3_step(i32* %134)
  store i32 %135, i32* %18, align 4
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @sqlite3_reset(i32* %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* @SQLITE_ROW, align 4
  %141 = load i32, i32* %18, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %125
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @sqlite3_vtab_on_conflict(i32 %146)
  %148 = load i64, i64* @SQLITE_REPLACE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %143
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @rtreeDeleteRowid(%struct.TYPE_20__* %151, i32 %153)
  store i32 %154, i32* %11, align 4
  br label %158

155:                                              ; preds = %143
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %157 = call i32 @rtreeConstraintError(%struct.TYPE_20__* %156, i32 0)
  store i32 %157, i32* %11, align 4
  br label %158

158:                                              ; preds = %155, %150
  br label %159

159:                                              ; preds = %158, %125
  br label %160

160:                                              ; preds = %159, %121, %115
  br label %161

161:                                              ; preds = %160, %93, %78
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @SQLITE_OK, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %161
  %166 = load i32, i32* %7, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %17, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %168
  %172 = load i32, i32* %14, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171, %165
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @rtreeDeleteRowid(%struct.TYPE_20__* %175, i32 %176)
  store i32 %177, i32* %11, align 4
  br label %178

178:                                              ; preds = %174, %171, %168, %161
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* @SQLITE_OK, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %225

182:                                              ; preds = %178
  %183 = load i32, i32* %7, align 4
  %184 = icmp sgt i32 %183, 1
  br i1 %184, label %185, label %225

185:                                              ; preds = %182
  %186 = load i32, i32* %17, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %225

188:                                              ; preds = %185
  store i32* null, i32** %19, align 8
  %189 = load i32, i32* %16, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %188
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %194 = call i32 @rtreeNewRowid(%struct.TYPE_20__* %192, i32* %193)
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %191, %188
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %9, align 8
  store i32 %197, i32* %198, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* @SQLITE_OK, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %195
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %204 = call i32 @ChooseLeaf(%struct.TYPE_20__* %203, %struct.TYPE_19__* %12, i32 0, i32** %19)
  store i32 %204, i32* %11, align 4
  br label %205

205:                                              ; preds = %202, %195
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* @SQLITE_OK, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %224

209:                                              ; preds = %205
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  store i32 -1, i32* %211, align 8
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %213 = load i32*, i32** %19, align 8
  %214 = call i32 @rtreeInsertCell(%struct.TYPE_20__* %212, i32* %213, %struct.TYPE_19__* %12, i32 0)
  store i32 %214, i32* %11, align 4
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %216 = load i32*, i32** %19, align 8
  %217 = call i32 @nodeRelease(%struct.TYPE_20__* %215, i32* %216)
  store i32 %217, i32* %20, align 4
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* @SQLITE_OK, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %209
  %222 = load i32, i32* %20, align 4
  store i32 %222, i32* %11, align 4
  br label %223

223:                                              ; preds = %221, %209
  br label %224

224:                                              ; preds = %223, %205
  br label %225

225:                                              ; preds = %224, %185, %182, %178
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* @SQLITE_OK, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %324

229:                                              ; preds = %225
  %230 = load i32, i32* %7, align 4
  %231 = icmp sgt i32 %230, 1
  br i1 %231, label %232, label %324

232:                                              ; preds = %229
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  store i32* %235, i32** %21, align 8
  store i32 0, i32* %23, align 4
  %236 = load i32*, i32** %21, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @sqlite3_bind_int64(i32* %236, i32 1, i32 %238)
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp sge i32 %242, 1
  %244 = zext i1 %243 to i32
  %245 = call i32 @assert(i32 %244)
  %246 = load i32**, i32*** %8, align 8
  %247 = getelementptr inbounds i32*, i32** %246, i64 2
  %248 = load i32*, i32** %247, align 8
  %249 = call i64 @sqlite3_value_nochange(i32* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %232
  %252 = load i32*, i32** %21, align 8
  %253 = call i32 @sqlite3_bind_null(i32* %252, i32 2)
  br label %292

254:                                              ; preds = %232
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %24, align 8
  %255 = load i32**, i32*** %8, align 8
  %256 = getelementptr inbounds i32*, i32** %255, i64 2
  %257 = load i32*, i32** %256, align 8
  %258 = call i64 @sqlite3_value_type(i32* %257)
  %259 = load i64, i64* @SQLITE_TEXT, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %283

261:                                              ; preds = %254
  %262 = load i32**, i32*** %8, align 8
  %263 = getelementptr inbounds i32*, i32** %262, i64 2
  %264 = load i32*, i32** %263, align 8
  %265 = call %struct.TYPE_21__* @geopolyFuncParam(i32 0, i32* %264, i32* %11)
  store %struct.TYPE_21__* %265, %struct.TYPE_21__** %24, align 8
  %266 = icmp ne %struct.TYPE_21__* %265, null
  br i1 %266, label %267, label %283

267:                                              ; preds = %261
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* @SQLITE_OK, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %283

271:                                              ; preds = %267
  %272 = load i32*, i32** %21, align 8
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = mul nsw i32 8, %278
  %280 = add nsw i32 4, %279
  %281 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %282 = call i32 @sqlite3_bind_blob(i32* %272, i32 2, i32 %275, i32 %280, i32 %281)
  br label %289

283:                                              ; preds = %267, %261, %254
  %284 = load i32*, i32** %21, align 8
  %285 = load i32**, i32*** %8, align 8
  %286 = getelementptr inbounds i32*, i32** %285, i64 2
  %287 = load i32*, i32** %286, align 8
  %288 = call i32 @sqlite3_bind_value(i32* %284, i32 2, i32* %287)
  br label %289

289:                                              ; preds = %283, %271
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %291 = call i32 @sqlite3_free(%struct.TYPE_21__* %290)
  store i32 1, i32* %23, align 4
  br label %292

292:                                              ; preds = %289, %251
  store i32 1, i32* %22, align 4
  br label %293

293:                                              ; preds = %312, %292
  %294 = load i32, i32* %22, align 4
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = icmp slt i32 %294, %297
  br i1 %298, label %299, label %315

299:                                              ; preds = %293
  %300 = load i32, i32* %23, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %23, align 4
  %302 = load i32*, i32** %21, align 8
  %303 = load i32, i32* %22, align 4
  %304 = add nsw i32 %303, 2
  %305 = load i32**, i32*** %8, align 8
  %306 = load i32, i32* %22, align 4
  %307 = add nsw i32 %306, 2
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32*, i32** %305, i64 %308
  %310 = load i32*, i32** %309, align 8
  %311 = call i32 @sqlite3_bind_value(i32* %302, i32 %304, i32* %310)
  br label %312

312:                                              ; preds = %299
  %313 = load i32, i32* %22, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %22, align 4
  br label %293

315:                                              ; preds = %293
  %316 = load i32, i32* %23, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %315
  %319 = load i32*, i32** %21, align 8
  %320 = call i32 @sqlite3_step(i32* %319)
  %321 = load i32*, i32** %21, align 8
  %322 = call i32 @sqlite3_reset(i32* %321)
  store i32 %322, i32* %11, align 4
  br label %323

323:                                              ; preds = %318, %315
  br label %324

324:                                              ; preds = %323, %229, %225
  br label %325

325:                                              ; preds = %324, %114
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %327 = call i32 @rtreeRelease(%struct.TYPE_20__* %326)
  %328 = load i32, i32* %11, align 4
  store i32 %328, i32* %5, align 4
  br label %329

329:                                              ; preds = %325, %32
  %330 = load i32, i32* %5, align 4
  ret i32 %330
}

declare dso_local i32 @rtreeReference(%struct.TYPE_20__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i64 @sqlite3_value_nochange(i32*) #1

declare dso_local i32 @geopolyBBox(i32, i32*, i32, i32*) #1

declare dso_local i32 @sqlite3_mprintf(i8*) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i64 @sqlite3_vtab_on_conflict(i32) #1

declare dso_local i32 @rtreeDeleteRowid(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @rtreeConstraintError(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @rtreeNewRowid(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @ChooseLeaf(%struct.TYPE_20__*, %struct.TYPE_19__*, i32, i32**) #1

declare dso_local i32 @rtreeInsertCell(%struct.TYPE_20__*, i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @nodeRelease(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @sqlite3_bind_null(i32*, i32) #1

declare dso_local %struct.TYPE_21__* @geopolyFuncParam(i32, i32*, i32*) #1

declare dso_local i32 @sqlite3_bind_blob(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3_bind_value(i32*, i32, i32*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_21__*) #1

declare dso_local i32 @rtreeRelease(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

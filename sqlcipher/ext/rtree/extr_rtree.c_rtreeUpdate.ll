; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeUpdate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32, i32, i32*, i32, i32*, i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_LOCKED_VTAB = common dso_local global i32 0, align 4
@RTREE_COORD_REAL32 = common dso_local global i64 0, align 8
@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_REPLACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32**, i64*)* @rtreeUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtreeUpdate(i32* %0, i32 %1, i32** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i64* %3, i64** %9, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %10, align 8
  %23 = load i32, i32* @SQLITE_OK, align 4
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @SQLITE_LOCKED_VTAB, align 4
  store i32 %29, i32* %5, align 4
  br label %351

30:                                               ; preds = %4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %32 = call i32 @rtreeReference(%struct.TYPE_16__* %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp sge i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %242

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %41, 4
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %48, %40
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RTREE_COORD_REAL32, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %117

58:                                               ; preds = %52
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %113, %58
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %116

63:                                               ; preds = %59
  %64 = load i32**, i32*** %8, align 8
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %64, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = call i64 @rtreeValueDown(i32* %69)
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  store i64 %70, i64* %76, align 8
  %77 = load i32**, i32*** %8, align 8
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %77, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = call i64 @rtreeValueUp(i32* %82)
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i64 %83, i64* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %97, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %63
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  %111 = call i32 @rtreeConstraintError(%struct.TYPE_16__* %108, i32 %110)
  store i32 %111, i32* %11, align 4
  br label %347

112:                                              ; preds = %63
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 2
  store i32 %115, i32* %14, align 4
  br label %59

116:                                              ; preds = %59
  br label %178

117:                                              ; preds = %52
  store i32 0, i32* %14, align 4
  br label %118

118:                                              ; preds = %174, %117
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %177

122:                                              ; preds = %118
  %123 = load i32**, i32*** %8, align 8
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 3
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %123, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = call i8* @sqlite3_value_int(i32* %128)
  %130 = ptrtoint i8* %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  store i64 %130, i64* %136, align 8
  %137 = load i32**, i32*** %8, align 8
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %137, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = call i8* @sqlite3_value_int(i32* %142)
  %144 = ptrtoint i8* %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  store i64 %144, i64* %151, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp sgt i64 %158, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %122
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  %172 = call i32 @rtreeConstraintError(%struct.TYPE_16__* %169, i32 %171)
  store i32 %172, i32* %11, align 4
  br label %347

173:                                              ; preds = %122
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, 2
  store i32 %176, i32* %14, align 4
  br label %118

177:                                              ; preds = %118
  br label %178

178:                                              ; preds = %177, %116
  %179 = load i32**, i32*** %8, align 8
  %180 = getelementptr inbounds i32*, i32** %179, i64 2
  %181 = load i32*, i32** %180, align 8
  %182 = call i64 @sqlite3_value_type(i32* %181)
  %183 = load i64, i64* @SQLITE_NULL, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %241

185:                                              ; preds = %178
  %186 = load i32**, i32*** %8, align 8
  %187 = getelementptr inbounds i32*, i32** %186, i64 2
  %188 = load i32*, i32** %187, align 8
  %189 = call i64 @sqlite3_value_int64(i32* %188)
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i64 %189, i64* %190, align 8
  %191 = load i32**, i32*** %8, align 8
  %192 = getelementptr inbounds i32*, i32** %191, i64 0
  %193 = load i32*, i32** %192, align 8
  %194 = call i64 @sqlite3_value_type(i32* %193)
  %195 = load i64, i64* @SQLITE_NULL, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %205, label %197

197:                                              ; preds = %185
  %198 = load i32**, i32*** %8, align 8
  %199 = getelementptr inbounds i32*, i32** %198, i64 0
  %200 = load i32*, i32** %199, align 8
  %201 = call i64 @sqlite3_value_int64(i32* %200)
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %201, %203
  br i1 %204, label %205, label %240

205:                                              ; preds = %197, %185
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 6
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @sqlite3_bind_int64(i32* %208, i32 1, i64 %210)
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 6
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @sqlite3_step(i32* %214)
  store i32 %215, i32* %16, align 4
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 6
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @sqlite3_reset(i32* %218)
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* @SQLITE_ROW, align 4
  %221 = load i32, i32* %16, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %239

223:                                              ; preds = %205
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = call i64 @sqlite3_vtab_on_conflict(i32 %226)
  %228 = load i64, i64* @SQLITE_REPLACE, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %223
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @rtreeDeleteRowid(%struct.TYPE_16__* %231, i64 %233)
  store i32 %234, i32* %11, align 4
  br label %238

235:                                              ; preds = %223
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %237 = call i32 @rtreeConstraintError(%struct.TYPE_16__* %236, i32 0)
  store i32 %237, i32* %11, align 4
  br label %347

238:                                              ; preds = %230
  br label %239

239:                                              ; preds = %238, %205
  br label %240

240:                                              ; preds = %239, %197
  store i32 1, i32* %13, align 4
  br label %241

241:                                              ; preds = %240, %178
  br label %242

242:                                              ; preds = %241, %30
  %243 = load i32**, i32*** %8, align 8
  %244 = getelementptr inbounds i32*, i32** %243, i64 0
  %245 = load i32*, i32** %244, align 8
  %246 = call i64 @sqlite3_value_type(i32* %245)
  %247 = load i64, i64* @SQLITE_NULL, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %256

249:                                              ; preds = %242
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %251 = load i32**, i32*** %8, align 8
  %252 = getelementptr inbounds i32*, i32** %251, i64 0
  %253 = load i32*, i32** %252, align 8
  %254 = call i64 @sqlite3_value_int64(i32* %253)
  %255 = call i32 @rtreeDeleteRowid(%struct.TYPE_16__* %250, i64 %254)
  store i32 %255, i32* %11, align 4
  br label %256

256:                                              ; preds = %249, %242
  %257 = load i32, i32* %11, align 4
  %258 = load i32, i32* @SQLITE_OK, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %346

260:                                              ; preds = %256
  %261 = load i32, i32* %7, align 4
  %262 = icmp sgt i32 %261, 1
  br i1 %262, label %263, label %346

263:                                              ; preds = %260
  store i32* null, i32** %17, align 8
  %264 = load i32, i32* %13, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %263
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %269 = call i32 @rtreeNewRowid(%struct.TYPE_16__* %267, i64* %268)
  store i32 %269, i32* %11, align 4
  br label %270

270:                                              ; preds = %266, %263
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64*, i64** %9, align 8
  store i64 %272, i64* %273, align 8
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* @SQLITE_OK, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %270
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %279 = call i32 @ChooseLeaf(%struct.TYPE_16__* %278, %struct.TYPE_15__* %12, i32 0, i32** %17)
  store i32 %279, i32* %11, align 4
  br label %280

280:                                              ; preds = %277, %270
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* @SQLITE_OK, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %299

284:                                              ; preds = %280
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 2
  store i32 -1, i32* %286, align 8
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %288 = load i32*, i32** %17, align 8
  %289 = call i32 @rtreeInsertCell(%struct.TYPE_16__* %287, i32* %288, %struct.TYPE_15__* %12, i32 0)
  store i32 %289, i32* %11, align 4
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %291 = load i32*, i32** %17, align 8
  %292 = call i32 @nodeRelease(%struct.TYPE_16__* %290, i32* %291)
  store i32 %292, i32* %18, align 4
  %293 = load i32, i32* %11, align 4
  %294 = load i32, i32* @SQLITE_OK, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %284
  %297 = load i32, i32* %18, align 4
  store i32 %297, i32* %11, align 4
  br label %298

298:                                              ; preds = %296, %284
  br label %299

299:                                              ; preds = %298, %280
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* @SQLITE_OK, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %345

303:                                              ; preds = %299
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %345

308:                                              ; preds = %303
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 4
  %311 = load i32*, i32** %310, align 8
  store i32* %311, i32** %19, align 8
  %312 = load i32*, i32** %19, align 8
  %313 = load i64*, i64** %9, align 8
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @sqlite3_bind_int64(i32* %312, i32 1, i64 %314)
  store i32 0, i32* %20, align 4
  br label %316

316:                                              ; preds = %337, %308
  %317 = load i32, i32* %20, align 4
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = icmp slt i32 %317, %320
  br i1 %321, label %322, label %340

322:                                              ; preds = %316
  %323 = load i32*, i32** %19, align 8
  %324 = load i32, i32* %20, align 4
  %325 = add nsw i32 %324, 2
  %326 = load i32**, i32*** %8, align 8
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = add nsw i32 %329, 3
  %331 = load i32, i32* %20, align 4
  %332 = add nsw i32 %330, %331
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32*, i32** %326, i64 %333
  %335 = load i32*, i32** %334, align 8
  %336 = call i32 @sqlite3_bind_value(i32* %323, i32 %325, i32* %335)
  br label %337

337:                                              ; preds = %322
  %338 = load i32, i32* %20, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %20, align 4
  br label %316

340:                                              ; preds = %316
  %341 = load i32*, i32** %19, align 8
  %342 = call i32 @sqlite3_step(i32* %341)
  %343 = load i32*, i32** %19, align 8
  %344 = call i32 @sqlite3_reset(i32* %343)
  store i32 %344, i32* %11, align 4
  br label %345

345:                                              ; preds = %340, %303, %299
  br label %346

346:                                              ; preds = %345, %260, %256
  br label %347

347:                                              ; preds = %346, %235, %168, %107
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %349 = call i32 @rtreeRelease(%struct.TYPE_16__* %348)
  %350 = load i32, i32* %11, align 4
  store i32 %350, i32* %5, align 4
  br label %351

351:                                              ; preds = %347, %28
  %352 = load i32, i32* %5, align 4
  ret i32 %352
}

declare dso_local i32 @rtreeReference(%struct.TYPE_16__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @rtreeValueDown(i32*) #1

declare dso_local i64 @rtreeValueUp(i32*) #1

declare dso_local i32 @rtreeConstraintError(%struct.TYPE_16__*, i32) #1

declare dso_local i8* @sqlite3_value_int(i32*) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i64 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i64) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i64 @sqlite3_vtab_on_conflict(i32) #1

declare dso_local i32 @rtreeDeleteRowid(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @rtreeNewRowid(%struct.TYPE_16__*, i64*) #1

declare dso_local i32 @ChooseLeaf(%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32**) #1

declare dso_local i32 @rtreeInsertCell(%struct.TYPE_16__*, i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @nodeRelease(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @sqlite3_bind_value(i32*, i32, i32*) #1

declare dso_local i32 @rtreeRelease(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

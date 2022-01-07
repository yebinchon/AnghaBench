; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5MultiIterNew.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5MultiIterNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i64, i64 }
%struct.TYPE_39__ = type { i32, i64, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32, i32* }
%struct.TYPE_41__ = type { i32, i32, i32, i32 (%struct.TYPE_41__*, %struct.TYPE_40__*)*, %struct.TYPE_37__*, %struct.TYPE_40__*, %struct.TYPE_36__, i32* }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_40__ = type { i32 (%struct.TYPE_42__*, %struct.TYPE_40__*, i32)* }
%struct.TYPE_36__ = type { i64 }

@SQLITE_OK = common dso_local global i64 0, align 8
@FTS5INDEX_QUERY_DESC = common dso_local global i32 0, align 4
@FTS5INDEX_QUERY_SKIPEMPTY = common dso_local global i32 0, align 4
@FTS5INDEX_QUERY_NOOUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_42__*, %struct.TYPE_39__*, i32, i32*, i32*, i32, i32, i32, %struct.TYPE_41__**)* @fts5MultiIterNew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5MultiIterNew(%struct.TYPE_42__* %0, %struct.TYPE_39__* %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, %struct.TYPE_41__** %8) #0 {
  %10 = alloca %struct.TYPE_42__*, align 8
  %11 = alloca %struct.TYPE_39__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_41__**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_38__*, align 8
  %23 = alloca %struct.TYPE_41__*, align 8
  %24 = alloca %struct.TYPE_38__*, align 8
  %25 = alloca %struct.TYPE_40__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_40__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_40__*, align 8
  %30 = alloca %struct.TYPE_40__*, align 8
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %10, align 8
  store %struct.TYPE_39__* %1, %struct.TYPE_39__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.TYPE_41__** %8, %struct.TYPE_41__*** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %31 = load i32*, i32** %14, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %9
  %34 = load i32, i32* %15, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %9
  %37 = load i32, i32* %16, align 4
  %38 = icmp slt i32 %37, 0
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i1 [ true, %33 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SQLITE_OK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %83

48:                                               ; preds = %39
  %49 = load i32, i32* %16, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %56 = call i32 @fts5StructureCountSegments(%struct.TYPE_39__* %55)
  %57 = icmp eq i32 %54, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %19, align 4
  %63 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = load i32, i32* %19, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %19, align 4
  br label %82

71:                                               ; preds = %48
  %72 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_38__*, %struct.TYPE_38__** %73, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @MIN(i32 %79, i32 %80)
  store i32 %81, i32* %19, align 4
  br label %82

82:                                               ; preds = %71, %51
  br label %83

83:                                               ; preds = %82, %39
  %84 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %85 = load i32, i32* %19, align 4
  %86 = call %struct.TYPE_41__* @fts5MultiIterAlloc(%struct.TYPE_42__* %84, i32 %85)
  store %struct.TYPE_41__* %86, %struct.TYPE_41__** %23, align 8
  %87 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %18, align 8
  store %struct.TYPE_41__* %86, %struct.TYPE_41__** %87, align 8
  %88 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %89 = icmp eq %struct.TYPE_41__* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %342

91:                                               ; preds = %83
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @FTS5INDEX_QUERY_DESC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 0, %94
  %96 = zext i1 %95 to i32
  %97 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %98 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @FTS5INDEX_QUERY_SKIPEMPTY, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 0, %101
  %103 = zext i1 %102 to i32
  %104 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %105 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i32*, i32** %13, align 8
  %107 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %108 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %107, i32 0, i32 7
  store i32* %106, i32** %108, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @FTS5INDEX_QUERY_NOOUTPUT, align 4
  %111 = and i32 %109, %110
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %91
  %114 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %117 = call i32 @fts5IterSetOutputCb(i64* %115, %struct.TYPE_41__* %116)
  br label %118

118:                                              ; preds = %113, %91
  %119 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SQLITE_OK, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %246

124:                                              ; preds = %118
  %125 = load i32, i32* %16, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %208

127:                                              ; preds = %124
  %128 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_38__*, %struct.TYPE_38__** %129, align 8
  %131 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %130, i64 %133
  store %struct.TYPE_38__* %134, %struct.TYPE_38__** %24, align 8
  %135 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %127
  %140 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %141 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %140, i32 0, i32 5
  %142 = load %struct.TYPE_40__*, %struct.TYPE_40__** %141, align 8
  %143 = load i32, i32* %20, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %20, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %142, i64 %145
  store %struct.TYPE_40__* %146, %struct.TYPE_40__** %25, align 8
  %147 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %148 = load i32*, i32** %14, align 8
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load %struct.TYPE_40__*, %struct.TYPE_40__** %25, align 8
  %152 = call i32 @fts5SegIterHashInit(%struct.TYPE_42__* %147, i32* %148, i32 %149, i32 %150, %struct.TYPE_40__* %151)
  br label %153

153:                                              ; preds = %139, %127
  %154 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_38__*, %struct.TYPE_38__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %156, i64 0
  store %struct.TYPE_38__* %157, %struct.TYPE_38__** %22, align 8
  br label %158

158:                                              ; preds = %204, %153
  %159 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %160 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %161 = icmp ult %struct.TYPE_38__* %159, %160
  br i1 %161, label %162, label %207

162:                                              ; preds = %158
  %163 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %164 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sub nsw i32 %165, 1
  store i32 %166, i32* %21, align 4
  br label %167

167:                                              ; preds = %200, %162
  %168 = load i32, i32* %21, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %203

170:                                              ; preds = %167
  %171 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %172 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %21, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32* %176, i32** %26, align 8
  %177 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %178 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %177, i32 0, i32 5
  %179 = load %struct.TYPE_40__*, %struct.TYPE_40__** %178, align 8
  %180 = load i32, i32* %20, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %20, align 4
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %179, i64 %182
  store %struct.TYPE_40__* %183, %struct.TYPE_40__** %27, align 8
  %184 = load i32*, i32** %14, align 8
  %185 = icmp eq i32* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %170
  %187 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %188 = load i32*, i32** %26, align 8
  %189 = load %struct.TYPE_40__*, %struct.TYPE_40__** %27, align 8
  %190 = call i32 @fts5SegIterInit(%struct.TYPE_42__* %187, i32* %188, %struct.TYPE_40__* %189)
  br label %199

191:                                              ; preds = %170
  %192 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %193 = load i32*, i32** %14, align 8
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load i32*, i32** %26, align 8
  %197 = load %struct.TYPE_40__*, %struct.TYPE_40__** %27, align 8
  %198 = call i32 @fts5SegIterSeekInit(%struct.TYPE_42__* %192, i32* %193, i32 %194, i32 %195, i32* %196, %struct.TYPE_40__* %197)
  br label %199

199:                                              ; preds = %191, %186
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %21, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %21, align 4
  br label %167

203:                                              ; preds = %167
  br label %204

204:                                              ; preds = %203
  %205 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %206 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %205, i32 1
  store %struct.TYPE_38__* %206, %struct.TYPE_38__** %22, align 8
  br label %158

207:                                              ; preds = %158
  br label %240

208:                                              ; preds = %124
  %209 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_38__*, %struct.TYPE_38__** %210, align 8
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %211, i64 %213
  store %struct.TYPE_38__* %214, %struct.TYPE_38__** %22, align 8
  %215 = load i32, i32* %19, align 4
  %216 = sub nsw i32 %215, 1
  store i32 %216, i32* %21, align 4
  br label %217

217:                                              ; preds = %236, %208
  %218 = load i32, i32* %21, align 4
  %219 = icmp sge i32 %218, 0
  br i1 %219, label %220, label %239

220:                                              ; preds = %217
  %221 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %222 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %223 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %21, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %229 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %228, i32 0, i32 5
  %230 = load %struct.TYPE_40__*, %struct.TYPE_40__** %229, align 8
  %231 = load i32, i32* %20, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %20, align 4
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %230, i64 %233
  %235 = call i32 @fts5SegIterInit(%struct.TYPE_42__* %221, i32* %227, %struct.TYPE_40__* %234)
  br label %236

236:                                              ; preds = %220
  %237 = load i32, i32* %21, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %21, align 4
  br label %217

239:                                              ; preds = %217
  br label %240

240:                                              ; preds = %239, %207
  %241 = load i32, i32* %20, align 4
  %242 = load i32, i32* %19, align 4
  %243 = icmp eq i32 %241, %242
  %244 = zext i1 %243 to i32
  %245 = call i32 @assert(i32 %244)
  br label %246

246:                                              ; preds = %240, %118
  %247 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @SQLITE_OK, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %338

252:                                              ; preds = %246
  %253 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %254 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = sub nsw i32 %255, 1
  store i32 %256, i32* %20, align 4
  br label %257

257:                                              ; preds = %291, %252
  %258 = load i32, i32* %20, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %294

260:                                              ; preds = %257
  %261 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %262 = load i32, i32* %20, align 4
  %263 = call i32 @fts5MultiIterDoCompare(%struct.TYPE_41__* %261, i32 %262)
  store i32 %263, i32* %28, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %290

265:                                              ; preds = %260
  %266 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %267 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %266, i32 0, i32 5
  %268 = load %struct.TYPE_40__*, %struct.TYPE_40__** %267, align 8
  %269 = load i32, i32* %28, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %268, i64 %270
  store %struct.TYPE_40__* %271, %struct.TYPE_40__** %29, align 8
  %272 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @SQLITE_OK, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %284

277:                                              ; preds = %265
  %278 = load %struct.TYPE_40__*, %struct.TYPE_40__** %29, align 8
  %279 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %278, i32 0, i32 0
  %280 = load i32 (%struct.TYPE_42__*, %struct.TYPE_40__*, i32)*, i32 (%struct.TYPE_42__*, %struct.TYPE_40__*, i32)** %279, align 8
  %281 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %282 = load %struct.TYPE_40__*, %struct.TYPE_40__** %29, align 8
  %283 = call i32 %280(%struct.TYPE_42__* %281, %struct.TYPE_40__* %282, i32 0)
  br label %284

284:                                              ; preds = %277, %265
  %285 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %286 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %287 = load i32, i32* %28, align 4
  %288 = load i32, i32* %20, align 4
  %289 = call i32 @fts5MultiIterAdvanced(%struct.TYPE_42__* %285, %struct.TYPE_41__* %286, i32 %287, i32 %288)
  br label %290

290:                                              ; preds = %284, %260
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %20, align 4
  %293 = add nsw i32 %292, -1
  store i32 %293, i32* %20, align 4
  br label %257

294:                                              ; preds = %257
  %295 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %296 = call i32 @fts5MultiIterSetEof(%struct.TYPE_41__* %295)
  %297 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %298 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %299 = call i32 @fts5AssertMultiIterSetup(%struct.TYPE_42__* %297, %struct.TYPE_41__* %298)
  %300 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %301 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %313

304:                                              ; preds = %294
  %305 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %306 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %307 = call i64 @fts5MultiIterIsEmpty(%struct.TYPE_42__* %305, %struct.TYPE_41__* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %304
  %310 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %311 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %312 = call i32 @fts5MultiIterNext(%struct.TYPE_42__* %310, %struct.TYPE_41__* %311, i32 0, i32 0)
  br label %337

313:                                              ; preds = %304, %294
  %314 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %315 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %314, i32 0, i32 6
  %316 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %319, label %336

319:                                              ; preds = %313
  %320 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %321 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %320, i32 0, i32 5
  %322 = load %struct.TYPE_40__*, %struct.TYPE_40__** %321, align 8
  %323 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %324 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %323, i32 0, i32 4
  %325 = load %struct.TYPE_37__*, %struct.TYPE_37__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %325, i64 1
  %327 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %322, i64 %328
  store %struct.TYPE_40__* %329, %struct.TYPE_40__** %30, align 8
  %330 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %331 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %330, i32 0, i32 3
  %332 = load i32 (%struct.TYPE_41__*, %struct.TYPE_40__*)*, i32 (%struct.TYPE_41__*, %struct.TYPE_40__*)** %331, align 8
  %333 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %334 = load %struct.TYPE_40__*, %struct.TYPE_40__** %30, align 8
  %335 = call i32 %332(%struct.TYPE_41__* %333, %struct.TYPE_40__* %334)
  br label %336

336:                                              ; preds = %319, %313
  br label %337

337:                                              ; preds = %336, %309
  br label %342

338:                                              ; preds = %246
  %339 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %340 = call i32 @fts5MultiIterFree(%struct.TYPE_41__* %339)
  %341 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %18, align 8
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %341, align 8
  br label %342

342:                                              ; preds = %90, %338, %337
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5StructureCountSegments(%struct.TYPE_39__*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local %struct.TYPE_41__* @fts5MultiIterAlloc(%struct.TYPE_42__*, i32) #1

declare dso_local i32 @fts5IterSetOutputCb(i64*, %struct.TYPE_41__*) #1

declare dso_local i32 @fts5SegIterHashInit(%struct.TYPE_42__*, i32*, i32, i32, %struct.TYPE_40__*) #1

declare dso_local i32 @fts5SegIterInit(%struct.TYPE_42__*, i32*, %struct.TYPE_40__*) #1

declare dso_local i32 @fts5SegIterSeekInit(%struct.TYPE_42__*, i32*, i32, i32, i32*, %struct.TYPE_40__*) #1

declare dso_local i32 @fts5MultiIterDoCompare(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @fts5MultiIterAdvanced(%struct.TYPE_42__*, %struct.TYPE_41__*, i32, i32) #1

declare dso_local i32 @fts5MultiIterSetEof(%struct.TYPE_41__*) #1

declare dso_local i32 @fts5AssertMultiIterSetup(%struct.TYPE_42__*, %struct.TYPE_41__*) #1

declare dso_local i64 @fts5MultiIterIsEmpty(%struct.TYPE_42__*, %struct.TYPE_41__*) #1

declare dso_local i32 @fts5MultiIterNext(%struct.TYPE_42__*, %struct.TYPE_41__*, i32, i32) #1

declare dso_local i32 @fts5MultiIterFree(%struct.TYPE_41__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

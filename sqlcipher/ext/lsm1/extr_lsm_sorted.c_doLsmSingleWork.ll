; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_doLsmSingleWork.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_doLsmSingleWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i64, i64, %struct.TYPE_23__*, %struct.TYPE_19__* }
%struct.TYPE_23__ = type { %struct.TYPE_21__*, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4
@TREE_OLD = common dso_local global i32 0, align 4
@LSM_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32, i32, i32, i32*, i32*)* @doLsmSingleWork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doLsmSingleWork(%struct.TYPE_22__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %28 = load i32, i32* @LSM_OK, align 4
  store i32 %28, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %38 = icmp eq %struct.TYPE_23__* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %42 = call i32 @lsmBeginWork(%struct.TYPE_22__* %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @LSM_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %6
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %7, align 4
  br label %300

48:                                               ; preds = %6
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %50, align 8
  store %struct.TYPE_23__* %51, %struct.TYPE_23__** %14, align 8
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %94

54:                                               ; preds = %48
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %54
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %61 = call i32 @lsmCheckpointSynced(%struct.TYPE_22__* %60, i32 0, i32 0, i64* %20)
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @lsmCheckpointNWrite(i32 %66, i32 0)
  store i64 %67, i64* %21, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @lsmCheckpointPgsz(i32 %72)
  store i32 %73, i32* %22, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %22, align 4
  %79 = sdiv i32 %77, %78
  %80 = load i64, i64* %21, align 8
  %81 = load i64, i64* %20, align 8
  %82 = sub nsw i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = sub nsw i32 %79, %83
  %85 = call i64 @LSM_MIN(i32 %74, i32 %84)
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %18, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %59
  store i32 1, i32* %19, align 4
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @LSM_MAX(i32 %91, i32 0)
  store i32 %92, i32* %18, align 4
  br label %93

93:                                               ; preds = %90, %59
  br label %94

94:                                               ; preds = %93, %54, %48
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %101 = call i32 @lsmTreeLoadHeader(%struct.TYPE_22__* %100, i32 0)
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %99, %94
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %104 = call i64 @sortedTreeHasOld(%struct.TYPE_22__* %103, i32* %15)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %163

106:                                              ; preds = %102
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %108 = call i64 @sortedDbIsFull(%struct.TYPE_22__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %133

110:                                              ; preds = %106
  store i32 0, i32* %23, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @sortedWork(%struct.TYPE_22__* %111, i32 %112, i32 %113, i32 1, i32* %23)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %23, align 4
  %116 = load i32, i32* %18, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @LSM_OK, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %18, align 4
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %121
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %126 = call i64 @sortedDbIsFull(%struct.TYPE_22__* %125)
  %127 = icmp ne i64 %126, 0
  %128 = xor i1 %127, true
  br label %129

129:                                              ; preds = %124, %121, %110
  %130 = phi i1 [ true, %121 ], [ true, %110 ], [ %128, %124 ]
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  store i32 1, i32* %16, align 4
  br label %133

133:                                              ; preds = %129, %106
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* @LSM_OK, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %162

137:                                              ; preds = %133
  %138 = load i32, i32* %18, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %162

140:                                              ; preds = %137
  store i32 0, i32* %24, align 4
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %142 = load i32, i32* @TREE_OLD, align 4
  %143 = call i32 @sortedNewToplevel(%struct.TYPE_22__* %141, i32 %142, i32* %24)
  store i32 %143, i32* %15, align 4
  %144 = load i32, i32* %24, align 4
  %145 = load i32, i32* %18, align 4
  %146 = sub nsw i32 %145, %144
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* @LSM_OK, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %140
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %157 = call i32 @lsmTreeDiscardOld(%struct.TYPE_22__* %156)
  br label %158

158:                                              ; preds = %155, %150
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %160 = call i32 @lsmSaveWorker(%struct.TYPE_22__* %159, i32 1)
  store i32 %160, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %161

161:                                              ; preds = %158, %140
  br label %162

162:                                              ; preds = %161, %137, %133
  br label %163

163:                                              ; preds = %162, %102
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* @LSM_OK, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %185

167:                                              ; preds = %163
  %168 = load i32, i32* %18, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %185

170:                                              ; preds = %167
  %171 = load i32, i32* %9, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %170
  store i32 0, i32* %25, align 4
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %175 = load i32, i32* %18, align 4
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @sortedWork(%struct.TYPE_22__* %174, i32 %175, i32 %176, i32 0, i32* %25)
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* %25, align 4
  %179 = load i32, i32* %18, align 4
  %180 = sub nsw i32 %179, %178
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* %25, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %173
  store i32 1, i32* %16, align 4
  br label %184

184:                                              ; preds = %183, %173
  br label %185

185:                                              ; preds = %184, %170, %167, %163
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* @LSM_OK, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %226

189:                                              ; preds = %185
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 3
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = icmp sgt i64 %195, %198
  br i1 %199, label %200, label %226

200:                                              ; preds = %189
  br label %201

201:                                              ; preds = %211, %200
  %202 = load i32, i32* %15, align 4
  %203 = load i32, i32* @LSM_OK, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %207 = call i64 @lsmDatabaseFull(%struct.TYPE_22__* %206)
  %208 = icmp ne i64 %207, 0
  br label %209

209:                                              ; preds = %205, %201
  %210 = phi i1 [ false, %201 ], [ %208, %205 ]
  br i1 %210, label %211, label %218

211:                                              ; preds = %209
  store i32 0, i32* %26, align 4
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @sortedWork(%struct.TYPE_22__* %212, i32 16, i32 %213, i32 1, i32* %26)
  store i32 %214, i32* %15, align 4
  %215 = load i32, i32* %26, align 4
  %216 = load i32, i32* %18, align 4
  %217 = sub nsw i32 %216, %215
  store i32 %217, i32* %18, align 4
  br label %201

218:                                              ; preds = %209
  %219 = load i32, i32* %15, align 4
  %220 = load i32, i32* @LSM_OK, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %224 = call i32 @sortedNewFreelistOnly(%struct.TYPE_22__* %223)
  store i32 %224, i32* %15, align 4
  br label %225

225:                                              ; preds = %222, %218
  store i32 1, i32* %16, align 4
  br label %226

226:                                              ; preds = %225, %189, %185
  %227 = load i32, i32* %15, align 4
  %228 = load i32, i32* @LSM_OK, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %277

230:                                              ; preds = %226
  %231 = load i32, i32* %17, align 4
  %232 = load i32, i32* %18, align 4
  %233 = sub nsw i32 %231, %232
  %234 = load i32*, i32** %12, align 8
  store i32 %233, i32* %234, align 4
  %235 = load i32, i32* %19, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %230
  %238 = load i32, i32* %18, align 4
  %239 = icmp sle i32 %238, 0
  br label %240

240:                                              ; preds = %237, %230
  %241 = phi i1 [ false, %230 ], [ %239, %237 ]
  %242 = zext i1 %241 to i32
  %243 = load i32*, i32** %13, align 8
  store i32 %242, i32* %243, align 4
  %244 = load i32, i32* %10, align 4
  %245 = icmp eq i32 %244, 1
  br i1 %245, label %246, label %276

246:                                              ; preds = %240
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %276

251:                                              ; preds = %246
  %252 = load i32*, i32** %12, align 8
  %253 = load i32, i32* %252, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %276

255:                                              ; preds = %251
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %257, align 8
  %259 = icmp ne %struct.TYPE_21__* %258, null
  br i1 %259, label %260, label %276

260:                                              ; preds = %255
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %260
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %267
  %275 = load i32*, i32** %13, align 8
  store i32 1, i32* %275, align 4
  br label %276

276:                                              ; preds = %274, %267, %260, %255, %251, %246, %240
  br label %277

277:                                              ; preds = %276, %226
  %278 = load i32, i32* %15, align 4
  %279 = load i32, i32* @LSM_OK, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %287

281:                                              ; preds = %277
  %282 = load i32, i32* %16, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %281
  %285 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %286 = call i32 @lsmFinishWork(%struct.TYPE_22__* %285, i32 0, i32* %15)
  br label %292

287:                                              ; preds = %281, %277
  %288 = load i32, i32* @LSM_BUSY, align 4
  store i32 %288, i32* %27, align 4
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %290 = call i32 @lsmFinishWork(%struct.TYPE_22__* %289, i32 0, i32* %27)
  %291 = load i32*, i32** %12, align 8
  store i32 0, i32* %291, align 4
  br label %292

292:                                              ; preds = %287, %284
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 3
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %294, align 8
  %296 = icmp eq %struct.TYPE_23__* %295, null
  %297 = zext i1 %296 to i32
  %298 = call i32 @assert(i32 %297)
  %299 = load i32, i32* %15, align 4
  store i32 %299, i32* %7, align 4
  br label %300

300:                                              ; preds = %292, %46
  %301 = load i32, i32* %7, align 4
  ret i32 %301
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lsmBeginWork(%struct.TYPE_22__*) #1

declare dso_local i32 @lsmCheckpointSynced(%struct.TYPE_22__*, i32, i32, i64*) #1

declare dso_local i64 @lsmCheckpointNWrite(i32, i32) #1

declare dso_local i32 @lsmCheckpointPgsz(i32) #1

declare dso_local i64 @LSM_MIN(i32, i32) #1

declare dso_local i32 @LSM_MAX(i32, i32) #1

declare dso_local i32 @lsmTreeLoadHeader(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @sortedTreeHasOld(%struct.TYPE_22__*, i32*) #1

declare dso_local i64 @sortedDbIsFull(%struct.TYPE_22__*) #1

declare dso_local i32 @sortedWork(%struct.TYPE_22__*, i32, i32, i32, i32*) #1

declare dso_local i32 @sortedNewToplevel(%struct.TYPE_22__*, i32, i32*) #1

declare dso_local i32 @lsmTreeDiscardOld(%struct.TYPE_22__*) #1

declare dso_local i32 @lsmSaveWorker(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @lsmDatabaseFull(%struct.TYPE_22__*) #1

declare dso_local i32 @sortedNewFreelistOnly(%struct.TYPE_22__*) #1

declare dso_local i32 @lsmFinishWork(%struct.TYPE_22__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

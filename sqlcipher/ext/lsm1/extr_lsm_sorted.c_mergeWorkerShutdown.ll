; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeWorkerShutdown.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeWorkerShutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__*, i64, %struct.TYPE_19__*, i64, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { i64, i32, i32*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_17__, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@CURSOR_DATA_SEGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32*)* @mergeWorkerShutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mergeWorkerShutdown(%struct.TYPE_22__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @LSM_OK, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %222

24:                                               ; preds = %2
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %26 = icmp ne %struct.TYPE_21__* %25, null
  br i1 %26, label %27, label %222

27:                                               ; preds = %24
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %8, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %34 = call i64 @lsmMCursorValid(%struct.TYPE_21__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %193

36:                                               ; preds = %27
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %36
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br label %53

53:                                               ; preds = %46, %36
  %54 = phi i1 [ true, %36 ], [ %52, %46 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %53
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %67, %68
  %70 = icmp eq i32 %64, %69
  br label %71

71:                                               ; preds = %61, %53
  %72 = phi i1 [ true, %53 ], [ %70, %61 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %132, %71
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %79, %80
  %82 = icmp slt i32 %76, %81
  br i1 %82, label %83, label %135

83:                                               ; preds = %75
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i64 %88
  store %struct.TYPE_20__* %89, %struct.TYPE_20__** %11, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %83
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @lsmFsPageNumber(i64 %97)
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  store i32 %98, i32* %105, align 4
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  store i32 %108, i32* %115, align 4
  br label %131

116:                                              ; preds = %83
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  store i32 0, i32* %123, align 4
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %116, %94
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %75

135:                                              ; preds = %75
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %161

138:                                              ; preds = %135
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %138
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %144, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i64 %158
  %160 = call i32 @btreeCursorPosition(i64 %153, %struct.TYPE_17__* %159)
  br label %161

161:                                              ; preds = %143, %138, %135
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @CURSOR_DATA_SEGMENT, align 4
  %168 = sub nsw i32 %166, %167
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %161
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i64 %181
  %183 = bitcast %struct.TYPE_17__* %176 to i8*
  %184 = bitcast %struct.TYPE_17__* %182 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %183, i8* align 4 %184, i64 8, i1 false)
  br label %192

185:                                              ; preds = %161
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 2
  %191 = call i32 @btreeCursorSplitkey(i64 %188, %struct.TYPE_17__* %190)
  br label %192

192:                                              ; preds = %185, %174
  br label %193

193:                                              ; preds = %192, %27
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %219

198:                                              ; preds = %193
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = call i32* @fsPageData(i64 %201, i32* %12)
  store i32* %202, i32** %13, align 8
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %14, align 4
  %206 = load i32, i32* %12, align 4
  %207 = load i32*, i32** %13, align 8
  %208 = load i32, i32* %12, align 4
  %209 = call i32 @pageGetNRec(i32* %207, i32 %208)
  %210 = call i32 @SEGMENT_EOF(i32 %206, i32 %209)
  store i32 %210, i32* %15, align 4
  %211 = load i32*, i32** %13, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* %14, align 4
  %217 = sub nsw i32 %215, %216
  %218 = call i32 @memset(i32* %214, i32 0, i32 %217)
  br label %219

219:                                              ; preds = %198, %193
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 1
  store i32 -1, i32* %221, align 4
  br label %222

222:                                              ; preds = %219, %24, %2
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %224 = call i32 @lsmMCursorClose(%struct.TYPE_21__* %223, i32 0)
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* @LSM_OK, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %222
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %230 = call i32 @mergeWorkerPersistAndRelease(%struct.TYPE_22__* %229)
  store i32 %230, i32* %6, align 4
  br label %231

231:                                              ; preds = %228, %222
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @LSM_OK, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %237 = call i32 @mergeWorkerBtreeIndirect(%struct.TYPE_22__* %236)
  store i32 %237, i32* %6, align 4
  br label %238

238:                                              ; preds = %235, %231
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* @LSM_OK, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %244 = call i32 @mergeWorkerFinishHierarchy(%struct.TYPE_22__* %243)
  store i32 %244, i32* %6, align 4
  br label %245

245:                                              ; preds = %242, %238
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* @LSM_OK, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %251 = call i32 @mergeWorkerAddPadding(%struct.TYPE_22__* %250)
  store i32 %251, i32* %6, align 4
  br label %252

252:                                              ; preds = %249, %245
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @lsmFsFlushWaiting(i32 %257, i32* %6)
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %260 = call i32 @mergeWorkerReleaseAll(%struct.TYPE_22__* %259)
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @lsmFree(i32 %265, i64 %268)
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 1
  store i64 0, i64* %271, align 8
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 0
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %273, align 8
  %274 = load i32, i32* %6, align 4
  %275 = load i32*, i32** %4, align 8
  store i32 %274, i32* %275, align 4
  ret void
}

declare dso_local i64 @lsmMCursorValid(%struct.TYPE_21__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lsmFsPageNumber(i64) #1

declare dso_local i32 @btreeCursorPosition(i64, %struct.TYPE_17__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @btreeCursorSplitkey(i64, %struct.TYPE_17__*) #1

declare dso_local i32* @fsPageData(i64, i32*) #1

declare dso_local i32 @SEGMENT_EOF(i32, i32) #1

declare dso_local i32 @pageGetNRec(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @lsmMCursorClose(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @mergeWorkerPersistAndRelease(%struct.TYPE_22__*) #1

declare dso_local i32 @mergeWorkerBtreeIndirect(%struct.TYPE_22__*) #1

declare dso_local i32 @mergeWorkerFinishHierarchy(%struct.TYPE_22__*) #1

declare dso_local i32 @mergeWorkerAddPadding(%struct.TYPE_22__*) #1

declare dso_local i32 @lsmFsFlushWaiting(i32, i32*) #1

declare dso_local i32 @mergeWorkerReleaseAll(%struct.TYPE_22__*) #1

declare dso_local i32 @lsmFree(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

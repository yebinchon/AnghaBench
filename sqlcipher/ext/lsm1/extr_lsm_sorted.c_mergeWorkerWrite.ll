; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeWorkerWrite.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeWorkerWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__*, %struct.TYPE_15__*, i32*, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_13__ = type { %struct.TYPE_17__, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i32, i64 }

@LSM_OK = common dso_local global i32 0, align 4
@PGFTR_SKIP_THIS_FLAG = common dso_local global i32 0, align 4
@PGFTR_SKIP_NEXT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32, i8*, i32, i8*, i32, i32)* @mergeWorkerWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mergeWorkerWrite(%struct.TYPE_18__* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_17__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %28 = load i32, i32* @LSM_OK, align 4
  store i32 %28, i32* %15, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %16, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %25, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %7
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %49 = call i32 @mergeWorkerFirstPage(%struct.TYPE_18__* %48)
  store i32 %49, i32* %15, align 4
  store i32 1, i32* %27, align 4
  br label %50

50:                                               ; preds = %47, %42, %7
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %18, align 8
  %54 = load i32*, i32** %18, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load i32*, i32** %18, align 8
  %58 = call i64* @fsPageData(i32* %57, i32* %20)
  store i64* %58, i64** %19, align 8
  %59 = load i64*, i64** %19, align 8
  %60 = load i32, i32* %20, align 4
  %61 = call i32 @pageGetNRec(i64* %59, i32 %60)
  store i32 %61, i32* %21, align 4
  %62 = load i64*, i64** %19, align 8
  %63 = load i32, i32* %20, align 4
  %64 = call i32 @pageGetPtr(i64* %62, i32 %63)
  store i32 %64, i32* %22, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %22, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %23, align 4
  br label %68

68:                                               ; preds = %56, %50
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @LSM_OK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %143

72:                                               ; preds = %68
  %73 = load i32, i32* %23, align 4
  %74 = call i32 @lsmVarintLen32(i32 %73)
  %75 = add nsw i32 1, %74
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @lsmVarintLen32(i32 %76)
  %78 = add nsw i32 %75, %77
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @rtIsWrite(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %72
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @lsmVarintLen32(i32 %83)
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %17, align 4
  br label %87

87:                                               ; preds = %82, %72
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %24, align 4
  %91 = load i32, i32* %24, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %87
  %94 = load i32*, i32** %18, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %24, align 4
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %21, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @SEGMENT_EOF(i32 %100, i32 %102)
  %104 = icmp sgt i32 %99, %103
  br i1 %104, label %105, label %142

105:                                              ; preds = %96, %93, %87
  %106 = load i32, i32* %24, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %105
  %109 = load i32*, i32** %18, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = load i64*, i64** %19, align 8
  %113 = ptrtoint i64* %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i64*, i64** %19, align 8
  %116 = load i32, i32* %24, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* %21, align 4
  %121 = call i32 @SEGMENT_EOF(i32 %119, i32 %120)
  %122 = load i32, i32* %24, align 4
  %123 = sub nsw i32 %121, %122
  %124 = call i32 @memset(i64* %118, i32 0, i32 %123)
  br label %125

125:                                              ; preds = %111, %108, %105
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %22, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %22, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %21, align 4
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %137 = load i32, i32* %22, align 4
  %138 = call i32 @mergeWorkerNextPage(%struct.TYPE_18__* %136, i32 %137)
  store i32 %138, i32* %15, align 4
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  store i32* %141, i32** %18, align 8
  br label %142

142:                                              ; preds = %125, %96
  br label %143

143:                                              ; preds = %142, %68
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* @LSM_OK, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %210

147:                                              ; preds = %143
  %148 = load i32, i32* %21, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %210

150:                                              ; preds = %147
  %151 = load i32, i32* %27, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %210

153:                                              ; preds = %150
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp sge i64 %156, 0
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %194

164:                                              ; preds = %153
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @rtTopic(i32 %166)
  %168 = load i8*, i8** %10, align 8
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @mergeWorkerPushHierarchy(%struct.TYPE_18__* %165, i32 %167, i8* %168, i32 %169)
  store i32 %170, i32* %15, align 4
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 0
  %178 = zext i1 %177 to i32
  %179 = call i32 @assert(i32 %178)
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  store i32 1, i32* %184, align 4
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %11, align 4
  %191 = call i64 @keyszToSkip(i32 %189, i32 %190)
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 1
  store i64 %191, i64* %193, align 8
  br label %200

194:                                              ; preds = %153
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %197, -1
  store i64 %198, i64* %196, align 8
  %199 = load i32, i32* @PGFTR_SKIP_THIS_FLAG, align 4
  store i32 %199, i32* %26, align 4
  br label %200

200:                                              ; preds = %194, %164
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load i32, i32* @PGFTR_SKIP_NEXT_FLAG, align 4
  %207 = load i32, i32* %26, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %26, align 4
  br label %209

209:                                              ; preds = %205, %200
  br label %210

210:                                              ; preds = %209, %150, %147, %143
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* @LSM_OK, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %321

214:                                              ; preds = %210
  %215 = load i32*, i32** %18, align 8
  %216 = call i64* @fsPageData(i32* %215, i32* %20)
  store i64* %216, i64** %19, align 8
  %217 = load i64*, i64** %19, align 8
  %218 = load i32, i32* %20, align 4
  %219 = call i64 @SEGMENT_NRECORD_OFFSET(i32 %218)
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  %221 = load i32, i32* %21, align 4
  %222 = add nsw i32 %221, 1
  %223 = call i32 @lsmPutU16(i64* %220, i32 %222)
  %224 = load i64*, i64** %19, align 8
  %225 = load i32, i32* %20, align 4
  %226 = load i32, i32* %21, align 4
  %227 = call i64 @SEGMENT_CELLPTR_OFFSET(i32 %225, i32 %226)
  %228 = getelementptr inbounds i64, i64* %224, i64 %227
  %229 = load i32, i32* %24, align 4
  %230 = call i32 @lsmPutU16(i64* %228, i32 %229)
  %231 = load i32, i32* %26, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %214
  %234 = load i64*, i64** %19, align 8
  %235 = load i32, i32* %20, align 4
  %236 = call i64 @SEGMENT_FLAGS_OFFSET(i32 %235)
  %237 = getelementptr inbounds i64, i64* %234, i64 %236
  %238 = load i32, i32* %26, align 4
  %239 = call i32 @lsmPutU16(i64* %237, i32 %238)
  br label %240

240:                                              ; preds = %233, %214
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = load i64*, i64** %19, align 8
  %244 = load i32, i32* %24, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %24, align 4
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds i64, i64* %243, i64 %246
  store i64 %242, i64* %247, align 8
  %248 = load i64*, i64** %19, align 8
  %249 = load i32, i32* %24, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  %252 = load i32, i32* %23, align 4
  %253 = call i64 @lsmVarintPut32(i64* %251, i32 %252)
  %254 = load i32, i32* %24, align 4
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %255, %253
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %24, align 4
  %258 = load i64*, i64** %19, align 8
  %259 = load i32, i32* %24, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64, i64* %258, i64 %260
  %262 = load i32, i32* %11, align 4
  %263 = call i64 @lsmVarintPut32(i64* %261, i32 %262)
  %264 = load i32, i32* %24, align 4
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %265, %263
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %24, align 4
  %268 = load i32, i32* %9, align 4
  %269 = call i64 @rtIsWrite(i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %282

271:                                              ; preds = %240
  %272 = load i64*, i64** %19, align 8
  %273 = load i32, i32* %24, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i64, i64* %272, i64 %274
  %276 = load i32, i32* %13, align 4
  %277 = call i64 @lsmVarintPut32(i64* %275, i32 %276)
  %278 = load i32, i32* %24, align 4
  %279 = sext i32 %278 to i64
  %280 = add nsw i64 %279, %277
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %24, align 4
  br label %282

282:                                              ; preds = %271, %240
  %283 = load i32, i32* %24, align 4
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 8
  %286 = load i32, i32* %22, align 4
  %287 = load i64*, i64** %19, align 8
  %288 = load i32, i32* %20, align 4
  %289 = call i32 @pageGetPtr(i64* %287, i32 %288)
  %290 = icmp eq i32 %286, %289
  %291 = zext i1 %290 to i32
  %292 = call i32 @assert(i32 %291)
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %294 = load i32, i32* %22, align 4
  %295 = load i32, i32* %23, align 4
  %296 = add nsw i32 %294, %295
  %297 = load i8*, i8** %10, align 8
  %298 = load i32, i32* %11, align 4
  %299 = call i32 @mergeWorkerData(%struct.TYPE_18__* %293, i32 0, i32 %296, i8* %297, i32 %298)
  store i32 %299, i32* %15, align 4
  %300 = load i32, i32* %15, align 4
  %301 = load i32, i32* @LSM_OK, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %320

303:                                              ; preds = %282
  %304 = load i32, i32* %9, align 4
  %305 = call i64 @rtIsWrite(i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %320

307:                                              ; preds = %303
  %308 = load i32, i32* %15, align 4
  %309 = load i32, i32* @LSM_OK, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %319

311:                                              ; preds = %307
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %313 = load i32, i32* %22, align 4
  %314 = load i32, i32* %23, align 4
  %315 = add nsw i32 %313, %314
  %316 = load i8*, i8** %12, align 8
  %317 = load i32, i32* %13, align 4
  %318 = call i32 @mergeWorkerData(%struct.TYPE_18__* %312, i32 0, i32 %315, i8* %316, i32 %317)
  store i32 %318, i32* %15, align 4
  br label %319

319:                                              ; preds = %311, %307
  br label %320

320:                                              ; preds = %319, %303, %282
  br label %321

321:                                              ; preds = %320, %210
  %322 = load i32, i32* %15, align 4
  ret i32 %322
}

declare dso_local i32 @mergeWorkerFirstPage(%struct.TYPE_18__*) #1

declare dso_local i64* @fsPageData(i32*, i32*) #1

declare dso_local i32 @pageGetNRec(i64*, i32) #1

declare dso_local i32 @pageGetPtr(i64*, i32) #1

declare dso_local i32 @lsmVarintLen32(i32) #1

declare dso_local i64 @rtIsWrite(i32) #1

declare dso_local i32 @SEGMENT_EOF(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @mergeWorkerNextPage(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @mergeWorkerPushHierarchy(%struct.TYPE_18__*, i32, i8*, i32) #1

declare dso_local i32 @rtTopic(i32) #1

declare dso_local i64 @keyszToSkip(i32, i32) #1

declare dso_local i32 @lsmPutU16(i64*, i32) #1

declare dso_local i64 @SEGMENT_NRECORD_OFFSET(i32) #1

declare dso_local i64 @SEGMENT_CELLPTR_OFFSET(i32, i32) #1

declare dso_local i64 @SEGMENT_FLAGS_OFFSET(i32) #1

declare dso_local i64 @lsmVarintPut32(i64*, i32) #1

declare dso_local i32 @mergeWorkerData(%struct.TYPE_18__*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

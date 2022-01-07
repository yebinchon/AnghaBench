; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_submit_request.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_submit_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, i32, i32, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_36__ = type { i32, i8* }
%struct.TYPE_33__ = type { i32, i32, i32, i32, %struct.TYPE_34__*, i32*, i32* }

@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@CRYPTO_SYNCHRONOUS = common dso_local global i32 0, align 4
@KCF_PROV_READY = common dso_local global i32 0, align 4
@CRYPTO_QUEUED = common dso_local global i32 0, align 4
@kcf_sreq_cache = common dso_local global i32 0, align 4
@REQ_ALLOCATED = common dso_local global i32 0, align 4
@CRYPTO_FAILED = common dso_local global i8* null, align 8
@crypto_taskq_maxalloc = common dso_local global i32 0, align 4
@TQ_SLEEP = common dso_local global i32 0, align 4
@REQ_DONE = common dso_local global i32 0, align 4
@CRYPTO_ALWAYS_QUEUE = common dso_local global i32 0, align 4
@KM_NOSLEEP = common dso_local global i32 0, align 4
@CRYPTO_HOST_MEMORY = common dso_local global i32 0, align 4
@CRYPTO_SKIP_REQID = common dso_local global i32 0, align 4
@CRYPTO_BUSY = common dso_local global i32 0, align 4
@TQ_NOSLEEP = common dso_local global i32 0, align 4
@TASKQID_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kcf_submit_request(%struct.TYPE_34__* %0, %struct.TYPE_35__* %1, %struct.TYPE_36__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %6, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %7, align 8
  store %struct.TYPE_36__* %2, %struct.TYPE_36__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  store %struct.TYPE_32__* %20, %struct.TYPE_32__** %15, align 8
  %21 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %22 = icmp ne %struct.TYPE_35__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  br label %29

28:                                               ; preds = %5
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi i32* [ %27, %23 ], [ null, %28 ]
  store i32* %30, i32** %14, align 8
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %32 = icmp eq %struct.TYPE_36__* %31, null
  br i1 %32, label %33, label %163

33:                                               ; preds = %29
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %159 [
    i32 128, label %37
    i32 129, label %44
  ]

37:                                               ; preds = %33
  %38 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* @KM_SLEEP, align 4
  %42 = call i32 @KCF_RHNDL(i32 %41)
  %43 = call i32 @common_submit_request(%struct.TYPE_34__* %38, %struct.TYPE_35__* %39, i32* %40, i32 %42)
  store i32 %43, i32* %11, align 4
  br label %162

44:                                               ; preds = %33
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CRYPTO_SYNCHRONOUS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %44
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %53 = call i32 @EMPTY_TASKQ(%struct.TYPE_32__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %57 = call i32 @KCF_PROV_IREFHOLD(%struct.TYPE_34__* %56)
  %58 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @KCF_PROV_READY, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %55
  %64 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %65 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* @KM_SLEEP, align 4
  %68 = call i32 @KCF_RHNDL(i32 %67)
  %69 = call i32 @common_submit_request(%struct.TYPE_34__* %64, %struct.TYPE_35__* %65, i32* %66, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %71 = call i32 @KCF_PROV_IREFRELE(%struct.TYPE_34__* %70)
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @CRYPTO_QUEUED, align 4
  %74 = icmp ne i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT(i32 %75)
  br label %162

77:                                               ; preds = %55
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %79 = call i32 @KCF_PROV_IREFRELE(%struct.TYPE_34__* %78)
  br label %80

80:                                               ; preds = %77, %51, %44
  %81 = load i32, i32* @kcf_sreq_cache, align 4
  %82 = load i32, i32* @KM_SLEEP, align 4
  %83 = call %struct.TYPE_33__* @kmem_cache_alloc(i32 %81, i32 %82)
  store %struct.TYPE_33__* %83, %struct.TYPE_33__** %13, align 8
  %84 = load i32, i32* @REQ_ALLOCATED, align 4
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i8*, i8** @CRYPTO_FAILED, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 6
  store i32* %91, i32** %93, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %95, i32 0, i32 5
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %98 = call i32 @KCF_PROV_REFHELD(%struct.TYPE_34__* %97)
  %99 = call i32 @ASSERT(i32 %98)
  %100 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %101, i32 0, i32 4
  store %struct.TYPE_34__* %100, %struct.TYPE_34__** %102, align 8
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %104 = icmp ne %struct.TYPE_32__* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 @ASSERT(i32 %105)
  %107 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %108 = call i32 @EMPTY_TASKQ(%struct.TYPE_32__* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %80
  %111 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @KCF_PROV_READY, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %118 = call i32 @process_req_hwp(%struct.TYPE_33__* %117)
  br label %133

119:                                              ; preds = %110, %80
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @crypto_taskq_maxalloc, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %127 = call i32 @taskq_wait(%struct.TYPE_32__* %126)
  br label %128

128:                                              ; preds = %125, %119
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %131 = load i32, i32* @TQ_SLEEP, align 4
  %132 = call i32 @taskq_dispatch(%struct.TYPE_32__* %129, i32 (%struct.TYPE_33__*)* @process_req_hwp, %struct.TYPE_33__* %130, i32 %131)
  br label %133

133:                                              ; preds = %128, %116
  %134 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %134, i32 0, i32 1
  %136 = call i32 @mutex_enter(i32* %135)
  br label %137

137:                                              ; preds = %143, %133
  %138 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @REQ_DONE, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i32 0, i32 1
  %148 = call i32 @cv_wait(i32* %145, i32* %147)
  br label %137

149:                                              ; preds = %137
  %150 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %150, i32 0, i32 1
  %152 = call i32 @mutex_exit(i32* %151)
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* @kcf_sreq_cache, align 4
  %157 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %158 = call i32 @kmem_cache_free(i32 %156, %struct.TYPE_33__* %157)
  br label %162

159:                                              ; preds = %33
  %160 = load i8*, i8** @CRYPTO_FAILED, align 8
  %161 = ptrtoint i8* %160 to i32
  store i32 %161, i32* %11, align 4
  br label %162

162:                                              ; preds = %159, %149, %63, %37
  br label %291

163:                                              ; preds = %29
  %164 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  switch i32 %166, label %287 [
    i32 128, label %167
    i32 129, label %226
  ]

167:                                              ; preds = %163
  %168 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @CRYPTO_ALWAYS_QUEUE, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %167
  %175 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %176 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = load i32, i32* @KM_NOSLEEP, align 4
  %179 = call i32 @KCF_RHNDL(i32 %178)
  %180 = call i32 @common_submit_request(%struct.TYPE_34__* %175, %struct.TYPE_35__* %176, i32* %177, i32 %179)
  store i32 %180, i32* %11, align 4
  br label %225

181:                                              ; preds = %167
  %182 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %183 = load i32*, i32** %14, align 8
  %184 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %185 = load i32*, i32** %9, align 8
  %186 = load i32, i32* %10, align 4
  %187 = call %struct.TYPE_33__* @kcf_areqnode_alloc(%struct.TYPE_34__* %182, i32* %183, %struct.TYPE_36__* %184, i32* %185, i32 %186)
  store %struct.TYPE_33__* %187, %struct.TYPE_33__** %12, align 8
  %188 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %189 = icmp eq %struct.TYPE_33__* %188, null
  br i1 %189, label %190, label %192

190:                                              ; preds = %181
  %191 = load i32, i32* @CRYPTO_HOST_MEMORY, align 4
  store i32 %191, i32* %11, align 4
  br label %224

192:                                              ; preds = %181
  %193 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @CRYPTO_SKIP_REQID, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %192
  %200 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %201 = call i8* @kcf_reqid_insert(%struct.TYPE_33__* %200)
  %202 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %202, i32 0, i32 1
  store i8* %201, i8** %203, align 8
  br label %204

204:                                              ; preds = %199, %192
  %205 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %206 = call i32 @kcf_disp_sw_request(%struct.TYPE_33__* %205)
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* @CRYPTO_QUEUED, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %223

210:                                              ; preds = %204
  %211 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @CRYPTO_SKIP_REQID, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %210
  %218 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %219 = call i32 @kcf_reqid_delete(%struct.TYPE_33__* %218)
  br label %220

220:                                              ; preds = %217, %210
  %221 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %222 = call i32 @KCF_AREQ_REFRELE(%struct.TYPE_33__* %221)
  br label %223

223:                                              ; preds = %220, %204
  br label %224

224:                                              ; preds = %223, %190
  br label %225

225:                                              ; preds = %224, %174
  br label %290

226:                                              ; preds = %163
  %227 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %228 = load i32*, i32** %14, align 8
  %229 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %230 = load i32*, i32** %9, align 8
  %231 = load i32, i32* %10, align 4
  %232 = call %struct.TYPE_33__* @kcf_areqnode_alloc(%struct.TYPE_34__* %227, i32* %228, %struct.TYPE_36__* %229, i32* %230, i32 %231)
  store %struct.TYPE_33__* %232, %struct.TYPE_33__** %12, align 8
  %233 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %234 = icmp eq %struct.TYPE_33__* %233, null
  br i1 %234, label %235, label %237

235:                                              ; preds = %226
  %236 = load i32, i32* @CRYPTO_HOST_MEMORY, align 4
  store i32 %236, i32* %11, align 4
  br label %292

237:                                              ; preds = %226
  %238 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %239 = icmp ne %struct.TYPE_32__* %238, null
  %240 = zext i1 %239 to i32
  %241 = call i32 @ASSERT(i32 %240)
  %242 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %243 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @crypto_taskq_maxalloc, align 4
  %246 = icmp sge i32 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %237
  %248 = load i32, i32* @CRYPTO_BUSY, align 4
  store i32 %248, i32* %11, align 4
  %249 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %250 = call i32 @KCF_AREQ_REFRELE(%struct.TYPE_33__* %249)
  br label %292

251:                                              ; preds = %237
  %252 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @CRYPTO_SKIP_REQID, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %263, label %258

258:                                              ; preds = %251
  %259 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %260 = call i8* @kcf_reqid_insert(%struct.TYPE_33__* %259)
  %261 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %261, i32 0, i32 1
  store i8* %260, i8** %262, align 8
  br label %263

263:                                              ; preds = %258, %251
  %264 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %265 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %266 = load i32, i32* @TQ_NOSLEEP, align 4
  %267 = call i32 @taskq_dispatch(%struct.TYPE_32__* %264, i32 (%struct.TYPE_33__*)* @process_req_hwp, %struct.TYPE_33__* %265, i32 %266)
  %268 = load i32, i32* @TASKQID_INVALID, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %284

270:                                              ; preds = %263
  %271 = load i32, i32* @CRYPTO_HOST_MEMORY, align 4
  store i32 %271, i32* %11, align 4
  %272 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @CRYPTO_SKIP_REQID, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %270
  %279 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %280 = call i32 @kcf_reqid_delete(%struct.TYPE_33__* %279)
  br label %281

281:                                              ; preds = %278, %270
  %282 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %283 = call i32 @KCF_AREQ_REFRELE(%struct.TYPE_33__* %282)
  br label %286

284:                                              ; preds = %263
  %285 = load i32, i32* @CRYPTO_QUEUED, align 4
  store i32 %285, i32* %11, align 4
  br label %286

286:                                              ; preds = %284, %281
  br label %290

287:                                              ; preds = %163
  %288 = load i8*, i8** @CRYPTO_FAILED, align 8
  %289 = ptrtoint i8* %288 to i32
  store i32 %289, i32* %11, align 4
  br label %290

290:                                              ; preds = %287, %286, %225
  br label %291

291:                                              ; preds = %290, %162
  br label %292

292:                                              ; preds = %291, %247, %235
  %293 = load i32, i32* %11, align 4
  ret i32 %293
}

declare dso_local i32 @common_submit_request(%struct.TYPE_34__*, %struct.TYPE_35__*, i32*, i32) #1

declare dso_local i32 @KCF_RHNDL(i32) #1

declare dso_local i32 @EMPTY_TASKQ(%struct.TYPE_32__*) #1

declare dso_local i32 @KCF_PROV_IREFHOLD(%struct.TYPE_34__*) #1

declare dso_local i32 @KCF_PROV_IREFRELE(%struct.TYPE_34__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_33__* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @KCF_PROV_REFHELD(%struct.TYPE_34__*) #1

declare dso_local i32 @process_req_hwp(%struct.TYPE_33__*) #1

declare dso_local i32 @taskq_wait(%struct.TYPE_32__*) #1

declare dso_local i32 @taskq_dispatch(%struct.TYPE_32__*, i32 (%struct.TYPE_33__*)*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_33__* @kcf_areqnode_alloc(%struct.TYPE_34__*, i32*, %struct.TYPE_36__*, i32*, i32) #1

declare dso_local i8* @kcf_reqid_insert(%struct.TYPE_33__*) #1

declare dso_local i32 @kcf_disp_sw_request(%struct.TYPE_33__*) #1

declare dso_local i32 @kcf_reqid_delete(%struct.TYPE_33__*) #1

declare dso_local i32 @KCF_AREQ_REFRELE(%struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

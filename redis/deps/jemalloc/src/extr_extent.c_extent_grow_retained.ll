; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_grow_retained.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_grow_retained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8* (%struct.TYPE_22__*, i32*, i64, i64, i32*, i32*, i32)* }
%struct.TYPE_23__ = type { i64, i64, i32, i32 }

@PAGE = common dso_local global i64 0, align 8
@NPSIZES = common dso_local global i64 0, align 8
@extent_hooks_default = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@NSIZES = common dso_local global i32 0, align 4
@extent_state_active = common dso_local global i32 0, align 4
@extent_split_interior_ok = common dso_local global i64 0, align 8
@extent_split_interior_error = common dso_local global i64 0, align 8
@config_prof = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_23__*, %struct.TYPE_22__**, i64, i64, i64, i32, i32, i32*, i32*)* @extent_grow_retained to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extent_grow_retained(i32* %0, %struct.TYPE_23__* %1, %struct.TYPE_22__** %2, i64 %3, i64 %4, i64 %5, i32 %6, i32 %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_22__**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i64, align 8
  store i32* %0, i32** %12, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %13, align 8
  store %struct.TYPE_22__** %2, %struct.TYPE_22__*** %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 2
  %44 = call i32 @malloc_mutex_assert_owner(i32* %41, i32* %43)
  %45 = load i64, i64* %16, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %10
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %47, %10
  %52 = phi i1 [ true, %10 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32*, i32** %20, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %58, %51
  %63 = phi i1 [ true, %51 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* %16, align 8
  %68 = add i64 %66, %67
  store i64 %68, i64* %22, align 8
  %69 = load i64, i64* %22, align 8
  %70 = load i64, i64* %17, align 8
  %71 = call i64 @PAGE_CEILING(i64 %70)
  %72 = add i64 %69, %71
  %73 = load i64, i64* @PAGE, align 8
  %74 = sub i64 %72, %73
  store i64 %74, i64* %23, align 8
  %75 = load i64, i64* %23, align 8
  %76 = load i64, i64* %22, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  br label %384

79:                                               ; preds = %62
  store i64 0, i64* %24, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %24, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i64 @sz_pind2sz(i64 %84)
  store i64 %85, i64* %25, align 8
  br label %86

86:                                               ; preds = %101, %79
  %87 = load i64, i64* %25, align 8
  %88 = load i64, i64* %23, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %86
  %91 = load i64, i64* %24, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %24, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %24, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i64, i64* @NPSIZES, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %384

101:                                              ; preds = %90
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %24, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i64, i64* @NPSIZES, align 8
  %108 = icmp slt i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %24, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i64 @sz_pind2sz(i64 %115)
  store i64 %116, i64* %25, align 8
  br label %86

117:                                              ; preds = %86
  %118 = load i32*, i32** %12, align 8
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %120 = call i32* @extent_alloc(i32* %118, %struct.TYPE_23__* %119)
  store i32* %120, i32** %26, align 8
  %121 = load i32*, i32** %26, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %384

124:                                              ; preds = %117
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %125 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %14, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %125, align 8
  %127 = icmp eq %struct.TYPE_22__* %126, @extent_hooks_default
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i32*, i32** %12, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %131 = load i64, i64* %25, align 8
  %132 = load i64, i64* @PAGE, align 8
  %133 = call i8* @extent_alloc_default_impl(i32* %129, %struct.TYPE_23__* %130, i32* null, i64 %131, i64 %132, i32* %27, i32* %28)
  store i8* %133, i8** %29, align 8
  br label %151

134:                                              ; preds = %124
  %135 = load i32*, i32** %12, align 8
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %137 = call i32 @extent_hook_pre_reentrancy(i32* %135, %struct.TYPE_23__* %136)
  %138 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %14, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = load i8* (%struct.TYPE_22__*, i32*, i64, i64, i32*, i32*, i32)*, i8* (%struct.TYPE_22__*, i32*, i64, i64, i32*, i32*, i32)** %140, align 8
  %142 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %14, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %142, align 8
  %144 = load i64, i64* %25, align 8
  %145 = load i64, i64* @PAGE, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %147 = call i32 @arena_ind_get(%struct.TYPE_23__* %146)
  %148 = call i8* %141(%struct.TYPE_22__* %143, i32* null, i64 %144, i64 %145, i32* %27, i32* %28, i32 %147)
  store i8* %148, i8** %29, align 8
  %149 = load i32*, i32** %12, align 8
  %150 = call i32 @extent_hook_post_reentrancy(i32* %149)
  br label %151

151:                                              ; preds = %134, %128
  %152 = load i32*, i32** %26, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %154 = load i8*, i8** %29, align 8
  %155 = load i64, i64* %25, align 8
  %156 = load i32, i32* @NSIZES, align 4
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %158 = call i32 @arena_extent_sn_next(%struct.TYPE_23__* %157)
  %159 = load i32, i32* @extent_state_active, align 4
  %160 = load i32, i32* %27, align 4
  %161 = load i32, i32* %28, align 4
  %162 = call i32 @extent_init(i32* %152, %struct.TYPE_23__* %153, i8* %154, i64 %155, i32 0, i32 %156, i32 %158, i32 %159, i32 %160, i32 %161, i32 1)
  %163 = load i8*, i8** %29, align 8
  %164 = icmp eq i8* %163, null
  br i1 %164, label %165, label %170

165:                                              ; preds = %151
  %166 = load i32*, i32** %12, align 8
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %168 = load i32*, i32** %26, align 8
  %169 = call i32 @extent_dalloc(i32* %166, %struct.TYPE_23__* %167, i32* %168)
  br label %384

170:                                              ; preds = %151
  %171 = load i32*, i32** %12, align 8
  %172 = load i32*, i32** %26, align 8
  %173 = call i64 @extent_register_no_gdump_add(i32* %171, i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %170
  %176 = load i32*, i32** %12, align 8
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %178 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %14, align 8
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 3
  %181 = load i32*, i32** %26, align 8
  %182 = call i32 @extents_leak(i32* %176, %struct.TYPE_23__* %177, %struct.TYPE_22__** %178, i32* %180, i32* %181, i32 1)
  br label %384

183:                                              ; preds = %170
  %184 = load i32*, i32** %26, align 8
  %185 = call i64 @extent_zeroed_get(i32* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = load i32*, i32** %26, align 8
  %189 = call i64 @extent_committed_get(i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i32*, i32** %20, align 8
  store i32 1, i32* %192, align 4
  br label %193

193:                                              ; preds = %191, %187, %183
  %194 = load i32*, i32** %26, align 8
  %195 = call i64 @extent_committed_get(i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i32*, i32** %21, align 8
  store i32 1, i32* %198, align 4
  br label %199

199:                                              ; preds = %197, %193
  %200 = load i32*, i32** %12, align 8
  %201 = call i32* @tsdn_rtree_ctx(i32* %200, i32* %30)
  store i32* %201, i32** %31, align 8
  %202 = load i32*, i32** %12, align 8
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %204 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %14, align 8
  %205 = load i32*, i32** %31, align 8
  %206 = load i64, i64* %15, align 8
  %207 = load i64, i64* %16, align 8
  %208 = load i64, i64* %17, align 8
  %209 = load i32, i32* %18, align 4
  %210 = load i32, i32* %19, align 4
  %211 = call i64 @extent_split_interior(i32* %202, %struct.TYPE_23__* %203, %struct.TYPE_22__** %204, i32* %205, i32** %26, i32** %32, i32** %33, i32** %34, i32** %35, i32* null, i64 %206, i64 %207, i64 %208, i32 %209, i32 %210, i32 1)
  store i64 %211, i64* %36, align 8
  %212 = load i64, i64* %36, align 8
  %213 = load i64, i64* @extent_split_interior_ok, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %238

215:                                              ; preds = %199
  %216 = load i32*, i32** %32, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %226

218:                                              ; preds = %215
  %219 = load i32*, i32** %12, align 8
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %221 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %14, align 8
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 3
  %224 = load i32*, i32** %32, align 8
  %225 = call i32 @extent_record(i32* %219, %struct.TYPE_23__* %220, %struct.TYPE_22__** %221, i32* %223, i32* %224, i32 1)
  br label %226

226:                                              ; preds = %218, %215
  %227 = load i32*, i32** %33, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %237

229:                                              ; preds = %226
  %230 = load i32*, i32** %12, align 8
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %232 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %14, align 8
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 3
  %235 = load i32*, i32** %33, align 8
  %236 = call i32 @extent_record(i32* %230, %struct.TYPE_23__* %231, %struct.TYPE_22__** %232, i32* %234, i32* %235, i32 1)
  br label %237

237:                                              ; preds = %229, %226
  br label %276

238:                                              ; preds = %199
  %239 = load i64, i64* %36, align 8
  %240 = load i64, i64* @extent_split_interior_error, align 8
  %241 = icmp eq i64 %239, %240
  %242 = zext i1 %241 to i32
  %243 = call i32 @assert(i32 %242)
  %244 = load i32*, i32** %35, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %261

246:                                              ; preds = %238
  %247 = load i64, i64* @config_prof, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %246
  %250 = load i32*, i32** %12, align 8
  %251 = load i32*, i32** %35, align 8
  %252 = call i32 @extent_gdump_add(i32* %250, i32* %251)
  br label %253

253:                                              ; preds = %249, %246
  %254 = load i32*, i32** %12, align 8
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %256 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %14, align 8
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 3
  %259 = load i32*, i32** %35, align 8
  %260 = call i32 @extent_record(i32* %254, %struct.TYPE_23__* %255, %struct.TYPE_22__** %256, i32* %258, i32* %259, i32 1)
  br label %261

261:                                              ; preds = %253, %238
  %262 = load i32*, i32** %34, align 8
  %263 = icmp ne i32* %262, null
  br i1 %263, label %264, label %275

264:                                              ; preds = %261
  %265 = load i32*, i32** %12, align 8
  %266 = load i32*, i32** %34, align 8
  %267 = call i32 @extent_deregister_no_gdump_sub(i32* %265, i32* %266)
  %268 = load i32*, i32** %12, align 8
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %270 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %14, align 8
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 3
  %273 = load i32*, i32** %34, align 8
  %274 = call i32 @extents_leak(i32* %268, %struct.TYPE_23__* %269, %struct.TYPE_22__** %270, i32* %272, i32* %273, i32 1)
  br label %275

275:                                              ; preds = %264, %261
  br label %384

276:                                              ; preds = %237
  %277 = load i32*, i32** %21, align 8
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %304

280:                                              ; preds = %276
  %281 = load i32*, i32** %26, align 8
  %282 = call i64 @extent_committed_get(i32* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %304, label %284

284:                                              ; preds = %280
  %285 = load i32*, i32** %12, align 8
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %287 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %14, align 8
  %288 = load i32*, i32** %26, align 8
  %289 = load i32*, i32** %26, align 8
  %290 = call i64 @extent_size_get(i32* %289)
  %291 = call i64 @extent_commit_impl(i32* %285, %struct.TYPE_23__* %286, %struct.TYPE_22__** %287, i32* %288, i32 0, i64 %290, i32 1)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %284
  %294 = load i32*, i32** %12, align 8
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %296 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %14, align 8
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 3
  %299 = load i32*, i32** %26, align 8
  %300 = call i32 @extent_record(i32* %294, %struct.TYPE_23__* %295, %struct.TYPE_22__** %296, i32* %298, i32* %299, i32 1)
  br label %384

301:                                              ; preds = %284
  %302 = load i32*, i32** %26, align 8
  %303 = call i32 @extent_zeroed_set(i32* %302, i32 1)
  br label %304

304:                                              ; preds = %301, %280, %276
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %306 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* %24, align 8
  %309 = add nsw i64 %307, %308
  %310 = add nsw i64 %309, 1
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %312 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = icmp sle i64 %310, %313
  br i1 %314, label %315, label %322

315:                                              ; preds = %304
  %316 = load i64, i64* %24, align 8
  %317 = add nsw i64 %316, 1
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = add nsw i64 %320, %317
  store i64 %321, i64* %319, align 8
  br label %328

322:                                              ; preds = %304
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %327 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %326, i32 0, i32 0
  store i64 %325, i64* %327, align 8
  br label %328

328:                                              ; preds = %322, %315
  %329 = load i32*, i32** %12, align 8
  %330 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %331 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %330, i32 0, i32 2
  %332 = call i32 @malloc_mutex_unlock(i32* %329, i32* %331)
  %333 = load i64, i64* @config_prof, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %328
  %336 = load i32*, i32** %12, align 8
  %337 = load i32*, i32** %26, align 8
  %338 = call i32 @extent_gdump_add(i32* %336, i32* %337)
  br label %339

339:                                              ; preds = %335, %328
  %340 = load i64, i64* %16, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %339
  %343 = load i32*, i32** %12, align 8
  %344 = load i32*, i32** %26, align 8
  %345 = load i64, i64* %17, align 8
  %346 = call i32 @extent_addr_randomize(i32* %343, i32* %344, i64 %345)
  br label %347

347:                                              ; preds = %342, %339
  %348 = load i32, i32* %18, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %360

350:                                              ; preds = %347
  %351 = load i32*, i32** %12, align 8
  %352 = call i32* @tsdn_rtree_ctx(i32* %351, i32* %37)
  store i32* %352, i32** %38, align 8
  %353 = load i32*, i32** %26, align 8
  %354 = call i32 @extent_slab_set(i32* %353, i32 1)
  %355 = load i32*, i32** %12, align 8
  %356 = load i32*, i32** %38, align 8
  %357 = load i32*, i32** %26, align 8
  %358 = load i32, i32* %19, align 4
  %359 = call i32 @extent_interior_register(i32* %355, i32* %356, i32* %357, i32 %358)
  br label %360

360:                                              ; preds = %350, %347
  %361 = load i32*, i32** %20, align 8
  %362 = load i32, i32* %361, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %382

364:                                              ; preds = %360
  %365 = load i32*, i32** %26, align 8
  %366 = call i64 @extent_zeroed_get(i32* %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %382, label %368

368:                                              ; preds = %364
  %369 = load i32*, i32** %26, align 8
  %370 = call i8* @extent_base_get(i32* %369)
  store i8* %370, i8** %39, align 8
  %371 = load i32*, i32** %26, align 8
  %372 = call i64 @extent_size_get(i32* %371)
  store i64 %372, i64* %40, align 8
  %373 = load i8*, i8** %39, align 8
  %374 = load i64, i64* %40, align 8
  %375 = call i64 @pages_purge_forced(i8* %373, i64 %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %368
  %378 = load i8*, i8** %39, align 8
  %379 = load i64, i64* %40, align 8
  %380 = call i32 @memset(i8* %378, i32 0, i64 %379)
  br label %381

381:                                              ; preds = %377, %368
  br label %382

382:                                              ; preds = %381, %364, %360
  %383 = load i32*, i32** %26, align 8
  store i32* %383, i32** %11, align 8
  br label %389

384:                                              ; preds = %293, %275, %175, %165, %123, %100, %78
  %385 = load i32*, i32** %12, align 8
  %386 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %387 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %386, i32 0, i32 2
  %388 = call i32 @malloc_mutex_unlock(i32* %385, i32* %387)
  store i32* null, i32** %11, align 8
  br label %389

389:                                              ; preds = %384, %382
  %390 = load i32*, i32** %11, align 8
  ret i32* %390
}

declare dso_local i32 @malloc_mutex_assert_owner(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @PAGE_CEILING(i64) #1

declare dso_local i64 @sz_pind2sz(i64) #1

declare dso_local i32* @extent_alloc(i32*, %struct.TYPE_23__*) #1

declare dso_local i8* @extent_alloc_default_impl(i32*, %struct.TYPE_23__*, i32*, i64, i64, i32*, i32*) #1

declare dso_local i32 @extent_hook_pre_reentrancy(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @arena_ind_get(%struct.TYPE_23__*) #1

declare dso_local i32 @extent_hook_post_reentrancy(i32*) #1

declare dso_local i32 @extent_init(i32*, %struct.TYPE_23__*, i8*, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @arena_extent_sn_next(%struct.TYPE_23__*) #1

declare dso_local i32 @extent_dalloc(i32*, %struct.TYPE_23__*, i32*) #1

declare dso_local i64 @extent_register_no_gdump_add(i32*, i32*) #1

declare dso_local i32 @extents_leak(i32*, %struct.TYPE_23__*, %struct.TYPE_22__**, i32*, i32*, i32) #1

declare dso_local i64 @extent_zeroed_get(i32*) #1

declare dso_local i64 @extent_committed_get(i32*) #1

declare dso_local i32* @tsdn_rtree_ctx(i32*, i32*) #1

declare dso_local i64 @extent_split_interior(i32*, %struct.TYPE_23__*, %struct.TYPE_22__**, i32*, i32**, i32**, i32**, i32**, i32**, i32*, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @extent_record(i32*, %struct.TYPE_23__*, %struct.TYPE_22__**, i32*, i32*, i32) #1

declare dso_local i32 @extent_gdump_add(i32*, i32*) #1

declare dso_local i32 @extent_deregister_no_gdump_sub(i32*, i32*) #1

declare dso_local i64 @extent_commit_impl(i32*, %struct.TYPE_23__*, %struct.TYPE_22__**, i32*, i32, i64, i32) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i32 @extent_zeroed_set(i32*, i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i32 @extent_addr_randomize(i32*, i32*, i64) #1

declare dso_local i32 @extent_slab_set(i32*, i32) #1

declare dso_local i32 @extent_interior_register(i32*, i32*, i32*, i32) #1

declare dso_local i8* @extent_base_get(i32*) #1

declare dso_local i64 @pages_purge_forced(i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_arena.c_arena_new.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_arena.c_arena_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_7__ = type { i32, i32 }

@CACHELINE = common dso_local global i32 0, align 4
@ATOMIC_RELAXED = common dso_local global i32 0, align 4
@config_stats = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"tcache_ql\00", align 1
@WITNESS_RANK_TCACHE_QL = common dso_local global i32 0, align 4
@malloc_mutex_rank_exclusive = common dso_local global i32 0, align 4
@config_prof = common dso_local global i64 0, align 8
@config_cache_oblivious = common dso_local global i64 0, align 8
@config_debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"arena_large\00", align 1
@WITNESS_RANK_ARENA_LARGE = common dso_local global i32 0, align 4
@extent_state_dirty = common dso_local global i32 0, align 4
@extent_state_muzzy = common dso_local global i32 0, align 4
@extent_state_retained = common dso_local global i32 0, align 4
@HUGEPAGE = common dso_local global i32 0, align 4
@EXTENT_GROW_MAX_PIND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"extent_grow\00", align 1
@WITNESS_RANK_EXTENT_GROW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"extent_avail\00", align 1
@WITNESS_RANK_EXTENT_AVAIL = common dso_local global i32 0, align 4
@NBINS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @arena_new(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32* (...) @b0get()
  store i32* %15, i32** %9, align 8
  br label %25

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @base_new(i32* %17, i32 %18, i32* %19)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %260

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %14
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* @CACHELINE, align 4
  %29 = call i64 @base_alloc(i32* %26, i32* %27, i32 128, i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %8, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = icmp eq %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %252

34:                                               ; preds = %25
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 25
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* @ATOMIC_RELAXED, align 4
  %40 = call i32 @atomic_store_u(i32* %38, i32 0, i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 25
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* @ATOMIC_RELAXED, align 4
  %46 = call i32 @atomic_store_u(i32* %44, i32 0, i32 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 24
  store i32* null, i32** %48, align 8
  %49 = load i64, i64* @config_stats, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %34
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 8
  %55 = call i64 @arena_stats_init(i32* %52, %struct.TYPE_7__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %252

58:                                               ; preds = %51
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 23
  %61 = call i32 @ql_new(i32* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 22
  %64 = call i32 @ql_new(i32* %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 21
  %67 = load i32, i32* @WITNESS_RANK_TCACHE_QL, align 4
  %68 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %69 = call i64 @malloc_mutex_init(i32* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %252

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %34
  %74 = load i64, i64* @config_prof, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 20
  %80 = call i64 @prof_accum_init(i32* %77, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %252

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %73
  %85 = load i64, i64* @config_cache_oblivious, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %84
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 19
  %90 = load i64, i64* @config_debug, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %6, align 4
  %94 = zext i32 %93 to i64
  br label %98

95:                                               ; preds = %87
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = ptrtoint %struct.TYPE_6__* %96 to i64
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi i64 [ %94, %92 ], [ %97, %95 ]
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* @ATOMIC_RELAXED, align 4
  %102 = call i32 @atomic_store_zu(i32* %89, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %84
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 18
  %106 = load i32, i32* @ATOMIC_RELAXED, align 4
  %107 = call i32 @atomic_store_zu(i32* %105, i32 0, i32 %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 17
  %110 = call i64 (...) @extent_dss_prec_get()
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* @ATOMIC_RELAXED, align 4
  %113 = call i32 @atomic_store_u(i32* %109, i32 %111, i32 %112)
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 16
  %116 = load i32, i32* @ATOMIC_RELAXED, align 4
  %117 = call i32 @atomic_store_zu(i32* %115, i32 0, i32 %116)
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 15
  %120 = call i32 @extent_list_init(i32* %119)
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 14
  %123 = load i32, i32* @WITNESS_RANK_ARENA_LARGE, align 4
  %124 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %125 = call i64 @malloc_mutex_init(i32* %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %103
  br label %252

128:                                              ; preds = %103
  %129 = load i32*, i32** %5, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 13
  %132 = load i32, i32* @extent_state_dirty, align 4
  %133 = call i64 @extents_init(i32* %129, i32* %131, i32 %132, i32 1)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %252

136:                                              ; preds = %128
  %137 = load i32*, i32** %5, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 12
  %140 = load i32, i32* @extent_state_muzzy, align 4
  %141 = call i64 @extents_init(i32* %137, i32* %139, i32 %140, i32 0)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %252

144:                                              ; preds = %136
  %145 = load i32*, i32** %5, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 11
  %148 = load i32, i32* @extent_state_retained, align 4
  %149 = call i64 @extents_init(i32* %145, i32* %147, i32 %148, i32 0)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %252

152:                                              ; preds = %144
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 10
  %155 = call i32 (...) @arena_dirty_decay_ms_default_get()
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = call i64 @arena_decay_init(i32* %154, i32 %155, i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %152
  br label %252

162:                                              ; preds = %152
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 9
  %165 = call i32 (...) @arena_muzzy_decay_ms_default_get()
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = call i64 @arena_decay_init(i32* %164, i32 %165, i32* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  br label %252

172:                                              ; preds = %162
  %173 = load i32, i32* @HUGEPAGE, align 4
  %174 = call i32 @sz_psz2ind(i32 %173)
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 7
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* @EXTENT_GROW_MAX_PIND, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 6
  store i32 %177, i32* %179, align 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 5
  %182 = load i32, i32* @WITNESS_RANK_EXTENT_GROW, align 4
  %183 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %184 = call i64 @malloc_mutex_init(i32* %181, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %172
  br label %252

187:                                              ; preds = %172
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 4
  %190 = call i32 @extent_avail_new(i32* %189)
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 3
  %193 = load i32, i32* @WITNESS_RANK_EXTENT_AVAIL, align 4
  %194 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %195 = call i64 @malloc_mutex_init(i32* %192, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %193, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %187
  br label %252

198:                                              ; preds = %187
  store i32 0, i32* %10, align 4
  br label %199

199:                                              ; preds = %215, %198
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* @NBINS, align 4
  %202 = icmp ult i32 %200, %201
  br i1 %202, label %203, label %218

203:                                              ; preds = %199
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %10, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = call i32 @bin_init(i32* %209)
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %203
  br label %252

214:                                              ; preds = %203
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %10, align 4
  %217 = add i32 %216, 1
  store i32 %217, i32* %10, align 4
  br label %199

218:                                              ; preds = %199
  %219 = load i32*, i32** %9, align 8
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  store i32* %219, i32** %221, align 8
  %222 = load i32, i32* %6, align 4
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %224 = call i32 @arena_set(i32 %222, %struct.TYPE_6__* %223)
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = call i32 @nstime_init(i32* %226, i32 0)
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = call i32 @nstime_update(i32* %229)
  %231 = load i32, i32* %6, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %250

233:                                              ; preds = %218
  %234 = load i32*, i32** %5, align 8
  %235 = call i32 @tsdn_null(i32* %234)
  %236 = icmp ne i32 %235, 0
  %237 = xor i1 %236, true
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  %240 = load i32*, i32** %5, align 8
  %241 = call i32 @tsdn_tsd(i32* %240)
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %243 = call i32 @pre_reentrancy(i32 %241, %struct.TYPE_6__* %242)
  br i1 true, label %244, label %246

244:                                              ; preds = %233
  %245 = call i32 (...) @hooks_arena_new_hook()
  br label %246

246:                                              ; preds = %244, %233
  %247 = load i32*, i32** %5, align 8
  %248 = call i32 @tsdn_tsd(i32* %247)
  %249 = call i32 @post_reentrancy(i32 %248)
  br label %250

250:                                              ; preds = %246, %218
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %251, %struct.TYPE_6__** %4, align 8
  br label %260

252:                                              ; preds = %213, %197, %186, %171, %161, %151, %143, %135, %127, %82, %71, %57, %33
  %253 = load i32, i32* %6, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load i32*, i32** %5, align 8
  %257 = load i32*, i32** %9, align 8
  %258 = call i32 @base_delete(i32* %256, i32* %257)
  br label %259

259:                                              ; preds = %255, %252
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %260

260:                                              ; preds = %259, %250, %23
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %261
}

declare dso_local i32* @b0get(...) #1

declare dso_local i32* @base_new(i32*, i32, i32*) #1

declare dso_local i64 @base_alloc(i32*, i32*, i32, i32) #1

declare dso_local i32 @atomic_store_u(i32*, i32, i32) #1

declare dso_local i64 @arena_stats_init(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @ql_new(i32*) #1

declare dso_local i64 @malloc_mutex_init(i32*, i8*, i32, i32) #1

declare dso_local i64 @prof_accum_init(i32*, i32*) #1

declare dso_local i32 @atomic_store_zu(i32*, i32, i32) #1

declare dso_local i64 @extent_dss_prec_get(...) #1

declare dso_local i32 @extent_list_init(i32*) #1

declare dso_local i64 @extents_init(i32*, i32*, i32, i32) #1

declare dso_local i64 @arena_decay_init(i32*, i32, i32*) #1

declare dso_local i32 @arena_dirty_decay_ms_default_get(...) #1

declare dso_local i32 @arena_muzzy_decay_ms_default_get(...) #1

declare dso_local i32 @sz_psz2ind(i32) #1

declare dso_local i32 @extent_avail_new(i32*) #1

declare dso_local i32 @bin_init(i32*) #1

declare dso_local i32 @arena_set(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @nstime_init(i32*, i32) #1

declare dso_local i32 @nstime_update(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tsdn_null(i32*) #1

declare dso_local i32 @pre_reentrancy(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @tsdn_tsd(i32*) #1

declare dso_local i32 @hooks_arena_new_hook(...) #1

declare dso_local i32 @post_reentrancy(i32) #1

declare dso_local i32 @base_delete(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_unload.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i32*, i8*, i64, %struct.TYPE_35__, %struct.TYPE_34__, i32*, i32*, %struct.TYPE_36__*, i32, i32*, %struct.TYPE_36__**, %struct.TYPE_33__, i8* }
%struct.TYPE_35__ = type { i32, i32*, %struct.TYPE_36__** }
%struct.TYPE_34__ = type { i32, i32*, %struct.TYPE_36__** }
%struct.TYPE_36__ = type { i32, %struct.TYPE_32__*, %struct.TYPE_36__** }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_33__ = type { i64 }

@spa_namespace_lock = common dso_local global i32 0, align 4
@POOL_STATE_UNINITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"UNLOADING\00", align 1
@VDEV_INITIALIZE_ACTIVE = common dso_local global i32 0, align 4
@VDEV_TRIM_ACTIVE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@max_ncpus = common dso_local global i32 0, align 4
@SCL_ALL = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_37__*)* @spa_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_unload(%struct.TYPE_37__* %0) #0 {
  %2 = alloca %struct.TYPE_37__*, align 8
  %3 = alloca %struct.TYPE_36__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %2, align 8
  %9 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %12 = call i64 @spa_state(%struct.TYPE_37__* %11)
  %13 = load i64, i64* @POOL_STATE_UNINITIALIZED, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %18 = call i32 @spa_guid(%struct.TYPE_37__* %17)
  %19 = call i32 @spa_import_progress_remove(i32 %18)
  %20 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %21 = call i32 @spa_load_note(%struct.TYPE_37__* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %23 = call i32 @spa_wake_waiters(%struct.TYPE_37__* %22)
  %24 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %25 = call i64 @spa_should_flush_logs_on_unload(%struct.TYPE_37__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %29 = call i32 @spa_unload_log_sm_flush_all(%struct.TYPE_37__* %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %32 = call i32 @spa_async_suspend(%struct.TYPE_37__* %31)
  %33 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %33, i32 0, i32 7
  %35 = load %struct.TYPE_36__*, %struct.TYPE_36__** %34, align 8
  %36 = icmp ne %struct.TYPE_36__* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %38, i32 0, i32 7
  %40 = load %struct.TYPE_36__*, %struct.TYPE_36__** %39, align 8
  store %struct.TYPE_36__* %40, %struct.TYPE_36__** %3, align 8
  %41 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %42 = load i32, i32* @VDEV_INITIALIZE_ACTIVE, align 4
  %43 = call i32 @vdev_initialize_stop_all(%struct.TYPE_36__* %41, i32 %42)
  %44 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %45 = load i32, i32* @VDEV_TRIM_ACTIVE, align 4
  %46 = call i32 @vdev_trim_stop_all(%struct.TYPE_36__* %44, i32 %45)
  %47 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %48 = call i32 @vdev_autotrim_stop_all(%struct.TYPE_37__* %47)
  br label %49

49:                                               ; preds = %37, %30
  %50 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 12
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @txg_sync_stop(i32* %57)
  %59 = load i8*, i8** @B_FALSE, align 8
  %60 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %60, i32 0, i32 12
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %54, %49
  %63 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %63, i32 0, i32 7
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %64, align 8
  %66 = icmp ne %struct.TYPE_36__* %65, null
  br i1 %66, label %67, label %102

67:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %98, %67
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %70, i32 0, i32 7
  %72 = load %struct.TYPE_36__*, %struct.TYPE_36__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %69, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %68
  %77 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %77, i32 0, i32 7
  %79 = load %struct.TYPE_36__*, %struct.TYPE_36__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %81, i64 %83
  %85 = load %struct.TYPE_36__*, %struct.TYPE_36__** %84, align 8
  store %struct.TYPE_36__* %85, %struct.TYPE_36__** %5, align 8
  %86 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %87, align 8
  %89 = icmp ne %struct.TYPE_32__* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %76
  %91 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @taskq_wait(i32 %95)
  br label %97

97:                                               ; preds = %90, %76
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %68

101:                                              ; preds = %68
  br label %102

102:                                              ; preds = %101, %62
  %103 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %103, i32 0, i32 11
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %110 = call i32 @mmp_thread_stop(%struct.TYPE_37__* %109)
  br label %111

111:                                              ; preds = %108, %102
  %112 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %112, i32 0, i32 10
  %114 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %113, align 8
  %115 = icmp ne %struct.TYPE_36__** %114, null
  br i1 %115, label %116, label %144

116:                                              ; preds = %111
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %130, %116
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @max_ncpus, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %117
  %122 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %122, i32 0, i32 10
  %124 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %124, i64 %126
  %128 = load %struct.TYPE_36__*, %struct.TYPE_36__** %127, align 8
  %129 = call i32 @zio_wait(%struct.TYPE_36__* %128)
  br label %130

130:                                              ; preds = %121
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %117

133:                                              ; preds = %117
  %134 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %134, i32 0, i32 10
  %136 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %135, align 8
  %137 = load i32, i32* @max_ncpus, align 4
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @kmem_free(%struct.TYPE_36__** %136, i32 %140)
  %142 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %142, i32 0, i32 10
  store %struct.TYPE_36__** null, %struct.TYPE_36__*** %143, align 8
  br label %144

144:                                              ; preds = %133, %111
  %145 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %145, i32 0, i32 9
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %156

149:                                              ; preds = %144
  %150 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %150, i32 0, i32 9
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @spa_vdev_removal_destroy(i32* %152)
  %154 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %154, i32 0, i32 9
  store i32* null, i32** %155, align 8
  br label %156

156:                                              ; preds = %149, %144
  %157 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %158 = call i32 @spa_destroy_aux_threads(%struct.TYPE_37__* %157)
  %159 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %160 = call i32 @spa_condense_fini(%struct.TYPE_37__* %159)
  %161 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %161, i32 0, i32 8
  %163 = call i32 @bpobj_close(i32* %162)
  %164 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %165 = load i32, i32* @SCL_ALL, align 4
  %166 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %167 = load i32, i32* @RW_WRITER, align 4
  %168 = call i32 @spa_config_enter(%struct.TYPE_37__* %164, i32 %165, %struct.TYPE_37__* %166, i32 %167)
  %169 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %169, i32 0, i32 7
  %171 = load %struct.TYPE_36__*, %struct.TYPE_36__** %170, align 8
  %172 = icmp ne %struct.TYPE_36__* %171, null
  br i1 %172, label %173, label %178

173:                                              ; preds = %156
  %174 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %174, i32 0, i32 7
  %176 = load %struct.TYPE_36__*, %struct.TYPE_36__** %175, align 8
  %177 = call i32 @vdev_free(%struct.TYPE_36__* %176)
  br label %178

178:                                              ; preds = %173, %156
  %179 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %179, i32 0, i32 7
  %181 = load %struct.TYPE_36__*, %struct.TYPE_36__** %180, align 8
  %182 = icmp eq %struct.TYPE_36__* %181, null
  %183 = zext i1 %182 to i32
  %184 = call i32 @ASSERT(i32 %183)
  %185 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %185, i32 0, i32 6
  %187 = load i32*, i32** %186, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %198

189:                                              ; preds = %178
  %190 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %190, i32 0, i32 6
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @dsl_pool_close(i32* %192)
  %194 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %194, i32 0, i32 6
  store i32* null, i32** %195, align 8
  %196 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %196, i32 0, i32 5
  store i32* null, i32** %197, align 8
  br label %198

198:                                              ; preds = %189, %178
  %199 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %200 = call i32 @ddt_unload(%struct.TYPE_37__* %199)
  %201 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %202 = call i32 @spa_unload_log_sm_metadata(%struct.TYPE_37__* %201)
  %203 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %204 = call i32 @spa_l2cache_drop(%struct.TYPE_37__* %203)
  store i32 0, i32* %7, align 4
  br label %205

205:                                              ; preds = %222, %198
  %206 = load i32, i32* %7, align 4
  %207 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %206, %210
  br i1 %211, label %212, label %225

212:                                              ; preds = %205
  %213 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %215, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %216, i64 %218
  %220 = load %struct.TYPE_36__*, %struct.TYPE_36__** %219, align 8
  %221 = call i32 @vdev_free(%struct.TYPE_36__* %220)
  br label %222

222:                                              ; preds = %212
  %223 = load i32, i32* %7, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %7, align 4
  br label %205

225:                                              ; preds = %205
  %226 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %228, align 8
  %230 = icmp ne %struct.TYPE_36__** %229, null
  br i1 %230, label %231, label %247

231:                                              ; preds = %225
  %232 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %234, align 8
  %236 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = mul i64 %240, 8
  %242 = trunc i64 %241 to i32
  %243 = call i32 @kmem_free(%struct.TYPE_36__** %235, i32 %242)
  %244 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %245, i32 0, i32 2
  store %struct.TYPE_36__** null, %struct.TYPE_36__*** %246, align 8
  br label %247

247:                                              ; preds = %231, %225
  %248 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %262

253:                                              ; preds = %247
  %254 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = call i32 @nvlist_free(i32* %257)
  %259 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %260, i32 0, i32 1
  store i32* null, i32** %261, align 8
  br label %262

262:                                              ; preds = %253, %247
  %263 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %264, i32 0, i32 0
  store i32 0, i32* %265, align 8
  store i32 0, i32* %8, align 4
  br label %266

266:                                              ; preds = %292, %262
  %267 = load i32, i32* %8, align 4
  %268 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp slt i32 %267, %271
  br i1 %272, label %273, label %295

273:                                              ; preds = %266
  %274 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %275, i32 0, i32 2
  %277 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %276, align 8
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %277, i64 %279
  %281 = load %struct.TYPE_36__*, %struct.TYPE_36__** %280, align 8
  %282 = call i32 @vdev_clear_stats(%struct.TYPE_36__* %281)
  %283 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %284, i32 0, i32 2
  %286 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %285, align 8
  %287 = load i32, i32* %8, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %286, i64 %288
  %290 = load %struct.TYPE_36__*, %struct.TYPE_36__** %289, align 8
  %291 = call i32 @vdev_free(%struct.TYPE_36__* %290)
  br label %292

292:                                              ; preds = %273
  %293 = load i32, i32* %8, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %8, align 4
  br label %266

295:                                              ; preds = %266
  %296 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %297, i32 0, i32 2
  %299 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %298, align 8
  %300 = icmp ne %struct.TYPE_36__** %299, null
  br i1 %300, label %301, label %317

301:                                              ; preds = %295
  %302 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %303, i32 0, i32 2
  %305 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %304, align 8
  %306 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %306, i32 0, i32 3
  %308 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = sext i32 %309 to i64
  %311 = mul i64 %310, 8
  %312 = trunc i64 %311 to i32
  %313 = call i32 @kmem_free(%struct.TYPE_36__** %305, i32 %312)
  %314 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %315, i32 0, i32 2
  store %struct.TYPE_36__** null, %struct.TYPE_36__*** %316, align 8
  br label %317

317:                                              ; preds = %301, %295
  %318 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %319 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = icmp ne i32* %321, null
  br i1 %322, label %323, label %332

323:                                              ; preds = %317
  %324 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %325 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %324, i32 0, i32 3
  %326 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %325, i32 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = call i32 @nvlist_free(i32* %327)
  %329 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %330 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %329, i32 0, i32 3
  %331 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %330, i32 0, i32 1
  store i32* null, i32** %331, align 8
  br label %332

332:                                              ; preds = %323, %317
  %333 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %334 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %333, i32 0, i32 3
  %335 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %334, i32 0, i32 0
  store i32 0, i32* %335, align 8
  %336 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %337 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %336, i32 0, i32 2
  store i64 0, i64* %337, align 8
  %338 = load i8*, i8** @B_FALSE, align 8
  %339 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %339, i32 0, i32 1
  store i8* %338, i8** %340, align 8
  %341 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %342 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = icmp ne i32* %343, null
  br i1 %344, label %345, label %352

345:                                              ; preds = %332
  %346 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %347 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %346, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = call i32 @spa_strfree(i32* %348)
  %350 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %351 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %350, i32 0, i32 0
  store i32* null, i32** %351, align 8
  br label %352

352:                                              ; preds = %345, %332
  %353 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %354 = load i32, i32* @SCL_ALL, align 4
  %355 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %356 = call i32 @spa_config_exit(%struct.TYPE_37__* %353, i32 %354, %struct.TYPE_37__* %355)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64 @spa_state(%struct.TYPE_37__*) #1

declare dso_local i32 @spa_import_progress_remove(i32) #1

declare dso_local i32 @spa_guid(%struct.TYPE_37__*) #1

declare dso_local i32 @spa_load_note(%struct.TYPE_37__*, i8*) #1

declare dso_local i32 @spa_wake_waiters(%struct.TYPE_37__*) #1

declare dso_local i64 @spa_should_flush_logs_on_unload(%struct.TYPE_37__*) #1

declare dso_local i32 @spa_unload_log_sm_flush_all(%struct.TYPE_37__*) #1

declare dso_local i32 @spa_async_suspend(%struct.TYPE_37__*) #1

declare dso_local i32 @vdev_initialize_stop_all(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @vdev_trim_stop_all(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @vdev_autotrim_stop_all(%struct.TYPE_37__*) #1

declare dso_local i32 @txg_sync_stop(i32*) #1

declare dso_local i32 @taskq_wait(i32) #1

declare dso_local i32 @mmp_thread_stop(%struct.TYPE_37__*) #1

declare dso_local i32 @zio_wait(%struct.TYPE_36__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_36__**, i32) #1

declare dso_local i32 @spa_vdev_removal_destroy(i32*) #1

declare dso_local i32 @spa_destroy_aux_threads(%struct.TYPE_37__*) #1

declare dso_local i32 @spa_condense_fini(%struct.TYPE_37__*) #1

declare dso_local i32 @bpobj_close(i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_37__*, i32, %struct.TYPE_37__*, i32) #1

declare dso_local i32 @vdev_free(%struct.TYPE_36__*) #1

declare dso_local i32 @dsl_pool_close(i32*) #1

declare dso_local i32 @ddt_unload(%struct.TYPE_37__*) #1

declare dso_local i32 @spa_unload_log_sm_metadata(%struct.TYPE_37__*) #1

declare dso_local i32 @spa_l2cache_drop(%struct.TYPE_37__*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @vdev_clear_stats(%struct.TYPE_36__*) #1

declare dso_local i32 @spa_strfree(i32*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_37__*, i32, %struct.TYPE_37__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

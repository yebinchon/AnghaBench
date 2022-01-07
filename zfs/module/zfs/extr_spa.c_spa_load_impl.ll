; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_load_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_load_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, i64, i64, i64, i32, i32, i32, i8*, %struct.TYPE_33__, i32 }
%struct.TYPE_33__ = type { i64 }

@B_FALSE = common dso_local global i32 0, align 4
@ZFS_IMPORT_CHECKPOINT = common dso_local global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4
@SPA_CONFIG_SRC_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"LOADING\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"LOADING checkpointed uberblock\00", align 1
@SPA_LOAD_TRYIMPORT = common dso_local global i64 0, align 8
@VDEV_AUX_UNSUP_FEAT = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@SPA_LOAD_RECOVER = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"checkpoint rewind\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"rewound state to txg=%llu\00", align 1
@SPA_ASYNC_RESILVER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@dsl_destroy_inconsistent = common dso_local global i32 0, align 4
@DS_FIND_CHILDREN = common dso_local global i32 0, align 4
@SCL_CONFIG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"LOADED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_34__*, i32, i8**)* @spa_load_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_load_impl(%struct.TYPE_34__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @B_FALSE, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ZFS_IMPORT_CHECKPOINT, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @B_FALSE, align 4
  store i32 %19, i32* %11, align 4
  %20 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SPA_CONFIG_SRC_NONE, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %30 = call i32 @spa_load_note(%struct.TYPE_34__* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @spa_ld_mos_with_trusted_config(%struct.TYPE_34__* %31, i32 %32, i32* %11)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %271

38:                                               ; preds = %3
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  %42 = load i8*, i8** @B_TRUE, align 8
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %45 = call i32 @spa_ld_checkpoint_rewind(%struct.TYPE_34__* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %271

50:                                               ; preds = %41
  %51 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %52 = call i32 @spa_ld_prepare_for_reload(%struct.TYPE_34__* %51)
  %53 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %54 = call i32 @spa_load_note(%struct.TYPE_34__* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @spa_ld_mos_with_trusted_config(%struct.TYPE_34__* %55, i32 %56, i32* null)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %271

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %38
  %64 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %65 = call i32 @spa_ld_read_checkpoint_txg(%struct.TYPE_34__* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %271

70:                                               ; preds = %63
  %71 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %72 = call i32 @spa_ld_open_indirect_vdev_metadata(%struct.TYPE_34__* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %271

77:                                               ; preds = %70
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %79 = call i32 @spa_ld_check_features(%struct.TYPE_34__* %78, i32* %9)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %271

84:                                               ; preds = %77
  %85 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %86 = call i32 @spa_ld_load_special_directories(%struct.TYPE_34__* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %271

91:                                               ; preds = %84
  %92 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %93 = call i32 @spa_ld_get_props(%struct.TYPE_34__* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %271

98:                                               ; preds = %91
  %99 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @spa_ld_open_aux_vdevs(%struct.TYPE_34__* %99, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %4, align 4
  br label %271

106:                                              ; preds = %98
  %107 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %108 = call i32 @spa_ld_load_vdev_metadata(%struct.TYPE_34__* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %4, align 4
  br label %271

113:                                              ; preds = %106
  %114 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %115 = call i32 @spa_ld_load_dedup_tables(%struct.TYPE_34__* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %4, align 4
  br label %271

120:                                              ; preds = %113
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i8**, i8*** %7, align 8
  %124 = call i32 @spa_ld_verify_logs(%struct.TYPE_34__* %121, i32 %122, i8** %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %4, align 4
  br label %271

129:                                              ; preds = %120
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %129
  %133 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @SPA_LOAD_TRYIMPORT, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @ASSERT(i32 %138)
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @VDEV_AUX_UNSUP_FEAT, align 4
  %144 = load i32, i32* @ENOTSUP, align 4
  %145 = call i32 @spa_vdev_err(i32 %142, i32 %143, i32 %144)
  store i32 %145, i32* %4, align 4
  br label %271

146:                                              ; preds = %129
  %147 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %148 = call i32 @spa_ld_verify_pool_data(%struct.TYPE_34__* %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %4, align 4
  br label %271

153:                                              ; preds = %146
  %154 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %155 = call i32 @spa_update_dspace(%struct.TYPE_34__* %154)
  %156 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %157 = call i64 @spa_writeable(%struct.TYPE_34__* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %265

159:                                              ; preds = %153
  %160 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @SPA_LOAD_RECOVER, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %171, label %165

165:                                              ; preds = %159
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @UINT64_MAX, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %265

171:                                              ; preds = %165, %159
  %172 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %172, i32 0, i32 9
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %12, align 4
  %175 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @SPA_LOAD_TRYIMPORT, align 8
  %179 = icmp ne i64 %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @ASSERT(i32 %180)
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %171
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %186 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %186, i32 0, i32 8
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = call i32 @spa_history_log_internal(%struct.TYPE_34__* %185, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %184, %171
  %193 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %194 = call i32 @spa_ld_claim_log_blocks(%struct.TYPE_34__* %193)
  %195 = load i8*, i8** @B_TRUE, align 8
  %196 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %196, i32 0, i32 7
  store i8* %195, i8** %197, align 8
  %198 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @txg_sync_start(i32 %200)
  %202 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %203 = call i32 @mmp_thread_start(%struct.TYPE_34__* %202)
  %204 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @txg_wait_synced(i32 %206, i32 %209)
  %211 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @spa_ld_check_for_config_update(%struct.TYPE_34__* %211, i32 %212, i32 %213)
  %215 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @dsl_scan_resilvering(i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %230, label %220

220:                                              ; preds = %192
  %221 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = call i64 @vdev_resilver_needed(i32 %223, i32* null, i32* null)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %220
  %227 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %228 = load i32, i32* @SPA_ASYNC_RESILVER, align 4
  %229 = call i32 @spa_async_request(%struct.TYPE_34__* %227, i32 %228)
  br label %230

230:                                              ; preds = %226, %220, %192
  %231 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %232 = call i32 @spa_history_log_version(%struct.TYPE_34__* %231, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %233 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %234 = call i32 @spa_restart_removal(%struct.TYPE_34__* %233)
  %235 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %236 = call i32 @spa_spawn_aux_threads(%struct.TYPE_34__* %235)
  %237 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %238 = call i32 @spa_name(%struct.TYPE_34__* %237)
  %239 = load i32, i32* @dsl_destroy_inconsistent, align 4
  %240 = load i32, i32* @DS_FIND_CHILDREN, align 4
  %241 = call i32 @dmu_objset_find(i32 %238, i32 %239, i32* null, i32 %240)
  %242 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @dsl_pool_clean_tmp_userrefs(i32 %244)
  %246 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %247 = load i32, i32* @SCL_CONFIG, align 4
  %248 = load i32, i32* @FTAG, align 4
  %249 = load i32, i32* @RW_READER, align 4
  %250 = call i32 @spa_config_enter(%struct.TYPE_34__* %246, i32 %247, i32 %248, i32 %249)
  %251 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @vdev_initialize_restart(i32 %253)
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @vdev_trim_restart(i32 %257)
  %259 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %260 = call i32 @vdev_autotrim_restart(%struct.TYPE_34__* %259)
  %261 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %262 = load i32, i32* @SCL_CONFIG, align 4
  %263 = load i32, i32* @FTAG, align 4
  %264 = call i32 @spa_config_exit(%struct.TYPE_34__* %261, i32 %262, i32 %263)
  br label %265

265:                                              ; preds = %230, %165, %153
  %266 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %267 = call i32 @spa_guid(%struct.TYPE_34__* %266)
  %268 = call i32 @spa_import_progress_remove(i32 %267)
  %269 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %270 = call i32 @spa_load_note(%struct.TYPE_34__* %269, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %271

271:                                              ; preds = %265, %151, %132, %127, %118, %111, %104, %96, %89, %82, %75, %68, %60, %48, %36
  %272 = load i32, i32* %4, align 4
  ret i32 %272
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @spa_load_note(%struct.TYPE_34__*, i8*) #1

declare dso_local i32 @spa_ld_mos_with_trusted_config(%struct.TYPE_34__*, i32, i32*) #1

declare dso_local i32 @spa_ld_checkpoint_rewind(%struct.TYPE_34__*) #1

declare dso_local i32 @spa_ld_prepare_for_reload(%struct.TYPE_34__*) #1

declare dso_local i32 @spa_ld_read_checkpoint_txg(%struct.TYPE_34__*) #1

declare dso_local i32 @spa_ld_open_indirect_vdev_metadata(%struct.TYPE_34__*) #1

declare dso_local i32 @spa_ld_check_features(%struct.TYPE_34__*, i32*) #1

declare dso_local i32 @spa_ld_load_special_directories(%struct.TYPE_34__*) #1

declare dso_local i32 @spa_ld_get_props(%struct.TYPE_34__*) #1

declare dso_local i32 @spa_ld_open_aux_vdevs(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @spa_ld_load_vdev_metadata(%struct.TYPE_34__*) #1

declare dso_local i32 @spa_ld_load_dedup_tables(%struct.TYPE_34__*) #1

declare dso_local i32 @spa_ld_verify_logs(%struct.TYPE_34__*, i32, i8**) #1

declare dso_local i32 @spa_vdev_err(i32, i32, i32) #1

declare dso_local i32 @spa_ld_verify_pool_data(%struct.TYPE_34__*) #1

declare dso_local i32 @spa_update_dspace(%struct.TYPE_34__*) #1

declare dso_local i64 @spa_writeable(%struct.TYPE_34__*) #1

declare dso_local i32 @spa_history_log_internal(%struct.TYPE_34__*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @spa_ld_claim_log_blocks(%struct.TYPE_34__*) #1

declare dso_local i32 @txg_sync_start(i32) #1

declare dso_local i32 @mmp_thread_start(%struct.TYPE_34__*) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @spa_ld_check_for_config_update(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @dsl_scan_resilvering(i32) #1

declare dso_local i64 @vdev_resilver_needed(i32, i32*, i32*) #1

declare dso_local i32 @spa_async_request(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @spa_history_log_version(%struct.TYPE_34__*, i8*, i32*) #1

declare dso_local i32 @spa_restart_removal(%struct.TYPE_34__*) #1

declare dso_local i32 @spa_spawn_aux_threads(%struct.TYPE_34__*) #1

declare dso_local i32 @dmu_objset_find(i32, i32, i32*, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_34__*) #1

declare dso_local i32 @dsl_pool_clean_tmp_userrefs(i32) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_34__*, i32, i32, i32) #1

declare dso_local i32 @vdev_initialize_restart(i32) #1

declare dso_local i32 @vdev_trim_restart(i32) #1

declare dso_local i32 @vdev_autotrim_restart(%struct.TYPE_34__*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @spa_import_progress_remove(i32) #1

declare dso_local i32 @spa_guid(%struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

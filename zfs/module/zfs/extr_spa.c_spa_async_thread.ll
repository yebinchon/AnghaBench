; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_async_thread.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_async_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_24__, %struct.TYPE_23__, i32, %struct.TYPE_26__* }
%struct.TYPE_24__ = type { i32, i32* }
%struct.TYPE_23__ = type { i32, i32* }
%struct.TYPE_26__ = type { i32 }

@SPA_ASYNC_CONFIG_UPDATE = common dso_local global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4
@SPA_CONFIG_UPDATE_POOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vdev online\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"pool '%s' size: %llu(+%llu)\00", align 1
@SPA_ASYNC_REMOVE = common dso_local global i32 0, align 4
@SCL_NONE = common dso_local global i32 0, align 4
@SPA_ASYNC_AUTOEXPAND = common dso_local global i32 0, align 4
@SCL_CONFIG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@SPA_ASYNC_PROBE = common dso_local global i32 0, align 4
@SPA_ASYNC_RESILVER_DONE = common dso_local global i32 0, align 4
@SPA_ASYNC_RESILVER = common dso_local global i32 0, align 4
@SPA_FEATURE_RESILVER_DEFER = common dso_local global i32 0, align 4
@SPA_ASYNC_INITIALIZE_RESTART = common dso_local global i32 0, align 4
@SPA_ASYNC_TRIM_RESTART = common dso_local global i32 0, align 4
@SPA_ASYNC_AUTOTRIM_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @spa_async_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_async_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %11, %struct.TYPE_25__** %3, align 8
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  store %struct.TYPE_26__* %14, %struct.TYPE_26__** %4, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %21 = call i32 @mutex_enter(i32* %20)
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %5, align 4
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 1
  %29 = call i32 @mutex_exit(i32* %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SPA_ASYNC_CONFIG_UPDATE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %1
  %35 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %37 = call i32 @spa_normal_class(%struct.TYPE_25__* %36)
  %38 = call i64 @metaslab_class_get_space(i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %40 = call i32 @spa_special_class(%struct.TYPE_25__* %39)
  %41 = call i64 @metaslab_class_get_space(i32 %40)
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %6, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %45 = call i32 @spa_dedup_class(%struct.TYPE_25__* %44)
  %46 = call i64 @metaslab_class_get_space(i32 %45)
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %50 = load i32, i32* @SPA_CONFIG_UPDATE_POOL, align 4
  %51 = call i32 @spa_config_update(%struct.TYPE_25__* %49, i32 %50)
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %53 = call i32 @spa_normal_class(%struct.TYPE_25__* %52)
  %54 = call i64 @metaslab_class_get_space(i32 %53)
  store i64 %54, i64* %7, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %56 = call i32 @spa_special_class(%struct.TYPE_25__* %55)
  %57 = call i64 @metaslab_class_get_space(i32 %56)
  %58 = load i64, i64* %7, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %7, align 8
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %61 = call i32 @spa_dedup_class(%struct.TYPE_25__* %60)
  %62 = call i64 @metaslab_class_get_space(i32 %61)
  %63 = load i64, i64* %7, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %7, align 8
  %65 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %34
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %72 = call i32 @spa_name(%struct.TYPE_25__* %71)
  %73 = load i64, i64* %7, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %6, align 8
  %77 = sub nsw i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @spa_history_log_internal(%struct.TYPE_25__* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %74, i32 %78)
  br label %80

80:                                               ; preds = %69, %34
  br label %81

81:                                               ; preds = %80, %1
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @SPA_ASYNC_REMOVE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %141

86:                                               ; preds = %81
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %88 = load i32, i32* @SCL_NONE, align 4
  %89 = call i32 @spa_vdev_state_enter(%struct.TYPE_25__* %87, i32 %88)
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @spa_async_remove(%struct.TYPE_25__* %90, i32 %93)
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %113, %86
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %95
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @spa_async_remove(%struct.TYPE_25__* %103, i32 %111)
  br label %113

113:                                              ; preds = %102
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %95

116:                                              ; preds = %95
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %135, %116
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %117
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @spa_async_remove(%struct.TYPE_25__* %125, i32 %133)
  br label %135

135:                                              ; preds = %124
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %117

138:                                              ; preds = %117
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %140 = call i32 @spa_vdev_state_exit(%struct.TYPE_25__* %139, i32* null, i32 0)
  br label %141

141:                                              ; preds = %138, %81
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @SPA_ASYNC_AUTOEXPAND, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %165

146:                                              ; preds = %141
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %148 = call i32 @spa_suspended(%struct.TYPE_25__* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %165, label %150

150:                                              ; preds = %146
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %152 = load i32, i32* @SCL_CONFIG, align 4
  %153 = load i32, i32* @FTAG, align 4
  %154 = load i32, i32* @RW_READER, align 4
  %155 = call i32 @spa_config_enter(%struct.TYPE_25__* %151, i32 %152, i32 %153, i32 %154)
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @spa_async_autoexpand(%struct.TYPE_25__* %156, i32 %159)
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %162 = load i32, i32* @SCL_CONFIG, align 4
  %163 = load i32, i32* @FTAG, align 4
  %164 = call i32 @spa_config_exit(%struct.TYPE_25__* %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %150, %146, %141
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @SPA_ASYNC_PROBE, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %165
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %172 = load i32, i32* @SCL_NONE, align 4
  %173 = call i32 @spa_vdev_state_enter(%struct.TYPE_25__* %171, i32 %172)
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @spa_async_probe(%struct.TYPE_25__* %174, i32 %177)
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %180 = call i32 @spa_vdev_state_exit(%struct.TYPE_25__* %179, i32* null, i32 0)
  br label %181

181:                                              ; preds = %170, %165
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @SPA_ASYNC_RESILVER_DONE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %188 = call i32 @spa_vdev_resilver_done(%struct.TYPE_25__* %187)
  br label %189

189:                                              ; preds = %186, %181
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* @SPA_ASYNC_RESILVER, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %189
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %196 = call i32 @dsl_scan_resilvering(%struct.TYPE_26__* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %194
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @SPA_FEATURE_RESILVER_DEFER, align 4
  %203 = call i32 @spa_feature_is_enabled(i32 %201, i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %198, %194
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %207 = call i32 @dsl_resilver_restart(%struct.TYPE_26__* %206, i32 0)
  br label %208

208:                                              ; preds = %205, %198, %189
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* @SPA_ASYNC_INITIALIZE_RESTART, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %229

213:                                              ; preds = %208
  %214 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %216 = load i32, i32* @SCL_CONFIG, align 4
  %217 = load i32, i32* @FTAG, align 4
  %218 = load i32, i32* @RW_READER, align 4
  %219 = call i32 @spa_config_enter(%struct.TYPE_25__* %215, i32 %216, i32 %217, i32 %218)
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @vdev_initialize_restart(i32 %222)
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %225 = load i32, i32* @SCL_CONFIG, align 4
  %226 = load i32, i32* @FTAG, align 4
  %227 = call i32 @spa_config_exit(%struct.TYPE_25__* %224, i32 %225, i32 %226)
  %228 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  br label %229

229:                                              ; preds = %213, %208
  %230 = load i32, i32* %5, align 4
  %231 = load i32, i32* @SPA_ASYNC_TRIM_RESTART, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %250

234:                                              ; preds = %229
  %235 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %237 = load i32, i32* @SCL_CONFIG, align 4
  %238 = load i32, i32* @FTAG, align 4
  %239 = load i32, i32* @RW_READER, align 4
  %240 = call i32 @spa_config_enter(%struct.TYPE_25__* %236, i32 %237, i32 %238, i32 %239)
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @vdev_trim_restart(i32 %243)
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %246 = load i32, i32* @SCL_CONFIG, align 4
  %247 = load i32, i32* @FTAG, align 4
  %248 = call i32 @spa_config_exit(%struct.TYPE_25__* %245, i32 %246, i32 %247)
  %249 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  br label %250

250:                                              ; preds = %234, %229
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* @SPA_ASYNC_AUTOTRIM_RESTART, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %269

255:                                              ; preds = %250
  %256 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %258 = load i32, i32* @SCL_CONFIG, align 4
  %259 = load i32, i32* @FTAG, align 4
  %260 = load i32, i32* @RW_READER, align 4
  %261 = call i32 @spa_config_enter(%struct.TYPE_25__* %257, i32 %258, i32 %259, i32 %260)
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %263 = call i32 @vdev_autotrim_restart(%struct.TYPE_25__* %262)
  %264 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %265 = load i32, i32* @SCL_CONFIG, align 4
  %266 = load i32, i32* @FTAG, align 4
  %267 = call i32 @spa_config_exit(%struct.TYPE_25__* %264, i32 %265, i32 %266)
  %268 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  br label %269

269:                                              ; preds = %255, %250
  %270 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %270, i32 0, i32 1
  %272 = call i32 @mutex_enter(i32* %271)
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 3
  store i32* null, i32** %274, align 8
  %275 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %275, i32 0, i32 2
  %277 = call i32 @cv_broadcast(i32* %276)
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 1
  %280 = call i32 @mutex_exit(i32* %279)
  %281 = call i32 (...) @thread_exit()
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i64 @metaslab_class_get_space(i32) #1

declare dso_local i32 @spa_normal_class(%struct.TYPE_25__*) #1

declare dso_local i32 @spa_special_class(%struct.TYPE_25__*) #1

declare dso_local i32 @spa_dedup_class(%struct.TYPE_25__*) #1

declare dso_local i32 @spa_config_update(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @spa_history_log_internal(%struct.TYPE_25__*, i8*, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_25__*) #1

declare dso_local i32 @spa_vdev_state_enter(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @spa_async_remove(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @spa_vdev_state_exit(%struct.TYPE_25__*, i32*, i32) #1

declare dso_local i32 @spa_suspended(%struct.TYPE_25__*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @spa_async_autoexpand(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @spa_async_probe(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @spa_vdev_resilver_done(%struct.TYPE_25__*) #1

declare dso_local i32 @dsl_scan_resilvering(%struct.TYPE_26__*) #1

declare dso_local i32 @spa_feature_is_enabled(i32, i32) #1

declare dso_local i32 @dsl_resilver_restart(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @vdev_initialize_restart(i32) #1

declare dso_local i32 @vdev_trim_restart(i32) #1

declare dso_local i32 @vdev_autotrim_restart(%struct.TYPE_25__*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @thread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

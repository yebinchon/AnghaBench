; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_removal.c_spa_vdev_remove.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_removal.c_spa_vdev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i8*, i32, i32* }
%struct.TYPE_21__ = type { i8*, i32, i32* }
%struct.TYPE_23__ = type { i8*, i64 }

@spa_namespace_lock = common dso_local global i32 0, align 4
@SPA_FEATURE_POOL_CHECKPOINT = common dso_local global i32 0, align 4
@ZFS_ERR_CHECKPOINT_EXISTS = common dso_local global i32 0, align 4
@ZFS_ERR_DISCARDING_CHECKPOINT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@ESC_ZFS_VDEV_REMOVE_AUX = common dso_local global i32 0, align 4
@VDEV_TYPE_SPARE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@VDEV_TYPE_L2CACHE = common dso_local global i8* null, align 8
@VDEV_TYPE_LOG = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"vdev remove\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s vdev (%s) %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_vdev_remove(%struct.TYPE_24__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %22 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  store i32 %22, i32* %17, align 4
  store i32* null, i32** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %24 = call i32 @spa_writeable(%struct.TYPE_24__* %23)
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %30 = call i32 @spa_vdev_enter(%struct.TYPE_24__* %29)
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %28, %3
  %32 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %35 = load i32, i32* @SPA_FEATURE_POOL_CHECKPOINT, align 4
  %36 = call i64 @spa_feature_is_active(%struct.TYPE_24__* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %31
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %40 = call i64 @spa_has_checkpoint(%struct.TYPE_24__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @ZFS_ERR_CHECKPOINT_EXISTS, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @ZFS_ERR_DISCARDING_CHECKPOINT, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @spa_vdev_exit(%struct.TYPE_24__* %51, i32* null, i32 %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %261

55:                                               ; preds = %46
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %4, align 4
  br label %261

57:                                               ; preds = %31
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i8*, i8** @B_FALSE, align 8
  %61 = call %struct.TYPE_23__* @spa_lookup_by_guid(%struct.TYPE_24__* %58, i32 %59, i8* %60)
  store %struct.TYPE_23__* %61, %struct.TYPE_23__** %8, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %123

67:                                               ; preds = %57
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %73 = call i64 @nvlist_lookup_nvlist_array(i32 %71, i32 %72, i32*** %9, i32* %13)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %123

75:                                               ; preds = %67
  %76 = load i32**, i32*** %9, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32* @spa_nvlist_lookup_by_guid(i32** %76, i32 %77, i32 %78)
  store i32* %79, i32** %11, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %123

81:                                               ; preds = %75
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %83 = icmp eq %struct.TYPE_23__* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %119

87:                                               ; preds = %84, %81
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %89 = icmp eq %struct.TYPE_23__* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i8*, i8** @B_TRUE, align 8
  %94 = call %struct.TYPE_23__* @spa_lookup_by_guid(%struct.TYPE_24__* %91, i32 %92, i8* %93)
  store %struct.TYPE_23__* %94, %struct.TYPE_23__** %8, align 8
  br label %95

95:                                               ; preds = %90, %87
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %98 = load i32, i32* @ESC_ZFS_VDEV_REMOVE_AUX, align 4
  %99 = call i32* @spa_event_create(%struct.TYPE_24__* %96, %struct.TYPE_23__* %97, i32* null, i32 %98)
  store i32* %99, i32** %18, align 8
  %100 = load i8*, i8** @VDEV_TYPE_SPARE, align 8
  store i8* %100, i8** %19, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %103 = call i8* @fnvlist_lookup_string(i32* %101, i32 %102)
  store i8* %103, i8** %20, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %109 = load i32**, i32*** %9, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = call i32 @spa_vdev_remove_aux(i32 %107, i32 %108, i32** %109, i32 %110, i32* %111)
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %114 = call i32 @spa_load_spares(%struct.TYPE_24__* %113)
  %115 = load i8*, i8** @B_TRUE, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  store i8* %115, i8** %118, align 8
  br label %122

119:                                              ; preds = %84
  %120 = load i32, i32* @EBUSY, align 4
  %121 = call i32 @SET_ERROR(i32 %120)
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %119, %95
  br label %216

123:                                              ; preds = %75, %67, %57
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %171

129:                                              ; preds = %123
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %135 = call i64 @nvlist_lookup_nvlist_array(i32 %133, i32 %134, i32*** %10, i32* %14)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %171

137:                                              ; preds = %129
  %138 = load i32**, i32*** %10, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32* @spa_nvlist_lookup_by_guid(i32** %138, i32 %139, i32 %140)
  store i32* %141, i32** %11, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %171

143:                                              ; preds = %137
  %144 = load i8*, i8** @VDEV_TYPE_L2CACHE, align 8
  store i8* %144, i8** %19, align 8
  %145 = load i32*, i32** %11, align 8
  %146 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %147 = call i8* @fnvlist_lookup_string(i32* %145, i32 %146)
  store i8* %147, i8** %20, align 8
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %149 = load i32, i32* %6, align 4
  %150 = load i8*, i8** @B_TRUE, align 8
  %151 = call %struct.TYPE_23__* @spa_lookup_by_guid(%struct.TYPE_24__* %148, i32 %149, i8* %150)
  store %struct.TYPE_23__* %151, %struct.TYPE_23__** %8, align 8
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %154 = load i32, i32* @ESC_ZFS_VDEV_REMOVE_AUX, align 4
  %155 = call i32* @spa_event_create(%struct.TYPE_24__* %152, %struct.TYPE_23__* %153, i32* null, i32 %154)
  store i32* %155, i32** %18, align 8
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %161 = load i32**, i32*** %10, align 8
  %162 = load i32, i32* %14, align 4
  %163 = load i32*, i32** %11, align 8
  %164 = call i32 @spa_vdev_remove_aux(i32 %159, i32 %160, i32** %161, i32 %162, i32* %163)
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %166 = call i32 @spa_load_l2cache(%struct.TYPE_24__* %165)
  %167 = load i8*, i8** @B_TRUE, align 8
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  store i8* %167, i8** %170, align 8
  br label %215

171:                                              ; preds = %137, %129, %123
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %173 = icmp ne %struct.TYPE_23__* %172, null
  br i1 %173, label %174, label %199

174:                                              ; preds = %171
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %174
  %180 = load i32, i32* %17, align 4
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = call i32 @ASSERT(i32 %183)
  %185 = load i8*, i8** @VDEV_TYPE_LOG, align 8
  store i8* %185, i8** %19, align 8
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %179
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  br label %195

194:                                              ; preds = %179
  br label %195

195:                                              ; preds = %194, %190
  %196 = phi i8* [ %193, %190 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %194 ]
  store i8* %196, i8** %20, align 8
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %198 = call i32 @spa_vdev_remove_log(%struct.TYPE_23__* %197, i32* %12)
  store i32 %198, i32* %15, align 4
  br label %214

199:                                              ; preds = %174, %171
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %201 = icmp ne %struct.TYPE_23__* %200, null
  br i1 %201, label %202, label %210

202:                                              ; preds = %199
  %203 = load i32, i32* %17, align 4
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = call i32 @ASSERT(i32 %206)
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %209 = call i32 @spa_vdev_remove_top(%struct.TYPE_23__* %208, i32* %12)
  store i32 %209, i32* %15, align 4
  br label %213

210:                                              ; preds = %199
  %211 = load i32, i32* @ENOENT, align 4
  %212 = call i32 @SET_ERROR(i32 %211)
  store i32 %212, i32* %15, align 4
  br label %213

213:                                              ; preds = %210, %202
  br label %214

214:                                              ; preds = %213, %195
  br label %215

215:                                              ; preds = %214, %143
  br label %216

216:                                              ; preds = %215, %122
  %217 = load i8*, i8** %20, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i8*, i8** %20, align 8
  %221 = call i8* @spa_strdup(i8* %220)
  store i8* %221, i8** %21, align 8
  br label %222

222:                                              ; preds = %219, %216
  %223 = load i32, i32* %15, align 4
  store i32 %223, i32* %16, align 4
  %224 = load i32, i32* %17, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %222
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %228 = load i32, i32* %12, align 4
  %229 = load i32, i32* %15, align 4
  %230 = call i32 @spa_vdev_exit(%struct.TYPE_24__* %227, i32* null, i32 %228, i32 %229)
  store i32 %230, i32* %15, align 4
  br label %231

231:                                              ; preds = %226, %222
  %232 = load i32, i32* %16, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %247

234:                                              ; preds = %231
  %235 = load i8*, i8** %19, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %247

237:                                              ; preds = %234
  %238 = load i8*, i8** %21, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %247

240:                                              ; preds = %237
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %243 = call i32 @spa_name(%struct.TYPE_24__* %242)
  %244 = load i8*, i8** %19, align 8
  %245 = load i8*, i8** %21, align 8
  %246 = call i32 @spa_history_log_internal(%struct.TYPE_24__* %241, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %243, i8* %244, i8* %245)
  br label %247

247:                                              ; preds = %240, %237, %234, %231
  %248 = load i8*, i8** %21, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load i8*, i8** %21, align 8
  %252 = call i32 @spa_strfree(i8* %251)
  br label %253

253:                                              ; preds = %250, %247
  %254 = load i32*, i32** %18, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = load i32*, i32** %18, align 8
  %258 = call i32 @spa_event_post(i32* %257)
  br label %259

259:                                              ; preds = %256, %253
  %260 = load i32, i32* %15, align 4
  store i32 %260, i32* %4, align 4
  br label %261

261:                                              ; preds = %259, %55, %50
  %262 = load i32, i32* %4, align 4
  ret i32 %262
}

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_writeable(%struct.TYPE_24__*) #1

declare dso_local i32 @spa_vdev_enter(%struct.TYPE_24__*) #1

declare dso_local i64 @spa_feature_is_active(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @spa_has_checkpoint(%struct.TYPE_24__*) #1

declare dso_local i32 @spa_vdev_exit(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_23__* @spa_lookup_by_guid(%struct.TYPE_24__*, i32, i8*) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32, i32, i32***, i32*) #1

declare dso_local i32* @spa_nvlist_lookup_by_guid(i32**, i32, i32) #1

declare dso_local i32* @spa_event_create(%struct.TYPE_24__*, %struct.TYPE_23__*, i32*, i32) #1

declare dso_local i8* @fnvlist_lookup_string(i32*, i32) #1

declare dso_local i32 @spa_vdev_remove_aux(i32, i32, i32**, i32, i32*) #1

declare dso_local i32 @spa_load_spares(%struct.TYPE_24__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @spa_load_l2cache(%struct.TYPE_24__*) #1

declare dso_local i32 @spa_vdev_remove_log(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @spa_vdev_remove_top(%struct.TYPE_23__*, i32*) #1

declare dso_local i8* @spa_strdup(i8*) #1

declare dso_local i32 @spa_history_log_internal(%struct.TYPE_24__*, i8*, i32*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @spa_name(%struct.TYPE_24__*) #1

declare dso_local i32 @spa_strfree(i8*) #1

declare dso_local i32 @spa_event_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

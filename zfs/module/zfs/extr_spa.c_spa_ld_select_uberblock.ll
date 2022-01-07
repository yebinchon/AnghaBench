; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_ld_select_uberblock.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_ld_select_uberblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32*, i32, i32, i32*, %struct.TYPE_21__, i32* }
%struct.TYPE_21__ = type { i64, i64, i64, i64, i64 }

@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"no valid uberblock found\00", align 1
@VDEV_AUX_CORRUPT_DATA = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"using uberblock with txg=%llu\00", align 1
@MMP_MAGIC = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_MMP_STATE = common dso_local global i32 0, align 4
@MMP_STATE_NO_HOSTID = common dso_local global i64 0, align 8
@VDEV_AUX_ACTIVE = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@MMP_STATE_INACTIVE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_MMP_TXG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MMP_SEQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"version %llu is not supported\00", align 1
@VDEV_AUX_VERSION_NEWER = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"label config unavailable\00", align 1
@ZPOOL_CONFIG_FEATURES_FOR_READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"invalid label: '%s' missing\00", align 1
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ZPOOL_CONFIG_UNSUP_FEAT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"some features are unsupported\00", align 1
@VDEV_AUX_UNSUP_FEAT = common dso_local global i32 0, align 4
@SPA_IMPORT_ASSEMBLE = common dso_local global i64 0, align 8
@SCL_ALL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i64)* @spa_ld_select_uberblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_ld_select_uberblock(%struct.TYPE_22__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 6
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 5
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %8, align 8
  %19 = load i64, i64* @B_FALSE, align 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %26 = call i64 @spa_importing_readonly_checkpoint(%struct.TYPE_22__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %31 = call i32 @spa_ld_select_uberblock_done(%struct.TYPE_22__* %29, %struct.TYPE_21__* %30)
  store i32 0, i32* %3, align 4
  br label %312

32:                                               ; preds = %24, %2
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %35 = call i32 @vdev_uberblock_load(i32* %33, %struct.TYPE_21__* %34, i32** %7)
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @nvlist_free(i32* %41)
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %44 = call i32 (%struct.TYPE_22__*, i8*, ...) @spa_load_failed(%struct.TYPE_22__* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %47 = load i32, i32* @ENXIO, align 4
  %48 = call i32 @spa_vdev_err(i32* %45, i32 %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %312

49:                                               ; preds = %32
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @UINT64_MAX, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %57 = call i32 @spa_guid(%struct.TYPE_22__* %56)
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @spa_import_progress_set_max_txg(i32 %57, i32 %61)
  br label %63

63:                                               ; preds = %55, %49
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @spa_load_note(%struct.TYPE_22__* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @spa_activity_check_required(%struct.TYPE_22__* %70, %struct.TYPE_21__* %71, i32* %72, i32 %75)
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %149

79:                                               ; preds = %63
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MMP_MAGIC, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %79
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %85
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %92 = call i64 @spa_get_hostid(%struct.TYPE_22__* %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @nvlist_free(i32* %95)
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ZPOOL_CONFIG_MMP_STATE, align 4
  %101 = load i64, i64* @MMP_STATE_NO_HOSTID, align 8
  %102 = call i32 @fnvlist_add_uint64(i32 %99, i32 %100, i64 %101)
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* @VDEV_AUX_ACTIVE, align 4
  %105 = load i32, i32* @EREMOTEIO, align 4
  %106 = call i32 @spa_vdev_err(i32* %103, i32 %104, i32 %105)
  store i32 %106, i32* %3, align 4
  br label %312

107:                                              ; preds = %90, %85, %79
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @spa_activity_check(%struct.TYPE_22__* %108, %struct.TYPE_21__* %109, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %107
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @nvlist_free(i32* %117)
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %3, align 4
  br label %312

120:                                              ; preds = %107
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ZPOOL_CONFIG_MMP_STATE, align 4
  %125 = load i64, i64* @MMP_STATE_INACTIVE, align 8
  %126 = call i32 @fnvlist_add_uint64(i32 %123, i32 %124, i64 %125)
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ZPOOL_CONFIG_MMP_TXG, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @fnvlist_add_uint64(i32 %129, i32 %130, i64 %133)
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @ZPOOL_CONFIG_MMP_SEQ, align 4
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %140 = call i64 @MMP_SEQ_VALID(%struct.TYPE_21__* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %120
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %144 = call i32 @MMP_SEQ(%struct.TYPE_21__* %143)
  br label %146

145:                                              ; preds = %120
  br label %146

146:                                              ; preds = %145, %142
  %147 = phi i32 [ %144, %142 ], [ 0, %145 ]
  %148 = call i32 @fnvlist_add_uint16(i32 %137, i32 %138, i32 %147)
  br label %149

149:                                              ; preds = %146, %63
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @SPA_VERSION_IS_SUPPORTED(i64 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %168, label %155

155:                                              ; preds = %149
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @nvlist_free(i32* %156)
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = call i32 (%struct.TYPE_22__*, i8*, ...) @spa_load_failed(%struct.TYPE_22__* %158, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* @VDEV_AUX_VERSION_NEWER, align 4
  %166 = load i32, i32* @ENOTSUP, align 4
  %167 = call i32 @spa_vdev_err(i32* %164, i32 %165, i32 %166)
  store i32 %167, i32* %3, align 4
  br label %312

168:                                              ; preds = %149
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %173 = icmp sge i64 %171, %172
  br i1 %173, label %174, label %211

174:                                              ; preds = %168
  %175 = load i32*, i32** %7, align 8
  %176 = icmp eq i32* %175, null
  br i1 %176, label %177, label %184

177:                                              ; preds = %174
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %179 = call i32 (%struct.TYPE_22__*, i8*, ...) @spa_load_failed(%struct.TYPE_22__* %178, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %180 = load i32*, i32** %6, align 8
  %181 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %182 = load i32, i32* @ENXIO, align 4
  %183 = call i32 @spa_vdev_err(i32* %180, i32 %181, i32 %182)
  store i32 %183, i32* %3, align 4
  br label %312

184:                                              ; preds = %174
  %185 = load i32*, i32** %7, align 8
  %186 = load i32, i32* @ZPOOL_CONFIG_FEATURES_FOR_READ, align 4
  %187 = call i64 @nvlist_lookup_nvlist(i32* %185, i32 %186, i32** %11)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %184
  %190 = load i32*, i32** %7, align 8
  %191 = call i32 @nvlist_free(i32* %190)
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %193 = load i32, i32* @ZPOOL_CONFIG_FEATURES_FOR_READ, align 4
  %194 = call i32 (%struct.TYPE_22__*, i8*, ...) @spa_load_failed(%struct.TYPE_22__* %192, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %193)
  %195 = load i32*, i32** %6, align 8
  %196 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %197 = load i32, i32* @ENXIO, align 4
  %198 = call i32 @spa_vdev_err(i32* %195, i32 %196, i32 %197)
  store i32 %198, i32* %3, align 4
  br label %312

199:                                              ; preds = %184
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 4
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @nvlist_free(i32* %202)
  %204 = load i32*, i32** %11, align 8
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 4
  %207 = call i64 @nvlist_dup(i32* %204, i32** %206, i32 0)
  %208 = icmp eq i64 %207, 0
  %209 = zext i1 %208 to i32
  %210 = call i32 @VERIFY(i32 %209)
  br label %211

211:                                              ; preds = %199, %168
  %212 = load i32*, i32** %7, align 8
  %213 = call i32 @nvlist_free(i32* %212)
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %218 = icmp sge i64 %216, %217
  br i1 %218, label %219, label %278

219:                                              ; preds = %211
  %220 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %221 = load i32, i32* @KM_SLEEP, align 4
  %222 = call i64 @nvlist_alloc(i32** %12, i32 %220, i32 %221)
  %223 = icmp eq i64 %222, 0
  %224 = zext i1 %223 to i32
  %225 = call i32 @VERIFY(i32 %224)
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = call i32* @nvlist_next_nvpair(i32* %228, i32* null)
  store i32* %229, i32** %13, align 8
  br label %230

230:                                              ; preds = %247, %219
  %231 = load i32*, i32** %13, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %253

233:                                              ; preds = %230
  %234 = load i32*, i32** %13, align 8
  %235 = call i32 @nvpair_name(i32* %234)
  %236 = call i32 @zfeature_is_supported(i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %246, label %238

238:                                              ; preds = %233
  %239 = load i32*, i32** %12, align 8
  %240 = load i32*, i32** %13, align 8
  %241 = call i32 @nvpair_name(i32* %240)
  %242 = call i64 @nvlist_add_string(i32* %239, i32 %241, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %243 = icmp eq i64 %242, 0
  %244 = zext i1 %243 to i32
  %245 = call i32 @VERIFY(i32 %244)
  br label %246

246:                                              ; preds = %238, %233
  br label %247

247:                                              ; preds = %246
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 4
  %250 = load i32*, i32** %249, align 8
  %251 = load i32*, i32** %13, align 8
  %252 = call i32* @nvlist_next_nvpair(i32* %250, i32* %251)
  store i32* %252, i32** %13, align 8
  br label %230

253:                                              ; preds = %230
  %254 = load i32*, i32** %12, align 8
  %255 = call i32 @nvlist_empty(i32* %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %275, label %257

257:                                              ; preds = %253
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @ZPOOL_CONFIG_UNSUP_FEAT, align 4
  %262 = load i32*, i32** %12, align 8
  %263 = call i64 @nvlist_add_nvlist(i32 %260, i32 %261, i32* %262)
  %264 = icmp eq i64 %263, 0
  %265 = zext i1 %264 to i32
  %266 = call i32 @VERIFY(i32 %265)
  %267 = load i32*, i32** %12, align 8
  %268 = call i32 @nvlist_free(i32* %267)
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %270 = call i32 (%struct.TYPE_22__*, i8*, ...) @spa_load_failed(%struct.TYPE_22__* %269, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %271 = load i32*, i32** %6, align 8
  %272 = load i32, i32* @VDEV_AUX_UNSUP_FEAT, align 4
  %273 = load i32, i32* @ENOTSUP, align 4
  %274 = call i32 @spa_vdev_err(i32* %271, i32 %272, i32 %273)
  store i32 %274, i32* %3, align 4
  br label %312

275:                                              ; preds = %253
  %276 = load i32*, i32** %12, align 8
  %277 = call i32 @nvlist_free(i32* %276)
  br label %278

278:                                              ; preds = %275, %211
  %279 = load i64, i64* %5, align 8
  %280 = load i64, i64* @SPA_IMPORT_ASSEMBLE, align 8
  %281 = icmp ne i64 %279, %280
  br i1 %281, label %282, label %308

282:                                              ; preds = %278
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = icmp ne i32* %285, null
  br i1 %286, label %287, label %308

287:                                              ; preds = %282
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %289 = load i32, i32* @SCL_ALL, align 4
  %290 = load i32, i32* @FTAG, align 4
  %291 = load i32, i32* @RW_WRITER, align 4
  %292 = call i32 @spa_config_enter(%struct.TYPE_22__* %288, i32 %289, i32 %290, i32 %291)
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @spa_try_repair(%struct.TYPE_22__* %293, i32 %296)
  %298 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %299 = load i32, i32* @SCL_ALL, align 4
  %300 = load i32, i32* @FTAG, align 4
  %301 = call i32 @spa_config_exit(%struct.TYPE_22__* %298, i32 %299, i32 %300)
  %302 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = call i32 @nvlist_free(i32* %304)
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 1
  store i32* null, i32** %307, align 8
  br label %308

308:                                              ; preds = %287, %282, %278
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %311 = call i32 @spa_ld_select_uberblock_done(%struct.TYPE_22__* %309, %struct.TYPE_21__* %310)
  store i32 0, i32* %3, align 4
  br label %312

312:                                              ; preds = %308, %257, %189, %177, %155, %116, %94, %40, %28
  %313 = load i32, i32* %3, align 4
  ret i32 %313
}

declare dso_local i64 @spa_importing_readonly_checkpoint(%struct.TYPE_22__*) #1

declare dso_local i32 @spa_ld_select_uberblock_done(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @vdev_uberblock_load(i32*, %struct.TYPE_21__*, i32**) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @spa_load_failed(%struct.TYPE_22__*, i8*, ...) #1

declare dso_local i32 @spa_vdev_err(i32*, i32, i32) #1

declare dso_local i32 @spa_import_progress_set_max_txg(i32, i32) #1

declare dso_local i32 @spa_guid(%struct.TYPE_22__*) #1

declare dso_local i32 @spa_load_note(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i64 @spa_activity_check_required(%struct.TYPE_22__*, %struct.TYPE_21__*, i32*, i32) #1

declare dso_local i64 @spa_get_hostid(%struct.TYPE_22__*) #1

declare dso_local i32 @fnvlist_add_uint64(i32, i32, i64) #1

declare dso_local i32 @spa_activity_check(%struct.TYPE_22__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @fnvlist_add_uint16(i32, i32, i32) #1

declare dso_local i64 @MMP_SEQ_VALID(%struct.TYPE_21__*) #1

declare dso_local i32 @MMP_SEQ(%struct.TYPE_21__*) #1

declare dso_local i32 @SPA_VERSION_IS_SUPPORTED(i64) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_dup(i32*, i32**, i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @zfeature_is_supported(i32) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i32 @nvlist_empty(i32*) #1

declare dso_local i64 @nvlist_add_nvlist(i32, i32, i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @spa_try_repair(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_22__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

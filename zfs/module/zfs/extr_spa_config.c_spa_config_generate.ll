; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_config.c_spa_config_generate.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_config.c_spa_config_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i64, i8*, i32*, i32*, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_21__*, i64, i64 }
%struct.TYPE_23__ = type { i8* }

@B_FALSE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@SCL_CONFIG = common dso_local global i32 0, align 4
@SCL_STATE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ZFS_IMPORT_TEMP_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_TXG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ERRATA = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_COMMENT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_HOSTID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_HOSTNAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TOP_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_SPARE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_LOG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPLIT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS = common dso_local global i32 0, align 4
@VDEV_CONFIG_MOS = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPLIT_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_FEATURES_FOR_READ = common dso_local global i32 0, align 4
@SPA_LOAD_NONE = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_DDT_HISTOGRAM = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_DDT_OBJ_STATS = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_DDT_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @spa_config_generate(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 7
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %11, align 8
  store i64 0, i64* %12, align 8
  %23 = load i64, i64* @B_FALSE, align 8
  store i64 %23, i64* %13, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %25 = icmp eq %struct.TYPE_21__* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %6, align 8
  %28 = load i64, i64* @B_TRUE, align 8
  store i64 %28, i64* %13, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = load i32, i32* @SCL_CONFIG, align 4
  %31 = load i32, i32* @SCL_STATE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @FTAG, align 4
  %34 = load i32, i32* @RW_READER, align 4
  %35 = call i32 @spa_config_enter(%struct.TYPE_22__* %29, i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %26, %4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = load i32, i32* @SCL_CONFIG, align 4
  %39 = load i32, i32* @SCL_STATE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @RW_READER, align 4
  %42 = call i32 @spa_config_held(%struct.TYPE_22__* %37, i32 %40, i32 %41)
  %43 = load i32, i32* @SCL_CONFIG, align 4
  %44 = load i32, i32* @SCL_STATE, align 4
  %45 = or i32 %43, %44
  %46 = icmp eq i32 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load i64, i64* %7, align 8
  %50 = icmp eq i64 %49, -1
  br i1 %50, label %51, label %55

51:                                               ; preds = %36
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %51, %36
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ZFS_IMPORT_TEMP_NAME, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %67 = call i32 @nvlist_lookup_string(i32 %65, i32 %66, i8** %15)
  %68 = call i32 @VERIFY0(i32 %67)
  br label %72

69:                                               ; preds = %55
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %71 = call i8* @spa_name(%struct.TYPE_22__* %70)
  store i8* %71, i8** %15, align 8
  br label %72

72:                                               ; preds = %69, %62
  %73 = call i32* (...) @fnvlist_alloc()
  store i32* %73, i32** %9, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %77 = call i64 @spa_version(%struct.TYPE_22__* %76)
  %78 = call i32 @fnvlist_add_uint64(i32* %74, i32 %75, i64 %77)
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %81 = load i8*, i8** %15, align 8
  %82 = call i32 @fnvlist_add_string(i32* %79, i32 %80, i8* %81)
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %86 = call i64 @spa_state(%struct.TYPE_22__* %85)
  %87 = call i32 @fnvlist_add_uint64(i32* %83, i32 %84, i64 %86)
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* @ZPOOL_CONFIG_POOL_TXG, align 4
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @fnvlist_add_uint64(i32* %88, i32 %89, i64 %90)
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* @ZPOOL_CONFIG_POOL_GUID, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %95 = call i64 @spa_guid(%struct.TYPE_22__* %94)
  %96 = call i32 @fnvlist_add_uint64(i32* %92, i32 %93, i64 %95)
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* @ZPOOL_CONFIG_ERRATA, align 4
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @fnvlist_add_uint64(i32* %97, i32 %98, i64 %101)
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %72
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* @ZPOOL_CONFIG_COMMENT, align 4
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @fnvlist_add_string(i32* %108, i32 %109, i8* %112)
  br label %114

114:                                              ; preds = %107, %72
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %116 = call i64 @spa_get_hostid(%struct.TYPE_22__* %115)
  store i64 %116, i64* %12, align 8
  %117 = load i64, i64* %12, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* @ZPOOL_CONFIG_HOSTID, align 4
  %122 = load i64, i64* %12, align 8
  %123 = call i32 @fnvlist_add_uint64(i32* %120, i32 %121, i64 %122)
  br label %124

124:                                              ; preds = %119, %114
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* @ZPOOL_CONFIG_HOSTNAME, align 4
  %127 = call %struct.TYPE_23__* (...) @utsname()
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @fnvlist_add_string(i32* %125, i32 %126, i8* %129)
  store i32 0, i32* %16, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %133 = icmp ne %struct.TYPE_21__* %131, %132
  br i1 %133, label %134, label %170

134:                                              ; preds = %124
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* @ZPOOL_CONFIG_TOP_GUID, align 4
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @fnvlist_add_uint64(i32* %135, i32 %136, i64 %141)
  %143 = load i32*, i32** %9, align 8
  %144 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @fnvlist_add_uint64(i32* %143, i32 %144, i64 %147)
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %134
  %154 = load i32*, i32** %9, align 8
  %155 = load i32, i32* @ZPOOL_CONFIG_IS_SPARE, align 4
  %156 = call i32 @fnvlist_add_uint64(i32* %154, i32 %155, i64 1)
  br label %157

157:                                              ; preds = %153, %134
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i32*, i32** %9, align 8
  %164 = load i32, i32* @ZPOOL_CONFIG_IS_LOG, align 4
  %165 = call i32 @fnvlist_add_uint64(i32* %163, i32 %164, i64 1)
  br label %166

166:                                              ; preds = %162, %157
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %168, align 8
  store %struct.TYPE_21__* %169, %struct.TYPE_21__** %6, align 8
  br label %189

170:                                              ; preds = %124
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 5
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %170
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* @ZPOOL_CONFIG_SPLIT, align 4
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 5
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @fnvlist_add_nvlist(i32* %176, i32 %177, i32* %180)
  br label %182

182:                                              ; preds = %175, %170
  %183 = load i32*, i32** %9, align 8
  %184 = load i32, i32* @ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS, align 4
  %185 = call i32 @fnvlist_add_boolean(i32* %183, i32 %184)
  %186 = load i32, i32* @VDEV_CONFIG_MOS, align 4
  %187 = load i32, i32* %16, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %16, align 4
  br label %189

189:                                              ; preds = %182, %166
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %191 = load i32*, i32** %9, align 8
  %192 = call i32 @vdev_top_config_generate(%struct.TYPE_22__* %190, i32* %191)
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 5
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %209

197:                                              ; preds = %189
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 5
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* @ZPOOL_CONFIG_SPLIT_GUID, align 4
  %202 = call i64 @nvlist_lookup_uint64(i32* %200, i32 %201, i64* %14)
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %197
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* @ZPOOL_CONFIG_SPLIT_GUID, align 4
  %207 = load i64, i64* %14, align 8
  %208 = call i32 @fnvlist_add_uint64(i32* %205, i32 %206, i64 %207)
  br label %209

209:                                              ; preds = %204, %197, %189
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %16, align 4
  %214 = call i32* @vdev_config_generate(%struct.TYPE_22__* %210, %struct.TYPE_21__* %211, i32 %212, i32 %213)
  store i32* %214, i32** %10, align 8
  %215 = load i32*, i32** %9, align 8
  %216 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %217 = load i32*, i32** %10, align 8
  %218 = call i32 @fnvlist_add_nvlist(i32* %215, i32 %216, i32* %217)
  %219 = load i32*, i32** %10, align 8
  %220 = call i32 @nvlist_free(i32* %219)
  %221 = load i32*, i32** %9, align 8
  %222 = load i32, i32* @ZPOOL_CONFIG_FEATURES_FOR_READ, align 4
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 4
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @fnvlist_add_nvlist(i32* %221, i32 %222, i32* %225)
  %227 = load i32, i32* %8, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %271

229:                                              ; preds = %209
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %231 = call i64 @spa_load_state(%struct.TYPE_22__* %230)
  %232 = load i64, i64* @SPA_LOAD_NONE, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %271

234:                                              ; preds = %229
  %235 = load i32, i32* @KM_SLEEP, align 4
  %236 = call i32* @kmem_zalloc(i32 4, i32 %235)
  store i32* %236, i32** %17, align 8
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %238 = load i32*, i32** %17, align 8
  %239 = call i32 @ddt_get_dedup_histogram(%struct.TYPE_22__* %237, i32* %238)
  %240 = load i32*, i32** %9, align 8
  %241 = load i32, i32* @ZPOOL_CONFIG_DDT_HISTOGRAM, align 4
  %242 = load i32*, i32** %17, align 8
  %243 = bitcast i32* %242 to i64*
  %244 = call i32 @fnvlist_add_uint64_array(i32* %240, i32 %241, i64* %243, i32 0)
  %245 = load i32*, i32** %17, align 8
  %246 = call i32 @kmem_free(i32* %245, i32 4)
  %247 = load i32, i32* @KM_SLEEP, align 4
  %248 = call i32* @kmem_zalloc(i32 4, i32 %247)
  store i32* %248, i32** %19, align 8
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %250 = load i32*, i32** %19, align 8
  %251 = call i32 @ddt_get_dedup_object_stats(%struct.TYPE_22__* %249, i32* %250)
  %252 = load i32*, i32** %9, align 8
  %253 = load i32, i32* @ZPOOL_CONFIG_DDT_OBJ_STATS, align 4
  %254 = load i32*, i32** %19, align 8
  %255 = bitcast i32* %254 to i64*
  %256 = call i32 @fnvlist_add_uint64_array(i32* %252, i32 %253, i64* %255, i32 0)
  %257 = load i32*, i32** %19, align 8
  %258 = call i32 @kmem_free(i32* %257, i32 4)
  %259 = load i32, i32* @KM_SLEEP, align 4
  %260 = call i32* @kmem_zalloc(i32 4, i32 %259)
  store i32* %260, i32** %18, align 8
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %262 = load i32*, i32** %18, align 8
  %263 = call i32 @ddt_get_dedup_stats(%struct.TYPE_22__* %261, i32* %262)
  %264 = load i32*, i32** %9, align 8
  %265 = load i32, i32* @ZPOOL_CONFIG_DDT_STATS, align 4
  %266 = load i32*, i32** %18, align 8
  %267 = bitcast i32* %266 to i64*
  %268 = call i32 @fnvlist_add_uint64_array(i32* %264, i32 %265, i64* %267, i32 0)
  %269 = load i32*, i32** %18, align 8
  %270 = call i32 @kmem_free(i32* %269, i32 4)
  br label %271

271:                                              ; preds = %234, %229, %209
  %272 = load i64, i64* %13, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %281

274:                                              ; preds = %271
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %276 = load i32, i32* @SCL_CONFIG, align 4
  %277 = load i32, i32* @SCL_STATE, align 4
  %278 = or i32 %276, %277
  %279 = load i32, i32* @FTAG, align 4
  %280 = call i32 @spa_config_exit(%struct.TYPE_22__* %275, i32 %278, i32 %279)
  br label %281

281:                                              ; preds = %274, %271
  %282 = load i32*, i32** %9, align 8
  ret i32* %282
}

declare dso_local i32 @spa_config_enter(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_config_held(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @nvlist_lookup_string(i32, i32, i8**) #1

declare dso_local i8* @spa_name(%struct.TYPE_22__*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i64 @spa_version(%struct.TYPE_22__*) #1

declare dso_local i32 @fnvlist_add_string(i32*, i32, i8*) #1

declare dso_local i64 @spa_state(%struct.TYPE_22__*) #1

declare dso_local i64 @spa_guid(%struct.TYPE_22__*) #1

declare dso_local i64 @spa_get_hostid(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_23__* @utsname(...) #1

declare dso_local i32 @fnvlist_add_nvlist(i32*, i32, i32*) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i32) #1

declare dso_local i32 @vdev_top_config_generate(%struct.TYPE_22__*, i32*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32* @vdev_config_generate(%struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i64 @spa_load_state(%struct.TYPE_22__*) #1

declare dso_local i32* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @ddt_get_dedup_histogram(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @fnvlist_add_uint64_array(i32*, i32, i64*, i32) #1

declare dso_local i32 @kmem_free(i32*, i32) #1

declare dso_local i32 @ddt_get_dedup_object_stats(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @ddt_get_dedup_stats(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_22__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

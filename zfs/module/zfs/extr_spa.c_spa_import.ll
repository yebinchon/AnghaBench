; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_import.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_27__, %struct.TYPE_27__, i64, i32, i64, i64, i32 }
%struct.TYPE_27__ = type { i8*, i32* }
%struct.TYPE_26__ = type { i32, i64 }

@SPA_LOAD_IMPORT = common dso_local global i64 0, align 8
@spa_mode_global = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ZPOOL_PROP_ALTROOT = common dso_local global i32 0, align 4
@ZPOOL_PROP_READONLY = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@ZFS_IMPORT_VERBATIM = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@ESC_ZFS_POOL_IMPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"spa_import: verbatim import of %s\00", align 1
@ZPOOL_DO_REWIND = common dso_local global i32 0, align 4
@SPA_LOAD_RECOVER = common dso_local global i64 0, align 8
@SPA_CONFIG_SRC_TRYIMPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"spa_import: importing %s\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"spa_import: importing %s, max_txg=%lld (RECOVERY MODE)\00", align 1
@ZPOOL_CONFIG_LOAD_INFO = common dso_local global i32 0, align 4
@SCL_ALL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@DATA_TYPE_NVLIST_ARRAY = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@SPA_CONFIG_UPDATE_POOL = common dso_local global i32 0, align 4
@SPA_ASYNC_AUTOEXPAND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"import\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_import(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_26__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %11, align 8
  %22 = load i64, i64* @SPA_LOAD_IMPORT, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i32, i32* @spa_mode_global, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* @B_FALSE, align 4
  store i32 %24, i32* %15, align 4
  %25 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %26 = load i8*, i8** %6, align 8
  %27 = call i32* @spa_lookup(i8* %26)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %31 = load i32, i32* @EEXIST, align 4
  %32 = call i32 @SET_ERROR(i32 %31)
  store i32 %32, i32* %5, align 4
  br label %365

33:                                               ; preds = %4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @ZPOOL_PROP_ALTROOT, align 4
  %36 = call i32 @zpool_prop_to_name(i32 %35)
  %37 = call i32 @nvlist_lookup_string(i32* %34, i32 %36, i8** %11)
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @ZPOOL_PROP_READONLY, align 4
  %40 = call i32 @zpool_prop_to_name(i32 %39)
  %41 = call i32 @nvlist_lookup_uint64(i32* %38, i32 %40, i32* %15)
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @FREAD, align 4
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %44, %33
  %47 = load i8*, i8** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call %struct.TYPE_28__* @spa_add(i8* %47, i32* %48, i8* %49)
  store %struct.TYPE_28__* %50, %struct.TYPE_28__** %10, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ZFS_IMPORT_VERBATIM, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %46
  %61 = load i32*, i32** %8, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* @B_FALSE, align 4
  %67 = call i32 @spa_configfile_set(%struct.TYPE_28__* %64, i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %60
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %70 = load i32, i32* @B_FALSE, align 4
  %71 = load i8*, i8** @B_TRUE, align 8
  %72 = call i32 @spa_write_cachefile(%struct.TYPE_28__* %69, i32 %70, i8* %71)
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %74 = load i32, i32* @ESC_ZFS_POOL_IMPORT, align 4
  %75 = call i32 @spa_event_notify(%struct.TYPE_28__* %73, i32* null, i32* null, i32 %74)
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 (i8*, i8*, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %76)
  %78 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  store i32 0, i32* %5, align 4
  br label %365

79:                                               ; preds = %46
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @spa_activate(%struct.TYPE_28__* %80, i32 %81)
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %84 = call i32 @spa_async_suspend(%struct.TYPE_28__* %83)
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @zpool_get_load_policy(i32* %85, %struct.TYPE_26__* %13)
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ZPOOL_DO_REWIND, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %79
  %93 = load i64, i64* @SPA_LOAD_RECOVER, align 8
  store i64 %93, i64* %12, align 8
  br label %94

94:                                               ; preds = %92, %79
  %95 = load i32, i32* @SPA_CONFIG_SRC_TRYIMPORT, align 4
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* @SPA_LOAD_RECOVER, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %94
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 5
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 6
  store i64 0, i64* %105, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 (i8*, i8*, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %106)
  br label %114

108:                                              ; preds = %94
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 (i8*, i8*, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %109, i32 %112)
  br label %114

114:                                              ; preds = %108, %101
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %116 = load i64, i64* %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @spa_load_best(%struct.TYPE_28__* %115, i64 %116, i64 %118, i32 %120)
  store i32 %121, i32* %16, align 4
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @nvlist_add_nvlist(i32* %122, i32 %123, i32 %126)
  %128 = icmp eq i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @VERIFY(i32 %129)
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %132 = load i32, i32* @SCL_ALL, align 4
  %133 = load i32, i32* @FTAG, align 4
  %134 = load i32, i32* @RW_WRITER, align 4
  %135 = call i32 @spa_config_enter(%struct.TYPE_28__* %131, i32 %132, i32 %133, i32 %134)
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %152

141:                                              ; preds = %114
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @nvlist_free(i32* %145)
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 1
  store i32* null, i32** %149, align 8
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %151 = call i32 @spa_load_spares(%struct.TYPE_28__* %150)
  br label %152

152:                                              ; preds = %141, %114
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %169

158:                                              ; preds = %152
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @nvlist_free(i32* %162)
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 1
  store i32* null, i32** %166, align 8
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %168 = call i32 @spa_load_l2cache(%struct.TYPE_28__* %167)
  br label %169

169:                                              ; preds = %158, %152
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %172 = call i64 @nvlist_lookup_nvlist(i32* %170, i32 %171, i32** %17)
  %173 = icmp eq i64 %172, 0
  %174 = zext i1 %173 to i32
  %175 = call i32 @VERIFY(i32 %174)
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %177 = load i32, i32* @SCL_ALL, align 4
  %178 = load i32, i32* @FTAG, align 4
  %179 = call i32 @spa_config_exit(%struct.TYPE_28__* %176, i32 %177, i32 %178)
  %180 = load i32*, i32** %8, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %187

182:                                              ; preds = %169
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* @B_FALSE, align 4
  %186 = call i32 @spa_configfile_set(%struct.TYPE_28__* %183, i32* %184, i32 %185)
  br label %187

187:                                              ; preds = %182, %169
  %188 = load i32, i32* %16, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %202, label %190

190:                                              ; preds = %187
  %191 = load i32*, i32** %8, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %211

193:                                              ; preds = %190
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %195 = call i64 @spa_writeable(%struct.TYPE_28__* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %211

197:                                              ; preds = %193
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %199 = load i32*, i32** %8, align 8
  %200 = call i32 @spa_prop_set(%struct.TYPE_28__* %198, i32* %199)
  store i32 %200, i32* %16, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %197, %187
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %204 = call i32 @spa_unload(%struct.TYPE_28__* %203)
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %206 = call i32 @spa_deactivate(%struct.TYPE_28__* %205)
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %208 = call i32 @spa_remove(%struct.TYPE_28__* %207)
  %209 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %210 = load i32, i32* %16, align 4
  store i32 %210, i32* %5, align 4
  br label %365

211:                                              ; preds = %197, %193, %190
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %213 = call i32 @spa_async_resume(%struct.TYPE_28__* %212)
  %214 = load i32*, i32** %17, align 8
  %215 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %216 = call i64 @nvlist_lookup_nvlist_array(i32* %214, i32 %215, i32*** %18, i32* %20)
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %272

218:                                              ; preds = %211
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %224, label %235

224:                                              ; preds = %218
  %225 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %230 = load i32, i32* @DATA_TYPE_NVLIST_ARRAY, align 4
  %231 = call i64 @nvlist_remove(i32* %228, i32 %229, i32 %230)
  %232 = icmp eq i64 %231, 0
  %233 = zext i1 %232 to i32
  %234 = call i32 @VERIFY(i32 %233)
  br label %245

235:                                              ; preds = %218
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %237, i32 0, i32 1
  %239 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %240 = load i32, i32* @KM_SLEEP, align 4
  %241 = call i64 @nvlist_alloc(i32** %238, i32 %239, i32 %240)
  %242 = icmp eq i64 %241, 0
  %243 = zext i1 %242 to i32
  %244 = call i32 @VERIFY(i32 %243)
  br label %245

245:                                              ; preds = %235, %224
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %251 = load i32**, i32*** %18, align 8
  %252 = load i32, i32* %20, align 4
  %253 = call i64 @nvlist_add_nvlist_array(i32* %249, i32 %250, i32** %251, i32 %252)
  %254 = icmp eq i64 %253, 0
  %255 = zext i1 %254 to i32
  %256 = call i32 @VERIFY(i32 %255)
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %258 = load i32, i32* @SCL_ALL, align 4
  %259 = load i32, i32* @FTAG, align 4
  %260 = load i32, i32* @RW_WRITER, align 4
  %261 = call i32 @spa_config_enter(%struct.TYPE_28__* %257, i32 %258, i32 %259, i32 %260)
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %263 = call i32 @spa_load_spares(%struct.TYPE_28__* %262)
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %265 = load i32, i32* @SCL_ALL, align 4
  %266 = load i32, i32* @FTAG, align 4
  %267 = call i32 @spa_config_exit(%struct.TYPE_28__* %264, i32 %265, i32 %266)
  %268 = load i8*, i8** @B_TRUE, align 8
  %269 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 0
  store i8* %268, i8** %271, align 8
  br label %272

272:                                              ; preds = %245, %211
  %273 = load i32*, i32** %17, align 8
  %274 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %275 = call i64 @nvlist_lookup_nvlist_array(i32* %273, i32 %274, i32*** %19, i32* %21)
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %331

277:                                              ; preds = %272
  %278 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = icmp ne i32* %281, null
  br i1 %282, label %283, label %294

283:                                              ; preds = %277
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %285 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %289 = load i32, i32* @DATA_TYPE_NVLIST_ARRAY, align 4
  %290 = call i64 @nvlist_remove(i32* %287, i32 %288, i32 %289)
  %291 = icmp eq i64 %290, 0
  %292 = zext i1 %291 to i32
  %293 = call i32 @VERIFY(i32 %292)
  br label %304

294:                                              ; preds = %277
  %295 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %296, i32 0, i32 1
  %298 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %299 = load i32, i32* @KM_SLEEP, align 4
  %300 = call i64 @nvlist_alloc(i32** %297, i32 %298, i32 %299)
  %301 = icmp eq i64 %300, 0
  %302 = zext i1 %301 to i32
  %303 = call i32 @VERIFY(i32 %302)
  br label %304

304:                                              ; preds = %294, %283
  %305 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %306 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 1
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %310 = load i32**, i32*** %19, align 8
  %311 = load i32, i32* %21, align 4
  %312 = call i64 @nvlist_add_nvlist_array(i32* %308, i32 %309, i32** %310, i32 %311)
  %313 = icmp eq i64 %312, 0
  %314 = zext i1 %313 to i32
  %315 = call i32 @VERIFY(i32 %314)
  %316 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %317 = load i32, i32* @SCL_ALL, align 4
  %318 = load i32, i32* @FTAG, align 4
  %319 = load i32, i32* @RW_WRITER, align 4
  %320 = call i32 @spa_config_enter(%struct.TYPE_28__* %316, i32 %317, i32 %318, i32 %319)
  %321 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %322 = call i32 @spa_load_l2cache(%struct.TYPE_28__* %321)
  %323 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %324 = load i32, i32* @SCL_ALL, align 4
  %325 = load i32, i32* @FTAG, align 4
  %326 = call i32 @spa_config_exit(%struct.TYPE_28__* %323, i32 %324, i32 %325)
  %327 = load i8*, i8** @B_TRUE, align 8
  %328 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %329 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %329, i32 0, i32 0
  store i8* %327, i8** %330, align 8
  br label %331

331:                                              ; preds = %304, %272
  %332 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %333 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %332, i32 0, i32 3
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %331
  %337 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %337, i32 0, i32 2
  %339 = call i32 @spa_aux_check_removed(%struct.TYPE_27__* %338)
  %340 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %340, i32 0, i32 1
  %342 = call i32 @spa_aux_check_removed(%struct.TYPE_27__* %341)
  br label %343

343:                                              ; preds = %336, %331
  %344 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %345 = call i64 @spa_writeable(%struct.TYPE_28__* %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %343
  %348 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %349 = load i32, i32* @SPA_CONFIG_UPDATE_POOL, align 4
  %350 = call i32 @spa_config_update(%struct.TYPE_28__* %348, i32 %349)
  br label %351

351:                                              ; preds = %347, %343
  %352 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %353 = load i32, i32* @SPA_ASYNC_AUTOEXPAND, align 4
  %354 = call i32 @spa_async_request(%struct.TYPE_28__* %352, i32 %353)
  %355 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %356 = call i32 @spa_history_log_version(%struct.TYPE_28__* %355, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %357 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %358 = load i32, i32* @ESC_ZFS_POOL_IMPORT, align 4
  %359 = call i32 @spa_event_notify(%struct.TYPE_28__* %357, i32* null, i32* null, i32 %358)
  %360 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %361 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %362 = load i8*, i8** %6, align 8
  %363 = load i8*, i8** @B_TRUE, align 8
  %364 = call i32 @zvol_create_minors(%struct.TYPE_28__* %361, i8* %362, i8* %363)
  store i32 0, i32* %5, align 4
  br label %365

365:                                              ; preds = %351, %202, %68, %29
  %366 = load i32, i32* %5, align 4
  ret i32 %366
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32* @spa_lookup(i8*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @zpool_prop_to_name(i32) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_28__* @spa_add(i8*, i32*, i8*) #1

declare dso_local i32 @spa_configfile_set(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @spa_write_cachefile(%struct.TYPE_28__*, i32, i8*) #1

declare dso_local i32 @spa_event_notify(%struct.TYPE_28__*, i32*, i32*, i32) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i8*, ...) #1

declare dso_local i32 @spa_activate(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @spa_async_suspend(%struct.TYPE_28__*) #1

declare dso_local i32 @zpool_get_load_policy(i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @spa_load_best(%struct.TYPE_28__*, i64, i64, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @spa_load_spares(%struct.TYPE_28__*) #1

declare dso_local i32 @spa_load_l2cache(%struct.TYPE_28__*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i64 @spa_writeable(%struct.TYPE_28__*) #1

declare dso_local i32 @spa_prop_set(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @spa_unload(%struct.TYPE_28__*) #1

declare dso_local i32 @spa_deactivate(%struct.TYPE_28__*) #1

declare dso_local i32 @spa_remove(%struct.TYPE_28__*) #1

declare dso_local i32 @spa_async_resume(%struct.TYPE_28__*) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i32*) #1

declare dso_local i64 @nvlist_remove(i32*, i32, i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, i32**, i32) #1

declare dso_local i32 @spa_aux_check_removed(%struct.TYPE_27__*) #1

declare dso_local i32 @spa_config_update(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @spa_async_request(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @spa_history_log_version(%struct.TYPE_28__*, i8*, i32*) #1

declare dso_local i32 @zvol_create_minors(%struct.TYPE_28__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_ld_get_props.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_ld_get_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i32*, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_CHECKSUM_SALT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"unable to retrieve checksum salt from MOS [error=%d]\00", align 1
@VDEV_AUX_CORRUPT_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DMU_POOL_SYNC_BPOBJ = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"error opening deferred-frees bpobj [error=%d]\00", align 1
@DMU_POOL_DEFLATE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@DMU_POOL_CREATION_VERSION = common dso_local global i32 0, align 4
@DMU_POOL_ERRLOG_LAST = common dso_local global i32 0, align 4
@DMU_POOL_ERRLOG_SCRUB = common dso_local global i32 0, align 4
@DMU_POOL_DELETED_CLONES = common dso_local global i32 0, align 4
@DMU_POOL_HISTORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to retrieve MOS config\00", align 1
@DMU_POOL_VDEV_ZAP_MAP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS = common dso_local global i32 0, align 4
@AVZ_ACTION_INITIALIZE = common dso_local global i32 0, align 4
@AVZ_ACTION_DESTROY = common dso_local global i32 0, align 4
@ZPOOL_PROP_DELEGATION = common dso_local global i32 0, align 4
@DMU_POOL_PROPS = common dso_local global i32 0, align 4
@ZPOOL_PROP_BOOTFS = common dso_local global i32 0, align 4
@ZPOOL_PROP_AUTOREPLACE = common dso_local global i32 0, align 4
@ZPOOL_PROP_FAILUREMODE = common dso_local global i32 0, align 4
@ZPOOL_PROP_AUTOEXPAND = common dso_local global i32 0, align 4
@ZPOOL_PROP_MULTIHOST = common dso_local global i32 0, align 4
@ZPOOL_PROP_AUTOTRIM = common dso_local global i32 0, align 4
@ZIO_FAILURE_MODE_CONTINUE = common dso_local global i64 0, align 8
@SPA_LOAD_TRYIMPORT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"forcing failmode to 'continue' as some top level vdevs are missing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @spa_ld_get_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_ld_get_props(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 17
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 20
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %16 = load i32, i32* @DMU_POOL_CHECKSUM_SALT, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 22
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @zap_lookup(i32 %14, i32 %15, i32 %16, i32 1, i32 4, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ENOENT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 22
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @random_get_pseudo_bytes(i32 %29, i32 4)
  br label %43

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (%struct.TYPE_10__*, i8*, ...) @spa_load_failed(%struct.TYPE_10__* %35, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %40 = load i32, i32* @EIO, align 4
  %41 = call i32 @spa_vdev_err(i32* %38, i32 %39, i32 %40)
  store i32 %41, i32* %2, align 4
  br label %334

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %25
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = load i32, i32* @DMU_POOL_SYNC_BPOBJ, align 4
  %46 = load i32, i32* @B_TRUE, align 4
  %47 = call i32 @spa_dir_prop(%struct.TYPE_10__* %44, i32 %45, i64* %5, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %52 = load i32, i32* @EIO, align 4
  %53 = call i32 @spa_vdev_err(i32* %50, i32 %51, i32 %52)
  store i32 %53, i32* %2, align 4
  br label %334

54:                                               ; preds = %43
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 21
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 20
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @bpobj_open(i32* %56, i32 %59, i64 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (%struct.TYPE_10__*, i8*, ...) @spa_load_failed(%struct.TYPE_10__* %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %70 = load i32, i32* @EIO, align 4
  %71 = call i32 @spa_vdev_err(i32* %68, i32 %69, i32 %70)
  store i32 %71, i32* %2, align 4
  br label %334

72:                                               ; preds = %54
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = load i32, i32* @DMU_POOL_DEFLATE, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* @B_FALSE, align 4
  %78 = call i32 @spa_dir_prop(%struct.TYPE_10__* %73, i32 %74, i64* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %72
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @ENOENT, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %88 = load i32, i32* @EIO, align 4
  %89 = call i32 @spa_vdev_err(i32* %86, i32 %87, i32 %88)
  store i32 %89, i32* %2, align 4
  br label %334

90:                                               ; preds = %81, %72
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = load i32, i32* @DMU_POOL_CREATION_VERSION, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* @B_FALSE, align 4
  %96 = call i32 @spa_dir_prop(%struct.TYPE_10__* %91, i32 %92, i64* %94, i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %90
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @ENOENT, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %106 = load i32, i32* @EIO, align 4
  %107 = call i32 @spa_vdev_err(i32* %104, i32 %105, i32 %106)
  store i32 %107, i32* %2, align 4
  br label %334

108:                                              ; preds = %99, %90
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = load i32, i32* @DMU_POOL_ERRLOG_LAST, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = load i32, i32* @B_FALSE, align 4
  %114 = call i32 @spa_dir_prop(%struct.TYPE_10__* %109, i32 %110, i64* %112, i32 %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %108
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @ENOENT, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %124 = load i32, i32* @EIO, align 4
  %125 = call i32 @spa_vdev_err(i32* %122, i32 %123, i32 %124)
  store i32 %125, i32* %2, align 4
  br label %334

126:                                              ; preds = %117, %108
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %128 = load i32, i32* @DMU_POOL_ERRLOG_SCRUB, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 3
  %131 = load i32, i32* @B_FALSE, align 4
  %132 = call i32 @spa_dir_prop(%struct.TYPE_10__* %127, i32 %128, i64* %130, i32 %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %126
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @ENOENT, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %142 = load i32, i32* @EIO, align 4
  %143 = call i32 @spa_vdev_err(i32* %140, i32 %141, i32 %142)
  store i32 %143, i32* %2, align 4
  br label %334

144:                                              ; preds = %135, %126
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %146 = load i32, i32* @DMU_POOL_DELETED_CLONES, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 4
  %149 = load i32, i32* @B_FALSE, align 4
  %150 = call i32 @spa_dir_prop(%struct.TYPE_10__* %145, i32 %146, i64* %148, i32 %149)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %144
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @ENOENT, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load i32*, i32** %6, align 8
  %159 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %160 = load i32, i32* @EIO, align 4
  %161 = call i32 @spa_vdev_err(i32* %158, i32 %159, i32 %160)
  store i32 %161, i32* %2, align 4
  br label %334

162:                                              ; preds = %153, %144
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %164 = load i32, i32* @DMU_POOL_HISTORY, align 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 5
  %167 = load i32, i32* @B_FALSE, align 4
  %168 = call i32 @spa_dir_prop(%struct.TYPE_10__* %163, i32 %164, i64* %166, i32 %167)
  store i32 %168, i32* %4, align 4
  %169 = load i32, i32* %4, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %162
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* @ENOENT, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %178 = load i32, i32* @EIO, align 4
  %179 = call i32 @spa_vdev_err(i32* %176, i32 %177, i32 %178)
  store i32 %179, i32* %2, align 4
  br label %334

180:                                              ; preds = %171, %162
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 19
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @load_nvlist(%struct.TYPE_10__* %181, i32 %184, i32** %7)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %180
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %189 = call i32 (%struct.TYPE_10__*, i8*, ...) @spa_load_failed(%struct.TYPE_10__* %188, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %190 = load i32*, i32** %6, align 8
  %191 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %192 = load i32, i32* @EIO, align 4
  %193 = call i32 @spa_vdev_err(i32* %190, i32 %191, i32 %192)
  store i32 %193, i32* %2, align 4
  br label %334

194:                                              ; preds = %180
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %196 = load i32, i32* @DMU_POOL_VDEV_ZAP_MAP, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 6
  %199 = load i32, i32* @B_FALSE, align 4
  %200 = call i32 @spa_dir_prop(%struct.TYPE_10__* %195, i32 %196, i64* %198, i32 %199)
  store i32 %200, i32* %4, align 4
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* @ENOENT, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %194
  %205 = load i32*, i32** %7, align 8
  %206 = load i32, i32* @ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS, align 4
  %207 = call i32 @nvlist_exists(i32* %205, i32 %206)
  %208 = icmp ne i32 %207, 0
  %209 = xor i1 %208, true
  %210 = zext i1 %209 to i32
  %211 = call i32 @VERIFY(i32 %210)
  %212 = load i32, i32* @AVZ_ACTION_INITIALIZE, align 4
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 18
  store i32 %212, i32* %214, align 8
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 17
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @vdev_count_verify_zaps(i32* %217)
  %219 = call i32 @ASSERT0(i32 %218)
  br label %244

220:                                              ; preds = %194
  %221 = load i32, i32* %4, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = load i32*, i32** %6, align 8
  %225 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %226 = load i32, i32* @EIO, align 4
  %227 = call i32 @spa_vdev_err(i32* %224, i32 %225, i32 %226)
  store i32 %227, i32* %2, align 4
  br label %334

228:                                              ; preds = %220
  %229 = load i32*, i32** %7, align 8
  %230 = load i32, i32* @ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS, align 4
  %231 = call i32 @nvlist_exists(i32* %229, i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %242, label %233

233:                                              ; preds = %228
  %234 = load i32, i32* @AVZ_ACTION_DESTROY, align 4
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 18
  store i32 %234, i32* %236, align 8
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 17
  %239 = load i32*, i32** %238, align 8
  %240 = call i32 @vdev_count_verify_zaps(i32* %239)
  %241 = call i32 @ASSERT0(i32 %240)
  br label %242

242:                                              ; preds = %233, %228
  br label %243

243:                                              ; preds = %242
  br label %244

244:                                              ; preds = %243, %204
  %245 = load i32*, i32** %7, align 8
  %246 = call i32 @nvlist_free(i32* %245)
  %247 = load i32, i32* @ZPOOL_PROP_DELEGATION, align 4
  %248 = call i64 @zpool_prop_default_numeric(i32 %247)
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 7
  store i64 %248, i64* %250, align 8
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %252 = load i32, i32* @DMU_POOL_PROPS, align 4
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 8
  %255 = load i32, i32* @B_FALSE, align 4
  %256 = call i32 @spa_dir_prop(%struct.TYPE_10__* %251, i32 %252, i64* %254, i32 %255)
  store i32 %256, i32* %4, align 4
  %257 = load i32, i32* %4, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %244
  %260 = load i32, i32* %4, align 4
  %261 = load i32, i32* @ENOENT, align 4
  %262 = icmp ne i32 %260, %261
  br i1 %262, label %263, label %268

263:                                              ; preds = %259
  %264 = load i32*, i32** %6, align 8
  %265 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %266 = load i32, i32* @EIO, align 4
  %267 = call i32 @spa_vdev_err(i32* %264, i32 %265, i32 %266)
  store i32 %267, i32* %2, align 4
  br label %334

268:                                              ; preds = %259, %244
  %269 = load i32, i32* %4, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %310

271:                                              ; preds = %268
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %273 = load i32, i32* @ZPOOL_PROP_BOOTFS, align 4
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 9
  %276 = call i32 @spa_prop_find(%struct.TYPE_10__* %272, i32 %273, i64* %275)
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %278 = load i32, i32* @ZPOOL_PROP_AUTOREPLACE, align 4
  %279 = call i32 @spa_prop_find(%struct.TYPE_10__* %277, i32 %278, i64* %8)
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %281 = load i32, i32* @ZPOOL_PROP_DELEGATION, align 4
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 7
  %284 = call i32 @spa_prop_find(%struct.TYPE_10__* %280, i32 %281, i64* %283)
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %286 = load i32, i32* @ZPOOL_PROP_FAILUREMODE, align 4
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 10
  %289 = call i32 @spa_prop_find(%struct.TYPE_10__* %285, i32 %286, i64* %288)
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %291 = load i32, i32* @ZPOOL_PROP_AUTOEXPAND, align 4
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 11
  %294 = call i32 @spa_prop_find(%struct.TYPE_10__* %290, i32 %291, i64* %293)
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %296 = load i32, i32* @ZPOOL_PROP_MULTIHOST, align 4
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 12
  %299 = call i32 @spa_prop_find(%struct.TYPE_10__* %295, i32 %296, i64* %298)
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %301 = load i32, i32* @ZPOOL_PROP_AUTOTRIM, align 4
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 13
  %304 = call i32 @spa_prop_find(%struct.TYPE_10__* %300, i32 %301, i64* %303)
  %305 = load i64, i64* %8, align 8
  %306 = icmp ne i64 %305, 0
  %307 = zext i1 %306 to i32
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 14
  store i32 %307, i32* %309, align 8
  br label %310

310:                                              ; preds = %271, %268
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 15
  %313 = load i64, i64* %312, align 8
  %314 = icmp sgt i64 %313, 0
  br i1 %314, label %315, label %333

315:                                              ; preds = %310
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 10
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @ZIO_FAILURE_MODE_CONTINUE, align 8
  %320 = icmp ne i64 %318, %319
  br i1 %320, label %321, label %333

321:                                              ; preds = %315
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 16
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @SPA_LOAD_TRYIMPORT, align 8
  %326 = icmp ne i64 %324, %325
  br i1 %326, label %327, label %333

327:                                              ; preds = %321
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %329 = call i32 @spa_load_note(%struct.TYPE_10__* %328, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  %330 = load i64, i64* @ZIO_FAILURE_MODE_CONTINUE, align 8
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 10
  store i64 %330, i64* %332, align 8
  br label %333

333:                                              ; preds = %327, %321, %315, %310
  store i32 0, i32* %2, align 4
  br label %334

334:                                              ; preds = %333, %263, %223, %187, %175, %157, %139, %121, %103, %85, %64, %49, %34
  %335 = load i32, i32* %2, align 4
  ret i32 %335
}

declare dso_local i32 @zap_lookup(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @random_get_pseudo_bytes(i32, i32) #1

declare dso_local i32 @spa_load_failed(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @spa_vdev_err(i32*, i32, i32) #1

declare dso_local i32 @spa_dir_prop(%struct.TYPE_10__*, i32, i64*, i32) #1

declare dso_local i32 @bpobj_open(i32*, i32, i64) #1

declare dso_local i64 @load_nvlist(%struct.TYPE_10__*, i32, i32**) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @nvlist_exists(i32*, i32) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @vdev_count_verify_zaps(i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i64 @zpool_prop_default_numeric(i32) #1

declare dso_local i32 @spa_prop_find(%struct.TYPE_10__*, i32, i64*) #1

declare dso_local i32 @spa_load_note(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

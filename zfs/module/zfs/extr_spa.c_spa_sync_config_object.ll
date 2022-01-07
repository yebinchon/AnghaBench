; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_sync_config_object.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_sync_config_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, i32*, %struct.TYPE_12__, %struct.TYPE_11__, i32, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@AVZ_ACTION_NONE = common dso_local global i64 0, align 8
@SCL_STATE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@AVZ_ACTION_INITIALIZE = common dso_local global i64 0, align 8
@AVZ_ACTION_REBUILD = common dso_local global i64 0, align 8
@DMU_OTN_ZAP_METADATA = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_VDEV_ZAP_MAP = common dso_local global i32 0, align 4
@AVZ_ACTION_DESTROY = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*)* @spa_sync_config_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_sync_config_object(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 8
  %15 = call i64 @list_is_empty(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AVZ_ACTION_NONE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %243

24:                                               ; preds = %17, %2
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = load i32, i32* @SCL_STATE, align 4
  %27 = load i32, i32* @FTAG, align 4
  %28 = load i32, i32* @RW_READER, align 4
  %29 = call i32 @spa_config_enter(%struct.TYPE_14__* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AVZ_ACTION_NONE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %24
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AVZ_ACTION_INITIALIZE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %41, %35, %24
  %47 = phi i1 [ true, %35 ], [ true, %24 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AVZ_ACTION_REBUILD, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %123

55:                                               ; preds = %46
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DMU_OTN_ZAP_METADATA, align 4
  %60 = load i32, i32* @DMU_OT_NONE, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = call i64 @zap_create(i32 %58, i32 %59, i32 %60, i32 0, i32* %61)
  store i64 %62, i64* %6, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @spa_avz_build(i32 %65, i64 %66, i32* %67)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @zap_cursor_init(i32* %7, i32 %71, i64 %74)
  br label %76

76:                                               ; preds = %99, %55
  %77 = call i64 @zap_cursor_retrieve(i32* %7, %struct.TYPE_13__* %8)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %9, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i64 @zap_lookup_int(i32 %84, i64 %85, i64 %86)
  %88 = load i64, i64* @ENOENT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %79
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %9, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @zap_destroy(i32 %93, i64 %94, i32* %95)
  %97 = call i32 @VERIFY0(i32 %96)
  br label %98

98:                                               ; preds = %90, %79
  br label %99

99:                                               ; preds = %98
  %100 = call i32 @zap_cursor_advance(i32* %7)
  br label %76

101:                                              ; preds = %76
  %102 = call i32 @zap_cursor_fini(i32* %7)
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @zap_destroy(i32 %105, i64 %108, i32* %109)
  %111 = call i32 @VERIFY0(i32 %110)
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %116 = load i32, i32* @DMU_POOL_VDEV_ZAP_MAP, align 4
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @zap_update(i32 %114, i32 %115, i32 %116, i32 8, i32 1, i64* %6, i32* %117)
  %119 = call i32 @VERIFY0(i32 %118)
  %120 = load i64, i64* %6, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  br label %174

123:                                              ; preds = %46
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AVZ_ACTION_DESTROY, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %173

129:                                              ; preds = %123
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @zap_cursor_init(i32* %10, i32 %132, i64 %135)
  br label %137

137:                                              ; preds = %150, %129
  %138 = call i64 @zap_cursor_retrieve(i32* %10, %struct.TYPE_13__* %11)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %12, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = load i64, i64* %12, align 8
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 @zap_destroy(i32 %145, i64 %146, i32* %147)
  %149 = call i32 @VERIFY0(i32 %148)
  br label %150

150:                                              ; preds = %140
  %151 = call i32 @zap_cursor_advance(i32* %10)
  br label %137

152:                                              ; preds = %137
  %153 = call i32 @zap_cursor_fini(i32* %10)
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i32*, i32** %4, align 8
  %161 = call i32 @zap_destroy(i32 %156, i64 %159, i32* %160)
  %162 = call i32 @VERIFY0(i32 %161)
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %167 = load i32, i32* @DMU_POOL_VDEV_ZAP_MAP, align 4
  %168 = load i32*, i32** %4, align 8
  %169 = call i32 @zap_remove(i32 %165, i32 %166, i32 %167, i32* %168)
  %170 = call i32 @VERIFY0(i32 %169)
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  br label %173

173:                                              ; preds = %152, %123
  br label %174

174:                                              ; preds = %173, %101
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %174
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @DMU_OTN_ZAP_METADATA, align 4
  %184 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %185 = load i32, i32* @DMU_POOL_VDEV_ZAP_MAP, align 4
  %186 = load i32*, i32** %4, align 8
  %187 = call i64 @zap_create_link(i32 %182, i32 %183, i32 %184, i32 %185, i32* %186)
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 1
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %179, %174
  %191 = load i64, i64* @AVZ_ACTION_NONE, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = load i32*, i32** %4, align 8
  %198 = call i32 @vdev_construct_zaps(i32 %196, i32* %197)
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = load i32*, i32** %4, align 8
  %204 = call i32 @dmu_tx_get_txg(i32* %203)
  %205 = load i32, i32* @B_FALSE, align 4
  %206 = call i32* @spa_config_generate(%struct.TYPE_14__* %199, i32 %202, i32 %204, i32 %205)
  store i32* %206, i32** %5, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp slt i64 %210, %214
  br i1 %215, label %216, label %224

216:                                              ; preds = %190
  %217 = load i32*, i32** %5, align 8
  %218 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @fnvlist_add_uint64(i32* %217, i32 %218, i64 %222)
  br label %224

224:                                              ; preds = %216, %190
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %226 = load i32, i32* @SCL_STATE, align 4
  %227 = load i32, i32* @FTAG, align 4
  %228 = call i32 @spa_config_exit(%struct.TYPE_14__* %225, i32 %226, i32 %227)
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @nvlist_free(i32* %231)
  %233 = load i32*, i32** %5, align 8
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 3
  store i32* %233, i32** %235, align 8
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load i32*, i32** %5, align 8
  %241 = load i32*, i32** %4, align 8
  %242 = call i32 @spa_sync_nvlist(%struct.TYPE_14__* %236, i32 %239, i32* %240, i32* %241)
  br label %243

243:                                              ; preds = %224, %23
  ret void
}

declare dso_local i64 @list_is_empty(i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @zap_create(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @spa_avz_build(i32, i64, i32*) #1

declare dso_local i32 @zap_cursor_init(i32*, i32, i64) #1

declare dso_local i64 @zap_cursor_retrieve(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @zap_lookup_int(i32, i64, i64) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_destroy(i32, i64, i32*) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

declare dso_local i32 @zap_update(i32, i32, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @zap_remove(i32, i32, i32, i32*) #1

declare dso_local i64 @zap_create_link(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @vdev_construct_zaps(i32, i32*) #1

declare dso_local i32* @spa_config_generate(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @dmu_tx_get_txg(i32*) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @spa_sync_nvlist(%struct.TYPE_14__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

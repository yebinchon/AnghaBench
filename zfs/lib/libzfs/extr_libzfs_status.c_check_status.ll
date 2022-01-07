; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_status.c_check_status.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_status.c_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_STATS = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SCAN_STATS = common dso_local global i32 0, align 4
@POOL_SCAN_RESILVER = common dso_local global i64 0, align 8
@DSS_SCANNING = common dso_local global i64 0, align 8
@ZPOOL_STATUS_RESILVERING = common dso_local global i32 0, align 4
@VDEV_STATE_CANT_OPEN = common dso_local global i64 0, align 8
@VDEV_AUX_ACTIVE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_LOAD_INFO = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MMP_STATE = common dso_local global i32 0, align 4
@MMP_STATE_ACTIVE = common dso_local global i64 0, align 8
@ZPOOL_STATUS_HOSTID_ACTIVE = common dso_local global i32 0, align 4
@MMP_STATE_NO_HOSTID = common dso_local global i64 0, align 8
@ZPOOL_STATUS_HOSTID_REQUIRED = common dso_local global i32 0, align 4
@ZPOOL_STATUS_HOSTID_MISMATCH = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_HOSTID = common dso_local global i32 0, align 4
@POOL_STATE_ACTIVE = common dso_local global i64 0, align 8
@VDEV_AUX_VERSION_NEWER = common dso_local global i64 0, align 8
@ZPOOL_STATUS_VERSION_NEWER = common dso_local global i32 0, align 4
@VDEV_AUX_UNSUP_FEAT = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_CAN_RDONLY = common dso_local global i32 0, align 4
@ZPOOL_STATUS_UNSUP_FEAT_WRITE = common dso_local global i32 0, align 4
@ZPOOL_STATUS_UNSUP_FEAT_READ = common dso_local global i32 0, align 4
@VDEV_AUX_BAD_GUID_SUM = common dso_local global i64 0, align 8
@ZPOOL_STATUS_BAD_GUID_SUM = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SUSPENDED = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SUSPENDED_REASON = common dso_local global i32 0, align 4
@ZIO_SUSPEND_MMP = common dso_local global i64 0, align 8
@ZPOOL_STATUS_IO_FAILURE_MMP = common dso_local global i32 0, align 4
@ZIO_FAILURE_MODE_CONTINUE = common dso_local global i64 0, align 8
@ZPOOL_STATUS_IO_FAILURE_CONTINUE = common dso_local global i32 0, align 4
@ZPOOL_STATUS_IO_FAILURE_WAIT = common dso_local global i32 0, align 4
@VDEV_AUX_BAD_LOG = common dso_local global i64 0, align 8
@ZPOOL_STATUS_BAD_LOG = common dso_local global i32 0, align 4
@vdev_faulted = common dso_local global i32 0, align 4
@ZPOOL_STATUS_FAULTED_DEV_NR = common dso_local global i32 0, align 4
@vdev_missing = common dso_local global i32 0, align 4
@ZPOOL_STATUS_MISSING_DEV_NR = common dso_local global i32 0, align 4
@vdev_broken = common dso_local global i32 0, align 4
@ZPOOL_STATUS_CORRUPT_LABEL_NR = common dso_local global i32 0, align 4
@VDEV_AUX_CORRUPT_DATA = common dso_local global i64 0, align 8
@ZPOOL_STATUS_CORRUPT_POOL = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ERRCOUNT = common dso_local global i32 0, align 4
@ZPOOL_STATUS_CORRUPT_DATA = common dso_local global i32 0, align 4
@ZPOOL_STATUS_FAULTED_DEV_R = common dso_local global i32 0, align 4
@ZPOOL_STATUS_MISSING_DEV_R = common dso_local global i32 0, align 4
@ZPOOL_STATUS_CORRUPT_LABEL_R = common dso_local global i32 0, align 4
@vdev_errors = common dso_local global i32 0, align 4
@ZPOOL_STATUS_FAILING_DEV = common dso_local global i32 0, align 4
@vdev_offlined = common dso_local global i32 0, align 4
@ZPOOL_STATUS_OFFLINE_DEV = common dso_local global i32 0, align 4
@vdev_removed = common dso_local global i32 0, align 4
@ZPOOL_STATUS_REMOVED_DEV = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ERRATA = common dso_local global i32 0, align 4
@ZPOOL_STATUS_ERRATA = common dso_local global i32 0, align 4
@SPA_VERSION = common dso_local global i64 0, align 8
@ZPOOL_STATUS_VERSION_OLDER = common dso_local global i32 0, align 4
@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_ENABLED_FEAT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_FEATURE_STATS = common dso_local global i32 0, align 4
@SPA_FEATURES = common dso_local global i32 0, align 4
@spa_feature_table = common dso_local global %struct.TYPE_5__* null, align 8
@ZPOOL_STATUS_FEAT_DISABLED = common dso_local global i32 0, align 4
@ZPOOL_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64*)* @check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_status(i32* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %27 = call i64 (...) @get_system_hostid()
  store i64 %27, i64* %19, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %30 = call i64 @nvlist_lookup_uint64(i32* %28, i32 %29, i64* %14)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @verify(i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %36 = call i64 @nvlist_lookup_nvlist(i32* %34, i32 %35, i32** %8)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @verify(i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* @ZPOOL_CONFIG_VDEV_STATS, align 4
  %42 = bitcast %struct.TYPE_6__** %9 to i64**
  %43 = call i64 @nvlist_lookup_uint64_array(i32* %40, i32 %41, i64** %42, i32* %11)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @verify(i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %49 = call i64 @nvlist_lookup_uint64(i32* %47, i32 %48, i64* %15)
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @verify(i32 %51)
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @ZPOOL_CONFIG_SCAN_STATS, align 4
  %55 = bitcast %struct.TYPE_7__** %10 to i64**
  %56 = call i64 @nvlist_lookup_uint64_array(i32* %53, i32 %54, i64** %55, i32* %12)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %58 = icmp ne %struct.TYPE_7__* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %3
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @POOL_SCAN_RESILVER, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DSS_SCANNING, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @ZPOOL_STATUS_RESILVERING, align 4
  store i32 %72, i32* %4, align 4
  br label %395

73:                                               ; preds = %65, %59, %3
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %73
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @VDEV_AUX_ACTIVE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %79
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %88 = call i32* @fnvlist_lookup_nvlist(i32* %86, i32 %87)
  store i32* %88, i32** %21, align 8
  %89 = load i32*, i32** %21, align 8
  %90 = load i32, i32* @ZPOOL_CONFIG_MMP_STATE, align 4
  %91 = call i64 @fnvlist_lookup_uint64(i32* %89, i32 %90)
  store i64 %91, i64* %20, align 8
  %92 = load i64, i64* %20, align 8
  %93 = load i64, i64* @MMP_STATE_ACTIVE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i32, i32* @ZPOOL_STATUS_HOSTID_ACTIVE, align 4
  store i32 %96, i32* %4, align 4
  br label %395

97:                                               ; preds = %85
  %98 = load i64, i64* %20, align 8
  %99 = load i64, i64* @MMP_STATE_NO_HOSTID, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* @ZPOOL_STATUS_HOSTID_REQUIRED, align 4
  store i32 %102, i32* %4, align 4
  br label %395

103:                                              ; preds = %97
  %104 = load i32, i32* @ZPOOL_STATUS_HOSTID_MISMATCH, align 4
  store i32 %104, i32* %4, align 4
  br label %395

105:                                              ; preds = %79, %73
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* @ZPOOL_CONFIG_HOSTID, align 4
  %108 = call i64 @nvlist_lookup_uint64(i32* %106, i32 %107, i64* %17)
  %109 = load i64, i64* %17, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %105
  %112 = load i64, i64* %17, align 8
  %113 = load i64, i64* %19, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* @POOL_STATE_ACTIVE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* @ZPOOL_STATUS_HOSTID_MISMATCH, align 4
  store i32 %120, i32* %4, align 4
  br label %395

121:                                              ; preds = %115, %111, %105
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @VDEV_AUX_VERSION_NEWER, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load i32, i32* @ZPOOL_STATUS_VERSION_NEWER, align 4
  store i32 %134, i32* %4, align 4
  br label %395

135:                                              ; preds = %127, %121
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %162

141:                                              ; preds = %135
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @VDEV_AUX_UNSUP_FEAT, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %141
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %150 = call i64 @nvlist_lookup_nvlist(i32* %148, i32 %149, i32** %22)
  %151 = icmp eq i64 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i32 @verify(i32 %152)
  %154 = load i32*, i32** %22, align 8
  %155 = load i32, i32* @ZPOOL_CONFIG_CAN_RDONLY, align 4
  %156 = call i64 @nvlist_exists(i32* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %147
  %159 = load i32, i32* @ZPOOL_STATUS_UNSUP_FEAT_WRITE, align 4
  store i32 %159, i32* %4, align 4
  br label %395

160:                                              ; preds = %147
  %161 = load i32, i32* @ZPOOL_STATUS_UNSUP_FEAT_READ, align 4
  store i32 %161, i32* %4, align 4
  br label %395

162:                                              ; preds = %141, %135
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %162
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @VDEV_AUX_BAD_GUID_SUM, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i32, i32* @ZPOOL_STATUS_BAD_GUID_SUM, align 4
  store i32 %175, i32* %4, align 4
  br label %395

176:                                              ; preds = %168, %162
  %177 = load i32*, i32** %5, align 8
  %178 = load i32, i32* @ZPOOL_CONFIG_SUSPENDED, align 4
  %179 = call i64 @nvlist_lookup_uint64(i32* %177, i32 %178, i64* %16)
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %200

181:                                              ; preds = %176
  %182 = load i32*, i32** %5, align 8
  %183 = load i32, i32* @ZPOOL_CONFIG_SUSPENDED_REASON, align 4
  %184 = call i64 @nvlist_lookup_uint64(i32* %182, i32 %183, i64* %23)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %181
  %187 = load i64, i64* %23, align 8
  %188 = load i64, i64* @ZIO_SUSPEND_MMP, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = load i32, i32* @ZPOOL_STATUS_IO_FAILURE_MMP, align 4
  store i32 %191, i32* %4, align 4
  br label %395

192:                                              ; preds = %186, %181
  %193 = load i64, i64* %16, align 8
  %194 = load i64, i64* @ZIO_FAILURE_MODE_CONTINUE, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i32, i32* @ZPOOL_STATUS_IO_FAILURE_CONTINUE, align 4
  store i32 %197, i32* %4, align 4
  br label %395

198:                                              ; preds = %192
  %199 = load i32, i32* @ZPOOL_STATUS_IO_FAILURE_WAIT, align 4
  store i32 %199, i32* %4, align 4
  br label %395

200:                                              ; preds = %176
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %214

206:                                              ; preds = %200
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @VDEV_AUX_BAD_LOG, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %206
  %213 = load i32, i32* @ZPOOL_STATUS_BAD_LOG, align 4
  store i32 %213, i32* %4, align 4
  br label %395

214:                                              ; preds = %206, %200
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %227

220:                                              ; preds = %214
  %221 = load i32*, i32** %8, align 8
  %222 = load i32, i32* @vdev_faulted, align 4
  %223 = call i64 @find_vdev_problem(i32* %221, i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = load i32, i32* @ZPOOL_STATUS_FAULTED_DEV_NR, align 4
  store i32 %226, i32* %4, align 4
  br label %395

227:                                              ; preds = %220, %214
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %240

233:                                              ; preds = %227
  %234 = load i32*, i32** %8, align 8
  %235 = load i32, i32* @vdev_missing, align 4
  %236 = call i64 @find_vdev_problem(i32* %234, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load i32, i32* @ZPOOL_STATUS_MISSING_DEV_NR, align 4
  store i32 %239, i32* %4, align 4
  br label %395

240:                                              ; preds = %233, %227
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %253

246:                                              ; preds = %240
  %247 = load i32*, i32** %8, align 8
  %248 = load i32, i32* @vdev_broken, align 4
  %249 = call i64 @find_vdev_problem(i32* %247, i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %246
  %252 = load i32, i32* @ZPOOL_STATUS_CORRUPT_LABEL_NR, align 4
  store i32 %252, i32* %4, align 4
  br label %395

253:                                              ; preds = %246, %240
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %267

259:                                              ; preds = %253
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @VDEV_AUX_CORRUPT_DATA, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %259
  %266 = load i32, i32* @ZPOOL_STATUS_CORRUPT_POOL, align 4
  store i32 %266, i32* %4, align 4
  br label %395

267:                                              ; preds = %259, %253
  %268 = load i64, i64* %6, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %281, label %270

270:                                              ; preds = %267
  %271 = load i32*, i32** %5, align 8
  %272 = load i32, i32* @ZPOOL_CONFIG_ERRCOUNT, align 4
  %273 = call i64 @nvlist_lookup_uint64(i32* %271, i32 %272, i64* %13)
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %270
  %276 = load i64, i64* %13, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %275
  %279 = load i32, i32* @ZPOOL_STATUS_CORRUPT_DATA, align 4
  store i32 %279, i32* %4, align 4
  br label %395

280:                                              ; preds = %275, %270
  br label %281

281:                                              ; preds = %280, %267
  %282 = load i32*, i32** %8, align 8
  %283 = load i32, i32* @vdev_faulted, align 4
  %284 = call i64 @find_vdev_problem(i32* %282, i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %281
  %287 = load i32, i32* @ZPOOL_STATUS_FAULTED_DEV_R, align 4
  store i32 %287, i32* %4, align 4
  br label %395

288:                                              ; preds = %281
  %289 = load i32*, i32** %8, align 8
  %290 = load i32, i32* @vdev_missing, align 4
  %291 = call i64 @find_vdev_problem(i32* %289, i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %288
  %294 = load i32, i32* @ZPOOL_STATUS_MISSING_DEV_R, align 4
  store i32 %294, i32* %4, align 4
  br label %395

295:                                              ; preds = %288
  %296 = load i32*, i32** %8, align 8
  %297 = load i32, i32* @vdev_broken, align 4
  %298 = call i64 @find_vdev_problem(i32* %296, i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %295
  %301 = load i32, i32* @ZPOOL_STATUS_CORRUPT_LABEL_R, align 4
  store i32 %301, i32* %4, align 4
  br label %395

302:                                              ; preds = %295
  %303 = load i64, i64* %6, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %312, label %305

305:                                              ; preds = %302
  %306 = load i32*, i32** %8, align 8
  %307 = load i32, i32* @vdev_errors, align 4
  %308 = call i64 @find_vdev_problem(i32* %306, i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %305
  %311 = load i32, i32* @ZPOOL_STATUS_FAILING_DEV, align 4
  store i32 %311, i32* %4, align 4
  br label %395

312:                                              ; preds = %305, %302
  %313 = load i32*, i32** %8, align 8
  %314 = load i32, i32* @vdev_offlined, align 4
  %315 = call i64 @find_vdev_problem(i32* %313, i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %312
  %318 = load i32, i32* @ZPOOL_STATUS_OFFLINE_DEV, align 4
  store i32 %318, i32* %4, align 4
  br label %395

319:                                              ; preds = %312
  %320 = load i32*, i32** %8, align 8
  %321 = load i32, i32* @vdev_removed, align 4
  %322 = call i64 @find_vdev_problem(i32* %320, i32 %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %319
  %325 = load i32, i32* @ZPOOL_STATUS_REMOVED_DEV, align 4
  store i32 %325, i32* %4, align 4
  br label %395

326:                                              ; preds = %319
  %327 = load i32*, i32** %5, align 8
  %328 = load i32, i32* @ZPOOL_CONFIG_ERRATA, align 4
  %329 = call i64 @nvlist_lookup_uint64(i32* %327, i32 %328, i64* %18)
  %330 = load i64, i64* %18, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %326
  %333 = load i64, i64* %18, align 8
  %334 = load i64*, i64** %7, align 8
  store i64 %333, i64* %334, align 8
  %335 = load i32, i32* @ZPOOL_STATUS_ERRATA, align 4
  store i32 %335, i32* %4, align 4
  br label %395

336:                                              ; preds = %326
  %337 = load i64, i64* %14, align 8
  %338 = call i64 @SPA_VERSION_IS_SUPPORTED(i64 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %346

340:                                              ; preds = %336
  %341 = load i64, i64* %14, align 8
  %342 = load i64, i64* @SPA_VERSION, align 8
  %343 = icmp ne i64 %341, %342
  br i1 %343, label %344, label %346

344:                                              ; preds = %340
  %345 = load i32, i32* @ZPOOL_STATUS_VERSION_OLDER, align 4
  store i32 %345, i32* %4, align 4
  br label %395

346:                                              ; preds = %340, %336
  %347 = load i64, i64* %14, align 8
  %348 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %349 = icmp sge i64 %347, %348
  br i1 %349, label %350, label %393

350:                                              ; preds = %346
  %351 = load i64, i64* %6, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %366

353:                                              ; preds = %350
  %354 = load i32*, i32** %5, align 8
  %355 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %356 = call i32* @fnvlist_lookup_nvlist(i32* %354, i32 %355)
  store i32* %356, i32** %25, align 8
  %357 = load i32*, i32** %25, align 8
  %358 = load i32, i32* @ZPOOL_CONFIG_ENABLED_FEAT, align 4
  %359 = call i64 @nvlist_exists(i32* %357, i32 %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %353
  %362 = load i32*, i32** %25, align 8
  %363 = load i32, i32* @ZPOOL_CONFIG_ENABLED_FEAT, align 4
  %364 = call i32* @fnvlist_lookup_nvlist(i32* %362, i32 %363)
  store i32* %364, i32** %25, align 8
  br label %365

365:                                              ; preds = %361, %353
  br label %370

366:                                              ; preds = %350
  %367 = load i32*, i32** %5, align 8
  %368 = load i32, i32* @ZPOOL_CONFIG_FEATURE_STATS, align 4
  %369 = call i32* @fnvlist_lookup_nvlist(i32* %367, i32 %368)
  store i32* %369, i32** %25, align 8
  br label %370

370:                                              ; preds = %366, %365
  store i32 0, i32* %24, align 4
  br label %371

371:                                              ; preds = %389, %370
  %372 = load i32, i32* %24, align 4
  %373 = load i32, i32* @SPA_FEATURES, align 4
  %374 = icmp slt i32 %372, %373
  br i1 %374, label %375, label %392

375:                                              ; preds = %371
  %376 = load %struct.TYPE_5__*, %struct.TYPE_5__** @spa_feature_table, align 8
  %377 = load i32, i32* %24, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %376, i64 %378
  store %struct.TYPE_5__* %379, %struct.TYPE_5__** %26, align 8
  %380 = load i32*, i32** %25, align 8
  %381 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = call i64 @nvlist_exists(i32* %380, i32 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %388, label %386

386:                                              ; preds = %375
  %387 = load i32, i32* @ZPOOL_STATUS_FEAT_DISABLED, align 4
  store i32 %387, i32* %4, align 4
  br label %395

388:                                              ; preds = %375
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %24, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %24, align 4
  br label %371

392:                                              ; preds = %371
  br label %393

393:                                              ; preds = %392, %346
  %394 = load i32, i32* @ZPOOL_STATUS_OK, align 4
  store i32 %394, i32* %4, align 4
  br label %395

395:                                              ; preds = %393, %386, %344, %332, %324, %317, %310, %300, %293, %286, %278, %265, %251, %238, %225, %212, %198, %196, %190, %174, %160, %158, %133, %119, %103, %101, %95, %71
  %396 = load i32, i32* %4, align 4
  ret i32 %396
}

declare dso_local i64 @get_system_hostid(...) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_uint64_array(i32*, i32, i64**, i32*) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i32) #1

declare dso_local i64 @fnvlist_lookup_uint64(i32*, i32) #1

declare dso_local i64 @nvlist_exists(i32*, i32) #1

declare dso_local i64 @find_vdev_problem(i32*, i32) #1

declare dso_local i64 @SPA_VERSION_IS_SUPPORTED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

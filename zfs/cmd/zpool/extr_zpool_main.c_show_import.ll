; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_show_import.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_show_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_STATS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"   pool: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"     id: %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"  state: %s\00", align 1
@POOL_STATE_DESTROYED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c" (DESTROYED)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c" status: One or more devices are missing from the system.\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c" status: One or more devices contains corrupted data.\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c" status: The pool data is corrupted.\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c" status: One or more devices are offlined.\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c" status: The pool metadata is corrupted.\0A\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c" status: The pool is formatted using a legacy on-disk version.\0A\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c" status: The pool is formatted using an incompatible version.\0A\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c" status: Some supported features are not enabled on the pool.\0A\00", align 1
@.str.14 = private unnamed_addr constant [78 x i8] c"status: The pool uses the following feature(s) not supported on this system:\0A\00", align 1
@.str.15 = private unnamed_addr constant [187 x i8] c"status: The pool can only be accessed in read-only mode on this system. It\0A\09cannot be accessed in read-write mode because it uses the following\0A\09feature(s) not supported on this system:\0A\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c" status: The pool is currently imported by another system.\0A\00", align 1
@.str.17 = private unnamed_addr constant [116 x i8] c" status: The pool has the multihost property on.  It cannot\0A\09be safely imported when the system hostid is not set.\0A\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c" status: The pool was last accessed by another system.\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c" status: One or more devices are faulted.\0A\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c" status: An intent log record cannot be read.\0A\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c" status: One or more devices were being resilvered.\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c" status: Errata #%d detected.\0A\00", align 1
@ZPOOL_STATUS_OK = common dso_local global i32 0, align 4
@VDEV_STATE_HEALTHY = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [154 x i8] c" action: The pool can be imported using its name or numeric identifier, though\0A\09some features will not be available without an explicit 'zpool upgrade'.\0A\00", align 1
@.str.24 = private unnamed_addr constant [92 x i8] c" action: The pool can be imported using its name or numeric identifier and\0A\09the '-f' flag.\0A\00", align 1
@.str.25 = private unnamed_addr constant [165 x i8] c" action: The pool can be imported using its name or numeric identifier,\0A\09however there is a compatibility issue which should be corrected\0A\09by running 'zpool scrub'\0A\00", align 1
@.str.26 = private unnamed_addr constant [184 x i8] c" action: The pool cannot be imported with this version of ZFS due to\0A\09an active asynchronous destroy. Revert to an earlier version\0A\09and allow the destroy to complete before updating.\0A\00", align 1
@.str.27 = private unnamed_addr constant [179 x i8] c" action: Existing encrypted datasets contain an on-disk incompatibility, which\0A\09needs to be corrected. Backup these datasets to new encrypted datasets\0A\09and destroy the old ones.\0A\00", align 1
@.str.28 = private unnamed_addr constant [475 x i8] c" action: Existing encrypted snapshots and bookmarks contain an on-disk\0A\09incompatibility. This may cause on-disk corruption if they are used\0A\09with 'zfs recv'. To correct the issue, enable the bookmark_v2 feature.\0A\09No additional action is needed if there are no encrypted snapshots or\0A\09bookmarks. If preserving the encrypted snapshots and bookmarks is\0A\09required, use a non-raw send to backup and restore them. Alternately,\0A\09they may be removed to resolve the incompatibility.\0A\00", align 1
@.str.29 = private unnamed_addr constant [73 x i8] c" action: The pool can be imported using its name or numeric identifier.\0A\00", align 1
@VDEV_STATE_DEGRADED = common dso_local global i64 0, align 8
@.str.30 = private unnamed_addr constant [137 x i8] c" action: The pool can be imported despite missing or damaged devices.  The\0A\09fault tolerance of the pool may be compromised if imported.\0A\00", align 1
@.str.31 = private unnamed_addr constant [127 x i8] c" action: The pool cannot be imported.  Access the pool on a system running newer\0A\09software, or recreate the pool from backup.\0A\00", align 1
@.str.32 = private unnamed_addr constant [140 x i8] c"action: The pool cannot be imported. Access the pool on a system that supports\0A\09the required feature(s), or recreate the pool from backup.\0A\00", align 1
@.str.33 = private unnamed_addr constant [199 x i8] c"action: The pool cannot be imported in read-write mode. Import the pool with\0A\09\22-o readonly=on\22, access the pool on a system that supports the\0A\09required feature(s), or recreate the pool from backup.\0A\00", align 1
@.str.34 = private unnamed_addr constant [82 x i8] c" action: The pool cannot be imported. Attach the missing\0A\09devices and try again.\0A\00", align 1
@ZPOOL_CONFIG_LOAD_INFO = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MMP_HOSTNAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MMP_HOSTID = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [92 x i8] c" action: The pool must be exported from %s (hostid=%lx)\0A\09before it can be safely imported.\0A\00", align 1
@.str.36 = private unnamed_addr constant [69 x i8] c" action: Set a unique system hostid with the zgenhostid(8) command.\0A\00", align 1
@.str.37 = private unnamed_addr constant [70 x i8] c" action: The pool cannot be imported due to damaged devices or data.\0A\00", align 1
@ZPOOL_CONFIG_COMMENT = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [13 x i8] c"comment: %s\0A\00", align 1
@VDEV_STATE_CLOSED = common dso_local global i64 0, align 8
@VDEV_STATE_CANT_OPEN = common dso_local global i64 0, align 8
@VDEV_AUX_CORRUPT_DATA = common dso_local global i64 0, align 8
@.str.39 = private unnamed_addr constant [69 x i8] c"\09The pool was destroyed, but can be imported using the '-Df' flags.\0A\00", align 1
@POOL_STATE_EXPORTED = common dso_local global i64 0, align 8
@.str.40 = private unnamed_addr constant [86 x i8] c"\09The pool may be active on another system, but can be imported using\0A\09the '-f' flag.\0A\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"   see: http://zfsonlinux.org/msg/%s\0A\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c" config:\0A\0A\00", align 1
@VDEV_NAME_TYPE_ID = common dso_local global i32 0, align 4
@VDEV_ALLOC_BIAS_DEDUP = common dso_local global i32 0, align 4
@VDEV_ALLOC_BIAS_SPECIAL = common dso_local global i32 0, align 4
@VDEV_ALLOC_CLASS_LOGS = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [113 x i8] c"\0A\09Additional devices are known to be part of this pool, though their\0A\09exact configuration cannot be determined.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @show_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_import(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_6__, align 4
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %7, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %18 = bitcast %struct.TYPE_6__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %21 = call i64 @nvlist_lookup_string(i32* %19, i32 %20, i8** %5)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @verify(i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @ZPOOL_CONFIG_POOL_GUID, align 4
  %27 = call i64 @nvlist_lookup_uint64(i32* %25, i32 %26, i64* %6)
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @verify(i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %33 = call i64 @nvlist_lookup_uint64(i32* %31, i32 %32, i64* %3)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @verify(i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %39 = call i64 @nvlist_lookup_nvlist(i32* %37, i32 %38, i32** %10)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @verify(i32 %41)
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* @ZPOOL_CONFIG_VDEV_STATS, align 4
  %45 = bitcast %struct.TYPE_5__** %4 to i64**
  %46 = call i64 @nvlist_lookup_uint64_array(i32* %43, i32 %44, i64** %45, i32* %15)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @verify(i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i8* @zpool_state_to_name(i64 %52, i64 %55)
  store i8* %56, i8** %14, align 8
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @zpool_import_status(i32* %57, i8** %8, i32* %13)
  store i32 %58, i32* %12, align 4
  %59 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 (i8*, ...) @printf(i8* %59, i8* %60)
  %62 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i64, i64* %6, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 (i8*, ...) @printf(i8* %62, i32 %64)
  %66 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i8*, i8** %14, align 8
  %68 = call i32 (i8*, ...) @printf(i8* %66, i8* %67)
  %69 = load i64, i64* %3, align 8
  %70 = load i64, i64* @POOL_STATE_DESTROYED, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %1
  %73 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %74 = call i32 (i8*, ...) @printf(i8* %73)
  br label %75

75:                                               ; preds = %72, %1
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i32, i32* %12, align 4
  switch i32 %77, label %134 [
    i32 134, label %78
    i32 135, label %78
    i32 148, label %78
    i32 144, label %81
    i32 145, label %81
    i32 146, label %84
    i32 133, label %87
    i32 143, label %90
    i32 128, label %93
    i32 129, label %96
    i32 139, label %99
    i32 131, label %102
    i32 130, label %107
    i32 138, label %112
    i32 136, label %115
    i32 137, label %118
    i32 140, label %121
    i32 141, label %121
    i32 147, label %124
    i32 132, label %127
    i32 142, label %130
  ]

78:                                               ; preds = %75, %75, %75
  %79 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %80 = call i32 (i8*, ...) @printf(i8* %79)
  br label %140

81:                                               ; preds = %75, %75
  %82 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  %83 = call i32 (i8*, ...) @printf(i8* %82)
  br label %140

84:                                               ; preds = %75
  %85 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %86 = call i32 (i8*, ...) @printf(i8* %85)
  br label %140

87:                                               ; preds = %75
  %88 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %89 = call i32 (i8*, ...) @printf(i8* %88)
  br label %140

90:                                               ; preds = %75
  %91 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %92 = call i32 (i8*, ...) @printf(i8* %91)
  br label %140

93:                                               ; preds = %75
  %94 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0))
  %95 = call i32 (i8*, ...) @printf(i8* %94)
  br label %140

96:                                               ; preds = %75
  %97 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0))
  %98 = call i32 (i8*, ...) @printf(i8* %97)
  br label %140

99:                                               ; preds = %75
  %100 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i64 0, i64 0))
  %101 = call i32 (i8*, ...) @printf(i8* %100)
  br label %140

102:                                              ; preds = %75
  %103 = call i8* @gettext(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.14, i64 0, i64 0))
  %104 = call i32 (i8*, ...) @printf(i8* %103)
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 @zpool_print_unsup_feat(i32* %105)
  br label %140

107:                                              ; preds = %75
  %108 = call i8* @gettext(i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.15, i64 0, i64 0))
  %109 = call i32 (i8*, ...) @printf(i8* %108)
  %110 = load i32*, i32** %2, align 8
  %111 = call i32 @zpool_print_unsup_feat(i32* %110)
  br label %140

112:                                              ; preds = %75
  %113 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0))
  %114 = call i32 (i8*, ...) @printf(i8* %113)
  br label %140

115:                                              ; preds = %75
  %116 = call i8* @gettext(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.17, i64 0, i64 0))
  %117 = call i32 (i8*, ...) @printf(i8* %116)
  br label %140

118:                                              ; preds = %75
  %119 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0))
  %120 = call i32 (i8*, ...) @printf(i8* %119)
  br label %140

121:                                              ; preds = %75, %75
  %122 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0))
  %123 = call i32 (i8*, ...) @printf(i8* %122)
  br label %140

124:                                              ; preds = %75
  %125 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0))
  %126 = call i32 (i8*, ...) @printf(i8* %125)
  br label %140

127:                                              ; preds = %75
  %128 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0))
  %129 = call i32 (i8*, ...) @printf(i8* %128)
  br label %140

130:                                              ; preds = %75
  %131 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  %132 = load i32, i32* %13, align 4
  %133 = call i32 (i8*, ...) @printf(i8* %131, i32 %132)
  br label %140

134:                                              ; preds = %75
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @ZPOOL_STATUS_OK, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  br label %140

140:                                              ; preds = %134, %130, %127, %124, %121, %118, %115, %112, %107, %102, %99, %96, %93, %90, %87, %84, %81, %78
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @VDEV_STATE_HEALTHY, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %188

146:                                              ; preds = %140
  %147 = load i32, i32* %12, align 4
  %148 = icmp eq i32 %147, 128
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %12, align 4
  %151 = icmp eq i32 %150, 139
  br i1 %151, label %152, label %155

152:                                              ; preds = %149, %146
  %153 = call i8* @gettext(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.23, i64 0, i64 0))
  %154 = call i32 (i8*, ...) @printf(i8* %153)
  br label %187

155:                                              ; preds = %149
  %156 = load i32, i32* %12, align 4
  %157 = icmp eq i32 %156, 137
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = call i8* @gettext(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.24, i64 0, i64 0))
  %160 = call i32 (i8*, ...) @printf(i8* %159)
  br label %186

161:                                              ; preds = %155
  %162 = load i32, i32* %12, align 4
  %163 = icmp eq i32 %162, 142
  br i1 %163, label %164, label %182

164:                                              ; preds = %161
  %165 = load i32, i32* %13, align 4
  switch i32 %165, label %179 [
    i32 153, label %166
    i32 151, label %167
    i32 152, label %170
    i32 150, label %173
    i32 149, label %176
  ]

166:                                              ; preds = %164
  br label %181

167:                                              ; preds = %164
  %168 = call i8* @gettext(i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str.25, i64 0, i64 0))
  %169 = call i32 (i8*, ...) @printf(i8* %168)
  br label %181

170:                                              ; preds = %164
  %171 = call i8* @gettext(i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.26, i64 0, i64 0))
  %172 = call i32 (i8*, ...) @printf(i8* %171)
  br label %181

173:                                              ; preds = %164
  %174 = call i8* @gettext(i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.27, i64 0, i64 0))
  %175 = call i32 (i8*, ...) @printf(i8* %174)
  br label %181

176:                                              ; preds = %164
  %177 = call i8* @gettext(i8* getelementptr inbounds ([475 x i8], [475 x i8]* @.str.28, i64 0, i64 0))
  %178 = call i32 (i8*, ...) @printf(i8* %177)
  br label %181

179:                                              ; preds = %164
  %180 = call i32 @assert(i32 0)
  br label %181

181:                                              ; preds = %179, %176, %173, %170, %167, %166
  br label %185

182:                                              ; preds = %161
  %183 = call i8* @gettext(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.29, i64 0, i64 0))
  %184 = call i32 (i8*, ...) @printf(i8* %183)
  br label %185

185:                                              ; preds = %182, %181
  br label %186

186:                                              ; preds = %185, %158
  br label %187

187:                                              ; preds = %186, %152
  br label %246

188:                                              ; preds = %140
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @VDEV_STATE_DEGRADED, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = call i8* @gettext(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.30, i64 0, i64 0))
  %196 = call i32 (i8*, ...) @printf(i8* %195)
  br label %245

197:                                              ; preds = %188
  %198 = load i32, i32* %12, align 4
  switch i32 %198, label %241 [
    i32 129, label %199
    i32 131, label %202
    i32 130, label %205
    i32 134, label %208
    i32 135, label %208
    i32 148, label %208
    i32 138, label %211
    i32 136, label %238
  ]

199:                                              ; preds = %197
  %200 = call i8* @gettext(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.31, i64 0, i64 0))
  %201 = call i32 (i8*, ...) @printf(i8* %200)
  br label %244

202:                                              ; preds = %197
  %203 = call i8* @gettext(i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.32, i64 0, i64 0))
  %204 = call i32 (i8*, ...) @printf(i8* %203)
  br label %244

205:                                              ; preds = %197
  %206 = call i8* @gettext(i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.33, i64 0, i64 0))
  %207 = call i32 (i8*, ...) @printf(i8* %206)
  br label %244

208:                                              ; preds = %197, %197, %197
  %209 = call i8* @gettext(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.34, i64 0, i64 0))
  %210 = call i32 (i8*, ...) @printf(i8* %209)
  br label %244

211:                                              ; preds = %197
  %212 = load i32*, i32** %2, align 8
  %213 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %214 = call i64 @nvlist_lookup_nvlist(i32* %212, i32 %213, i32** %11)
  %215 = call i32 @VERIFY0(i64 %214)
  %216 = load i32*, i32** %11, align 8
  %217 = load i32, i32* @ZPOOL_CONFIG_MMP_HOSTNAME, align 4
  %218 = call i32 @nvlist_exists(i32* %216, i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %211
  %221 = load i32*, i32** %11, align 8
  %222 = load i32, i32* @ZPOOL_CONFIG_MMP_HOSTNAME, align 4
  %223 = call i8* @fnvlist_lookup_string(i32* %221, i32 %222)
  store i8* %223, i8** %9, align 8
  br label %224

224:                                              ; preds = %220, %211
  %225 = load i32*, i32** %11, align 8
  %226 = load i32, i32* @ZPOOL_CONFIG_MMP_HOSTID, align 4
  %227 = call i32 @nvlist_exists(i32* %225, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %224
  %230 = load i32*, i32** %11, align 8
  %231 = load i32, i32* @ZPOOL_CONFIG_MMP_HOSTID, align 4
  %232 = call i64 @fnvlist_lookup_uint64(i32* %230, i32 %231)
  store i64 %232, i64* %7, align 8
  br label %233

233:                                              ; preds = %229, %224
  %234 = call i8* @gettext(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.35, i64 0, i64 0))
  %235 = load i8*, i8** %9, align 8
  %236 = load i64, i64* %7, align 8
  %237 = call i32 (i8*, ...) @printf(i8* %234, i8* %235, i64 %236)
  br label %244

238:                                              ; preds = %197
  %239 = call i8* @gettext(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.36, i64 0, i64 0))
  %240 = call i32 (i8*, ...) @printf(i8* %239)
  br label %244

241:                                              ; preds = %197
  %242 = call i8* @gettext(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.37, i64 0, i64 0))
  %243 = call i32 (i8*, ...) @printf(i8* %242)
  br label %244

244:                                              ; preds = %241, %238, %233, %208, %205, %202, %199
  br label %245

245:                                              ; preds = %244, %194
  br label %246

246:                                              ; preds = %245, %187
  %247 = load i32*, i32** %2, align 8
  %248 = load i32, i32* @ZPOOL_CONFIG_COMMENT, align 4
  %249 = call i64 @nvlist_lookup_string(i32* %247, i32 %248, i8** %16)
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %246
  %252 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0))
  %253 = load i8*, i8** %16, align 8
  %254 = call i32 (i8*, ...) @printf(i8* %252, i8* %253)
  br label %255

255:                                              ; preds = %251, %246
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @VDEV_STATE_CLOSED, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %267, label %261

261:                                              ; preds = %255
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %289

267:                                              ; preds = %261, %255
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @VDEV_AUX_CORRUPT_DATA, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %289

273:                                              ; preds = %267
  %274 = load i64, i64* %3, align 8
  %275 = load i64, i64* @POOL_STATE_DESTROYED, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = call i8* @gettext(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.39, i64 0, i64 0))
  %279 = call i32 (i8*, ...) @printf(i8* %278)
  br label %288

280:                                              ; preds = %273
  %281 = load i64, i64* %3, align 8
  %282 = load i64, i64* @POOL_STATE_EXPORTED, align 8
  %283 = icmp ne i64 %281, %282
  br i1 %283, label %284, label %287

284:                                              ; preds = %280
  %285 = call i8* @gettext(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.40, i64 0, i64 0))
  %286 = call i32 (i8*, ...) @printf(i8* %285)
  br label %287

287:                                              ; preds = %284, %280
  br label %288

288:                                              ; preds = %287, %277
  br label %289

289:                                              ; preds = %288, %267, %261
  %290 = load i8*, i8** %8, align 8
  %291 = icmp ne i8* %290, null
  br i1 %291, label %292, label %296

292:                                              ; preds = %289
  %293 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.41, i64 0, i64 0))
  %294 = load i8*, i8** %8, align 8
  %295 = call i32 (i8*, ...) @printf(i8* %293, i8* %294)
  br label %296

296:                                              ; preds = %292, %289
  %297 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0))
  %298 = call i32 (i8*, ...) @printf(i8* %297)
  %299 = load i32*, i32** %10, align 8
  %300 = load i8*, i8** %5, align 8
  %301 = call i32 @strlen(i8* %300)
  %302 = load i32, i32* @VDEV_NAME_TYPE_ID, align 4
  %303 = call i32 @max_width(i32* null, i32* %299, i32 0, i32 %301, i32 %302)
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %303, i32* %304, align 4
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = icmp slt i32 %306, 10
  br i1 %307, label %308, label %310

308:                                              ; preds = %296
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 10, i32* %309, align 4
  br label %310

310:                                              ; preds = %308, %296
  %311 = load i8*, i8** %5, align 8
  %312 = load i32*, i32** %10, align 8
  %313 = call i32 @print_import_config(%struct.TYPE_6__* %17, i8* %311, i32* %312, i32 0)
  %314 = load i32*, i32** %10, align 8
  %315 = load i32, i32* @VDEV_ALLOC_BIAS_DEDUP, align 4
  %316 = call i32 @print_class_vdevs(i32* null, %struct.TYPE_6__* %17, i32* %314, i32 %315)
  %317 = load i32*, i32** %10, align 8
  %318 = load i32, i32* @VDEV_ALLOC_BIAS_SPECIAL, align 4
  %319 = call i32 @print_class_vdevs(i32* null, %struct.TYPE_6__* %17, i32* %317, i32 %318)
  %320 = load i32*, i32** %10, align 8
  %321 = load i32, i32* @VDEV_ALLOC_CLASS_LOGS, align 4
  %322 = call i32 @print_class_vdevs(i32* null, %struct.TYPE_6__* %17, i32* %320, i32 %321)
  %323 = load i32, i32* %12, align 4
  %324 = icmp eq i32 %323, 148
  br i1 %324, label %325, label %328

325:                                              ; preds = %310
  %326 = call i8* @gettext(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.43, i64 0, i64 0))
  %327 = call i32 (i8*, ...) @printf(i8* %326)
  br label %328

328:                                              ; preds = %325, %310
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #2

declare dso_local i64 @nvlist_lookup_uint64_array(i32*, i32, i64**, i32*) #2

declare dso_local i8* @zpool_state_to_name(i64, i64) #2

declare dso_local i32 @zpool_import_status(i32*, i8**, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @zpool_print_unsup_feat(i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @VERIFY0(i64) #2

declare dso_local i32 @nvlist_exists(i32*, i32) #2

declare dso_local i8* @fnvlist_lookup_string(i32*, i32) #2

declare dso_local i64 @fnvlist_lookup_uint64(i32*, i32) #2

declare dso_local i32 @max_width(i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @print_import_config(%struct.TYPE_6__*, i8*, i32*, i32) #2

declare dso_local i32 @print_class_vdevs(i32*, %struct.TYPE_6__*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

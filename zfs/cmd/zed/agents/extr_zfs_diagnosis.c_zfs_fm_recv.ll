; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_diagnosis.c_zfs_fm_recv.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_diagnosis.c_zfs_fm_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_41__, %struct.TYPE_38__, %struct.TYPE_36__, %struct.TYPE_34__, %struct.TYPE_28__ }
%struct.TYPE_41__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_38__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_39__, i32, i32, %struct.TYPE_31__ }
%struct.TYPE_39__ = type { i64, i64, i32, i8*, i8* }
%struct.TYPE_31__ = type { i32, i32 }
%struct.load_time_arg = type { i64, %struct.TYPE_31__*, i64 }
%struct.TYPE_30__ = type { i32, i64, i64, i64, i32, i32 }

@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"sysevent.fs.zfs.*\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"purging orphaned cases from %s\00", align 1
@zfs_stats = common dso_local global %struct.TYPE_32__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"resource.fs.zfs.*\00", align 1
@FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID = common dso_local global i32 0, align 4
@SPA_LOAD_OPEN = common dso_local global i64 0, align 8
@SPA_LOAD_NONE = common dso_local global i64 0, align 8
@FM_EREPORT_DETECTOR = common dso_local global i32 0, align 4
@FM_EREPORT_PAYLOAD_ZFS_POOL_CONTEXT = common dso_local global i32 0, align 4
@SPA_LOAD_IMPORT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"ignoring '%s' during import\00", align 1
@FM_EREPORT_ZFS_CHECKSUM = common dso_local global i32 0, align 4
@FM_EREPORT_ZFS_IO = common dso_local global i32 0, align 4
@FM_EREPORT_ZFS_PROBE_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"ignoring '%s' during pool open\00", align 1
@FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_DISK = common dso_local global i8* null, align 8
@VDEV_TYPE_FILE = common dso_local global i8* null, align 8
@FM_EREPORT_PAYLOAD_ZFS_POOL_GUID = common dso_local global i32 0, align 4
@FM_EREPORT_ENA = common dso_local global i32 0, align 4
@zfs_cases = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [71 x i8] c"ignoring pool %llx, ereport time %lld.%lld, pool load time = %lld.%lld\00", align 1
@zpool_find_load_time = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"discarding '%s for vdev %llu\00", align 1
@FM_EREPORT_ZFS_DATA = common dso_local global i32 0, align 4
@FM_EREPORT_ZFS_CONFIG_CACHE_WRITE = common dso_local global i32 0, align 4
@FM_EREPORT_ZFS_DELAY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"opening case for vdev %llu due to '%s'\00", align 1
@CASE_DATA = common dso_local global i32 0, align 4
@CASE_DATA_VERSION_SERD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"resource event '%s'\00", align 1
@FM_RESOURCE_AUTOREPLACE = common dso_local global i32 0, align 4
@FM_RESOURCE_REMOVED = common dso_local global i32 0, align 4
@FM_RESOURCE_STATECHANGE = common dso_local global i32 0, align 4
@FM_EREPORT_PAYLOAD_ZFS_VDEV_STATE = common dso_local global i32 0, align 4
@VDEV_STATE_HEALTHY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [51 x i8] c"closing case after a device statechange to healthy\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"error event '%s'\00", align 1
@FM_EREPORT_ZFS_POOL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"fault.fs.zfs.pool\00", align 1
@FM_EREPORT_ZFS_LOG_REPLAY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"fault.fs.zfs.log_replay\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"ereport.fs.zfs.vdev.*\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"fault.fs.zfs.device\00", align 1
@FM_EREPORT_ZFS_IO_FAILURE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"io_N\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"io_T\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"checksum\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"checksum_N\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"checksum_T\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"fault.fs.zfs.vdev.checksum\00", align 1
@FM_EREPORT_PAYLOAD_ZFS_POOL_FAILMODE = common dso_local global i32 0, align 4
@FM_EREPORT_FAILMODE_CONTINUE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [33 x i8] c"fault.fs.zfs.io_failure_continue\00", align 1
@FM_EREPORT_FAILMODE_WAIT = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [29 x i8] c"fault.fs.zfs.io_failure_wait\00", align 1
@zfs_remove_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i8*)* @zfs_fm_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_fm_recv(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_31__, align 4
  %16 = alloca %struct.TYPE_31__, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.load_time_arg, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_30__, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %28 = load i64, i64* @B_FALSE, align 8
  store i64 %28, i64* %18, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @fmd_nvl_class_match(i32* %29, i32* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %4
  %34 = load i32*, i32** %5, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i8* @strrchr(i8* %35, i8 signext 46)
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = call i32 (i32*, i8*, ...) @fmd_hdl_debug(i32* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @zfs_purge_cases(i32* %39)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 0, i32 0, i32 0), align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 0, i32 0, i32 0), align 4
  br label %730

43:                                               ; preds = %4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @fmd_nvl_class_match(i32* %44, i32* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i64 %46, i64* %19, align 8
  %47 = load i64, i64* %19, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID, align 4
  %52 = call i64 @nvlist_lookup_uint64(i32* %50, i32 %51, i64* %14)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i64, i64* @SPA_LOAD_OPEN, align 8
  store i64 %55, i64* %11, align 8
  br label %58

56:                                               ; preds = %49
  %57 = load i64, i64* @SPA_LOAD_NONE, align 8
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %56, %54
  store i32* null, i32** %17, align 8
  br label %66

59:                                               ; preds = %43
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @FM_EREPORT_DETECTOR, align 4
  %62 = call i32 @nvlist_lookup_nvlist(i32* %60, i32 %61, i32** %17)
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_POOL_CONTEXT, align 4
  %65 = call i32 @nvlist_lookup_int32(i32* %63, i32 %64, i64* %11)
  br label %66

66:                                               ; preds = %59, %58
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @SPA_LOAD_IMPORT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 4, i32 0, i32 0), align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 4, i32 0, i32 0), align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 (i32*, i8*, ...) @fmd_hdl_debug(i32* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  br label %730

76:                                               ; preds = %66
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @SPA_LOAD_OPEN, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %76
  %81 = load i32*, i32** %5, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* @FM_EREPORT_ZFS_CHECKSUM, align 4
  %84 = call i8* @ZFS_MAKE_EREPORT(i32 %83)
  %85 = call i64 @fmd_nvl_class_match(i32* %81, i32* %82, i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %80
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* @FM_EREPORT_ZFS_IO, align 4
  %91 = call i8* @ZFS_MAKE_EREPORT(i32 %90)
  %92 = call i64 @fmd_nvl_class_match(i32* %88, i32* %89, i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = load i32*, i32** %5, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* @FM_EREPORT_ZFS_PROBE_FAILURE, align 4
  %98 = call i8* @ZFS_MAKE_EREPORT(i32 %97)
  %99 = call i64 @fmd_nvl_class_match(i32* %95, i32* %96, i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94, %87, %80
  %102 = load i32*, i32** %5, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 (i32*, i8*, ...) @fmd_hdl_debug(i32* %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 3, i32 0, i32 0), align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 3, i32 0, i32 0), align 4
  br label %730

107:                                              ; preds = %94, %76
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE, align 4
  %110 = call i64 @nvlist_lookup_string(i32* %108, i32 %109, i8** %20)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  %113 = load i8*, i8** %20, align 8
  %114 = load i8*, i8** @VDEV_TYPE_DISK, align 8
  %115 = call i64 @strcmp(i8* %113, i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load i8*, i8** %20, align 8
  %119 = load i8*, i8** @VDEV_TYPE_FILE, align 8
  %120 = call i64 @strcmp(i8* %118, i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 2, i32 0, i32 0), align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 2, i32 0, i32 0), align 4
  br label %730

125:                                              ; preds = %117, %112
  br label %126

126:                                              ; preds = %125, %107
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_POOL_GUID, align 4
  %129 = call i64 @nvlist_lookup_uint64(i32* %127, i32 %128, i64* %13)
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID, align 4
  %132 = call i64 @nvlist_lookup_uint64(i32* %130, i32 %131, i64* %14)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  store i64 0, i64* %14, align 8
  br label %135

135:                                              ; preds = %134, %126
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* @FM_EREPORT_ENA, align 4
  %138 = call i64 @nvlist_lookup_uint64(i32* %136, i32 %137, i64* %12)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store i64 0, i64* %12, align 8
  br label %141

141:                                              ; preds = %140, %135
  %142 = load i32*, i32** %5, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = call i32 @zfs_ereport_when(i32* %142, i32* %143, %struct.TYPE_31__* %16)
  %145 = load i32, i32* @zfs_cases, align 4
  %146 = call %struct.TYPE_29__* @uu_list_first(i32 %145)
  store %struct.TYPE_29__* %146, %struct.TYPE_29__** %9, align 8
  br label %147

147:                                              ; preds = %172, %141
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %149 = icmp ne %struct.TYPE_29__* %148, null
  br i1 %149, label %150, label %176

150:                                              ; preds = %147
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %13, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load i64, i64* @B_TRUE, align 8
  store i64 %158, i64* %18, align 8
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 3
  %161 = bitcast %struct.TYPE_31__* %15 to i8*
  %162 = bitcast %struct.TYPE_31__* %160 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %161, i8* align 8 %162, i64 8, i1 false)
  br label %163

163:                                              ; preds = %157, %150
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %14, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  br label %176

171:                                              ; preds = %163
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* @zfs_cases, align 4
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %175 = call %struct.TYPE_29__* @uu_list_next(i32 %173, %struct.TYPE_29__* %174)
  store %struct.TYPE_29__* %175, %struct.TYPE_29__** %9, align 8
  br label %147

176:                                              ; preds = %170, %147
  %177 = load i64, i64* %18, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %196

179:                                              ; preds = %176
  %180 = call i64 @timeval_earlier(%struct.TYPE_31__* %16, %struct.TYPE_31__* %15)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %179
  %183 = load i32*, i32** %5, align 8
  %184 = load i64, i64* %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i32*, i8*, ...) @fmd_hdl_debug(i32* %183, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i64 %184, i32 %186, i32 %188, i32 %190, i32 %192)
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 1, i32 0, i32 0), align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 1, i32 0, i32 0), align 4
  br label %730

196:                                              ; preds = %179, %176
  %197 = load i64, i64* %18, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %239, label %199

199:                                              ; preds = %196
  %200 = load i32*, i32** %5, align 8
  %201 = call i32* @fmd_hdl_getspecific(i32* %200)
  store i32* %201, i32** %21, align 8
  %202 = load i64, i64* %13, align 8
  %203 = getelementptr inbounds %struct.load_time_arg, %struct.load_time_arg* %22, i32 0, i32 2
  store i64 %202, i64* %203, align 8
  %204 = getelementptr inbounds %struct.load_time_arg, %struct.load_time_arg* %22, i32 0, i32 1
  store %struct.TYPE_31__* %15, %struct.TYPE_31__** %204, align 8
  %205 = load i64, i64* @B_FALSE, align 8
  %206 = getelementptr inbounds %struct.load_time_arg, %struct.load_time_arg* %22, i32 0, i32 0
  store i64 %205, i64* %206, align 8
  %207 = load i32*, i32** %21, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %238

209:                                              ; preds = %199
  %210 = load i32*, i32** %21, align 8
  %211 = load i32, i32* @zpool_find_load_time, align 4
  %212 = call i64 @zpool_iter(i32* %210, i32 %211, %struct.load_time_arg* %22)
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %238

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.load_time_arg, %struct.load_time_arg* %22, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @B_TRUE, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %238

219:                                              ; preds = %214
  %220 = load i64, i64* @B_TRUE, align 8
  store i64 %220, i64* %18, align 8
  %221 = call i64 @timeval_earlier(%struct.TYPE_31__* %16, %struct.TYPE_31__* %15)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %237

223:                                              ; preds = %219
  %224 = load i32*, i32** %5, align 8
  %225 = load i64, i64* %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i32*, i8*, ...) @fmd_hdl_debug(i32* %224, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i64 %225, i32 %227, i32 %229, i32 %231, i32 %233)
  %235 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 1, i32 0, i32 0), align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 1, i32 0, i32 0), align 4
  br label %730

237:                                              ; preds = %219
  br label %238

238:                                              ; preds = %237, %214, %209, %199
  br label %239

239:                                              ; preds = %238, %196
  %240 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %241 = icmp eq %struct.TYPE_29__* %240, null
  br i1 %241, label %242, label %315

242:                                              ; preds = %239
  %243 = bitcast %struct.TYPE_30__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %243, i8 0, i64 40, i1 false)
  %244 = load i64, i64* %19, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %242
  %247 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 0, i32 0, i32 0), align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 0, i32 0, i32 0), align 4
  %249 = load i32*, i32** %5, align 8
  %250 = load i8*, i8** %8, align 8
  %251 = load i64, i64* %14, align 8
  %252 = call i32 (i32*, i8*, ...) @fmd_hdl_debug(i32* %249, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %250, i64 %251)
  br label %730

253:                                              ; preds = %242
  %254 = load i8*, i8** %8, align 8
  %255 = load i32, i32* @FM_EREPORT_ZFS_DATA, align 4
  %256 = call i8* @ZFS_MAKE_EREPORT(i32 %255)
  %257 = call i64 @strcmp(i8* %254, i8* %256)
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %271, label %259

259:                                              ; preds = %253
  %260 = load i8*, i8** %8, align 8
  %261 = load i32, i32* @FM_EREPORT_ZFS_CONFIG_CACHE_WRITE, align 4
  %262 = call i8* @ZFS_MAKE_EREPORT(i32 %261)
  %263 = call i64 @strcmp(i8* %260, i8* %262)
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %271, label %265

265:                                              ; preds = %259
  %266 = load i8*, i8** %8, align 8
  %267 = load i32, i32* @FM_EREPORT_ZFS_DELAY, align 4
  %268 = call i8* @ZFS_MAKE_EREPORT(i32 %267)
  %269 = call i64 @strcmp(i8* %266, i8* %268)
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %265, %259, %253
  %272 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 0, i32 0, i32 0), align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 0, i32 0, i32 0), align 4
  br label %730

274:                                              ; preds = %265
  %275 = load i32*, i32** %5, align 8
  %276 = call i32* @fmd_case_open(i32* %275, i32* null)
  store i32* %276, i32** %23, align 8
  %277 = load i32*, i32** %5, align 8
  %278 = load i64, i64* %14, align 8
  %279 = load i8*, i8** %8, align 8
  %280 = call i32 (i32*, i8*, ...) @fmd_hdl_debug(i32* %277, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i64 %278, i8* %279)
  %281 = load i32*, i32** %5, align 8
  %282 = load i32*, i32** %23, align 8
  %283 = load i32, i32* @CASE_DATA, align 4
  %284 = call i32 @fmd_buf_create(i32* %281, i32* %282, i32 %283, i32 40)
  %285 = load i32, i32* @CASE_DATA_VERSION_SERD, align 4
  %286 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 4
  store i32 %285, i32* %286, align 8
  %287 = load i64, i64* %12, align 8
  %288 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 3
  store i64 %287, i64* %288, align 8
  %289 = load i64, i64* %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 2
  store i64 %289, i64* %290, align 8
  %291 = load i64, i64* %14, align 8
  %292 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 1
  store i64 %291, i64* %292, align 8
  %293 = load i64, i64* %11, align 8
  %294 = trunc i64 %293 to i32
  %295 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 0
  store i32 %294, i32* %295, align 8
  %296 = load i32*, i32** %5, align 8
  %297 = load i32*, i32** %23, align 8
  %298 = load i32, i32* @CASE_DATA, align 4
  %299 = call i32 @fmd_buf_write(i32* %296, i32* %297, i32 %298, %struct.TYPE_30__* %24, i32 40)
  %300 = load i32*, i32** %5, align 8
  %301 = load i32*, i32** %23, align 8
  %302 = call %struct.TYPE_29__* @zfs_case_unserialize(i32* %300, i32* %301)
  store %struct.TYPE_29__* %302, %struct.TYPE_29__** %9, align 8
  %303 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %304 = icmp ne %struct.TYPE_29__* %303, null
  %305 = zext i1 %304 to i32
  %306 = call i32 @assert(i32 %305)
  %307 = load i64, i64* %18, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %274
  %310 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %310, i32 0, i32 3
  %312 = bitcast %struct.TYPE_31__* %311 to i8*
  %313 = bitcast %struct.TYPE_31__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %312, i8* align 4 %313, i64 8, i1 false)
  br label %314

314:                                              ; preds = %309, %274
  br label %315

315:                                              ; preds = %314, %239
  %316 = load i64, i64* %19, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %425

318:                                              ; preds = %315
  %319 = load i32*, i32** %5, align 8
  %320 = load i8*, i8** %8, align 8
  %321 = call i32 (i32*, i8*, ...) @fmd_hdl_debug(i32* %319, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %320)
  %322 = load i32*, i32** %5, align 8
  %323 = load i32*, i32** %7, align 8
  %324 = load i32, i32* @FM_RESOURCE_AUTOREPLACE, align 4
  %325 = call i8* @ZFS_MAKE_RSRC(i32 %324)
  %326 = call i64 @fmd_nvl_class_match(i32* %322, i32* %323, i8* %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %318
  %329 = load i32*, i32** %5, align 8
  %330 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %331 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @fmd_case_close(i32* %329, i32 %332)
  br label %422

334:                                              ; preds = %318
  %335 = load i32*, i32** %5, align 8
  %336 = load i32*, i32** %7, align 8
  %337 = load i32, i32* @FM_RESOURCE_REMOVED, align 4
  %338 = call i8* @ZFS_MAKE_RSRC(i32 %337)
  %339 = call i64 @fmd_nvl_class_match(i32* %335, i32* %336, i8* %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %392

341:                                              ; preds = %334
  %342 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %359

347:                                              ; preds = %341
  %348 = load i32*, i32** %5, align 8
  %349 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %350 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @fmd_timer_remove(i32* %348, i32 %351)
  %353 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %354 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %354, i32 0, i32 2
  store i32 0, i32* %355, align 8
  %356 = load i32*, i32** %5, align 8
  %357 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %358 = call i32 @zfs_case_serialize(i32* %356, %struct.TYPE_29__* %357)
  br label %359

359:                                              ; preds = %347, %341
  %360 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %361 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %361, i32 0, i32 3
  %363 = load i8*, i8** %362, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 0
  %365 = load i8, i8* %364, align 1
  %366 = sext i8 %365 to i32
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %375

368:                                              ; preds = %359
  %369 = load i32*, i32** %5, align 8
  %370 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %371 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %371, i32 0, i32 3
  %373 = load i8*, i8** %372, align 8
  %374 = call i32 @fmd_serd_reset(i32* %369, i8* %373)
  br label %375

375:                                              ; preds = %368, %359
  %376 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %377 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %377, i32 0, i32 4
  %379 = load i8*, i8** %378, align 8
  %380 = getelementptr inbounds i8, i8* %379, i64 0
  %381 = load i8, i8* %380, align 1
  %382 = sext i8 %381 to i32
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %391

384:                                              ; preds = %375
  %385 = load i32*, i32** %5, align 8
  %386 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %387 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %387, i32 0, i32 4
  %389 = load i8*, i8** %388, align 8
  %390 = call i32 @fmd_serd_reset(i32* %385, i8* %389)
  br label %391

391:                                              ; preds = %384, %375
  br label %421

392:                                              ; preds = %334
  %393 = load i32*, i32** %5, align 8
  %394 = load i32*, i32** %7, align 8
  %395 = load i32, i32* @FM_RESOURCE_STATECHANGE, align 4
  %396 = call i8* @ZFS_MAKE_RSRC(i32 %395)
  %397 = call i64 @fmd_nvl_class_match(i32* %393, i32* %394, i8* %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %420

399:                                              ; preds = %392
  store i64 0, i64* %25, align 8
  %400 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %401 = icmp ne %struct.TYPE_29__* %400, null
  br i1 %401, label %402, label %419

402:                                              ; preds = %399
  %403 = load i32*, i32** %7, align 8
  %404 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_VDEV_STATE, align 4
  %405 = call i64 @nvlist_lookup_uint64(i32* %403, i32 %404, i64* %25)
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %407, label %419

407:                                              ; preds = %402
  %408 = load i64, i64* %25, align 8
  %409 = load i64, i64* @VDEV_STATE_HEALTHY, align 8
  %410 = icmp eq i64 %408, %409
  br i1 %410, label %411, label %419

411:                                              ; preds = %407
  %412 = load i32*, i32** %5, align 8
  %413 = call i32 (i32*, i8*, ...) @fmd_hdl_debug(i32* %412, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %414 = load i32*, i32** %5, align 8
  %415 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %416 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @fmd_case_close(i32* %414, i32 %417)
  br label %419

419:                                              ; preds = %411, %407, %402, %399
  br label %420

420:                                              ; preds = %419, %392
  br label %421

421:                                              ; preds = %420, %391
  br label %422

422:                                              ; preds = %421, %328
  %423 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 0, i32 0, i32 0), align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @zfs_stats, i32 0, i32 0, i32 0, i32 0), align 4
  br label %730

425:                                              ; preds = %315
  %426 = load i32*, i32** %5, align 8
  %427 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %428 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 4
  %430 = load i32*, i32** %6, align 8
  %431 = call i32 @fmd_case_add_ereport(i32* %426, i32 %429, i32* %430)
  %432 = load i32*, i32** %5, align 8
  %433 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %434 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 4
  %436 = call i64 @fmd_case_solved(i32* %432, i32 %435)
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %425
  br label %730

439:                                              ; preds = %425
  %440 = load i32*, i32** %5, align 8
  %441 = load i8*, i8** %8, align 8
  %442 = call i32 (i32*, i8*, ...) @fmd_hdl_debug(i32* %440, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %441)
  %443 = load i32*, i32** %5, align 8
  %444 = load i32*, i32** %7, align 8
  %445 = load i32, i32* @FM_EREPORT_ZFS_POOL, align 4
  %446 = call i8* @ZFS_MAKE_EREPORT(i32 %445)
  %447 = call i64 @fmd_nvl_class_match(i32* %443, i32* %444, i8* %446)
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %487

449:                                              ; preds = %439
  %450 = load i32, i32* @zfs_cases, align 4
  %451 = call %struct.TYPE_29__* @uu_list_first(i32 %450)
  store %struct.TYPE_29__* %451, %struct.TYPE_29__** %10, align 8
  br label %452

452:                                              ; preds = %478, %449
  %453 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %454 = icmp ne %struct.TYPE_29__* %453, null
  br i1 %454, label %455, label %482

455:                                              ; preds = %452
  %456 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %457 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %461 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = icmp eq i64 %459, %463
  br i1 %464, label %465, label %477

465:                                              ; preds = %455
  %466 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %467 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %467, i32 0, i32 1
  %469 = load i64, i64* %468, align 8
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %477

471:                                              ; preds = %465
  %472 = load i32*, i32** %5, align 8
  %473 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %474 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %473, i32 0, i32 2
  %475 = load i32, i32* %474, align 4
  %476 = call i32 @fmd_case_close(i32* %472, i32 %475)
  br label %477

477:                                              ; preds = %471, %465, %455
  br label %478

478:                                              ; preds = %477
  %479 = load i32, i32* @zfs_cases, align 4
  %480 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %481 = call %struct.TYPE_29__* @uu_list_next(i32 %479, %struct.TYPE_29__* %480)
  store %struct.TYPE_29__* %481, %struct.TYPE_29__** %10, align 8
  br label %452

482:                                              ; preds = %452
  %483 = load i32*, i32** %5, align 8
  %484 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %485 = load i64, i64* @B_TRUE, align 8
  %486 = call i32 @zfs_case_solve(i32* %483, %struct.TYPE_29__* %484, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i64 %485)
  br label %730

487:                                              ; preds = %439
  %488 = load i32*, i32** %5, align 8
  %489 = load i32*, i32** %7, align 8
  %490 = load i32, i32* @FM_EREPORT_ZFS_LOG_REPLAY, align 4
  %491 = call i8* @ZFS_MAKE_EREPORT(i32 %490)
  %492 = call i64 @fmd_nvl_class_match(i32* %488, i32* %489, i8* %491)
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %499

494:                                              ; preds = %487
  %495 = load i32*, i32** %5, align 8
  %496 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %497 = load i64, i64* @B_TRUE, align 8
  %498 = call i32 @zfs_case_solve(i32* %495, %struct.TYPE_29__* %496, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i64 %497)
  br label %729

499:                                              ; preds = %487
  %500 = load i32*, i32** %5, align 8
  %501 = load i32*, i32** %7, align 8
  %502 = call i64 @fmd_nvl_class_match(i32* %500, i32* %501, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %509

504:                                              ; preds = %499
  %505 = load i32*, i32** %5, align 8
  %506 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %507 = load i64, i64* @B_TRUE, align 8
  %508 = call i32 @zfs_case_solve(i32* %505, %struct.TYPE_29__* %506, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i64 %507)
  br label %728

509:                                              ; preds = %499
  %510 = load i32*, i32** %5, align 8
  %511 = load i32*, i32** %7, align 8
  %512 = load i32, i32* @FM_EREPORT_ZFS_IO, align 4
  %513 = call i8* @ZFS_MAKE_EREPORT(i32 %512)
  %514 = call i64 @fmd_nvl_class_match(i32* %510, i32* %511, i8* %513)
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %537, label %516

516:                                              ; preds = %509
  %517 = load i32*, i32** %5, align 8
  %518 = load i32*, i32** %7, align 8
  %519 = load i32, i32* @FM_EREPORT_ZFS_CHECKSUM, align 4
  %520 = call i8* @ZFS_MAKE_EREPORT(i32 %519)
  %521 = call i64 @fmd_nvl_class_match(i32* %517, i32* %518, i8* %520)
  %522 = icmp ne i64 %521, 0
  br i1 %522, label %537, label %523

523:                                              ; preds = %516
  %524 = load i32*, i32** %5, align 8
  %525 = load i32*, i32** %7, align 8
  %526 = load i32, i32* @FM_EREPORT_ZFS_IO_FAILURE, align 4
  %527 = call i8* @ZFS_MAKE_EREPORT(i32 %526)
  %528 = call i64 @fmd_nvl_class_match(i32* %524, i32* %525, i8* %527)
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %537, label %530

530:                                              ; preds = %523
  %531 = load i32*, i32** %5, align 8
  %532 = load i32*, i32** %7, align 8
  %533 = load i32, i32* @FM_EREPORT_ZFS_PROBE_FAILURE, align 4
  %534 = call i8* @ZFS_MAKE_EREPORT(i32 %533)
  %535 = call i64 @fmd_nvl_class_match(i32* %531, i32* %532, i8* %534)
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %727

537:                                              ; preds = %530, %523, %516, %509
  store i8* null, i8** %26, align 8
  %538 = load i64, i64* @B_FALSE, align 8
  store i64 %538, i64* %27, align 8
  %539 = load i32*, i32** %5, align 8
  %540 = load i32*, i32** %7, align 8
  %541 = load i32, i32* @FM_EREPORT_ZFS_IO, align 4
  %542 = call i8* @ZFS_MAKE_EREPORT(i32 %541)
  %543 = call i64 @fmd_nvl_class_match(i32* %539, i32* %540, i8* %542)
  %544 = icmp ne i64 %543, 0
  br i1 %544, label %545, label %587

545:                                              ; preds = %537
  %546 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %547 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %546, i32 0, i32 0
  %548 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %547, i32 0, i32 3
  %549 = load i8*, i8** %548, align 8
  %550 = getelementptr inbounds i8, i8* %549, i64 0
  %551 = load i8, i8* %550, align 1
  %552 = sext i8 %551 to i32
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %575

554:                                              ; preds = %545
  %555 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %556 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %556, i32 0, i32 3
  %558 = load i8*, i8** %557, align 8
  %559 = load i64, i64* %13, align 8
  %560 = load i64, i64* %14, align 8
  %561 = call i32 @zfs_serd_name(i8* %558, i64 %559, i64 %560, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %562 = load i32*, i32** %5, align 8
  %563 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %564 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %563, i32 0, i32 0
  %565 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %564, i32 0, i32 3
  %566 = load i8*, i8** %565, align 8
  %567 = load i32*, i32** %5, align 8
  %568 = call i32 @fmd_prop_get_int32(i32* %567, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %569 = load i32*, i32** %5, align 8
  %570 = call i32 @fmd_prop_get_int64(i32* %569, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %571 = call i32 @fmd_serd_create(i32* %562, i8* %566, i32 %568, i32 %570)
  %572 = load i32*, i32** %5, align 8
  %573 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %574 = call i32 @zfs_case_serialize(i32* %572, %struct.TYPE_29__* %573)
  br label %575

575:                                              ; preds = %554, %545
  %576 = load i32*, i32** %5, align 8
  %577 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %578 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %577, i32 0, i32 0
  %579 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %578, i32 0, i32 3
  %580 = load i8*, i8** %579, align 8
  %581 = load i32*, i32** %6, align 8
  %582 = call i64 @fmd_serd_record(i32* %576, i8* %580, i32* %581)
  %583 = icmp ne i64 %582, 0
  br i1 %583, label %584, label %586

584:                                              ; preds = %575
  %585 = load i64, i64* @B_TRUE, align 8
  store i64 %585, i64* %27, align 8
  br label %586

586:                                              ; preds = %584, %575
  br label %691

587:                                              ; preds = %537
  %588 = load i32*, i32** %5, align 8
  %589 = load i32*, i32** %7, align 8
  %590 = load i32, i32* @FM_EREPORT_ZFS_CHECKSUM, align 4
  %591 = call i8* @ZFS_MAKE_EREPORT(i32 %590)
  %592 = call i64 @fmd_nvl_class_match(i32* %588, i32* %589, i8* %591)
  %593 = icmp ne i64 %592, 0
  br i1 %593, label %594, label %639

594:                                              ; preds = %587
  %595 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %596 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %595, i32 0, i32 0
  %597 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %596, i32 0, i32 4
  %598 = load i8*, i8** %597, align 8
  %599 = getelementptr inbounds i8, i8* %598, i64 0
  %600 = load i8, i8* %599, align 1
  %601 = sext i8 %600 to i32
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %603, label %624

603:                                              ; preds = %594
  %604 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %605 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %604, i32 0, i32 0
  %606 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %605, i32 0, i32 4
  %607 = load i8*, i8** %606, align 8
  %608 = load i64, i64* %13, align 8
  %609 = load i64, i64* %14, align 8
  %610 = call i32 @zfs_serd_name(i8* %607, i64 %608, i64 %609, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %611 = load i32*, i32** %5, align 8
  %612 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %613 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %612, i32 0, i32 0
  %614 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %613, i32 0, i32 4
  %615 = load i8*, i8** %614, align 8
  %616 = load i32*, i32** %5, align 8
  %617 = call i32 @fmd_prop_get_int32(i32* %616, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %618 = load i32*, i32** %5, align 8
  %619 = call i32 @fmd_prop_get_int64(i32* %618, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %620 = call i32 @fmd_serd_create(i32* %611, i8* %615, i32 %617, i32 %619)
  %621 = load i32*, i32** %5, align 8
  %622 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %623 = call i32 @zfs_case_serialize(i32* %621, %struct.TYPE_29__* %622)
  br label %624

624:                                              ; preds = %603, %594
  %625 = load i32*, i32** %5, align 8
  %626 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %627 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %626, i32 0, i32 0
  %628 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %627, i32 0, i32 4
  %629 = load i8*, i8** %628, align 8
  %630 = load i32*, i32** %6, align 8
  %631 = call i64 @fmd_serd_record(i32* %625, i8* %629, i32* %630)
  %632 = icmp ne i64 %631, 0
  br i1 %632, label %633, label %638

633:                                              ; preds = %624
  %634 = load i32*, i32** %5, align 8
  %635 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %636 = load i64, i64* @B_FALSE, align 8
  %637 = call i32 @zfs_case_solve(i32* %634, %struct.TYPE_29__* %635, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i64 %636)
  br label %638

638:                                              ; preds = %633, %624
  br label %690

639:                                              ; preds = %587
  %640 = load i32*, i32** %5, align 8
  %641 = load i32*, i32** %7, align 8
  %642 = load i32, i32* @FM_EREPORT_ZFS_IO_FAILURE, align 4
  %643 = call i8* @ZFS_MAKE_EREPORT(i32 %642)
  %644 = call i64 @fmd_nvl_class_match(i32* %640, i32* %641, i8* %643)
  %645 = icmp ne i64 %644, 0
  br i1 %645, label %646, label %680

646:                                              ; preds = %639
  %647 = load i32*, i32** %7, align 8
  %648 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_POOL_FAILMODE, align 4
  %649 = call i64 @nvlist_lookup_string(i32* %647, i32 %648, i8** %26)
  %650 = icmp eq i64 %649, 0
  br i1 %650, label %651, label %680

651:                                              ; preds = %646
  %652 = load i8*, i8** %26, align 8
  %653 = icmp ne i8* %652, null
  br i1 %653, label %654, label %680

654:                                              ; preds = %651
  %655 = load i8*, i8** %26, align 8
  %656 = load i32, i32* @FM_EREPORT_FAILMODE_CONTINUE, align 4
  %657 = load i32, i32* @FM_EREPORT_FAILMODE_CONTINUE, align 4
  %658 = call i32 @strlen(i32 %657)
  %659 = call i64 @strncmp(i8* %655, i32 %656, i32 %658)
  %660 = icmp eq i64 %659, 0
  br i1 %660, label %661, label %666

661:                                              ; preds = %654
  %662 = load i32*, i32** %5, align 8
  %663 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %664 = load i64, i64* @B_FALSE, align 8
  %665 = call i32 @zfs_case_solve(i32* %662, %struct.TYPE_29__* %663, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i64 %664)
  br label %679

666:                                              ; preds = %654
  %667 = load i8*, i8** %26, align 8
  %668 = load i32, i32* @FM_EREPORT_FAILMODE_WAIT, align 4
  %669 = load i32, i32* @FM_EREPORT_FAILMODE_WAIT, align 4
  %670 = call i32 @strlen(i32 %669)
  %671 = call i64 @strncmp(i8* %667, i32 %668, i32 %670)
  %672 = icmp eq i64 %671, 0
  br i1 %672, label %673, label %678

673:                                              ; preds = %666
  %674 = load i32*, i32** %5, align 8
  %675 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %676 = load i64, i64* @B_FALSE, align 8
  %677 = call i32 @zfs_case_solve(i32* %674, %struct.TYPE_29__* %675, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i64 %676)
  br label %678

678:                                              ; preds = %673, %666
  br label %679

679:                                              ; preds = %678, %661
  br label %689

680:                                              ; preds = %651, %646, %639
  %681 = load i32*, i32** %5, align 8
  %682 = load i32*, i32** %7, align 8
  %683 = load i32, i32* @FM_EREPORT_ZFS_PROBE_FAILURE, align 4
  %684 = call i8* @ZFS_MAKE_EREPORT(i32 %683)
  %685 = call i64 @fmd_nvl_class_match(i32* %681, i32* %682, i8* %684)
  %686 = icmp ne i64 %685, 0
  br i1 %686, label %687, label %688

687:                                              ; preds = %680
  br label %688

688:                                              ; preds = %687, %680
  br label %689

689:                                              ; preds = %688, %679
  br label %690

690:                                              ; preds = %689, %638
  br label %691

691:                                              ; preds = %690, %586
  %692 = load i64, i64* %27, align 8
  %693 = icmp ne i64 %692, 0
  br i1 %693, label %694, label %726

694:                                              ; preds = %691
  %695 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %696 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %695, i32 0, i32 0
  %697 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %696, i32 0, i32 2
  %698 = load i32, i32* %697, align 8
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %700, label %706

700:                                              ; preds = %694
  %701 = load i32*, i32** %5, align 8
  %702 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %703 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %702, i32 0, i32 1
  %704 = load i32, i32* %703, align 8
  %705 = call i32 @fmd_timer_remove(i32* %701, i32 %704)
  br label %706

706:                                              ; preds = %700, %694
  %707 = load i32*, i32** %5, align 8
  %708 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %709 = load i32, i32* @zfs_remove_timeout, align 4
  %710 = call i32 @fmd_timer_install(i32* %707, %struct.TYPE_29__* %708, i32* null, i32 %709)
  %711 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %712 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %711, i32 0, i32 1
  store i32 %710, i32* %712, align 8
  %713 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %714 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %713, i32 0, i32 0
  %715 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %714, i32 0, i32 2
  %716 = load i32, i32* %715, align 8
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %725, label %718

718:                                              ; preds = %706
  %719 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %720 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %719, i32 0, i32 0
  %721 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %720, i32 0, i32 2
  store i32 1, i32* %721, align 8
  %722 = load i32*, i32** %5, align 8
  %723 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %724 = call i32 @zfs_case_serialize(i32* %722, %struct.TYPE_29__* %723)
  br label %725

725:                                              ; preds = %718, %706
  br label %726

726:                                              ; preds = %725, %691
  br label %727

727:                                              ; preds = %726, %530
  br label %728

728:                                              ; preds = %727, %504
  br label %729

729:                                              ; preds = %728, %494
  br label %730

730:                                              ; preds = %33, %70, %101, %122, %182, %223, %246, %271, %422, %438, %729, %482
  ret void
}

declare dso_local i64 @fmd_nvl_class_match(i32*, i32*, i8*) #1

declare dso_local i32 @fmd_hdl_debug(i32*, i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @zfs_purge_cases(i32*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @nvlist_lookup_int32(i32*, i32, i64*) #1

declare dso_local i8* @ZFS_MAKE_EREPORT(i32) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @zfs_ereport_when(i32*, i32*, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_29__* @uu_list_first(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_29__* @uu_list_next(i32, %struct.TYPE_29__*) #1

declare dso_local i64 @timeval_earlier(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32* @fmd_hdl_getspecific(i32*) #1

declare dso_local i64 @zpool_iter(i32*, i32, %struct.load_time_arg*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @fmd_case_open(i32*, i32*) #1

declare dso_local i32 @fmd_buf_create(i32*, i32*, i32, i32) #1

declare dso_local i32 @fmd_buf_write(i32*, i32*, i32, %struct.TYPE_30__*, i32) #1

declare dso_local %struct.TYPE_29__* @zfs_case_unserialize(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @ZFS_MAKE_RSRC(i32) #1

declare dso_local i32 @fmd_case_close(i32*, i32) #1

declare dso_local i32 @fmd_timer_remove(i32*, i32) #1

declare dso_local i32 @zfs_case_serialize(i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @fmd_serd_reset(i32*, i8*) #1

declare dso_local i32 @fmd_case_add_ereport(i32*, i32, i32*) #1

declare dso_local i64 @fmd_case_solved(i32*, i32) #1

declare dso_local i32 @zfs_case_solve(i32*, %struct.TYPE_29__*, i8*, i64) #1

declare dso_local i32 @zfs_serd_name(i8*, i64, i64, i8*) #1

declare dso_local i32 @fmd_serd_create(i32*, i8*, i32, i32) #1

declare dso_local i32 @fmd_prop_get_int32(i32*, i8*) #1

declare dso_local i32 @fmd_prop_get_int64(i32*, i8*) #1

declare dso_local i64 @fmd_serd_record(i32*, i8*, i32*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @fmd_timer_install(i32*, %struct.TYPE_29__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

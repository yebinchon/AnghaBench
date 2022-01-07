; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_import_props.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_import_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32, i32, i8*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_import_props.zc = private unnamed_addr constant %struct.TYPE_14__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* null, i32 0 }, align 8
@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot import pool '%s'\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"cannot import '%s'\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_GUID = common dso_local global i32 0, align 4
@ZFS_IOC_POOL_IMPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ZPOOL_TRY_REWIND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot import '%s' as '%s'\00", align 1
@ZPOOL_CONFIG_LOAD_INFO = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_UNSUP_FEAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [71 x i8] c"This pool uses the following feature(s) not supported by this system:\0A\00", align 1
@ZPOOL_CONFIG_CAN_RDONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [118 x i8] c"All unsupported features are only required for writing to the pool.\0AThe pool can be imported using '-o readonly=on'.\0A\00", align 1
@EZFS_BADVERSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@ZPOOL_CONFIG_MMP_STATE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MMP_HOSTNAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MMP_HOSTID = common dso_local global i32 0, align 4
@MMP_STATE_ACTIVE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [106 x i8] c"pool is imported on host '%s' (hostid=%lx).\0AExport the pool on the other system, then run 'zpool import'.\00", align 1
@MMP_STATE_NO_HOSTID = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [131 x i8] c"pool has the multihost property on and the\0Asystem's hostid is not set. Set a unique system hostid with the zgenhostid(8) command.\0A\00", align 1
@EZFS_ACTIVE_POOL = common dso_local global i32 0, align 4
@EZFS_INVALCONFIG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"one or more devices is read only\00", align 1
@EZFS_BADDEV = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MISSING_DEVICES = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [81 x i8] c"The devices below are missing or corrupted, use '-m' to import the pool anyway:\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"one or more devices are already in use\0A\00", align 1
@.str.13 = private unnamed_addr constant [77 x i8] c"new name of at least one dataset is longer than the maximum allowable length\00", align 1
@EZFS_NAMETOOLONG = common dso_local global i32 0, align 4
@ZPOOL_DO_REWIND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_import_props(i32* %0, i32* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__, align 8
  %13 = alloca %struct.TYPE_13__, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [1024 x i8], align 16
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_15__, align 4
  %24 = alloca [1024 x i8], align 16
  %25 = alloca [256 x i8], align 16
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %30 = bitcast %struct.TYPE_14__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 bitcast (%struct.TYPE_14__* @__const.zpool_import_props.zc to i8*), i64 32, i1 false)
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32 0, i32* %20, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %33 = call i64 @nvlist_lookup_string(i32* %31, i32 %32, i8** %18)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @verify(i32 %35)
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %38 = load i32, i32* @TEXT_DOMAIN, align 4
  %39 = call i8* @dgettext(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i8*, i8** %18, align 8
  %41 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %37, i32 1024, i8* %39, i8* %40)
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %5
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @B_FALSE, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @zpool_name_valid(i32* %45, i32 %46, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %44
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %53 = load i32, i32* @TEXT_DOMAIN, align 4
  %54 = call i8* @dgettext(i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @zfs_error_fmt(i32* %51, i32 %52, i8* %54, i8* %55)
  store i32 %56, i32* %6, align 4
  br label %417

57:                                               ; preds = %44
  %58 = load i8*, i8** %9, align 8
  store i8* %58, i8** %17, align 8
  br label %61

59:                                               ; preds = %5
  %60 = load i8*, i8** %18, align 8
  store i8* %60, i8** %17, align 8
  br label %61

61:                                               ; preds = %59, %57
  %62 = load i32*, i32** %10, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %96

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %66 = load i32, i32* @B_TRUE, align 4
  store i32 %66, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %68 = load i32, i32* @B_FALSE, align 4
  store i32 %68, i32* %67, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %71 = call i64 @nvlist_lookup_uint64(i32* %69, i32 %70, i8** %22)
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @verify(i32 %73)
  %75 = load i32*, i32** %7, align 8
  %76 = load i8*, i8** %18, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i8*, i8** %22, align 8
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %80 = bitcast %struct.TYPE_15__* %23 to i64*
  %81 = load i64, i64* %80, align 4
  %82 = call i32* @zpool_valid_proplist(i32* %75, i8* %76, i32* %77, i8* %78, i64 %81, i8* %79)
  store i32* %82, i32** %10, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %64
  store i32 -1, i32* %6, align 4
  br label %417

85:                                               ; preds = %64
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = call i64 @zcmd_write_src_nvlist(i32* %86, %struct.TYPE_14__* %12, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @nvlist_free(i32* %91)
  store i32 -1, i32* %6, align 4
  br label %417

93:                                               ; preds = %85
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @nvlist_free(i32* %94)
  br label %96

96:                                               ; preds = %93, %61
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = call i32 @strlcpy(i32 %98, i8* %99, i32 4)
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* @ZPOOL_CONFIG_POOL_GUID, align 4
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 3
  %104 = call i64 @nvlist_lookup_uint64(i32* %101, i32 %102, i8** %103)
  %105 = icmp eq i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @verify(i32 %106)
  %108 = load i32*, i32** %7, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = call i64 @zcmd_write_conf_nvlist(i32* %108, %struct.TYPE_14__* %12, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %96
  %113 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %12)
  store i32 -1, i32* %6, align 4
  br label %417

114:                                              ; preds = %96
  %115 = load i32*, i32** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %117, 2
  %119 = call i64 @zcmd_alloc_dst_nvlist(i32* %115, %struct.TYPE_14__* %12, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %12)
  store i32 -1, i32* %6, align 4
  br label %417

123:                                              ; preds = %114
  %124 = load i32, i32* %11, align 4
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %143, %123
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* @ZFS_IOC_POOL_IMPORT, align 4
  %129 = call i32 @zfs_ioctl(i32* %127, i32 %128, %struct.TYPE_14__* %12)
  store i32 %129, i32* %19, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i32, i32* @errno, align 4
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = icmp eq i32 %132, %133
  br label %135

135:                                              ; preds = %131, %126
  %136 = phi i1 [ false, %126 ], [ %134, %131 ]
  br i1 %136, label %137, label %144

137:                                              ; preds = %135
  %138 = load i32*, i32** %7, align 8
  %139 = call i64 @zcmd_expand_dst_nvlist(i32* %138, %struct.TYPE_14__* %12)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %12)
  store i32 -1, i32* %6, align 4
  br label %417

143:                                              ; preds = %137
  br label %126

144:                                              ; preds = %135
  %145 = load i32, i32* %19, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i32, i32* @errno, align 4
  store i32 %148, i32* %20, align 4
  br label %149

149:                                              ; preds = %147, %144
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @zcmd_read_dst_nvlist(i32* %150, %struct.TYPE_14__* %12, i32** %14)
  %152 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %12)
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @zpool_get_load_policy(i32* %153, %struct.TYPE_13__* %13)
  %155 = load i32, i32* %20, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %373

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @ZPOOL_TRY_REWIND, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %157
  %164 = load i32*, i32** %7, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i8*, i8** %18, align 8
  br label %171

169:                                              ; preds = %163
  %170 = load i8*, i8** %17, align 8
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i8* [ %168, %167 ], [ %170, %169 ]
  %173 = load i32, i32* @B_TRUE, align 4
  %174 = load i32*, i32** %14, align 8
  %175 = call i32 @zpool_rewind_exclaim(i32* %164, i8* %172, i32 %173, i32* %174)
  %176 = load i32*, i32** %14, align 8
  %177 = call i32 @nvlist_free(i32* %176)
  store i32 -1, i32* %6, align 4
  br label %417

178:                                              ; preds = %157
  %179 = load i8*, i8** %9, align 8
  %180 = icmp eq i8* %179, null
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %183 = load i32, i32* @TEXT_DOMAIN, align 4
  %184 = call i8* @dgettext(i32 %183, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %185 = load i8*, i8** %17, align 8
  %186 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %182, i32 1024, i8* %184, i8* %185)
  br label %194

187:                                              ; preds = %178
  %188 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %189 = load i32, i32* @TEXT_DOMAIN, align 4
  %190 = call i8* @dgettext(i32 %189, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %191 = load i8*, i8** %18, align 8
  %192 = load i8*, i8** %17, align 8
  %193 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %188, i32 1024, i8* %190, i8* %191, i8* %192)
  br label %194

194:                                              ; preds = %187, %181
  %195 = load i32, i32* %20, align 4
  switch i32 %195, label %352 [
    i32 131, label %196
    i32 129, label %229
    i32 133, label %289
    i32 128, label %294
    i32 130, label %303
    i32 134, label %329
    i32 135, label %334
    i32 132, label %343
  ]

196:                                              ; preds = %194
  %197 = load i32*, i32** %14, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %224

199:                                              ; preds = %196
  %200 = load i32*, i32** %14, align 8
  %201 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %202 = call i32 @nvlist_lookup_nvlist(i32* %200, i32 %201, i32** %15)
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %224

204:                                              ; preds = %199
  %205 = load i32*, i32** %15, align 8
  %206 = load i32, i32* @ZPOOL_CONFIG_UNSUP_FEAT, align 4
  %207 = call i32 @nvlist_exists(i32* %205, i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %224

209:                                              ; preds = %204
  %210 = load i32, i32* @TEXT_DOMAIN, align 4
  %211 = call i8* @dgettext(i32 %210, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  %212 = call i32 @printf(i8* %211)
  %213 = load i32*, i32** %14, align 8
  %214 = call i32 @zpool_print_unsup_feat(i32* %213)
  %215 = load i32*, i32** %15, align 8
  %216 = load i32, i32* @ZPOOL_CONFIG_CAN_RDONLY, align 4
  %217 = call i32 @nvlist_exists(i32* %215, i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %209
  %220 = load i32, i32* @TEXT_DOMAIN, align 4
  %221 = call i8* @dgettext(i32 %220, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.5, i64 0, i64 0))
  %222 = call i32 @printf(i8* %221)
  br label %223

223:                                              ; preds = %219, %209
  br label %224

224:                                              ; preds = %223, %204, %199, %196
  %225 = load i32*, i32** %7, align 8
  %226 = load i32, i32* @EZFS_BADVERSION, align 4
  %227 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %228 = call i32 @zfs_error(i32* %225, i32 %226, i8* %227)
  br label %370

229:                                              ; preds = %194
  %230 = load i32*, i32** %14, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %284

232:                                              ; preds = %229
  %233 = load i32*, i32** %14, align 8
  %234 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %235 = call i32 @nvlist_lookup_nvlist(i32* %233, i32 %234, i32** %15)
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %284

237:                                              ; preds = %232
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %26, align 8
  store i8* null, i8** %27, align 8
  %238 = load i32*, i32** %15, align 8
  %239 = load i32, i32* @ZPOOL_CONFIG_MMP_STATE, align 4
  %240 = call i8* @fnvlist_lookup_uint64(i32* %238, i32 %239)
  store i8* %240, i8** %28, align 8
  %241 = load i32*, i32** %15, align 8
  %242 = load i32, i32* @ZPOOL_CONFIG_MMP_HOSTNAME, align 4
  %243 = call i32 @nvlist_exists(i32* %241, i32 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %237
  %246 = load i32*, i32** %15, align 8
  %247 = load i32, i32* @ZPOOL_CONFIG_MMP_HOSTNAME, align 4
  %248 = call i8* @fnvlist_lookup_string(i32* %246, i32 %247)
  store i8* %248, i8** %26, align 8
  br label %249

249:                                              ; preds = %245, %237
  %250 = load i32*, i32** %15, align 8
  %251 = load i32, i32* @ZPOOL_CONFIG_MMP_HOSTID, align 4
  %252 = call i32 @nvlist_exists(i32* %250, i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %249
  %255 = load i32*, i32** %15, align 8
  %256 = load i32, i32* @ZPOOL_CONFIG_MMP_HOSTID, align 4
  %257 = call i8* @fnvlist_lookup_uint64(i32* %255, i32 %256)
  store i8* %257, i8** %27, align 8
  br label %258

258:                                              ; preds = %254, %249
  %259 = load i8*, i8** %28, align 8
  %260 = load i8*, i8** @MMP_STATE_ACTIVE, align 8
  %261 = icmp eq i8* %259, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %258
  %263 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 0
  %264 = load i32, i32* @TEXT_DOMAIN, align 4
  %265 = call i8* @dgettext(i32 %264, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.7, i64 0, i64 0))
  %266 = load i8*, i8** %26, align 8
  %267 = load i8*, i8** %27, align 8
  %268 = ptrtoint i8* %267 to i64
  %269 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %263, i32 256, i8* %265, i8* %266, i64 %268)
  br label %280

270:                                              ; preds = %258
  %271 = load i8*, i8** %28, align 8
  %272 = load i8*, i8** @MMP_STATE_NO_HOSTID, align 8
  %273 = icmp eq i8* %271, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %270
  %275 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 0
  %276 = load i32, i32* @TEXT_DOMAIN, align 4
  %277 = call i8* @dgettext(i32 %276, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.8, i64 0, i64 0))
  %278 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %275, i32 256, i8* %277)
  br label %279

279:                                              ; preds = %274, %270
  br label %280

280:                                              ; preds = %279, %262
  %281 = load i32*, i32** %7, align 8
  %282 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 0
  %283 = call i32 @zfs_error_aux(i32* %281, i8* %282)
  br label %284

284:                                              ; preds = %280, %232, %229
  %285 = load i32*, i32** %7, align 8
  %286 = load i32, i32* @EZFS_ACTIVE_POOL, align 4
  %287 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %288 = call i32 @zfs_error(i32* %285, i32 %286, i8* %287)
  br label %370

289:                                              ; preds = %194
  %290 = load i32*, i32** %7, align 8
  %291 = load i32, i32* @EZFS_INVALCONFIG, align 4
  %292 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %293 = call i32 @zfs_error(i32* %290, i32 %291, i8* %292)
  br label %370

294:                                              ; preds = %194
  %295 = load i32*, i32** %7, align 8
  %296 = load i32, i32* @TEXT_DOMAIN, align 4
  %297 = call i8* @dgettext(i32 %296, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %298 = call i32 @zfs_error_aux(i32* %295, i8* %297)
  %299 = load i32*, i32** %7, align 8
  %300 = load i32, i32* @EZFS_BADDEV, align 4
  %301 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %302 = call i32 @zfs_error(i32* %299, i32 %300, i8* %301)
  br label %370

303:                                              ; preds = %194
  %304 = load i32*, i32** %14, align 8
  %305 = icmp ne i32* %304, null
  br i1 %305, label %306, label %324

306:                                              ; preds = %303
  %307 = load i32*, i32** %14, align 8
  %308 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %309 = call i32 @nvlist_lookup_nvlist(i32* %307, i32 %308, i32** %15)
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %324

311:                                              ; preds = %306
  %312 = load i32*, i32** %15, align 8
  %313 = load i32, i32* @ZPOOL_CONFIG_MISSING_DEVICES, align 4
  %314 = call i32 @nvlist_lookup_nvlist(i32* %312, i32 %313, i32** %16)
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %324

316:                                              ; preds = %311
  %317 = load i32, i32* @TEXT_DOMAIN, align 4
  %318 = call i8* @dgettext(i32 %317, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i64 0, i64 0))
  %319 = call i32 @printf(i8* %318)
  %320 = load i32*, i32** %7, align 8
  %321 = load i32*, i32** %16, align 8
  %322 = call i32 @print_vdev_tree(i32* %320, i32* null, i32* %321, i32 2)
  %323 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %324

324:                                              ; preds = %316, %311, %306, %303
  %325 = load i32*, i32** %7, align 8
  %326 = load i32, i32* %20, align 4
  %327 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %328 = call i32 @zpool_standard_error(i32* %325, i32 %326, i8* %327)
  br label %370

329:                                              ; preds = %194
  %330 = load i32*, i32** %7, align 8
  %331 = load i32, i32* %20, align 4
  %332 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %333 = call i32 @zpool_standard_error(i32* %330, i32 %331, i8* %332)
  br label %370

334:                                              ; preds = %194
  %335 = load i32*, i32** %7, align 8
  %336 = load i32, i32* @TEXT_DOMAIN, align 4
  %337 = call i8* @dgettext(i32 %336, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %338 = call i32 @zfs_error_aux(i32* %335, i8* %337)
  %339 = load i32*, i32** %7, align 8
  %340 = load i32, i32* @EZFS_BADDEV, align 4
  %341 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %342 = call i32 @zfs_error(i32* %339, i32 %340, i8* %341)
  br label %370

343:                                              ; preds = %194
  %344 = load i32*, i32** %7, align 8
  %345 = load i32, i32* @TEXT_DOMAIN, align 4
  %346 = call i8* @dgettext(i32 %345, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.13, i64 0, i64 0))
  %347 = call i32 @zfs_error_aux(i32* %344, i8* %346)
  %348 = load i32*, i32** %7, align 8
  %349 = load i32, i32* @EZFS_NAMETOOLONG, align 4
  %350 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %351 = call i32 @zfs_error(i32* %348, i32 %349, i8* %350)
  br label %370

352:                                              ; preds = %194
  %353 = load i32*, i32** %7, align 8
  %354 = load i32, i32* %20, align 4
  %355 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %356 = call i32 @zpool_standard_error(i32* %353, i32 %354, i8* %355)
  %357 = load i32*, i32** %7, align 8
  %358 = load i8*, i8** %9, align 8
  %359 = icmp ne i8* %358, null
  br i1 %359, label %360, label %362

360:                                              ; preds = %352
  %361 = load i8*, i8** %18, align 8
  br label %364

362:                                              ; preds = %352
  %363 = load i8*, i8** %17, align 8
  br label %364

364:                                              ; preds = %362, %360
  %365 = phi i8* [ %361, %360 ], [ %363, %362 ]
  %366 = load i32, i32* %20, align 4
  %367 = sub nsw i32 0, %366
  %368 = load i32*, i32** %14, align 8
  %369 = call i32 @zpool_explain_recover(i32* %357, i8* %365, i32 %367, i32* %368)
  br label %370

370:                                              ; preds = %364, %343, %334, %329, %324, %294, %289, %284, %224
  %371 = load i32*, i32** %14, align 8
  %372 = call i32 @nvlist_free(i32* %371)
  store i32 -1, i32* %19, align 4
  br label %415

373:                                              ; preds = %149
  %374 = load i32*, i32** %7, align 8
  %375 = load i8*, i8** %17, align 8
  %376 = call i64 @zpool_open_silent(i32* %374, i8* %375, i32** %29)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %373
  store i32 -1, i32* %19, align 4
  br label %386

379:                                              ; preds = %373
  %380 = load i32*, i32** %29, align 8
  %381 = icmp ne i32* %380, null
  br i1 %381, label %382, label %385

382:                                              ; preds = %379
  %383 = load i32*, i32** %29, align 8
  %384 = call i32 @zpool_close(i32* %383)
  br label %385

385:                                              ; preds = %382, %379
  br label %386

386:                                              ; preds = %385, %378
  %387 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* @ZPOOL_DO_REWIND, align 4
  %390 = load i32, i32* @ZPOOL_TRY_REWIND, align 4
  %391 = or i32 %389, %390
  %392 = and i32 %388, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %412

394:                                              ; preds = %386
  %395 = load i32*, i32** %7, align 8
  %396 = load i8*, i8** %9, align 8
  %397 = icmp ne i8* %396, null
  br i1 %397, label %398, label %400

398:                                              ; preds = %394
  %399 = load i8*, i8** %18, align 8
  br label %402

400:                                              ; preds = %394
  %401 = load i8*, i8** %17, align 8
  br label %402

402:                                              ; preds = %400, %398
  %403 = phi i8* [ %399, %398 ], [ %401, %400 ]
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* @ZPOOL_TRY_REWIND, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  %409 = zext i1 %408 to i32
  %410 = load i32*, i32** %14, align 8
  %411 = call i32 @zpool_rewind_exclaim(i32* %395, i8* %403, i32 %409, i32* %410)
  br label %412

412:                                              ; preds = %402, %386
  %413 = load i32*, i32** %14, align 8
  %414 = call i32 @nvlist_free(i32* %413)
  store i32 0, i32* %6, align 4
  br label %417

415:                                              ; preds = %370
  %416 = load i32, i32* %19, align 4
  store i32 %416, i32* %6, align 4
  br label %417

417:                                              ; preds = %415, %412, %171, %141, %121, %112, %90, %84, %50
  %418 = load i32, i32* %6, align 4
  ret i32 %418
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zpool_name_valid(i32*, i32, i8*) #2

declare dso_local i32 @zfs_error_fmt(i32*, i32, i8*, i8*) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i8**) #2

declare dso_local i32* @zpool_valid_proplist(i32*, i8*, i32*, i8*, i64, i8*) #2

declare dso_local i64 @zcmd_write_src_nvlist(i32*, %struct.TYPE_14__*, i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i64 @zcmd_write_conf_nvlist(i32*, %struct.TYPE_14__*, i32*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_14__*) #2

declare dso_local i64 @zcmd_alloc_dst_nvlist(i32*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @zfs_ioctl(i32*, i32, %struct.TYPE_14__*) #2

declare dso_local i64 @zcmd_expand_dst_nvlist(i32*, %struct.TYPE_14__*) #2

declare dso_local i32 @zcmd_read_dst_nvlist(i32*, %struct.TYPE_14__*, i32**) #2

declare dso_local i32 @zpool_get_load_policy(i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @zpool_rewind_exclaim(i32*, i8*, i32, i32*) #2

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i32, i32**) #2

declare dso_local i32 @nvlist_exists(i32*, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @zpool_print_unsup_feat(i32*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i8* @fnvlist_lookup_uint64(i32*, i32) #2

declare dso_local i8* @fnvlist_lookup_string(i32*, i32) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*) #2

declare dso_local i32 @print_vdev_tree(i32*, i32*, i32*, i32) #2

declare dso_local i32 @zpool_standard_error(i32*, i32, i8*) #2

declare dso_local i32 @zpool_explain_recover(i32*, i8*, i32, i32*) #2

declare dso_local i64 @zpool_open_silent(i32*, i8*, i32**) #2

declare dso_local i32 @zpool_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

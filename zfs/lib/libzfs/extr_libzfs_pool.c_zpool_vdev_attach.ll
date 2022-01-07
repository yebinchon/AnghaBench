; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_vdev_attach.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_vdev_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_vdev_attach.zc = private unnamed_addr constant %struct.TYPE_12__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0 }, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot replace %s with %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cannot attach %s to %s\00", align 1
@EZFS_NODEVICE = common dso_local global i32 0, align 4
@EZFS_ISSPARE = common dso_local global i32 0, align 4
@EZFS_ISL2CACHE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"new device must be a single disk\00", align 1
@EZFS_INVALCONFIG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_SPARE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"can only be replaced by another hot spare\00", align 1
@EZFS_BADTARGET = common dso_local global i32 0, align 4
@ZFS_IOC_VDEV_ATTACH = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [60 x i8] c"Make sure to wait until resilver is done before rebooting.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@ZPOOL_PROP_VERSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"cannot replace a log with a spare\00", align 1
@SPA_VERSION_MULTI_REPLACE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [77 x i8] c"already in replacing/spare config; wait for completion or use 'zpool detach'\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"cannot replace a replacing device\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"can only attach to mirrors and top-level disks\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"%s is busy, or device removal is in progress\00", align 1
@EZFS_BADDEV = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"device is too small\00", align 1
@.str.12 = private unnamed_addr constant [106 x i8] c"new device has a different optimal sector size; use the option '-o ashift=N' to override the optimal size\00", align 1
@EZFS_DEVOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_vdev_attach(%struct.TYPE_11__* %0, i8* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32**, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %27 = bitcast %struct.TYPE_12__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.TYPE_12__* @__const.zpool_vdev_attach.zc to i8*), i64 24, i1 false)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %24, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = call i64 @zpool_is_bootable(%struct.TYPE_11__* %31)
  store i64 %32, i64* %25, align 8
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %5
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %37 = load i32, i32* @TEXT_DOMAIN, align 4
  %38 = call i8* @dgettext(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @snprintf(i8* %36, i32 1024, i8* %38, i8* %39, i8* %40)
  br label %49

42:                                               ; preds = %5
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %44 = load i32, i32* @TEXT_DOMAIN, align 4
  %45 = call i8* @dgettext(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @snprintf(i8* %43, i32 1024, i8* %45, i8* %46, i8* %47)
  br label %49

49:                                               ; preds = %42, %35
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @strlcpy(i32 %51, i32 %54, i32 4)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32* @zpool_find_vdev(%struct.TYPE_11__* %56, i8* %57, i64* %16, i64* %17, i64* %18)
  store i32* %58, i32** %15, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load i32*, i32** %24, align 8
  %62 = load i32, i32* @EZFS_NODEVICE, align 4
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %64 = call i32 @zfs_error(i32* %61, i32 %62, i8* %63)
  store i32 %64, i32* %6, align 4
  br label %267

65:                                               ; preds = %49
  %66 = load i64, i64* %16, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32*, i32** %24, align 8
  %70 = load i32, i32* @EZFS_ISSPARE, align 4
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %72 = call i32 @zfs_error(i32* %69, i32 %70, i8* %71)
  store i32 %72, i32* %6, align 4
  br label %267

73:                                               ; preds = %65
  %74 = load i64, i64* %17, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32*, i32** %24, align 8
  %78 = load i32, i32* @EZFS_ISL2CACHE, align 4
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %80 = call i32 @zfs_error(i32* %77, i32 %78, i8* %79)
  store i32 %80, i32* %6, align 4
  br label %267

81:                                               ; preds = %73
  %82 = load i32*, i32** %15, align 8
  %83 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %85 = call i64 @nvlist_lookup_uint64(i32* %82, i32 %83, i32* %84)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @verify(i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  store i32 %89, i32* %90, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %93 = call i64 @nvlist_lookup_nvlist_array(i32* %91, i32 %92, i32*** %21, i32* %22)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %81
  %96 = load i32, i32* %22, align 4
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %107

98:                                               ; preds = %95, %81
  %99 = load i32*, i32** %24, align 8
  %100 = load i32, i32* @TEXT_DOMAIN, align 4
  %101 = call i8* @dgettext(i32 %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %102 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %99, i8* %101)
  %103 = load i32*, i32** %24, align 8
  %104 = load i32, i32* @EZFS_INVALCONFIG, align 4
  %105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %106 = call i32 @zfs_error(i32* %103, i32 %104, i8* %105)
  store i32 %106, i32* %6, align 4
  br label %267

107:                                              ; preds = %95
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %109 = call i32 @zpool_get_config(%struct.TYPE_11__* %108, i32* null)
  %110 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %111 = call i64 @nvlist_lookup_nvlist(i32 %109, i32 %110, i32** %23)
  %112 = icmp eq i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @verify(i32 %113)
  %115 = load i32**, i32*** %21, align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i8* @zpool_vdev_name(i32* null, i32* null, i32* %117, i32 0)
  store i8* %118, i8** %20, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %107
  store i32 -1, i32* %6, align 4
  br label %267

121:                                              ; preds = %107
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %153

124:                                              ; preds = %121
  %125 = load i32*, i32** %15, align 8
  %126 = load i32, i32* @ZPOOL_CONFIG_IS_SPARE, align 4
  %127 = call i64 @nvlist_lookup_uint64(i32* %125, i32 %126, i32* %19)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %153

129:                                              ; preds = %124
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %131 = load i8*, i8** %20, align 8
  %132 = call i32* @zpool_find_vdev(%struct.TYPE_11__* %130, i8* %131, i64* %16, i64* %17, i64* null)
  %133 = icmp eq i32* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = load i64, i64* %16, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %153, label %137

137:                                              ; preds = %134, %129
  %138 = load i32*, i32** %23, align 8
  %139 = load i32*, i32** %15, align 8
  %140 = call i64 @is_replacing_spare(i32* %138, i32* %139, i32 1)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %137
  %143 = load i32*, i32** %24, align 8
  %144 = load i32, i32* @TEXT_DOMAIN, align 4
  %145 = call i8* @dgettext(i32 %144, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %146 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %143, i8* %145)
  %147 = load i8*, i8** %20, align 8
  %148 = call i32 @free(i8* %147)
  %149 = load i32*, i32** %24, align 8
  %150 = load i32, i32* @EZFS_BADTARGET, align 4
  %151 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %152 = call i32 @zfs_error(i32* %149, i32 %150, i8* %151)
  store i32 %152, i32* %6, align 4
  br label %267

153:                                              ; preds = %137, %134, %124, %121
  %154 = load i8*, i8** %20, align 8
  %155 = call i32 @free(i8* %154)
  %156 = load i32*, i32** %24, align 8
  %157 = load i32*, i32** %10, align 8
  %158 = call i64 @zcmd_write_conf_nvlist(i32* %156, %struct.TYPE_12__* %12, i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  store i32 -1, i32* %6, align 4
  br label %267

161:                                              ; preds = %153
  %162 = load i32*, i32** %24, align 8
  %163 = load i32, i32* @ZFS_IOC_VDEV_ATTACH, align 4
  %164 = call i32 @zfs_ioctl(i32* %162, i32 %163, %struct.TYPE_12__* %12)
  store i32 %164, i32* %14, align 4
  %165 = call i32 @zcmd_free_nvlists(%struct.TYPE_12__* %12)
  %166 = load i32, i32* %14, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %161
  %169 = load i64, i64* %25, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load i32, i32* @stderr, align 4
  %173 = load i32, i32* @TEXT_DOMAIN, align 4
  %174 = call i8* @dgettext(i32 %173, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  %175 = call i32 @fprintf(i32 %172, i8* %174)
  br label %176

176:                                              ; preds = %171, %168
  store i32 0, i32* %6, align 4
  br label %267

177:                                              ; preds = %161
  %178 = load i32, i32* @errno, align 4
  switch i32 %178, label %261 [
    i32 129, label %179
    i32 131, label %219
    i32 133, label %228
    i32 128, label %238
    i32 132, label %247
    i32 130, label %256
  ]

179:                                              ; preds = %177
  %180 = load i32, i32* %11, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %209

182:                                              ; preds = %179
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %184 = load i32, i32* @ZPOOL_PROP_VERSION, align 4
  %185 = call i32 @zpool_get_prop_int(%struct.TYPE_11__* %183, i32 %184, i32* null)
  store i32 %185, i32* %26, align 4
  %186 = load i64, i64* %18, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %182
  %189 = load i32*, i32** %24, align 8
  %190 = load i32, i32* @TEXT_DOMAIN, align 4
  %191 = call i8* @dgettext(i32 %190, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %192 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %189, i8* %191)
  br label %208

193:                                              ; preds = %182
  %194 = load i32, i32* %26, align 4
  %195 = load i32, i32* @SPA_VERSION_MULTI_REPLACE, align 4
  %196 = icmp sge i32 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %193
  %198 = load i32*, i32** %24, align 8
  %199 = load i32, i32* @TEXT_DOMAIN, align 4
  %200 = call i8* @dgettext(i32 %199, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0))
  %201 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %198, i8* %200)
  br label %207

202:                                              ; preds = %193
  %203 = load i32*, i32** %24, align 8
  %204 = load i32, i32* @TEXT_DOMAIN, align 4
  %205 = call i8* @dgettext(i32 %204, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %206 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %203, i8* %205)
  br label %207

207:                                              ; preds = %202, %197
  br label %208

208:                                              ; preds = %207, %188
  br label %214

209:                                              ; preds = %179
  %210 = load i32*, i32** %24, align 8
  %211 = load i32, i32* @TEXT_DOMAIN, align 4
  %212 = call i8* @dgettext(i32 %211, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  %213 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %210, i8* %212)
  br label %214

214:                                              ; preds = %209, %208
  %215 = load i32*, i32** %24, align 8
  %216 = load i32, i32* @EZFS_BADTARGET, align 4
  %217 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %218 = call i32 @zfs_error(i32* %215, i32 %216, i8* %217)
  br label %266

219:                                              ; preds = %177
  %220 = load i32*, i32** %24, align 8
  %221 = load i32, i32* @TEXT_DOMAIN, align 4
  %222 = call i8* @dgettext(i32 %221, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %223 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %220, i8* %222)
  %224 = load i32*, i32** %24, align 8
  %225 = load i32, i32* @EZFS_INVALCONFIG, align 4
  %226 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %227 = call i32 @zfs_error(i32* %224, i32 %225, i8* %226)
  br label %266

228:                                              ; preds = %177
  %229 = load i32*, i32** %24, align 8
  %230 = load i32, i32* @TEXT_DOMAIN, align 4
  %231 = call i8* @dgettext(i32 %230, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %232 = load i8*, i8** %9, align 8
  %233 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %229, i8* %231, i8* %232)
  %234 = load i32*, i32** %24, align 8
  %235 = load i32, i32* @EZFS_BADDEV, align 4
  %236 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %237 = call i32 @zfs_error(i32* %234, i32 %235, i8* %236)
  br label %266

238:                                              ; preds = %177
  %239 = load i32*, i32** %24, align 8
  %240 = load i32, i32* @TEXT_DOMAIN, align 4
  %241 = call i8* @dgettext(i32 %240, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %242 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %239, i8* %241)
  %243 = load i32*, i32** %24, align 8
  %244 = load i32, i32* @EZFS_BADDEV, align 4
  %245 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %246 = call i32 @zfs_error(i32* %243, i32 %244, i8* %245)
  br label %266

247:                                              ; preds = %177
  %248 = load i32*, i32** %24, align 8
  %249 = load i32, i32* @TEXT_DOMAIN, align 4
  %250 = call i8* @dgettext(i32 %249, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.12, i64 0, i64 0))
  %251 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %248, i8* %250)
  %252 = load i32*, i32** %24, align 8
  %253 = load i32, i32* @EZFS_BADDEV, align 4
  %254 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %255 = call i32 @zfs_error(i32* %252, i32 %253, i8* %254)
  br label %266

256:                                              ; preds = %177
  %257 = load i32*, i32** %24, align 8
  %258 = load i32, i32* @EZFS_DEVOVERFLOW, align 4
  %259 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %260 = call i32 @zfs_error(i32* %257, i32 %258, i8* %259)
  br label %266

261:                                              ; preds = %177
  %262 = load i32*, i32** %24, align 8
  %263 = load i32, i32* @errno, align 4
  %264 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %265 = call i32 @zpool_standard_error(i32* %262, i32 %263, i8* %264)
  br label %266

266:                                              ; preds = %261, %256, %247, %238, %228, %219, %214
  store i32 -1, i32* %6, align 4
  br label %267

267:                                              ; preds = %266, %176, %160, %142, %120, %98, %76, %68, %60
  %268 = load i32, i32* %6, align 4
  ret i32 %268
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @zpool_is_bootable(%struct.TYPE_11__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32* @zpool_find_vdev(%struct.TYPE_11__*, i8*, i64*, i64*, i64*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #2

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i32*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32, i32, i32**) #2

declare dso_local i32 @zpool_get_config(%struct.TYPE_11__*, i32*) #2

declare dso_local i8* @zpool_vdev_name(i32*, i32*, i32*, i32) #2

declare dso_local i64 @is_replacing_spare(i32*, i32*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @zcmd_write_conf_nvlist(i32*, %struct.TYPE_12__*, i32*) #2

declare dso_local i32 @zfs_ioctl(i32*, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_12__*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @zpool_get_prop_int(%struct.TYPE_11__*, i32, i32*) #2

declare dso_local i32 @zpool_standard_error(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_create.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_create.zc = private unnamed_addr constant %struct.TYPE_8__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0 }, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"cannot create '%s'\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@SPA_VERSION_1 = common dso_local global i32 0, align 4
@ZFS_PROP_ZONED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_PROP_SPECIAL_SMALL_BLOCKS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"%s property requires a special vdev\00", align 1
@EZFS_BADPROP = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@EZFS_CRYPTOFAILED = common dso_local global i32 0, align 4
@ZPOOL_ROOTFS_PROPS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"wkeydata\00", align 1
@ZPOOL_HIDDEN_ARGS = common dso_local global i32 0, align 4
@ZFS_IOC_POOL_CREATE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [104 x i8] c"one or more vdevs refer to the same device, or one of\0Athe devices is part of an active md or lvm device\00", align 1
@EZFS_BADDEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"record size invalid\00", align 1
@SPA_MINDEVSIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [55 x i8] c"one or more devices is less than the minimum size (%s)\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"one or more devices is out of space\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"cache device must be a disk or disk slice\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_create(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [1024 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_9__, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca [64 x i8], align 16
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %24 = bitcast %struct.TYPE_8__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.TYPE_8__* @__const.zpool_create.zc to i8*), i64 16, i1 false)
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 -1, i32* %19, align 4
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %26 = load i32, i32* @TEXT_DOMAIN, align 4
  %27 = call i8* @dgettext(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @snprintf(i8* %25, i32 1024, i8* %27, i8* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @B_FALSE, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @zpool_name_valid(i32* %30, i32 %31, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %5
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %39 = call i32 @zfs_error(i32* %36, i32 %37, i8* %38)
  store i32 %39, i32* %6, align 4
  br label %265

40:                                               ; preds = %5
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i64 @zcmd_write_conf_nvlist(i32* %41, %struct.TYPE_8__* %12, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 -1, i32* %6, align 4
  br label %265

46:                                               ; preds = %40
  %47 = load i32*, i32** %10, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %51 = load i32, i32* @B_FALSE, align 4
  store i32 %51, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %53 = load i32, i32* @B_TRUE, align 4
  store i32 %53, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* @SPA_VERSION_1, align 4
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %59 = bitcast %struct.TYPE_9__* %20 to i64*
  %60 = load i64, i64* %59, align 4
  %61 = call i32* @zpool_valid_proplist(i32* %54, i8* %55, i32* %56, i32 %57, i64 %60, i8* %58)
  store i32* %61, i32** %14, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  br label %250

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %64, %46
  %66 = load i32*, i32** %11, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %162

68:                                               ; preds = %65
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %71 = call i32 @zfs_prop_to_name(i32 %70)
  %72 = call i64 @nvlist_lookup_string(i32* %69, i32 %71, i8** %22)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i8*, i8** %22, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br label %78

78:                                               ; preds = %74, %68
  %79 = phi i1 [ false, %68 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %21, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* @B_TRUE, align 4
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %87 = call i32* @zfs_valid_proplist(i32* %81, i32 %82, i32* %83, i32 %84, i32* null, i32* null, i32 %85, i8* %86)
  store i32* %87, i32** %13, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  br label %250

90:                                               ; preds = %78
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* @ZFS_PROP_SPECIAL_SMALL_BLOCKS, align 4
  %93 = call i32 @zfs_prop_to_name(i32 %92)
  %94 = call i64 @nvlist_exists(i32* %91, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %90
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @zpool_has_special_vdev(i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %96
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* @TEXT_DOMAIN, align 4
  %103 = call i8* @dgettext(i32 %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* @ZFS_PROP_SPECIAL_SMALL_BLOCKS, align 4
  %105 = call i32 @zfs_prop_to_name(i32 %104)
  %106 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %101, i8* %103, i32 %105)
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* @EZFS_BADPROP, align 4
  %109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %110 = call i32 @zfs_error(i32* %107, i32 %108, i8* %109)
  br label %250

111:                                              ; preds = %96, %90
  %112 = load i32*, i32** %14, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %116 = call i64 @nvlist_alloc(i32** %14, i32 %115, i32 0)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %250

119:                                              ; preds = %114, %111
  %120 = load i32*, i32** %7, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* @B_TRUE, align 4
  %124 = call i64 @zfs_crypto_create(i32* %120, i32* null, i32* %121, i32* %122, i32 %123, i32** %16, i32* %17)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* @EZFS_CRYPTOFAILED, align 4
  %129 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %130 = call i32 @zfs_error(i32* %127, i32 %128, i8* %129)
  br label %250

131:                                              ; preds = %119
  %132 = load i32*, i32** %14, align 8
  %133 = load i32, i32* @ZPOOL_ROOTFS_PROPS, align 4
  %134 = load i32*, i32** %13, align 8
  %135 = call i64 @nvlist_add_nvlist(i32* %132, i32 %133, i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %250

138:                                              ; preds = %131
  %139 = load i32*, i32** %16, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %161

141:                                              ; preds = %138
  %142 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %143 = call i64 @nvlist_alloc(i32** %15, i32 %142, i32 0)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %250

146:                                              ; preds = %141
  %147 = load i32*, i32** %15, align 8
  %148 = load i32*, i32** %16, align 8
  %149 = load i32, i32* %17, align 4
  %150 = call i64 @nvlist_add_uint8_array(i32* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %250

153:                                              ; preds = %146
  %154 = load i32*, i32** %14, align 8
  %155 = load i32, i32* @ZPOOL_HIDDEN_ARGS, align 4
  %156 = load i32*, i32** %15, align 8
  %157 = call i64 @nvlist_add_nvlist(i32* %154, i32 %155, i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %250

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160, %138
  br label %162

162:                                              ; preds = %161, %65
  %163 = load i32*, i32** %14, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i32*, i32** %7, align 8
  %167 = load i32*, i32** %14, align 8
  %168 = call i64 @zcmd_write_src_nvlist(i32* %166, %struct.TYPE_8__* %12, i32* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %250

171:                                              ; preds = %165, %162
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = call i32 @strlcpy(i32 %173, i8* %174, i32 4)
  %176 = load i32*, i32** %7, align 8
  %177 = load i32, i32* @ZFS_IOC_POOL_CREATE, align 4
  %178 = call i32 @zfs_ioctl(i32* %176, i32 %177, %struct.TYPE_8__* %12)
  store i32 %178, i32* %19, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %249

180:                                              ; preds = %171
  %181 = call i32 @zcmd_free_nvlists(%struct.TYPE_8__* %12)
  %182 = load i32*, i32** %14, align 8
  %183 = call i32 @nvlist_free(i32* %182)
  %184 = load i32*, i32** %13, align 8
  %185 = call i32 @nvlist_free(i32* %184)
  %186 = load i32*, i32** %15, align 8
  %187 = call i32 @nvlist_free(i32* %186)
  %188 = load i32*, i32** %16, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %180
  %191 = load i32*, i32** %16, align 8
  %192 = call i32 @free(i32* %191)
  br label %193

193:                                              ; preds = %190, %180
  %194 = load i32, i32* @errno, align 4
  switch i32 %194, label %244 [
    i32 132, label %195
    i32 128, label %204
    i32 129, label %213
    i32 131, label %226
    i32 130, label %235
  ]

195:                                              ; preds = %193
  %196 = load i32*, i32** %7, align 8
  %197 = load i32, i32* @TEXT_DOMAIN, align 4
  %198 = call i8* @dgettext(i32 %197, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0))
  %199 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %196, i8* %198)
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* @EZFS_BADDEV, align 4
  %202 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %203 = call i32 @zfs_error(i32* %200, i32 %201, i8* %202)
  store i32 %203, i32* %6, align 4
  br label %265

204:                                              ; preds = %193
  %205 = load i32*, i32** %7, align 8
  %206 = load i32, i32* @TEXT_DOMAIN, align 4
  %207 = call i8* @dgettext(i32 %206, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %208 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %205, i8* %207)
  %209 = load i32*, i32** %7, align 8
  %210 = load i32, i32* @EZFS_BADPROP, align 4
  %211 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %212 = call i32 @zfs_error(i32* %209, i32 %210, i8* %211)
  store i32 %212, i32* %6, align 4
  br label %265

213:                                              ; preds = %193
  %214 = load i32, i32* @SPA_MINDEVSIZE, align 4
  %215 = getelementptr inbounds [64 x i8], [64 x i8]* %23, i64 0, i64 0
  %216 = call i32 @zfs_nicebytes(i32 %214, i8* %215, i32 64)
  %217 = load i32*, i32** %7, align 8
  %218 = load i32, i32* @TEXT_DOMAIN, align 4
  %219 = call i8* @dgettext(i32 %218, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  %220 = getelementptr inbounds [64 x i8], [64 x i8]* %23, i64 0, i64 0
  %221 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %217, i8* %219, i8* %220)
  %222 = load i32*, i32** %7, align 8
  %223 = load i32, i32* @EZFS_BADDEV, align 4
  %224 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %225 = call i32 @zfs_error(i32* %222, i32 %223, i8* %224)
  store i32 %225, i32* %6, align 4
  br label %265

226:                                              ; preds = %193
  %227 = load i32*, i32** %7, align 8
  %228 = load i32, i32* @TEXT_DOMAIN, align 4
  %229 = call i8* @dgettext(i32 %228, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %230 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %227, i8* %229)
  %231 = load i32*, i32** %7, align 8
  %232 = load i32, i32* @EZFS_BADDEV, align 4
  %233 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %234 = call i32 @zfs_error(i32* %231, i32 %232, i8* %233)
  store i32 %234, i32* %6, align 4
  br label %265

235:                                              ; preds = %193
  %236 = load i32*, i32** %7, align 8
  %237 = load i32, i32* @TEXT_DOMAIN, align 4
  %238 = call i8* @dgettext(i32 %237, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %239 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %236, i8* %238)
  %240 = load i32*, i32** %7, align 8
  %241 = load i32, i32* @EZFS_BADDEV, align 4
  %242 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %243 = call i32 @zfs_error(i32* %240, i32 %241, i8* %242)
  store i32 %243, i32* %6, align 4
  br label %265

244:                                              ; preds = %193
  %245 = load i32*, i32** %7, align 8
  %246 = load i32, i32* @errno, align 4
  %247 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %248 = call i32 @zpool_standard_error(i32* %245, i32 %246, i8* %247)
  store i32 %248, i32* %6, align 4
  br label %265

249:                                              ; preds = %171
  br label %250

250:                                              ; preds = %249, %170, %159, %152, %145, %137, %126, %118, %100, %89, %63
  %251 = call i32 @zcmd_free_nvlists(%struct.TYPE_8__* %12)
  %252 = load i32*, i32** %14, align 8
  %253 = call i32 @nvlist_free(i32* %252)
  %254 = load i32*, i32** %13, align 8
  %255 = call i32 @nvlist_free(i32* %254)
  %256 = load i32*, i32** %15, align 8
  %257 = call i32 @nvlist_free(i32* %256)
  %258 = load i32*, i32** %16, align 8
  %259 = icmp ne i32* %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %250
  %261 = load i32*, i32** %16, align 8
  %262 = call i32 @free(i32* %261)
  br label %263

263:                                              ; preds = %260, %250
  %264 = load i32, i32* %19, align 4
  store i32 %264, i32* %6, align 4
  br label %265

265:                                              ; preds = %263, %244, %235, %226, %213, %204, %195, %45, %35
  %266 = load i32, i32* %6, align 4
  ret i32 %266
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zpool_name_valid(i32*, i32, i8*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i64 @zcmd_write_conf_nvlist(i32*, %struct.TYPE_8__*, i32*) #2

declare dso_local i32* @zpool_valid_proplist(i32*, i8*, i32*, i32, i64, i8*) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i32 @zfs_prop_to_name(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32* @zfs_valid_proplist(i32*, i32, i32*, i32, i32*, i32*, i32, i8*) #2

declare dso_local i64 @nvlist_exists(i32*, i32) #2

declare dso_local i32 @zpool_has_special_vdev(i32*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i64 @zfs_crypto_create(i32*, i32*, i32*, i32*, i32, i32**, i32*) #2

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32*) #2

declare dso_local i64 @nvlist_add_uint8_array(i32*, i8*, i32*, i32) #2

declare dso_local i64 @zcmd_write_src_nvlist(i32*, %struct.TYPE_8__*, i32*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @zfs_ioctl(i32*, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_8__*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @zfs_nicebytes(i32, i8*, i32) #2

declare dso_local i32 @zpool_standard_error(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

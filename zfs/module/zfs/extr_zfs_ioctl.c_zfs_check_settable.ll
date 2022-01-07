; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_check_settable.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_check_settable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPROP_INVAL = common dso_local global i32 0, align 4
@ZFS_DELEG_PERM_USERPROP = common dso_local global i8* null, align 8
@zfs_userquota_prop_prefixes = common dso_local global i8** null, align 8
@ZFS_PROP_USERQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_USEROBJQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPOBJQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_PROJECTQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_PROJECTOBJQUOTA = common dso_local global i64 0, align 8
@ZFS_DELEG_PERM_USERQUOTA = common dso_local global i8* null, align 8
@ZFS_DELEG_PERM_USEROBJQUOTA = common dso_local global i8* null, align 8
@ZFS_DELEG_PERM_GROUPQUOTA = common dso_local global i8* null, align 8
@ZFS_DELEG_PERM_GROUPOBJQUOTA = common dso_local global i8* null, align 8
@ZFS_DELEG_PERM_PROJECTQUOTA = common dso_local global i8* null, align 8
@ZFS_DELEG_PERM_PROJECTOBJQUOTA = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@DATA_TYPE_NVLIST = common dso_local global i64 0, align 8
@ZPROP_VALUE = common dso_local global i32 0, align 4
@ZIO_COMPRESS_GZIP_1 = common dso_local global i32 0, align 4
@ZIO_COMPRESS_GZIP_9 = common dso_local global i32 0, align 4
@SPA_VERSION_GZIP_COMPRESSION = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ZIO_COMPRESS_ZLE = common dso_local global i32 0, align 4
@SPA_VERSION_ZLE_COMPRESSION = common dso_local global i32 0, align 4
@ZIO_COMPRESS_LZ4 = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@SPA_FEATURE_LZ4_COMPRESS = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@SPA_VERSION_DITTO_BLOCKS = common dso_local global i32 0, align 4
@SPA_OLD_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@zfs_max_recordsize = common dso_local global i32 0, align 4
@SPA_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@SPA_FEATURE_LARGE_BLOCKS = common dso_local global i32 0, align 4
@ZFS_DNSIZE_LEGACY = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@SPA_FEATURE_LARGE_DNODE = common dso_local global i32 0, align 4
@ZPL_VERSION_FUID = common dso_local global i32 0, align 4
@DATA_TYPE_UINT64 = common dso_local global i64 0, align 8
@ZFS_ACL_PASSTHROUGH_X = common dso_local global i32 0, align 4
@SPA_VERSION_PASSTHROUGH_X = common dso_local global i32 0, align 4
@SPA_VERSION_DEDUP = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_MASK = common dso_local global i32 0, align 4
@SPA_FEATURE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_check_settable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_check_settable(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @nvpair_name(i32* %27)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32* @strchr(i8* %29, i8 signext 64)
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %9, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @zfs_name_to_prop(i8* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @ZPROP_INVAL, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %157

39:                                               ; preds = %3
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @zfs_prop_user(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** @ZFS_DELEG_PERM_USERPROP, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @zfs_secpolicy_write_perms(i8* %44, i8* %45, i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %4, align 4
  br label %438

51:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %438

52:                                               ; preds = %39
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %154, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** %8, align 8
  %57 = call i64 @zfs_prop_userquota(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %154

59:                                               ; preds = %55
  store i8* null, i8** %13, align 8
  %60 = load i8**, i8*** @zfs_userquota_prop_prefixes, align 8
  %61 = load i64, i64* @ZFS_PROP_USERQUOTA, align 8
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %14, align 8
  %64 = load i8**, i8*** @zfs_userquota_prop_prefixes, align 8
  %65 = load i64, i64* @ZFS_PROP_GROUPQUOTA, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %15, align 8
  %68 = load i8**, i8*** @zfs_userquota_prop_prefixes, align 8
  %69 = load i64, i64* @ZFS_PROP_USEROBJQUOTA, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %16, align 8
  %72 = load i8**, i8*** @zfs_userquota_prop_prefixes, align 8
  %73 = load i64, i64* @ZFS_PROP_GROUPOBJQUOTA, align 8
  %74 = getelementptr inbounds i8*, i8** %72, i64 %73
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %17, align 8
  %76 = load i8**, i8*** @zfs_userquota_prop_prefixes, align 8
  %77 = load i64, i64* @ZFS_PROP_PROJECTQUOTA, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %18, align 8
  %80 = load i8**, i8*** @zfs_userquota_prop_prefixes, align 8
  %81 = load i64, i64* @ZFS_PROP_PROJECTOBJQUOTA, align 8
  %82 = getelementptr inbounds i8*, i8** %80, i64 %81
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %19, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = call i64 @strncmp(i8* %84, i8* %85, i32 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %59
  %91 = load i8*, i8** @ZFS_DELEG_PERM_USERQUOTA, align 8
  store i8* %91, i8** %13, align 8
  br label %145

92:                                               ; preds = %59
  %93 = load i8*, i8** %8, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = load i8*, i8** %16, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = call i64 @strncmp(i8* %93, i8* %94, i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i8*, i8** @ZFS_DELEG_PERM_USEROBJQUOTA, align 8
  store i8* %100, i8** %13, align 8
  br label %144

101:                                              ; preds = %92
  %102 = load i8*, i8** %8, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = load i8*, i8** %15, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = call i64 @strncmp(i8* %102, i8* %103, i32 %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i8*, i8** @ZFS_DELEG_PERM_GROUPQUOTA, align 8
  store i8* %109, i8** %13, align 8
  br label %143

110:                                              ; preds = %101
  %111 = load i8*, i8** %8, align 8
  %112 = load i8*, i8** %17, align 8
  %113 = load i8*, i8** %17, align 8
  %114 = call i32 @strlen(i8* %113)
  %115 = call i64 @strncmp(i8* %111, i8* %112, i32 %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i8*, i8** @ZFS_DELEG_PERM_GROUPOBJQUOTA, align 8
  store i8* %118, i8** %13, align 8
  br label %142

119:                                              ; preds = %110
  %120 = load i8*, i8** %8, align 8
  %121 = load i8*, i8** %18, align 8
  %122 = load i8*, i8** %18, align 8
  %123 = call i32 @strlen(i8* %122)
  %124 = call i64 @strncmp(i8* %120, i8* %121, i32 %123)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i8*, i8** @ZFS_DELEG_PERM_PROJECTQUOTA, align 8
  store i8* %127, i8** %13, align 8
  br label %141

128:                                              ; preds = %119
  %129 = load i8*, i8** %8, align 8
  %130 = load i8*, i8** %19, align 8
  %131 = load i8*, i8** %19, align 8
  %132 = call i32 @strlen(i8* %131)
  %133 = call i64 @strncmp(i8* %129, i8* %130, i32 %132)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i8*, i8** @ZFS_DELEG_PERM_PROJECTOBJQUOTA, align 8
  store i8* %136, i8** %13, align 8
  br label %140

137:                                              ; preds = %128
  %138 = load i32, i32* @EINVAL, align 4
  %139 = call i32 @SET_ERROR(i32 %138)
  store i32 %139, i32* %4, align 4
  br label %438

140:                                              ; preds = %135
  br label %141

141:                                              ; preds = %140, %126
  br label %142

142:                                              ; preds = %141, %117
  br label %143

143:                                              ; preds = %142, %108
  br label %144

144:                                              ; preds = %143, %99
  br label %145

145:                                              ; preds = %144, %90
  %146 = load i8*, i8** %5, align 8
  %147 = load i8*, i8** %13, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = call i32 @zfs_secpolicy_write_perms(i8* %146, i8* %147, i32* %148)
  store i32 %149, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %4, align 4
  br label %438

153:                                              ; preds = %145
  store i32 0, i32* %4, align 4
  br label %438

154:                                              ; preds = %55, %52
  %155 = load i32, i32* @EINVAL, align 4
  %156 = call i32 @SET_ERROR(i32 %155)
  store i32 %156, i32* %4, align 4
  br label %438

157:                                              ; preds = %3
  %158 = load i64, i64* %9, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* @EINVAL, align 4
  %162 = call i32 @SET_ERROR(i32 %161)
  store i32 %162, i32* %4, align 4
  br label %438

163:                                              ; preds = %157
  %164 = load i32*, i32** %6, align 8
  %165 = call i64 @nvpair_type(i32* %164)
  %166 = load i64, i64* @DATA_TYPE_NVLIST, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %163
  %169 = load i32*, i32** %6, align 8
  %170 = call i64 @nvpair_value_nvlist(i32* %169, i32** %20)
  %171 = icmp eq i64 %170, 0
  %172 = zext i1 %171 to i32
  %173 = call i32 @VERIFY(i32 %172)
  %174 = load i32*, i32** %20, align 8
  %175 = load i32, i32* @ZPROP_VALUE, align 4
  %176 = call i64 @nvlist_lookup_nvpair(i32* %174, i32 %175, i32** %6)
  %177 = icmp eq i64 %176, 0
  %178 = zext i1 %177 to i32
  %179 = call i32 @VERIFY(i32 %178)
  br label %180

180:                                              ; preds = %168, %163
  %181 = load i32, i32* %10, align 4
  switch i32 %181, label %431 [
    i32 135, label %182
    i32 134, label %253
    i32 128, label %262
    i32 131, label %262
    i32 132, label %304
    i32 129, label %346
    i32 130, label %347
    i32 137, label %356
    i32 136, label %379
    i32 133, label %379
  ]

182:                                              ; preds = %180
  %183 = load i32*, i32** %6, align 8
  %184 = call i32 @nvpair_value_uint64(i32* %183, i32* %11)
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %252

186:                                              ; preds = %182
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* @ZIO_COMPRESS_GZIP_1, align 4
  %189 = icmp sge i32 %187, %188
  br i1 %189, label %190, label %202

190:                                              ; preds = %186
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @ZIO_COMPRESS_GZIP_9, align 4
  %193 = icmp sle i32 %191, %192
  br i1 %193, label %194, label %202

194:                                              ; preds = %190
  %195 = load i8*, i8** %5, align 8
  %196 = load i32, i32* @SPA_VERSION_GZIP_COMPRESSION, align 4
  %197 = call i32 @zfs_earlier_version(i8* %195, i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = load i32, i32* @ENOTSUP, align 4
  %201 = call i32 @SET_ERROR(i32 %200)
  store i32 %201, i32* %4, align 4
  br label %438

202:                                              ; preds = %194, %190, %186
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @ZIO_COMPRESS_ZLE, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %214

206:                                              ; preds = %202
  %207 = load i8*, i8** %5, align 8
  %208 = load i32, i32* @SPA_VERSION_ZLE_COMPRESSION, align 4
  %209 = call i32 @zfs_earlier_version(i8* %207, i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i32, i32* @ENOTSUP, align 4
  %213 = call i32 @SET_ERROR(i32 %212)
  store i32 %213, i32* %4, align 4
  br label %438

214:                                              ; preds = %206, %202
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* @ZIO_COMPRESS_LZ4, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %240

218:                                              ; preds = %214
  %219 = load i8*, i8** %5, align 8
  %220 = load i32, i32* @FTAG, align 4
  %221 = call i32 @spa_open(i8* %219, i32** %21, i32 %220)
  store i32 %221, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %218
  %224 = load i32, i32* %12, align 4
  store i32 %224, i32* %4, align 4
  br label %438

225:                                              ; preds = %218
  %226 = load i32*, i32** %21, align 8
  %227 = load i32, i32* @SPA_FEATURE_LZ4_COMPRESS, align 4
  %228 = call i32 @spa_feature_is_enabled(i32* %226, i32 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %236, label %230

230:                                              ; preds = %225
  %231 = load i32*, i32** %21, align 8
  %232 = load i32, i32* @FTAG, align 4
  %233 = call i32 @spa_close(i32* %231, i32 %232)
  %234 = load i32, i32* @ENOTSUP, align 4
  %235 = call i32 @SET_ERROR(i32 %234)
  store i32 %235, i32* %4, align 4
  br label %438

236:                                              ; preds = %225
  %237 = load i32*, i32** %21, align 8
  %238 = load i32, i32* @FTAG, align 4
  %239 = call i32 @spa_close(i32* %237, i32 %238)
  br label %240

240:                                              ; preds = %236, %214
  %241 = load i8*, i8** %5, align 8
  %242 = call i32 @zfs_is_bootfs(i8* %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %240
  %245 = load i32, i32* %11, align 4
  %246 = call i32 @BOOTFS_COMPRESS_VALID(i32 %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %244
  %249 = load i32, i32* @ERANGE, align 4
  %250 = call i32 @SET_ERROR(i32 %249)
  store i32 %250, i32* %4, align 4
  br label %438

251:                                              ; preds = %244, %240
  br label %252

252:                                              ; preds = %251, %182
  br label %432

253:                                              ; preds = %180
  %254 = load i8*, i8** %5, align 8
  %255 = load i32, i32* @SPA_VERSION_DITTO_BLOCKS, align 4
  %256 = call i32 @zfs_earlier_version(i8* %254, i32 %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = load i32, i32* @ENOTSUP, align 4
  %260 = call i32 @SET_ERROR(i32 %259)
  store i32 %260, i32* %4, align 4
  br label %438

261:                                              ; preds = %253
  br label %432

262:                                              ; preds = %180, %180
  %263 = load i32*, i32** %6, align 8
  %264 = call i32 @nvpair_value_uint64(i32* %263, i32* %11)
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %303

266:                                              ; preds = %262
  %267 = load i32, i32* %11, align 4
  %268 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %269 = icmp sgt i32 %267, %268
  br i1 %269, label %270, label %303

270:                                              ; preds = %266
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* @zfs_max_recordsize, align 4
  %273 = icmp sgt i32 %271, %272
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = load i32, i32* %11, align 4
  %276 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %277 = icmp sgt i32 %275, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %274, %270
  %279 = load i32, i32* @ERANGE, align 4
  %280 = call i32 @SET_ERROR(i32 %279)
  store i32 %280, i32* %4, align 4
  br label %438

281:                                              ; preds = %274
  %282 = load i8*, i8** %5, align 8
  %283 = load i32, i32* @FTAG, align 4
  %284 = call i32 @spa_open(i8* %282, i32** %22, i32 %283)
  store i32 %284, i32* %12, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %281
  %287 = load i32, i32* %12, align 4
  store i32 %287, i32* %4, align 4
  br label %438

288:                                              ; preds = %281
  %289 = load i32*, i32** %22, align 8
  %290 = load i32, i32* @SPA_FEATURE_LARGE_BLOCKS, align 4
  %291 = call i32 @spa_feature_is_enabled(i32* %289, i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %299, label %293

293:                                              ; preds = %288
  %294 = load i32*, i32** %22, align 8
  %295 = load i32, i32* @FTAG, align 4
  %296 = call i32 @spa_close(i32* %294, i32 %295)
  %297 = load i32, i32* @ENOTSUP, align 4
  %298 = call i32 @SET_ERROR(i32 %297)
  store i32 %298, i32* %4, align 4
  br label %438

299:                                              ; preds = %288
  %300 = load i32*, i32** %22, align 8
  %301 = load i32, i32* @FTAG, align 4
  %302 = call i32 @spa_close(i32* %300, i32 %301)
  br label %303

303:                                              ; preds = %299, %266, %262
  br label %432

304:                                              ; preds = %180
  %305 = load i32*, i32** %6, align 8
  %306 = call i32 @nvpair_value_uint64(i32* %305, i32* %11)
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %345

308:                                              ; preds = %304
  %309 = load i32, i32* %11, align 4
  %310 = load i32, i32* @ZFS_DNSIZE_LEGACY, align 4
  %311 = icmp ne i32 %309, %310
  br i1 %311, label %312, label %345

312:                                              ; preds = %308
  %313 = load i8*, i8** %5, align 8
  %314 = call i32 @zfs_is_bootfs(i8* %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %312
  %317 = load i32, i32* %11, align 4
  %318 = load i32, i32* @ZFS_DNSIZE_LEGACY, align 4
  %319 = icmp ne i32 %317, %318
  br i1 %319, label %320, label %323

320:                                              ; preds = %316
  %321 = load i32, i32* @EDOM, align 4
  %322 = call i32 @SET_ERROR(i32 %321)
  store i32 %322, i32* %4, align 4
  br label %438

323:                                              ; preds = %316, %312
  %324 = load i8*, i8** %5, align 8
  %325 = load i32, i32* @FTAG, align 4
  %326 = call i32 @spa_open(i8* %324, i32** %23, i32 %325)
  store i32 %326, i32* %12, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %323
  %329 = load i32, i32* %12, align 4
  store i32 %329, i32* %4, align 4
  br label %438

330:                                              ; preds = %323
  %331 = load i32*, i32** %23, align 8
  %332 = load i32, i32* @SPA_FEATURE_LARGE_DNODE, align 4
  %333 = call i32 @spa_feature_is_enabled(i32* %331, i32 %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %341, label %335

335:                                              ; preds = %330
  %336 = load i32*, i32** %23, align 8
  %337 = load i32, i32* @FTAG, align 4
  %338 = call i32 @spa_close(i32* %336, i32 %337)
  %339 = load i32, i32* @ENOTSUP, align 4
  %340 = call i32 @SET_ERROR(i32 %339)
  store i32 %340, i32* %4, align 4
  br label %438

341:                                              ; preds = %330
  %342 = load i32*, i32** %23, align 8
  %343 = load i32, i32* @FTAG, align 4
  %344 = call i32 @spa_close(i32* %342, i32 %343)
  br label %345

345:                                              ; preds = %341, %308, %304
  br label %432

346:                                              ; preds = %180
  br label %432

347:                                              ; preds = %180
  %348 = load i8*, i8** %5, align 8
  %349 = load i32, i32* @ZPL_VERSION_FUID, align 4
  %350 = call i32 @zpl_earlier_version(i8* %348, i32 %349)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %347
  %353 = load i32, i32* @ENOTSUP, align 4
  %354 = call i32 @SET_ERROR(i32 %353)
  store i32 %354, i32* %4, align 4
  br label %438

355:                                              ; preds = %347
  br label %432

356:                                              ; preds = %180
  %357 = load i32*, i32** %6, align 8
  %358 = call i64 @nvpair_type(i32* %357)
  %359 = load i64, i64* @DATA_TYPE_UINT64, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %378

361:                                              ; preds = %356
  %362 = load i32*, i32** %6, align 8
  %363 = call i32 @nvpair_value_uint64(i32* %362, i32* %11)
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %378

365:                                              ; preds = %361
  %366 = load i32, i32* %11, align 4
  %367 = load i32, i32* @ZFS_ACL_PASSTHROUGH_X, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %377

369:                                              ; preds = %365
  %370 = load i8*, i8** %5, align 8
  %371 = load i32, i32* @SPA_VERSION_PASSTHROUGH_X, align 4
  %372 = call i32 @zfs_earlier_version(i8* %370, i32 %371)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %369
  %375 = load i32, i32* @ENOTSUP, align 4
  %376 = call i32 @SET_ERROR(i32 %375)
  store i32 %376, i32* %4, align 4
  br label %438

377:                                              ; preds = %369, %365
  br label %378

378:                                              ; preds = %377, %361, %356
  br label %432

379:                                              ; preds = %180, %180
  %380 = load i32, i32* %10, align 4
  %381 = icmp eq i32 %380, 133
  br i1 %381, label %382, label %390

382:                                              ; preds = %379
  %383 = load i8*, i8** %5, align 8
  %384 = load i32, i32* @SPA_VERSION_DEDUP, align 4
  %385 = call i32 @zfs_earlier_version(i8* %383, i32 %384)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %382
  %388 = load i32, i32* @ENOTSUP, align 4
  %389 = call i32 @SET_ERROR(i32 %388)
  store i32 %389, i32* %4, align 4
  br label %438

390:                                              ; preds = %382, %379
  %391 = load i32*, i32** %6, align 8
  %392 = call i64 @nvpair_type(i32* %391)
  %393 = load i64, i64* @DATA_TYPE_UINT64, align 8
  %394 = icmp eq i64 %392, %393
  br i1 %394, label %395, label %430

395:                                              ; preds = %390
  %396 = load i32*, i32** %6, align 8
  %397 = call i32 @nvpair_value_uint64(i32* %396, i32* %11)
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %430

399:                                              ; preds = %395
  %400 = load i32, i32* %11, align 4
  %401 = load i32, i32* @ZIO_CHECKSUM_MASK, align 4
  %402 = and i32 %400, %401
  %403 = call i32 @zio_checksum_to_feature(i32 %402)
  store i32 %403, i32* %24, align 4
  %404 = load i32, i32* %24, align 4
  %405 = load i32, i32* @SPA_FEATURE_NONE, align 4
  %406 = icmp eq i32 %404, %405
  br i1 %406, label %407, label %408

407:                                              ; preds = %399
  br label %432

408:                                              ; preds = %399
  %409 = load i8*, i8** %5, align 8
  %410 = load i32, i32* @FTAG, align 4
  %411 = call i32 @spa_open(i8* %409, i32** %25, i32 %410)
  store i32 %411, i32* %26, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %415

413:                                              ; preds = %408
  %414 = load i32, i32* %26, align 4
  store i32 %414, i32* %4, align 4
  br label %438

415:                                              ; preds = %408
  %416 = load i32*, i32** %25, align 8
  %417 = load i32, i32* %24, align 4
  %418 = call i32 @spa_feature_is_enabled(i32* %416, i32 %417)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %426, label %420

420:                                              ; preds = %415
  %421 = load i32*, i32** %25, align 8
  %422 = load i32, i32* @FTAG, align 4
  %423 = call i32 @spa_close(i32* %421, i32 %422)
  %424 = load i32, i32* @ENOTSUP, align 4
  %425 = call i32 @SET_ERROR(i32 %424)
  store i32 %425, i32* %4, align 4
  br label %438

426:                                              ; preds = %415
  %427 = load i32*, i32** %25, align 8
  %428 = load i32, i32* @FTAG, align 4
  %429 = call i32 @spa_close(i32* %427, i32 %428)
  br label %430

430:                                              ; preds = %426, %395, %390
  br label %432

431:                                              ; preds = %180
  br label %432

432:                                              ; preds = %431, %430, %407, %378, %355, %346, %345, %303, %261, %252
  %433 = load i8*, i8** %5, align 8
  %434 = load i32, i32* %10, align 4
  %435 = load i32*, i32** %6, align 8
  %436 = call i32 (...) @CRED()
  %437 = call i32 @zfs_secpolicy_setprop(i8* %433, i32 %434, i32* %435, i32 %436)
  store i32 %437, i32* %4, align 4
  br label %438

438:                                              ; preds = %432, %420, %413, %387, %374, %352, %335, %328, %320, %293, %286, %278, %258, %248, %230, %223, %211, %199, %160, %154, %153, %151, %137, %51, %49
  %439 = load i32, i32* %4, align 4
  ret i32 %439
}

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @zfs_name_to_prop(i8*) #1

declare dso_local i64 @zfs_prop_user(i8*) #1

declare dso_local i32 @zfs_secpolicy_write_perms(i8*, i8*, i32*) #1

declare dso_local i64 @zfs_prop_userquota(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i64 @nvlist_lookup_nvpair(i32*, i32, i32**) #1

declare dso_local i32 @nvpair_value_uint64(i32*, i32*) #1

declare dso_local i32 @zfs_earlier_version(i8*, i32) #1

declare dso_local i32 @spa_open(i8*, i32**, i32) #1

declare dso_local i32 @spa_feature_is_enabled(i32*, i32) #1

declare dso_local i32 @spa_close(i32*, i32) #1

declare dso_local i32 @zfs_is_bootfs(i8*) #1

declare dso_local i32 @BOOTFS_COMPRESS_VALID(i32) #1

declare dso_local i32 @zpl_earlier_version(i8*, i32) #1

declare dso_local i32 @zio_checksum_to_feature(i32) #1

declare dso_local i32 @zfs_secpolicy_setprop(i8*, i32, i32*, i32) #1

declare dso_local i32 @CRED(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

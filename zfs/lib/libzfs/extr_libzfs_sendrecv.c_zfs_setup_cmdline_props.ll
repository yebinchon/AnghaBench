; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_zfs_setup_cmdline_props.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_zfs_setup_cmdline_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@ZFS_PROP_ORIGIN = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"property '%s' does not apply to datasets of this type\00", align 1
@EZFS_BADPROP = common dso_local global i32 0, align 4
@ZFS_PROP_ENCRYPTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"encryption property '%s' cannot be set or excluded for raw streams.\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"encryption property '%s' cannot be set for incremental streams.\00", align 1
@ZPROP_SOURCE = common dso_local global i32 0, align 4
@ZPROP_SOURCE_VAL_RECVD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"property '%s' must be a string or boolean\00", align 1
@EZFS_CRYPTOFAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i64, i64, i64, i64, i64, i32*, i32*, i32*, i32**, i32**, i32*, i8*)* @zfs_setup_cmdline_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_setup_cmdline_props(i32* %0, i32 %1, i8* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i32* %8, i32* %9, i32* %10, i32** %11, i32** %12, i32* %13, i8* %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32**, align 8
  %29 = alloca i32**, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i8*, align 8
  %40 = alloca i64, align 8
  %41 = alloca i32, align 4
  %42 = alloca i8*, align 8
  %43 = alloca i64, align 8
  %44 = alloca i32*, align 8
  %45 = alloca i8*, align 8
  %46 = alloca i8*, align 8
  store i32* %0, i32** %17, align 8
  store i32 %1, i32* %18, align 4
  store i8* %2, i8** %19, align 8
  store i64 %3, i64* %20, align 8
  store i64 %4, i64* %21, align 8
  store i64 %5, i64* %22, align 8
  store i64 %6, i64* %23, align 8
  store i64 %7, i64* %24, align 8
  store i32* %8, i32** %25, align 8
  store i32* %9, i32** %26, align 8
  store i32* %10, i32** %27, align 8
  store i32** %11, i32*** %28, align 8
  store i32** %12, i32*** %29, align 8
  store i32* %13, i32** %30, align 8
  store i8* %14, i8** %31, align 8
  store i32* null, i32** %35, align 8
  store i32* null, i32** %36, align 8
  store i32 0, i32* %38, align 4
  %47 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %48 = zext i32 %47 to i64
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %39, align 8
  %50 = alloca i8, i64 %48, align 16
  store i64 %48, i64* %40, align 8
  %51 = load i32*, i32** %26, align 8
  %52 = call i64 @nvlist_empty(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %15
  store i32 0, i32* %16, align 4
  store i32 1, i32* %41, align 4
  br label %318

55:                                               ; preds = %15
  %56 = call i32* (...) @fnvlist_alloc()
  %57 = load i32**, i32*** %28, align 8
  store i32* %56, i32** %57, align 8
  %58 = call i32* (...) @fnvlist_alloc()
  store i32* %58, i32** %33, align 8
  %59 = load i8*, i8** %19, align 8
  %60 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %61 = call i32 @strlcpy(i8* %50, i8* %59, i32 %60)
  %62 = load i32*, i32** %17, align 8
  %63 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %64 = call i64 @zfs_dataset_exists(i32* %62, i8* %50, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %55
  %67 = load i32*, i32** %17, align 8
  %68 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %69 = call i32* @zfs_open(i32* %67, i8* %50, i32 %68)
  store i32* %69, i32** %35, align 8
  %70 = load i32*, i32** %35, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 -1, i32* %38, align 4
  br label %302

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %55
  %75 = call i8* @strchr(i8* %50, i8 signext 47)
  store i8* %75, i8** %37, align 8
  %76 = load i8*, i8** %37, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i8*, i8** %37, align 8
  store i8 0, i8* %79, align 1
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i32*, i32** %17, align 8
  %82 = call i32* @zpool_open(i32* %81, i8* %50)
  store i32* %82, i32** %36, align 8
  %83 = load i32*, i32** %36, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 -1, i32* %38, align 4
  br label %302

86:                                               ; preds = %80
  %87 = load i8*, i8** %37, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i8*, i8** %37, align 8
  store i8 47, i8* %90, align 1
  br label %91

91:                                               ; preds = %89, %86
  store i32* null, i32** %32, align 8
  br label %92

92:                                               ; preds = %236, %197, %119, %105, %91
  %93 = load i32*, i32** %26, align 8
  %94 = load i32*, i32** %32, align 8
  %95 = call i32* @nvlist_next_nvpair(i32* %93, i32* %94)
  store i32* %95, i32** %32, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %237

97:                                               ; preds = %92
  %98 = load i32*, i32** %32, align 8
  %99 = call i8* @nvpair_name(i32* %98)
  store i8* %99, i8** %42, align 8
  %100 = load i8*, i8** %42, align 8
  %101 = call i64 @zfs_name_to_prop(i8* %100)
  store i64 %101, i64* %43, align 8
  %102 = load i64, i64* %43, align 8
  %103 = load i64, i64* @ZFS_PROP_ORIGIN, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %92

106:                                              ; preds = %97
  %107 = load i64, i64* %43, align 8
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* @B_FALSE, align 4
  %110 = call i32 @zfs_prop_valid_for_type(i64 %107, i32 %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %130, label %112

112:                                              ; preds = %106
  %113 = load i8*, i8** %42, align 8
  %114 = call i32 @zfs_prop_user(i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %112
  %117 = load i64, i64* %21, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %92

120:                                              ; preds = %116
  %121 = load i32*, i32** %17, align 8
  %122 = load i32, i32* @TEXT_DOMAIN, align 4
  %123 = call i32 @dgettext(i32 %122, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %124 = load i8*, i8** %42, align 8
  %125 = call i32 @zfs_error_aux(i32* %121, i32 %123, i8* %124)
  %126 = load i32*, i32** %17, align 8
  %127 = load i32, i32* @EZFS_BADPROP, align 4
  %128 = load i8*, i8** %31, align 8
  %129 = call i32 @zfs_error(i32* %126, i32 %127, i8* %128)
  store i32 %129, i32* %38, align 4
  br label %302

130:                                              ; preds = %112, %106
  %131 = load i64, i64* %43, align 8
  %132 = call i64 @zfs_prop_encryption_key_param(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i64, i64* %43, align 8
  %136 = load i64, i64* @ZFS_PROP_ENCRYPTION, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %134, %130
  %139 = load i64, i64* %23, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load i32*, i32** %17, align 8
  %143 = load i32, i32* @TEXT_DOMAIN, align 4
  %144 = call i32 @dgettext(i32 %143, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %145 = load i8*, i8** %42, align 8
  %146 = call i32 @zfs_error_aux(i32* %142, i32 %144, i8* %145)
  %147 = load i32*, i32** %17, align 8
  %148 = load i32, i32* @EZFS_BADPROP, align 4
  %149 = load i8*, i8** %31, align 8
  %150 = call i32 @zfs_error(i32* %147, i32 %148, i8* %149)
  store i32 %150, i32* %38, align 4
  br label %302

151:                                              ; preds = %138, %134
  %152 = load i64, i64* %43, align 8
  %153 = call i64 @zfs_prop_encryption_key_param(i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = load i64, i64* %43, align 8
  %157 = load i64, i64* @ZFS_PROP_ENCRYPTION, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %176

159:                                              ; preds = %155, %151
  %160 = load i64, i64* %22, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %176, label %162

162:                                              ; preds = %159
  %163 = load i32*, i32** %32, align 8
  %164 = call i32 @nvpair_type(i32* %163)
  %165 = icmp ne i32 %164, 129
  br i1 %165, label %166, label %176

166:                                              ; preds = %162
  %167 = load i32*, i32** %17, align 8
  %168 = load i32, i32* @TEXT_DOMAIN, align 4
  %169 = call i32 @dgettext(i32 %168, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %170 = load i8*, i8** %42, align 8
  %171 = call i32 @zfs_error_aux(i32* %167, i32 %169, i8* %170)
  %172 = load i32*, i32** %17, align 8
  %173 = load i32, i32* @EZFS_BADPROP, align 4
  %174 = load i8*, i8** %31, align 8
  %175 = call i32 @zfs_error(i32* %172, i32 %173, i8* %174)
  store i32 %175, i32* %38, align 4
  br label %302

176:                                              ; preds = %162, %159, %155
  %177 = load i32*, i32** %32, align 8
  %178 = call i32 @nvpair_type(i32* %177)
  switch i32 %178, label %226 [
    i32 129, label %179
    i32 128, label %222
  ]

179:                                              ; preds = %176
  %180 = load i32*, i32** %27, align 8
  %181 = load i8*, i8** %42, align 8
  %182 = call i32 @nvlist_exists(i32* %180, i8* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %179
  store i8* null, i8** %45, align 8
  %185 = load i32*, i32** %27, align 8
  %186 = load i8*, i8** %42, align 8
  %187 = call i32* @fnvlist_lookup_nvlist(i32* %185, i8* %186)
  store i32* %187, i32** %44, align 8
  %188 = load i32*, i32** %44, align 8
  %189 = load i32, i32* @ZPROP_SOURCE, align 4
  %190 = call i32 @nvlist_lookup_string(i32* %188, i32 %189, i8** %45)
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %184
  %193 = load i8*, i8** %45, align 8
  %194 = load i32, i32* @ZPROP_SOURCE_VAL_RECVD, align 4
  %195 = call i32 @strcmp(i8* %193, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %92

198:                                              ; preds = %192, %184
  br label %199

199:                                              ; preds = %198, %179
  %200 = load i64, i64* %43, align 8
  %201 = call i32 @zfs_prop_inheritable(i64 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %216, label %203

203:                                              ; preds = %199
  %204 = load i8*, i8** %42, align 8
  %205 = call i32 @zfs_prop_user(i8* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %216, label %207

207:                                              ; preds = %203
  %208 = load i32*, i32** %25, align 8
  %209 = load i8*, i8** %42, align 8
  %210 = call i32 @nvlist_exists(i32* %208, i8* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load i32*, i32** %25, align 8
  %214 = load i8*, i8** %42, align 8
  %215 = call i32 @fnvlist_remove(i32* %213, i8* %214)
  br label %221

216:                                              ; preds = %207, %203, %199
  %217 = load i32**, i32*** %28, align 8
  %218 = load i32*, i32** %217, align 8
  %219 = load i32*, i32** %32, align 8
  %220 = call i32 @fnvlist_add_nvpair(i32* %218, i32* %219)
  br label %221

221:                                              ; preds = %216, %212
  br label %236

222:                                              ; preds = %176
  %223 = load i32*, i32** %33, align 8
  %224 = load i32*, i32** %32, align 8
  %225 = call i32 @fnvlist_add_nvpair(i32* %223, i32* %224)
  br label %236

226:                                              ; preds = %176
  %227 = load i32*, i32** %17, align 8
  %228 = load i32, i32* @TEXT_DOMAIN, align 4
  %229 = call i32 @dgettext(i32 %228, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %230 = load i8*, i8** %42, align 8
  %231 = call i32 @zfs_error_aux(i32* %227, i32 %229, i8* %230)
  %232 = load i32*, i32** %17, align 8
  %233 = load i32, i32* @EZFS_BADPROP, align 4
  %234 = load i8*, i8** %31, align 8
  %235 = call i32 @zfs_error(i32* %232, i32 %233, i8* %234)
  store i32 %235, i32* %38, align 4
  br label %302

236:                                              ; preds = %222, %221
  br label %92

237:                                              ; preds = %92
  %238 = load i64, i64* %24, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %287

240:                                              ; preds = %237
  %241 = load i32*, i32** %17, align 8
  %242 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %243 = load i32*, i32** %33, align 8
  %244 = load i64, i64* %20, align 8
  %245 = load i32*, i32** %35, align 8
  %246 = load i32*, i32** %36, align 8
  %247 = load i32, i32* @B_FALSE, align 4
  %248 = load i8*, i8** %31, align 8
  %249 = call i32* @zfs_valid_proplist(i32* %241, i32 %242, i32* %243, i64 %244, i32* %245, i32* %246, i32 %247, i8* %248)
  store i32* %249, i32** %34, align 8
  %250 = icmp eq i32* %249, null
  br i1 %250, label %251, label %256

251:                                              ; preds = %240
  %252 = load i32*, i32** %17, align 8
  %253 = load i32, i32* @EZFS_BADPROP, align 4
  %254 = load i8*, i8** %31, align 8
  %255 = call i32 @zfs_error(i32* %252, i32 %253, i8* %254)
  store i32 %255, i32* %38, align 4
  br label %302

256:                                              ; preds = %240
  %257 = call i8* @strrchr(i8* %50, i8 signext 47)
  store i8* %257, i8** %37, align 8
  %258 = load i8*, i8** %37, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %262

260:                                              ; preds = %256
  %261 = load i8*, i8** %37, align 8
  store i8 0, i8* %261, align 1
  br label %262

262:                                              ; preds = %260, %256
  %263 = load i64, i64* %23, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %280, label %265

265:                                              ; preds = %262
  %266 = load i32*, i32** %17, align 8
  %267 = load i32*, i32** %34, align 8
  %268 = load i32, i32* @B_FALSE, align 4
  %269 = load i32**, i32*** %29, align 8
  %270 = load i32*, i32** %30, align 8
  %271 = call i64 @zfs_crypto_create(i32* %266, i8* %50, i32* %267, i32* null, i32 %268, i32** %269, i32* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %265
  %274 = load i32*, i32** %34, align 8
  %275 = call i32 @fnvlist_free(i32* %274)
  %276 = load i32*, i32** %17, align 8
  %277 = load i32, i32* @EZFS_CRYPTOFAILED, align 4
  %278 = load i8*, i8** %31, align 8
  %279 = call i32 @zfs_error(i32* %276, i32 %277, i8* %278)
  store i32 %279, i32* %38, align 4
  br label %302

280:                                              ; preds = %265, %262
  %281 = load i32**, i32*** %28, align 8
  %282 = load i32*, i32** %281, align 8
  %283 = load i32*, i32** %34, align 8
  %284 = call i32 @fnvlist_merge(i32* %282, i32* %283)
  %285 = load i32*, i32** %34, align 8
  %286 = call i32 @fnvlist_free(i32* %285)
  br label %301

287:                                              ; preds = %237
  store i32* null, i32** %32, align 8
  br label %288

288:                                              ; preds = %293, %287
  %289 = load i32*, i32** %33, align 8
  %290 = load i32*, i32** %32, align 8
  %291 = call i32* @nvlist_next_nvpair(i32* %289, i32* %290)
  store i32* %291, i32** %32, align 8
  %292 = icmp ne i32* %291, null
  br i1 %292, label %293, label %300

293:                                              ; preds = %288
  %294 = load i32*, i32** %32, align 8
  %295 = call i8* @nvpair_name(i32* %294)
  store i8* %295, i8** %46, align 8
  %296 = load i32**, i32*** %28, align 8
  %297 = load i32*, i32** %296, align 8
  %298 = load i8*, i8** %46, align 8
  %299 = call i32 @fnvlist_add_boolean(i32* %297, i8* %298)
  br label %288

300:                                              ; preds = %288
  br label %301

301:                                              ; preds = %300, %280
  br label %302

302:                                              ; preds = %301, %273, %251, %226, %166, %141, %120, %85, %72
  %303 = load i32*, i32** %35, align 8
  %304 = icmp ne i32* %303, null
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = load i32*, i32** %35, align 8
  %307 = call i32 @zfs_close(i32* %306)
  br label %308

308:                                              ; preds = %305, %302
  %309 = load i32*, i32** %36, align 8
  %310 = icmp ne i32* %309, null
  br i1 %310, label %311, label %314

311:                                              ; preds = %308
  %312 = load i32*, i32** %36, align 8
  %313 = call i32 @zpool_close(i32* %312)
  br label %314

314:                                              ; preds = %311, %308
  %315 = load i32*, i32** %33, align 8
  %316 = call i32 @fnvlist_free(i32* %315)
  %317 = load i32, i32* %38, align 4
  store i32 %317, i32* %16, align 4
  store i32 1, i32* %41, align 4
  br label %318

318:                                              ; preds = %314, %54
  %319 = load i8*, i8** %39, align 8
  call void @llvm.stackrestore(i8* %319)
  %320 = load i32, i32* %16, align 4
  ret i32 %320
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nvlist_empty(i32*) #2

declare dso_local i32* @fnvlist_alloc(...) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @zfs_dataset_exists(i32*, i8*, i32) #2

declare dso_local i32* @zfs_open(i32*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32* @zpool_open(i32*, i8*) #2

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #2

declare dso_local i8* @nvpair_name(i32*) #2

declare dso_local i64 @zfs_name_to_prop(i8*) #2

declare dso_local i32 @zfs_prop_valid_for_type(i64, i32, i32) #2

declare dso_local i32 @zfs_prop_user(i8*) #2

declare dso_local i32 @zfs_error_aux(i32*, i32, i8*) #2

declare dso_local i32 @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i64 @zfs_prop_encryption_key_param(i64) #2

declare dso_local i32 @nvpair_type(i32*) #2

declare dso_local i32 @nvlist_exists(i32*, i8*) #2

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i8*) #2

declare dso_local i32 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i32 @strcmp(i8*, i32) #2

declare dso_local i32 @zfs_prop_inheritable(i64) #2

declare dso_local i32 @fnvlist_remove(i32*, i8*) #2

declare dso_local i32 @fnvlist_add_nvpair(i32*, i32*) #2

declare dso_local i32* @zfs_valid_proplist(i32*, i32, i32*, i64, i32*, i32*, i32, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @zfs_crypto_create(i32*, i8*, i32*, i32*, i32, i32**, i32*) #2

declare dso_local i32 @fnvlist_free(i32*) #2

declare dso_local i32 @fnvlist_merge(i32*, i32*) #2

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #2

declare dso_local i32 @zfs_close(i32*) #2

declare dso_local i32 @zpool_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

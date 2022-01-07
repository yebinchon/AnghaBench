; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_zfs_crypto_rewrap.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_zfs_crypto_rewrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }

@DCP_CMD_INHERIT = common dso_local global i32 0, align 4
@DCP_CMD_NEW_KEY = common dso_local global i32 0, align 4
@ZFS_KEYFORMAT_NONE = common dso_local global i64 0, align 8
@MAXNAMELEN = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Key change error\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Encryption feature not enabled.\00", align 1
@ZFS_PROP_ENCRYPTION = common dso_local global i32 0, align 4
@ZIO_CRYPT_OFF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Dataset not encrypted.\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to get encryption root for '%s'.\00", align 1
@ZFS_PROP_ORIGIN = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Keys cannot be changed on clones.\00", align 1
@ZFS_PROP_KEYFORMAT = common dso_local global i32 0, align 4
@ZFS_PROP_KEYLOCATION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"Failed to get existing keyformat property.\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Failed to get existing keylocation property.\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Keyformat required for new encryption root.\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"Key inheritting can only be performed on encryption roots.\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Root dataset cannot inherit key.\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Failed to lookup parent.\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"Parent must be encrypted.\00", align 1
@ZFS_PROP_KEYSTATUS = common dso_local global i32 0, align 4
@ZFS_KEYSTATUS_UNAVAILABLE = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [27 x i8] c"Parent key must be loaded.\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Key must be loaded.\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Permission denied.\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Invalid properties for key change.\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Key is not currently loaded.\00", align 1
@EZFS_CRYPTOFAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_crypto_rewrap(%struct.TYPE_12__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @DCP_CMD_INHERIT, align 4
  br label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @DCP_CMD_NEW_KEY, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %14, align 4
  %35 = load i64, i64* @ZFS_KEYFORMAT_NONE, align 8
  store i64 %35, i64* %19, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %20, align 8
  store i8* null, i8** %21, align 8
  %36 = load i32, i32* @MAXNAMELEN, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %22, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %23, align 8
  %40 = load i32, i32* @MAXNAMELEN, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %24, align 8
  %43 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %25, align 8
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %47 = load i32, i32* @TEXT_DOMAIN, align 4
  %48 = call i8* @dgettext(i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @snprintf(i8* %46, i32 1024, i8* %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @encryption_feature_is_enabled(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %33
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @TEXT_DOMAIN, align 4
  %60 = call i8* @dgettext(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %58, i8* %60)
  store i32 129, i32* %8, align 4
  br label %354

62:                                               ; preds = %33
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = load i32, i32* @ZFS_PROP_ENCRYPTION, align 4
  %65 = call i64 @zfs_prop_get_int(%struct.TYPE_12__* %63, i32 %64)
  store i64 %65, i64* %15, align 8
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* @ZIO_CRYPT_OFF, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TEXT_DOMAIN, align 4
  %74 = call i8* @dgettext(i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %72, i8* %74)
  store i32 129, i32* %8, align 4
  br label %354

76:                                               ; preds = %62
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = call i32 @zfs_crypto_get_encryption_root(%struct.TYPE_12__* %77, i64* %10, i32* null)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @TEXT_DOMAIN, align 4
  %86 = call i8* @dgettext(i32 %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = call i32 @zfs_get_name(%struct.TYPE_12__* %87)
  %89 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %84, i8* %86, i32 %88)
  br label %354

90:                                               ; preds = %76
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = load i32, i32* @ZFS_PROP_ORIGIN, align 4
  %93 = trunc i64 %37 to i32
  %94 = load i32, i32* @B_TRUE, align 4
  %95 = call i32 @zfs_prop_get(%struct.TYPE_12__* %91, i32 %92, i8* %39, i32 %93, i32* null, i32* null, i32 0, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %90
  %99 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @TEXT_DOMAIN, align 4
  %106 = call i8* @dgettext(i32 %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %107 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %104, i8* %106)
  store i32 129, i32* %8, align 4
  br label %354

108:                                              ; preds = %98, %90
  %109 = load i64, i64* %7, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %212, label %111

111:                                              ; preds = %108
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %115 = call i32 @zfs_crypto_verify_rewrap_nvlist(%struct.TYPE_12__* %112, i32* %113, i32** %11, i8* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %354

119:                                              ; preds = %111
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* @ZFS_PROP_KEYFORMAT, align 4
  %122 = call i32 @zfs_prop_to_name(i32 %121)
  %123 = call i32 @nvlist_lookup_uint64(i32* %120, i32 %122, i64* %19)
  %124 = load i32*, i32** %11, align 8
  %125 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %126 = call i32 @zfs_prop_to_name(i32 %125)
  %127 = call i32 @nvlist_lookup_string(i32* %124, i32 %126, i8** %21)
  %128 = load i64, i64* %10, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %173

130:                                              ; preds = %119
  %131 = load i64, i64* %19, align 8
  %132 = load i64, i64* @ZFS_KEYFORMAT_NONE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %130
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = load i32, i32* @ZFS_PROP_KEYFORMAT, align 4
  %137 = call i64 @zfs_prop_get_int(%struct.TYPE_12__* %135, i32 %136)
  store i64 %137, i64* %19, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* @ZFS_PROP_KEYFORMAT, align 4
  %140 = call i32 @zfs_prop_to_name(i32 %139)
  %141 = load i64, i64* %19, align 8
  %142 = call i32 @nvlist_add_uint64(i32* %138, i32 %140, i64 %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %134
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @TEXT_DOMAIN, align 4
  %150 = call i8* @dgettext(i32 %149, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %151 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %148, i8* %150)
  br label %354

152:                                              ; preds = %134
  br label %153

153:                                              ; preds = %152, %130
  %154 = load i8*, i8** %21, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %172

156:                                              ; preds = %153
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %158 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %159 = trunc i64 %41 to i32
  %160 = load i32, i32* @B_TRUE, align 4
  %161 = call i32 @zfs_prop_get(%struct.TYPE_12__* %157, i32 %158, i8* %42, i32 %159, i32* null, i32* null, i32 0, i32 %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %156
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @TEXT_DOMAIN, align 4
  %169 = call i8* @dgettext(i32 %168, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  %170 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %167, i8* %169)
  br label %354

171:                                              ; preds = %156
  store i8* %42, i8** %21, align 8
  br label %172

172:                                              ; preds = %171, %153
  br label %198

173:                                              ; preds = %119
  %174 = load i64, i64* %19, align 8
  %175 = load i64, i64* @ZFS_KEYFORMAT_NONE, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %173
  store i32 129, i32* %8, align 4
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @TEXT_DOMAIN, align 4
  %182 = call i8* @dgettext(i32 %181, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %183 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %180, i8* %182)
  br label %354

184:                                              ; preds = %173
  %185 = load i8*, i8** %21, align 8
  %186 = icmp eq i8* %185, null
  br i1 %186, label %187, label %197

187:                                              ; preds = %184
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %21, align 8
  %188 = load i32*, i32** %11, align 8
  %189 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %190 = call i32 @zfs_prop_to_name(i32 %189)
  %191 = load i8*, i8** %21, align 8
  %192 = call i32 @nvlist_add_string(i32* %188, i32 %190, i8* %191)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %354

196:                                              ; preds = %187
  br label %197

197:                                              ; preds = %196, %184
  br label %198

198:                                              ; preds = %197, %172
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %203 = load i32, i32* @B_TRUE, align 4
  %204 = load i64, i64* %19, align 8
  %205 = load i8*, i8** %21, align 8
  %206 = load i32*, i32** %11, align 8
  %207 = call i32 @populate_create_encryption_params_nvlists(i32 %201, %struct.TYPE_12__* %202, i32 %203, i64 %204, i8* %205, i32* %206, i32** %12, i32* %13)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %198
  br label %354

211:                                              ; preds = %198
  br label %279

212:                                              ; preds = %108
  %213 = load i64, i64* %10, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %222, label %215

215:                                              ; preds = %212
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @TEXT_DOMAIN, align 4
  %220 = call i8* @dgettext(i32 %219, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  %221 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %218, i8* %220)
  store i32 129, i32* %8, align 4
  br label %354

222:                                              ; preds = %212
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %224 = trunc i64 %44 to i32
  %225 = call i32 @zfs_parent_name(%struct.TYPE_12__* %223, i8* %45, i32 %224)
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* %8, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %222
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @TEXT_DOMAIN, align 4
  %233 = call i8* @dgettext(i32 %232, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %234 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %231, i8* %233)
  store i32 129, i32* %8, align 4
  br label %354

235:                                              ; preds = %222
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call %struct.TYPE_12__* @make_dataset_handle(i32 %238, i8* %45)
  store %struct.TYPE_12__* %239, %struct.TYPE_12__** %20, align 8
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %241 = icmp eq %struct.TYPE_12__* %240, null
  br i1 %241, label %242, label %250

242:                                              ; preds = %235
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @TEXT_DOMAIN, align 4
  %247 = call i8* @dgettext(i32 %246, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %248 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %245, i8* %247)
  %249 = load i32, i32* @ENOENT, align 4
  store i32 %249, i32* %8, align 4
  br label %354

250:                                              ; preds = %235
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %252 = load i32, i32* @ZFS_PROP_ENCRYPTION, align 4
  %253 = call i64 @zfs_prop_get_int(%struct.TYPE_12__* %251, i32 %252)
  store i64 %253, i64* %16, align 8
  %254 = load i64, i64* %16, align 8
  %255 = load i64, i64* @ZIO_CRYPT_OFF, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %264

257:                                              ; preds = %250
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @TEXT_DOMAIN, align 4
  %262 = call i8* @dgettext(i32 %261, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %263 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %260, i8* %262)
  store i32 129, i32* %8, align 4
  br label %354

264:                                              ; preds = %250
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %266 = load i32, i32* @ZFS_PROP_KEYSTATUS, align 4
  %267 = call i64 @zfs_prop_get_int(%struct.TYPE_12__* %265, i32 %266)
  store i64 %267, i64* %18, align 8
  %268 = load i64, i64* %18, align 8
  %269 = load i64, i64* @ZFS_KEYSTATUS_UNAVAILABLE, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %278

271:                                              ; preds = %264
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @TEXT_DOMAIN, align 4
  %276 = call i8* @dgettext(i32 %275, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %277 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %274, i8* %276)
  store i32 130, i32* %8, align 4
  br label %354

278:                                              ; preds = %264
  br label %279

279:                                              ; preds = %278, %211
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %281 = load i32, i32* @ZFS_PROP_KEYSTATUS, align 4
  %282 = call i64 @zfs_prop_get_int(%struct.TYPE_12__* %280, i32 %281)
  store i64 %282, i64* %17, align 8
  %283 = load i64, i64* %17, align 8
  %284 = load i64, i64* @ZFS_KEYSTATUS_UNAVAILABLE, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %293

286:                                              ; preds = %279
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @TEXT_DOMAIN, align 4
  %291 = call i8* @dgettext(i32 %290, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %292 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %289, i8* %291)
  store i32 130, i32* %8, align 4
  br label %354

293:                                              ; preds = %279
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %14, align 4
  %298 = load i32*, i32** %11, align 8
  %299 = load i32*, i32** %12, align 8
  %300 = load i32, i32* %13, align 4
  %301 = call i32 @lzc_change_key(i32 %296, i32 %297, i32* %298, i32* %299, i32 %300)
  store i32 %301, i32* %8, align 4
  %302 = load i32, i32* %8, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %334

304:                                              ; preds = %293
  %305 = load i32, i32* %8, align 4
  switch i32 %305, label %327 [
    i32 128, label %306
    i32 129, label %313
    i32 130, label %320
  ]

306:                                              ; preds = %304
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @TEXT_DOMAIN, align 4
  %311 = call i8* @dgettext(i32 %310, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %312 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %309, i8* %311)
  br label %327

313:                                              ; preds = %304
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @TEXT_DOMAIN, align 4
  %318 = call i8* @dgettext(i32 %317, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0))
  %319 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %316, i8* %318)
  br label %327

320:                                              ; preds = %304
  %321 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @TEXT_DOMAIN, align 4
  %325 = call i8* @dgettext(i32 %324, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  %326 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %323, i8* %325)
  br label %327

327:                                              ; preds = %304, %320, %313, %306
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @EZFS_CRYPTOFAILED, align 4
  %332 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %333 = call i32 @zfs_error(i32 %330, i32 %331, i8* %332)
  br label %334

334:                                              ; preds = %327, %293
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %336 = icmp ne %struct.TYPE_12__* %335, null
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %339 = call i32 @zfs_close(%struct.TYPE_12__* %338)
  br label %340

340:                                              ; preds = %337, %334
  %341 = load i32*, i32** %11, align 8
  %342 = icmp ne i32* %341, null
  br i1 %342, label %343, label %346

343:                                              ; preds = %340
  %344 = load i32*, i32** %11, align 8
  %345 = call i32 @nvlist_free(i32* %344)
  br label %346

346:                                              ; preds = %343, %340
  %347 = load i32*, i32** %12, align 8
  %348 = icmp ne i32* %347, null
  br i1 %348, label %349, label %352

349:                                              ; preds = %346
  %350 = load i32*, i32** %12, align 8
  %351 = call i32 @free(i32* %350)
  br label %352

352:                                              ; preds = %349, %346
  %353 = load i32, i32* %8, align 4
  store i32 %353, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %380

354:                                              ; preds = %286, %271, %257, %242, %228, %215, %210, %195, %177, %164, %145, %118, %101, %81, %69, %55
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %356 = icmp ne %struct.TYPE_12__* %355, null
  br i1 %356, label %357, label %360

357:                                              ; preds = %354
  %358 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %359 = call i32 @zfs_close(%struct.TYPE_12__* %358)
  br label %360

360:                                              ; preds = %357, %354
  %361 = load i32*, i32** %11, align 8
  %362 = icmp ne i32* %361, null
  br i1 %362, label %363, label %366

363:                                              ; preds = %360
  %364 = load i32*, i32** %11, align 8
  %365 = call i32 @nvlist_free(i32* %364)
  br label %366

366:                                              ; preds = %363, %360
  %367 = load i32*, i32** %12, align 8
  %368 = icmp ne i32* %367, null
  br i1 %368, label %369, label %372

369:                                              ; preds = %366
  %370 = load i32*, i32** %12, align 8
  %371 = call i32 @free(i32* %370)
  br label %372

372:                                              ; preds = %369, %366
  %373 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* @EZFS_CRYPTOFAILED, align 4
  %377 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %378 = call i32 @zfs_error(i32 %375, i32 %376, i8* %377)
  %379 = load i32, i32* %8, align 4
  store i32 %379, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %380

380:                                              ; preds = %372, %352
  %381 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %381)
  %382 = load i32, i32* %4, align 4
  ret i32 %382
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @encryption_feature_is_enabled(i32) #2

declare dso_local i32 @zfs_error_aux(i32, i8*, ...) #2

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @zfs_crypto_get_encryption_root(%struct.TYPE_12__*, i64*, i32*) #2

declare dso_local i32 @zfs_get_name(%struct.TYPE_12__*) #2

declare dso_local i32 @zfs_prop_get(%struct.TYPE_12__*, i32, i8*, i32, i32*, i32*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @zfs_crypto_verify_rewrap_nvlist(%struct.TYPE_12__*, i32*, i32**, i8*) #2

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #2

declare dso_local i32 @zfs_prop_to_name(i32) #2

declare dso_local i32 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i32 @nvlist_add_uint64(i32*, i32, i64) #2

declare dso_local i32 @nvlist_add_string(i32*, i32, i8*) #2

declare dso_local i32 @populate_create_encryption_params_nvlists(i32, %struct.TYPE_12__*, i32, i64, i8*, i32*, i32**, i32*) #2

declare dso_local i32 @zfs_parent_name(%struct.TYPE_12__*, i8*, i32) #2

declare dso_local %struct.TYPE_12__* @make_dataset_handle(i32, i8*) #2

declare dso_local i32 @lzc_change_key(i32, i32, i32*, i32*, i32) #2

declare dso_local i32 @zfs_error(i32, i32, i8*) #2

declare dso_local i32 @zfs_close(%struct.TYPE_12__*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_zfs_crypto_load_key.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_zfs_crypto_load_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

@ZFS_KEYFORMAT_NONE = common dso_local global i64 0, align 8
@MAXNAMELEN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Key load error\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Encryption feature not enabled.\00", align 1
@ZFS_PROP_KEYFORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"'%s' is not encrypted.\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to get encryption root for '%s'.\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Keys must be loaded for encryption root of '%s' (%s).\00", align 1
@ZFS_PROP_KEYLOCATION = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to get keylocation for '%s'.\00", align 1
@ZFS_PROP_KEYSTATUS = common dso_local global i32 0, align 4
@ZFS_KEYSTATUS_AVAILABLE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"Key already loaded for '%s'.\00", align 1
@ZFS_KEYFORMAT_PASSPHRASE = common dso_local global i64 0, align 8
@ZFS_PROP_PBKDF2_SALT = common dso_local global i32 0, align 4
@ZFS_PROP_PBKDF2_ITERS = common dso_local global i32 0, align 4
@WRAPPING_KEY_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"Permission denied.\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Invalid parameters provided for dataset %s.\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"'%s' is busy.\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Incorrect key provided for '%s'.\00", align 1
@EZFS_CRYPTOFAILED = common dso_local global i32 0, align 4
@MAX_KEY_PROMPT_ATTEMPTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_crypto_load_key(%struct.TYPE_7__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %26 = load i64, i64* @ZFS_KEYFORMAT_NONE, align 8
  store i64 %26, i64* %14, align 8
  %27 = load i32, i32* @MAXNAMELEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %15, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  %31 = load i32, i32* @MAXNAMELEN, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %17, align 8
  store i8* null, i8** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %34 = load i64, i64* @B_FALSE, align 8
  store i64 %34, i64* %23, align 8
  %35 = load i64, i64* @B_FALSE, align 8
  store i64 %35, i64* %24, align 8
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %37 = load i32, i32* @TEXT_DOMAIN, align 4
  %38 = call i8* @dgettext(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @snprintf(i8* %36, i32 1024, i8* %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @encryption_feature_is_enabled(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %3
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @TEXT_DOMAIN, align 4
  %50 = call i8* @dgettext(i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %51 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %48, i8* %50)
  store i32 129, i32* %8, align 4
  br label %241

52:                                               ; preds = %3
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = load i32, i32* @ZFS_PROP_KEYFORMAT, align 4
  %55 = call i64 @zfs_prop_get_int(%struct.TYPE_7__* %53, i32 %54)
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* @ZFS_KEYFORMAT_NONE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @TEXT_DOMAIN, align 4
  %64 = call i8* @dgettext(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = call i32 @zfs_get_name(%struct.TYPE_7__* %65)
  %67 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %62, i8* %64, i32 %66)
  store i32 129, i32* %8, align 4
  br label %241

68:                                               ; preds = %52
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = call i32 @zfs_crypto_get_encryption_root(%struct.TYPE_7__* %69, i64* %22, i8* %33)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @TEXT_DOMAIN, align 4
  %78 = call i8* @dgettext(i32 %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = call i32 @zfs_get_name(%struct.TYPE_7__* %79)
  %81 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %76, i8* %78, i32 %80)
  br label %241

82:                                               ; preds = %68
  %83 = load i64, i64* %22, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %82
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @TEXT_DOMAIN, align 4
  %90 = call i8* @dgettext(i32 %89, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = call i32 @zfs_get_name(%struct.TYPE_7__* %91)
  %93 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %88, i8* %90, i32 %92, i8* %33)
  store i32 129, i32* %8, align 4
  br label %241

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94
  %96 = load i8*, i8** %7, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i8*, i8** %7, align 8
  store i8* %99, i8** %18, align 8
  br label %118

100:                                              ; preds = %95
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %103 = trunc i64 %28 to i32
  %104 = load i64, i64* @B_TRUE, align 8
  %105 = call i32 @zfs_prop_get(%struct.TYPE_7__* %101, i32 %102, i8* %30, i32 %103, i32* null, i32* null, i32 0, i64 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %100
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @TEXT_DOMAIN, align 4
  %113 = call i8* @dgettext(i32 %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = call i32 @zfs_get_name(%struct.TYPE_7__* %114)
  %116 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %111, i8* %113, i32 %115)
  br label %241

117:                                              ; preds = %100
  store i8* %30, i8** %18, align 8
  br label %118

118:                                              ; preds = %117, %98
  %119 = load i64, i64* %6, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %138, label %121

121:                                              ; preds = %118
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %123 = load i32, i32* @ZFS_PROP_KEYSTATUS, align 4
  %124 = call i64 @zfs_prop_get_int(%struct.TYPE_7__* %122, i32 %123)
  store i64 %124, i64* %11, align 8
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* @ZFS_KEYSTATUS_AVAILABLE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %121
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @TEXT_DOMAIN, align 4
  %133 = call i8* @dgettext(i32 %132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %135 = call i32 @zfs_get_name(%struct.TYPE_7__* %134)
  %136 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %131, i8* %133, i32 %135)
  store i32 130, i32* %8, align 4
  br label %241

137:                                              ; preds = %121
  br label %138

138:                                              ; preds = %137, %118
  %139 = load i64, i64* %14, align 8
  %140 = load i64, i64* @ZFS_KEYFORMAT_PASSPHRASE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %138
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %144 = load i32, i32* @ZFS_PROP_PBKDF2_SALT, align 4
  %145 = call i64 @zfs_prop_get_int(%struct.TYPE_7__* %143, i32 %144)
  store i64 %145, i64* %13, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %147 = load i32, i32* @ZFS_PROP_PBKDF2_ITERS, align 4
  %148 = call i64 @zfs_prop_get_int(%struct.TYPE_7__* %146, i32 %147)
  store i64 %148, i64* %12, align 8
  br label %149

149:                                              ; preds = %142, %138
  br label %150

150:                                              ; preds = %271, %149
  %151 = load i64, i64* @B_TRUE, align 8
  store i64 %151, i64* %24, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i64, i64* @B_FALSE, align 8
  %156 = load i64, i64* @B_FALSE, align 8
  %157 = load i64, i64* %14, align 8
  %158 = load i8*, i8** %18, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %160 = call i32 @zfs_get_name(%struct.TYPE_7__* %159)
  %161 = call i32 @get_key_material(i32 %154, i64 %155, i64 %156, i64 %157, i8* %158, i32 %160, i32** %19, i64* %21, i64* %23)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %150
  br label %241

165:                                              ; preds = %150
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i64, i64* %14, align 8
  %170 = load i64, i64* %12, align 8
  %171 = load i32*, i32** %19, align 8
  %172 = load i64, i64* %21, align 8
  %173 = load i64, i64* %13, align 8
  %174 = call i32 @derive_key(i32 %168, i64 %169, i64 %170, i32* %171, i64 %172, i64 %173, i32** %20)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %165
  br label %241

178:                                              ; preds = %165
  %179 = load i64, i64* @B_FALSE, align 8
  store i64 %179, i64* %24, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i64, i64* %6, align 8
  %184 = load i32*, i32** %20, align 8
  %185 = load i32, i32* @WRAPPING_KEY_LEN, align 4
  %186 = call i32 @lzc_load_key(i32 %182, i64 %183, i32* %184, i32 %185)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %236

189:                                              ; preds = %178
  %190 = load i32, i32* %8, align 4
  switch i32 %190, label %235 [
    i32 128, label %191
    i32 129, label %198
    i32 130, label %207
    i32 131, label %216
    i32 132, label %225
  ]

191:                                              ; preds = %189
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @TEXT_DOMAIN, align 4
  %196 = call i8* @dgettext(i32 %195, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %197 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %194, i8* %196)
  br label %235

198:                                              ; preds = %189
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @TEXT_DOMAIN, align 4
  %203 = call i8* @dgettext(i32 %202, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %205 = call i32 @zfs_get_name(%struct.TYPE_7__* %204)
  %206 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %201, i8* %203, i32 %205)
  br label %235

207:                                              ; preds = %189
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @TEXT_DOMAIN, align 4
  %212 = call i8* @dgettext(i32 %211, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %214 = call i32 @zfs_get_name(%struct.TYPE_7__* %213)
  %215 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %210, i8* %212, i32 %214)
  br label %235

216:                                              ; preds = %189
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @TEXT_DOMAIN, align 4
  %221 = call i8* @dgettext(i32 %220, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %223 = call i32 @zfs_get_name(%struct.TYPE_7__* %222)
  %224 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %219, i8* %221, i32 %223)
  br label %235

225:                                              ; preds = %189
  %226 = load i64, i64* @B_TRUE, align 8
  store i64 %226, i64* %24, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @TEXT_DOMAIN, align 4
  %231 = call i8* @dgettext(i32 %230, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %233 = call i32 @zfs_get_name(%struct.TYPE_7__* %232)
  %234 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %229, i8* %231, i32 %233)
  br label %235

235:                                              ; preds = %189, %225, %216, %207, %198, %191
  br label %241

236:                                              ; preds = %178
  %237 = load i32*, i32** %19, align 8
  %238 = call i32 @free(i32* %237)
  %239 = load i32*, i32** %20, align 8
  %240 = call i32 @free(i32* %239)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %274

241:                                              ; preds = %235, %177, %164, %128, %108, %85, %73, %59, %45
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @EZFS_CRYPTOFAILED, align 4
  %246 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %247 = call i32 @zfs_error(i32 %244, i32 %245, i8* %246)
  %248 = load i32*, i32** %19, align 8
  %249 = icmp ne i32* %248, null
  br i1 %249, label %250, label %253

250:                                              ; preds = %241
  %251 = load i32*, i32** %19, align 8
  %252 = call i32 @free(i32* %251)
  store i32* null, i32** %19, align 8
  br label %253

253:                                              ; preds = %250, %241
  %254 = load i32*, i32** %20, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = load i32*, i32** %20, align 8
  %258 = call i32 @free(i32* %257)
  store i32* null, i32** %20, align 8
  br label %259

259:                                              ; preds = %256, %253
  %260 = load i32, i32* %9, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %9, align 4
  %262 = load i64, i64* %23, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %272

264:                                              ; preds = %259
  %265 = load i64, i64* %24, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %264
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* @MAX_KEY_PROMPT_ATTEMPTS, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  br label %150

272:                                              ; preds = %267, %264, %259
  %273 = load i32, i32* %8, align 4
  store i32 %273, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %274

274:                                              ; preds = %272, %236
  %275 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %275)
  %276 = load i32, i32* %4, align 4
  ret i32 %276
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @encryption_feature_is_enabled(i32) #2

declare dso_local i32 @zfs_error_aux(i32, i8*, ...) #2

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @zfs_get_name(%struct.TYPE_7__*) #2

declare dso_local i32 @zfs_crypto_get_encryption_root(%struct.TYPE_7__*, i64*, i8*) #2

declare dso_local i32 @zfs_prop_get(%struct.TYPE_7__*, i32, i8*, i32, i32*, i32*, i32, i64) #2

declare dso_local i32 @get_key_material(i32, i64, i64, i64, i8*, i32, i32**, i64*, i64*) #2

declare dso_local i32 @derive_key(i32, i64, i64, i32*, i64, i64, i32**) #2

declare dso_local i32 @lzc_load_key(i32, i64, i32*, i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @zfs_error(i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

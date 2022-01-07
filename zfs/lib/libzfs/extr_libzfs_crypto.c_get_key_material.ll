; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_get_key_material.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_get_key_material.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_KEYLOCATION_NONE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@stdin = common dso_local global i32* null, align 8
@B_TRUE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cannot enter raw keys on the terminal\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to open key material file\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid keylocation.\00", align 1
@WRAPPING_KEY_LEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Raw key too short (expected %u).\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Raw key too long (expected %u).\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Hex key too short (expected %u).\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Hex key too long (expected %u).\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Invalid hex character detected.\00", align 1
@MAX_PASSPHRASE_LEN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"Passphrase too long (max %u).\00", align 1
@MIN_PASSPHRASE_LEN = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [31 x i8] c"Passphrase too short (min %u).\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Provided keys do not match.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i32, i8*, i8*, i64**, i64*, i64*)* @get_key_material to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_material(i32* %0, i64 %1, i64 %2, i32 %3, i8* %4, i8* %5, i64** %6, i64* %7, i64* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64**, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64** %6, i64*** %17, align 8
  store i64* %7, i64** %18, align 8
  store i64* %8, i64** %19, align 8
  %29 = load i32, i32* @ZFS_KEYLOCATION_NONE, align 4
  store i32 %29, i32* %22, align 4
  store i32* null, i32** %23, align 8
  store i64* null, i64** %24, align 8
  store i64* null, i64** %25, align 8
  %30 = load i64, i64* @B_FALSE, align 8
  store i64 %30, i64* %28, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = call i32 @zfs_prop_parse_keylocation(i8* %31)
  store i32 %32, i32* %22, align 4
  %33 = load i32, i32* %22, align 4
  switch i32 %33, label %65 [
    i32 129, label %34
    i32 128, label %52
  ]

34:                                               ; preds = %9
  %35 = load i32*, i32** @stdin, align 8
  store i32* %35, i32** %23, align 8
  %36 = load i32*, i32** %23, align 8
  %37 = call i32 @fileno(i32* %36)
  %38 = call i64 @isatty(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load i64, i64* @B_TRUE, align 8
  store i64 %41, i64* %28, align 8
  %42 = load i32, i32* %14, align 4
  %43 = icmp eq i32 %42, 130
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %20, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* @TEXT_DOMAIN, align 4
  %48 = call i32 @dgettext(i32 %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %46, i32 %48)
  br label %244

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %34
  br label %71

52:                                               ; preds = %9
  %53 = load i8*, i8** %15, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 7
  %55 = call i32* @fopen(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %55, i32** %23, align 8
  %56 = load i32*, i32** %23, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @errno, align 4
  store i32 %59, i32* %20, align 4
  store i32 0, i32* @errno, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* @TEXT_DOMAIN, align 4
  %62 = call i32 @dgettext(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %60, i32 %62)
  br label %244

64:                                               ; preds = %52
  br label %71

65:                                               ; preds = %9
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %20, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* @TEXT_DOMAIN, align 4
  %69 = call i32 @dgettext(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %67, i32 %69)
  br label %244

71:                                               ; preds = %64, %51
  %72 = load i32*, i32** %23, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i64, i64* @B_FALSE, align 8
  %76 = load i64, i64* %13, align 8
  %77 = call i32 @get_key_material_raw(i32* %72, i8* %73, i32 %74, i64 %75, i64 %76, i64** %24, i64* %26)
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* %20, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %244

81:                                               ; preds = %71
  %82 = load i32, i32* %14, align 4
  switch i32 %82, label %182 [
    i32 130, label %83
    i32 132, label %106
    i32 131, label %159
  ]

83:                                               ; preds = %81
  %84 = load i64, i64* %26, align 8
  %85 = load i64, i64* @WRAPPING_KEY_LEN, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %20, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* @TEXT_DOMAIN, align 4
  %91 = call i32 @dgettext(i32 %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i64, i64* @WRAPPING_KEY_LEN, align 8
  %93 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %89, i32 %91, i64 %92)
  br label %244

94:                                               ; preds = %83
  %95 = load i64, i64* %26, align 8
  %96 = load i64, i64* @WRAPPING_KEY_LEN, align 8
  %97 = icmp ugt i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i32, i32* @EINVAL, align 4
  store i32 %99, i32* %20, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* @TEXT_DOMAIN, align 4
  %102 = call i32 @dgettext(i32 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i64, i64* @WRAPPING_KEY_LEN, align 8
  %104 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %100, i32 %102, i64 %103)
  br label %244

105:                                              ; preds = %94
  br label %183

106:                                              ; preds = %81
  %107 = load i64, i64* %26, align 8
  %108 = load i64, i64* @WRAPPING_KEY_LEN, align 8
  %109 = mul i64 %108, 2
  %110 = icmp ult i64 %107, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load i32, i32* @EINVAL, align 4
  store i32 %112, i32* %20, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* @TEXT_DOMAIN, align 4
  %115 = call i32 @dgettext(i32 %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %116 = load i64, i64* @WRAPPING_KEY_LEN, align 8
  %117 = mul i64 %116, 2
  %118 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %113, i32 %115, i64 %117)
  br label %244

119:                                              ; preds = %106
  %120 = load i64, i64* %26, align 8
  %121 = load i64, i64* @WRAPPING_KEY_LEN, align 8
  %122 = mul i64 %121, 2
  %123 = icmp ugt i64 %120, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load i32, i32* @EINVAL, align 4
  store i32 %125, i32* %20, align 4
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* @TEXT_DOMAIN, align 4
  %128 = call i32 @dgettext(i32 %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %129 = load i64, i64* @WRAPPING_KEY_LEN, align 8
  %130 = mul i64 %129, 2
  %131 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %126, i32 %128, i64 %130)
  br label %244

132:                                              ; preds = %119
  store i32 0, i32* %21, align 4
  br label %133

133:                                              ; preds = %155, %132
  %134 = load i32, i32* %21, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* @WRAPPING_KEY_LEN, align 8
  %137 = mul i64 %136, 2
  %138 = icmp ult i64 %135, %137
  br i1 %138, label %139, label %158

139:                                              ; preds = %133
  %140 = load i64*, i64** %24, align 8
  %141 = load i32, i32* %21, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i8
  %146 = call i32 @isxdigit(i8 signext %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %139
  %149 = load i32, i32* @EINVAL, align 4
  store i32 %149, i32* %20, align 4
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* @TEXT_DOMAIN, align 4
  %152 = call i32 @dgettext(i32 %151, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %153 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %150, i32 %152)
  br label %244

154:                                              ; preds = %139
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %21, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %21, align 4
  br label %133

158:                                              ; preds = %133
  br label %183

159:                                              ; preds = %81
  %160 = load i64, i64* %26, align 8
  %161 = load i64, i64* @MAX_PASSPHRASE_LEN, align 8
  %162 = icmp ugt i64 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load i32, i32* @EINVAL, align 4
  store i32 %164, i32* %20, align 4
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* @TEXT_DOMAIN, align 4
  %167 = call i32 @dgettext(i32 %166, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %168 = load i64, i64* @MAX_PASSPHRASE_LEN, align 8
  %169 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %165, i32 %167, i64 %168)
  br label %244

170:                                              ; preds = %159
  %171 = load i64, i64* %26, align 8
  %172 = load i64, i64* @MIN_PASSPHRASE_LEN, align 8
  %173 = icmp ult i64 %171, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %170
  %175 = load i32, i32* @EINVAL, align 4
  store i32 %175, i32* %20, align 4
  %176 = load i32*, i32** %11, align 8
  %177 = load i32, i32* @TEXT_DOMAIN, align 4
  %178 = call i32 @dgettext(i32 %177, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %179 = load i64, i64* @MIN_PASSPHRASE_LEN, align 8
  %180 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %176, i32 %178, i64 %179)
  br label %244

181:                                              ; preds = %170
  br label %183

182:                                              ; preds = %81
  br label %183

183:                                              ; preds = %182, %181, %158, %105
  %184 = load i64, i64* %12, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %220

186:                                              ; preds = %183
  %187 = load i32*, i32** %23, align 8
  %188 = call i32 @fileno(i32* %187)
  %189 = call i64 @isatty(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %220

191:                                              ; preds = %186
  %192 = load i32*, i32** %23, align 8
  %193 = load i8*, i8** %16, align 8
  %194 = load i32, i32* %14, align 4
  %195 = load i64, i64* @B_TRUE, align 8
  %196 = load i64, i64* %13, align 8
  %197 = call i32 @get_key_material_raw(i32* %192, i8* %193, i32 %194, i64 %195, i64 %196, i64** %25, i64* %27)
  store i32 %197, i32* %20, align 4
  %198 = load i32, i32* %20, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %191
  br label %244

201:                                              ; preds = %191
  %202 = load i64, i64* %27, align 8
  %203 = load i64, i64* %26, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %213, label %205

205:                                              ; preds = %201
  %206 = load i64*, i64** %24, align 8
  %207 = bitcast i64* %206 to i8*
  %208 = load i64*, i64** %25, align 8
  %209 = bitcast i64* %208 to i8*
  %210 = load i64, i64* %26, align 8
  %211 = call i64 @memcmp(i8* %207, i8* %209, i64 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %205, %201
  %214 = load i32, i32* @EINVAL, align 4
  store i32 %214, i32* %20, align 4
  %215 = load i32*, i32** %11, align 8
  %216 = load i32, i32* @TEXT_DOMAIN, align 4
  %217 = call i32 @dgettext(i32 %216, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %218 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %215, i32 %217)
  br label %244

219:                                              ; preds = %205
  br label %220

220:                                              ; preds = %219, %186, %183
  %221 = load i32*, i32** %23, align 8
  %222 = load i32*, i32** @stdin, align 8
  %223 = icmp ne i32* %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %220
  %225 = load i32*, i32** %23, align 8
  %226 = call i32 @fclose(i32* %225)
  br label %227

227:                                              ; preds = %224, %220
  %228 = load i64*, i64** %25, align 8
  %229 = icmp ne i64* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load i64*, i64** %25, align 8
  %232 = call i32 @free(i64* %231)
  br label %233

233:                                              ; preds = %230, %227
  %234 = load i64*, i64** %24, align 8
  %235 = load i64**, i64*** %17, align 8
  store i64* %234, i64** %235, align 8
  %236 = load i64, i64* %26, align 8
  %237 = load i64*, i64** %18, align 8
  store i64 %236, i64* %237, align 8
  %238 = load i64*, i64** %19, align 8
  %239 = icmp ne i64* %238, null
  br i1 %239, label %240, label %243

240:                                              ; preds = %233
  %241 = load i64, i64* %28, align 8
  %242 = load i64*, i64** %19, align 8
  store i64 %241, i64* %242, align 8
  br label %243

243:                                              ; preds = %240, %233
  store i32 0, i32* %10, align 4
  br label %276

244:                                              ; preds = %213, %200, %174, %163, %148, %124, %111, %98, %87, %80, %65, %58, %44
  %245 = load i64*, i64** %24, align 8
  %246 = icmp ne i64* %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = load i64*, i64** %24, align 8
  %249 = call i32 @free(i64* %248)
  br label %250

250:                                              ; preds = %247, %244
  %251 = load i64*, i64** %25, align 8
  %252 = icmp ne i64* %251, null
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load i64*, i64** %25, align 8
  %255 = call i32 @free(i64* %254)
  br label %256

256:                                              ; preds = %253, %250
  %257 = load i32*, i32** %23, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %266

259:                                              ; preds = %256
  %260 = load i32*, i32** %23, align 8
  %261 = load i32*, i32** @stdin, align 8
  %262 = icmp ne i32* %260, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %259
  %264 = load i32*, i32** %23, align 8
  %265 = call i32 @fclose(i32* %264)
  br label %266

266:                                              ; preds = %263, %259, %256
  %267 = load i64**, i64*** %17, align 8
  store i64* null, i64** %267, align 8
  %268 = load i64*, i64** %18, align 8
  store i64 0, i64* %268, align 8
  %269 = load i64*, i64** %19, align 8
  %270 = icmp ne i64* %269, null
  br i1 %270, label %271, label %274

271:                                              ; preds = %266
  %272 = load i64, i64* %28, align 8
  %273 = load i64*, i64** %19, align 8
  store i64 %272, i64* %273, align 8
  br label %274

274:                                              ; preds = %271, %266
  %275 = load i32, i32* %20, align 4
  store i32 %275, i32* %10, align 4
  br label %276

276:                                              ; preds = %274, %243
  %277 = load i32, i32* %10, align 4
  ret i32 %277
}

declare dso_local i32 @zfs_prop_parse_keylocation(i8*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @zfs_error_aux(i32*, i32, ...) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @get_key_material_raw(i32*, i8*, i32, i64, i64, i64**, i64*) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

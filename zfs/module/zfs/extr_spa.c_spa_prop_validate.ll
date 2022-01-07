; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_prop_validate.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_prop_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@B_FALSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DATA_TYPE_UINT64 = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@SPA_VERSION_BEFORE_FEATURES = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@SPA_VERSION_BOOTFS = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DMU_OST_ZFS = common dso_local global i32 0, align 4
@ZFS_PROP_COMPRESSION = common dso_local global i32 0, align 4
@ZFS_PROP_DNODESIZE = common dso_local global i32 0, align 4
@ZFS_DNSIZE_LEGACY = common dso_local global i32 0, align 4
@ZIO_FAILURE_MODE_PANIC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"/..\00", align 1
@ZPROP_MAX_COMMENT = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ZPOOL_PROP_DEDUPDITTO = common dso_local global i32 0, align 4
@DATA_TYPE_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @spa_prop_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_prop_validate(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load i32, i32* @B_FALSE, align 4
  store i32 %20, i32* %9, align 4
  store i32* null, i32** %5, align 8
  br label %21

21:                                               ; preds = %334, %2
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @nvlist_next_nvpair(i32* %22, i32* %23)
  store i32* %24, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %335

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = call i8* @nvpair_name(i32* %27)
  store i8* %28, i8** %15, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = call i32 @zpool_name_to_prop(i8* %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  switch i32 %31, label %329 [
    i32 131, label %32
    i32 128, label %74
    i32 133, label %95
    i32 138, label %95
    i32 130, label %95
    i32 139, label %95
    i32 137, label %95
    i32 129, label %107
    i32 136, label %134
    i32 132, label %220
    i32 135, label %246
    i32 134, label %296
  ]

32:                                               ; preds = %26
  %33 = load i8*, i8** %15, align 8
  %34 = call i32 @zpool_prop_feature(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = call i32 @SET_ERROR(i32 %37)
  store i32 %38, i32* %6, align 4
  br label %330

39:                                               ; preds = %32
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @nvpair_type(i32* %40)
  %42 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = call i32 @SET_ERROR(i32 %45)
  store i32 %46, i32* %6, align 4
  br label %330

47:                                               ; preds = %39
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @nvpair_value_uint64(i32* %48, i32* %10)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EINVAL, align 4
  %53 = call i32 @SET_ERROR(i32 %52)
  store i32 %53, i32* %6, align 4
  br label %330

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @EINVAL, align 4
  %59 = call i32 @SET_ERROR(i32 %58)
  store i32 %59, i32* %6, align 4
  br label %330

60:                                               ; preds = %54
  %61 = load i8*, i8** %15, align 8
  %62 = call i32 @strchr(i8* %61, i8 signext 64)
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** %14, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = call i32 @zfeature_lookup_name(i8* %66, i32* null)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @EINVAL, align 4
  %71 = call i32 @SET_ERROR(i32 %70)
  store i32 %71, i32* %6, align 4
  br label %330

72:                                               ; preds = %60
  %73 = load i32, i32* @B_TRUE, align 4
  store i32 %73, i32* %9, align 4
  br label %330

74:                                               ; preds = %26
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @nvpair_value_uint64(i32* %75, i32* %10)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = call i32 @spa_version(%struct.TYPE_5__* %81)
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @SPA_VERSION_BEFORE_FEATURES, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88, %84, %79
  %92 = load i32, i32* @EINVAL, align 4
  %93 = call i32 @SET_ERROR(i32 %92)
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %91, %88, %74
  br label %330

95:                                               ; preds = %26, %26, %26, %26, %26
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @nvpair_value_uint64(i32* %96, i32* %10)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %10, align 4
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @EINVAL, align 4
  %105 = call i32 @SET_ERROR(i32 %104)
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %103, %100, %95
  br label %330

107:                                              ; preds = %26
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @nvpair_value_uint64(i32* %108, i32* %10)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %10, align 4
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* @EINVAL, align 4
  %117 = call i32 @SET_ERROR(i32 %116)
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %115, %112, %107
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %133, label %121

121:                                              ; preds = %118
  %122 = call i32 @zone_get_hostid(i32* null)
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32, i32* %17, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  br label %132

129:                                              ; preds = %121
  %130 = load i32, i32* @ENOTSUP, align 4
  %131 = call i32 @SET_ERROR(i32 %130)
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %129, %125
  br label %133

133:                                              ; preds = %132, %118
  br label %330

134:                                              ; preds = %26
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %136 = call i32 @spa_version(%struct.TYPE_5__* %135)
  %137 = load i32, i32* @SPA_VERSION_BOOTFS, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32, i32* @ENOTSUP, align 4
  %141 = call i32 @SET_ERROR(i32 %140)
  store i32 %141, i32* %6, align 4
  br label %330

142:                                              ; preds = %134
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @vdev_is_bootable(i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %142
  %149 = load i32, i32* @ENOTSUP, align 4
  %150 = call i32 @SET_ERROR(i32 %149)
  store i32 %150, i32* %6, align 4
  br label %330

151:                                              ; preds = %142
  store i32 1, i32* %7, align 4
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 @nvpair_value_string(i32* %152, i8** %11)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %219, label %156

156:                                              ; preds = %151
  %157 = load i8*, i8** %11, align 8
  %158 = icmp eq i8* %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %156
  %160 = load i8*, i8** %11, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159, %156
  %166 = call i32 @zpool_prop_default_numeric(i32 136)
  store i32 %166, i32* %8, align 4
  br label %330

167:                                              ; preds = %159
  %168 = load i8*, i8** %11, align 8
  %169 = load i32, i32* @FTAG, align 4
  %170 = call i32 @dmu_objset_hold(i8* %168, i32 %169, i32** %18)
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %330

174:                                              ; preds = %167
  %175 = load i32*, i32** %18, align 8
  %176 = call i32 @dmu_objset_type(i32* %175)
  %177 = load i32, i32* @DMU_OST_ZFS, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* @ENOTSUP, align 4
  %181 = call i32 @SET_ERROR(i32 %180)
  store i32 %181, i32* %6, align 4
  br label %215

182:                                              ; preds = %174
  %183 = load i32*, i32** %18, align 8
  %184 = call i32 @dmu_objset_ds(i32* %183)
  %185 = load i32, i32* @ZFS_PROP_COMPRESSION, align 4
  %186 = call i32 @zfs_prop_to_name(i32 %185)
  %187 = call i32 @dsl_prop_get_int_ds(i32 %184, i32 %186, i32* %19)
  store i32 %187, i32* %6, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %182
  %190 = load i32, i32* %19, align 4
  %191 = call i32 @BOOTFS_COMPRESS_VALID(i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* @ENOTSUP, align 4
  %195 = call i32 @SET_ERROR(i32 %194)
  store i32 %195, i32* %6, align 4
  br label %214

196:                                              ; preds = %189, %182
  %197 = load i32*, i32** %18, align 8
  %198 = call i32 @dmu_objset_ds(i32* %197)
  %199 = load i32, i32* @ZFS_PROP_DNODESIZE, align 4
  %200 = call i32 @zfs_prop_to_name(i32 %199)
  %201 = call i32 @dsl_prop_get_int_ds(i32 %198, i32 %200, i32* %19)
  store i32 %201, i32* %6, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %196
  %204 = load i32, i32* %19, align 4
  %205 = load i32, i32* @ZFS_DNSIZE_LEGACY, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = load i32, i32* @ENOTSUP, align 4
  %209 = call i32 @SET_ERROR(i32 %208)
  store i32 %209, i32* %6, align 4
  br label %213

210:                                              ; preds = %203, %196
  %211 = load i32*, i32** %18, align 8
  %212 = call i32 @dmu_objset_id(i32* %211)
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %210, %207
  br label %214

214:                                              ; preds = %213, %193
  br label %215

215:                                              ; preds = %214, %179
  %216 = load i32*, i32** %18, align 8
  %217 = load i32, i32* @FTAG, align 4
  %218 = call i32 @dmu_objset_rele(i32* %216, i32 %217)
  br label %219

219:                                              ; preds = %215, %151
  br label %330

220:                                              ; preds = %26
  %221 = load i32*, i32** %5, align 8
  %222 = call i32 @nvpair_value_uint64(i32* %221, i32* %10)
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* %6, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %232, label %225

225:                                              ; preds = %220
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @ZIO_FAILURE_MODE_PANIC, align 4
  %228 = icmp sgt i32 %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i32, i32* @EINVAL, align 4
  %231 = call i32 @SET_ERROR(i32 %230)
  store i32 %231, i32* %6, align 4
  br label %232

232:                                              ; preds = %229, %225, %220
  %233 = load i32, i32* %6, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %245, label %235

235:                                              ; preds = %232
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %237 = call i32 @spa_suspended(%struct.TYPE_5__* %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %235
  %240 = load i32, i32* %10, align 4
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 4
  %243 = load i32, i32* @EIO, align 4
  %244 = call i32 @SET_ERROR(i32 %243)
  store i32 %244, i32* %6, align 4
  br label %245

245:                                              ; preds = %239, %235, %232
  br label %330

246:                                              ; preds = %26
  %247 = load i32*, i32** %5, align 8
  %248 = call i32 @nvpair_value_string(i32* %247, i8** %11)
  store i32 %248, i32* %6, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  br label %330

251:                                              ; preds = %246
  %252 = load i8*, i8** %11, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 0
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  br label %330

258:                                              ; preds = %251
  %259 = load i8*, i8** %11, align 8
  %260 = call i32 @strcmp(i8* %259, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %258
  br label %330

263:                                              ; preds = %258
  %264 = load i8*, i8** %11, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 0
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp ne i32 %267, 47
  br i1 %268, label %269, label %272

269:                                              ; preds = %263
  %270 = load i32, i32* @EINVAL, align 4
  %271 = call i32 @SET_ERROR(i32 %270)
  store i32 %271, i32* %6, align 4
  br label %330

272:                                              ; preds = %263
  %273 = load i8*, i8** %11, align 8
  %274 = call i8* @strrchr(i8* %273, i8 signext 47)
  store i8* %274, i8** %12, align 8
  %275 = load i8*, i8** %12, align 8
  %276 = icmp ne i8* %275, null
  %277 = zext i1 %276 to i32
  %278 = call i32 @ASSERT(i32 %277)
  %279 = load i8*, i8** %12, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 1
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %292, label %284

284:                                              ; preds = %272
  %285 = load i8*, i8** %12, align 8
  %286 = call i32 @strcmp(i8* %285, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %292, label %288

288:                                              ; preds = %284
  %289 = load i8*, i8** %12, align 8
  %290 = call i32 @strcmp(i8* %289, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %288, %284, %272
  %293 = load i32, i32* @EINVAL, align 4
  %294 = call i32 @SET_ERROR(i32 %293)
  store i32 %294, i32* %6, align 4
  br label %295

295:                                              ; preds = %292, %288
  br label %330

296:                                              ; preds = %26
  %297 = load i32*, i32** %5, align 8
  %298 = call i32 @nvpair_value_string(i32* %297, i8** %11)
  store i32 %298, i32* %6, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %296
  br label %330

301:                                              ; preds = %296
  %302 = load i8*, i8** %11, align 8
  store i8* %302, i8** %13, align 8
  br label %303

303:                                              ; preds = %317, %301
  %304 = load i8*, i8** %13, align 8
  %305 = load i8, i8* %304, align 1
  %306 = sext i8 %305 to i32
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %320

308:                                              ; preds = %303
  %309 = load i8*, i8** %13, align 8
  %310 = load i8, i8* %309, align 1
  %311 = call i32 @isprint(i8 signext %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %308
  %314 = load i32, i32* @EINVAL, align 4
  %315 = call i32 @SET_ERROR(i32 %314)
  store i32 %315, i32* %6, align 4
  br label %320

316:                                              ; preds = %308
  br label %317

317:                                              ; preds = %316
  %318 = load i8*, i8** %13, align 8
  %319 = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %319, i8** %13, align 8
  br label %303

320:                                              ; preds = %313, %303
  %321 = load i8*, i8** %11, align 8
  %322 = call i32 @strlen(i8* %321)
  %323 = load i32, i32* @ZPROP_MAX_COMMENT, align 4
  %324 = icmp sgt i32 %322, %323
  br i1 %324, label %325, label %328

325:                                              ; preds = %320
  %326 = load i32, i32* @E2BIG, align 4
  %327 = call i32 @SET_ERROR(i32 %326)
  store i32 %327, i32* %6, align 4
  br label %328

328:                                              ; preds = %325, %320
  br label %330

329:                                              ; preds = %26
  br label %330

330:                                              ; preds = %329, %328, %300, %295, %269, %262, %257, %250, %245, %219, %173, %165, %148, %139, %133, %106, %94, %72, %69, %57, %51, %44, %36
  %331 = load i32, i32* %6, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %330
  br label %335

334:                                              ; preds = %330
  br label %21

335:                                              ; preds = %333, %21
  %336 = load i32*, i32** %4, align 8
  %337 = load i32, i32* @ZPOOL_PROP_DEDUPDITTO, align 4
  %338 = call i32 @zpool_prop_to_name(i32 %337)
  %339 = call i32 @nvlist_remove_all(i32* %336, i32 %338)
  %340 = load i32, i32* %6, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %358, label %342

342:                                              ; preds = %335
  %343 = load i32, i32* %7, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %358

345:                                              ; preds = %342
  %346 = load i32*, i32** %4, align 8
  %347 = call i32 @zpool_prop_to_name(i32 136)
  %348 = load i32, i32* @DATA_TYPE_STRING, align 4
  %349 = call i32 @nvlist_remove(i32* %346, i32 %347, i32 %348)
  store i32 %349, i32* %6, align 4
  %350 = load i32, i32* %6, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %357, label %352

352:                                              ; preds = %345
  %353 = load i32*, i32** %4, align 8
  %354 = call i32 @zpool_prop_to_name(i32 136)
  %355 = load i32, i32* %8, align 4
  %356 = call i32 @nvlist_add_uint64(i32* %353, i32 %354, i32 %355)
  store i32 %356, i32* %6, align 4
  br label %357

357:                                              ; preds = %352, %345
  br label %358

358:                                              ; preds = %357, %342, %335
  %359 = load i32, i32* %6, align 4
  ret i32 %359
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @zpool_name_to_prop(i8*) #1

declare dso_local i32 @zpool_prop_feature(i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @nvpair_type(i32*) #1

declare dso_local i32 @nvpair_value_uint64(i32*, i32*) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32 @zfeature_lookup_name(i8*, i32*) #1

declare dso_local i32 @spa_version(%struct.TYPE_5__*) #1

declare dso_local i32 @zone_get_hostid(i32*) #1

declare dso_local i32 @vdev_is_bootable(i32) #1

declare dso_local i32 @nvpair_value_string(i32*, i8**) #1

declare dso_local i32 @zpool_prop_default_numeric(i32) #1

declare dso_local i32 @dmu_objset_hold(i8*, i32, i32**) #1

declare dso_local i32 @dmu_objset_type(i32*) #1

declare dso_local i32 @dsl_prop_get_int_ds(i32, i32, i32*) #1

declare dso_local i32 @dmu_objset_ds(i32*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @BOOTFS_COMPRESS_VALID(i32) #1

declare dso_local i32 @dmu_objset_id(i32*) #1

declare dso_local i32 @dmu_objset_rele(i32*, i32) #1

declare dso_local i32 @spa_suspended(%struct.TYPE_5__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nvlist_remove_all(i32*, i32) #1

declare dso_local i32 @zpool_prop_to_name(i32) #1

declare dso_local i32 @nvlist_remove(i32*, i32, i32) #1

declare dso_local i32 @nvlist_add_uint64(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

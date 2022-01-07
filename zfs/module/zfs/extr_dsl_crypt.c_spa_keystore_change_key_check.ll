; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_keystore_change_key_check.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_keystore_change_key_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_13__*, i32* }
%struct.TYPE_13__ = type { i64, i64, i64 }

@SPA_FEATURE_ENCRYPTION = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@DCP_CMD_NEW_KEY = common dso_local global i64 0, align 8
@DCP_CMD_INHERIT = common dso_local global i64 0, align 8
@DCP_CMD_FORCE_NEW_KEY = common dso_local global i64 0, align 8
@DCP_CMD_FORCE_INHERIT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ZIO_CRYPT_INHERIT = common dso_local global i64 0, align 8
@ZFS_KEYFORMAT_FORMATS = common dso_local global i64 0, align 8
@ZFS_KEYFORMAT_NONE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@ZFS_KEYFORMAT_PASSPHRASE = common dso_local global i64 0, align 8
@MIN_PBKDF2_ITERATIONS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @spa_keystore_change_key_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_keystore_change_key_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_15__* @dmu_tx_pool(i32* %12)
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %8, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %9, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %10, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SPA_FEATURE_ENCRYPTION, align 4
  %23 = call i32 @spa_feature_is_enabled(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOTSUP, align 4
  %27 = call i32 @SET_ERROR(i32 %26)
  store i32 %27, i32* %6, align 4
  br label %319

28:                                               ; preds = %2
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DCP_CMD_NEW_KEY, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %28
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DCP_CMD_INHERIT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DCP_CMD_FORCE_NEW_KEY, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DCP_CMD_FORCE_INHERIT, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EINVAL, align 4
  %54 = call i32 @SET_ERROR(i32 %53)
  store i32 %54, i32* %6, align 4
  br label %319

55:                                               ; preds = %46, %40, %34, %28
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FTAG, align 4
  %61 = call i32 @dsl_dir_hold(%struct.TYPE_15__* %56, i32 %59, i32 %60, %struct.TYPE_16__** %7, i32* null)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  br label %319

65:                                               ; preds = %55
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @EINVAL, align 4
  %72 = call i32 @SET_ERROR(i32 %71)
  store i32 %72, i32* %6, align 4
  br label %319

73:                                               ; preds = %65
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = call i64 @dsl_dir_is_clone(%struct.TYPE_16__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @EINVAL, align 4
  %79 = call i32 @SET_ERROR(i32 %78)
  store i32 %79, i32* %6, align 4
  br label %319

80:                                               ; preds = %73
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %82 = call i32 @dsl_dir_get_encryption_root_ddobj(%struct.TYPE_16__* %81, i64* %11)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %319

86:                                               ; preds = %80
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DCP_CMD_INHERIT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DCP_CMD_FORCE_INHERIT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %161

98:                                               ; preds = %92, %86
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ZIO_CRYPT_INHERIT, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %114, label %104

104:                                              ; preds = %98
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = icmp ne %struct.TYPE_13__* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %109, %104, %98
  %115 = load i32, i32* @EINVAL, align 4
  %116 = call i32 @SET_ERROR(i32 %115)
  store i32 %116, i32* %6, align 4
  br label %319

117:                                              ; preds = %109
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %11, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* @EINVAL, align 4
  %125 = call i32 @SET_ERROR(i32 %124)
  store i32 %125, i32* %6, align 4
  br label %319

126:                                              ; preds = %117
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load i32, i32* @EINVAL, align 4
  %135 = call i32 @SET_ERROR(i32 %134)
  store i32 %135, i32* %6, align 4
  br label %319

136:                                              ; preds = %126
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @DCP_CMD_INHERIT, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %136
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %144 = call i32 @dmu_objset_check_wkey_loaded(%struct.TYPE_16__* %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %319

148:                                              ; preds = %142
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = call i32 @dmu_objset_check_wkey_loaded(%struct.TYPE_16__* %151)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %319

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %136
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %159 = load i32, i32* @FTAG, align 4
  %160 = call i32 @dsl_dir_rele(%struct.TYPE_16__* %158, i32 %159)
  store i32 0, i32* %3, align 4
  br label %328

161:                                              ; preds = %92
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @DCP_CMD_FORCE_NEW_KEY, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %199

167:                                              ; preds = %161
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @ZIO_CRYPT_INHERIT, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %183, label %173

173:                                              ; preds = %167
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %180, align 8
  %182 = icmp ne %struct.TYPE_13__* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %178, %173, %167
  %184 = load i32, i32* @EINVAL, align 4
  %185 = call i32 @SET_ERROR(i32 %184)
  store i32 %185, i32* %6, align 4
  br label %319

186:                                              ; preds = %178
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %11, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load i32, i32* @EINVAL, align 4
  %194 = call i32 @SET_ERROR(i32 %193)
  store i32 %194, i32* %6, align 4
  br label %319

195:                                              ; preds = %186
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %197 = load i32, i32* @FTAG, align 4
  %198 = call i32 @dsl_dir_rele(%struct.TYPE_16__* %196, i32 %197)
  store i32 0, i32* %3, align 4
  br label %328

199:                                              ; preds = %161
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @ZIO_CRYPT_INHERIT, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %199
  %206 = load i32, i32* @EINVAL, align 4
  %207 = call i32 @SET_ERROR(i32 %206)
  store i32 %207, i32* %6, align 4
  br label %319

208:                                              ; preds = %199
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = icmp eq %struct.TYPE_13__* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load i32, i32* @EINVAL, align 4
  %215 = call i32 @SET_ERROR(i32 %214)
  store i32 %215, i32* %6, align 4
  br label %319

216:                                              ; preds = %208
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @ZFS_KEYFORMAT_FORMATS, align 8
  %223 = icmp sge i64 %221, %222
  br i1 %223, label %232, label %224

224:                                              ; preds = %216
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @ZFS_KEYFORMAT_NONE, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %224, %216
  %233 = load i32, i32* @EINVAL, align 4
  %234 = call i32 @SET_ERROR(i32 %233)
  store i32 %234, i32* %6, align 4
  br label %319

235:                                              ; preds = %224
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* %11, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %249

241:                                              ; preds = %235
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 3
  %244 = load i32*, i32** %243, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %246, label %249

246:                                              ; preds = %241
  %247 = load i32, i32* @EINVAL, align 4
  %248 = call i32 @SET_ERROR(i32 %247)
  store i32 %248, i32* %6, align 4
  br label %319

249:                                              ; preds = %241, %235
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 3
  %252 = load i32*, i32** %251, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %254, label %264

254:                                              ; preds = %249
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 3
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* @B_TRUE, align 4
  %259 = call i32 @zfs_prop_valid_keylocation(i32* %257, i32 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %254
  %262 = load i32, i32* @EINVAL, align 4
  %263 = call i32 @SET_ERROR(i32 %262)
  store i32 %263, i32* %6, align 4
  br label %319

264:                                              ; preds = %254, %249
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 2
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @ZFS_KEYFORMAT_PASSPHRASE, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %291

272:                                              ; preds = %264
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 2
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %287, label %279

279:                                              ; preds = %272
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @MIN_PBKDF2_ITERATIONS, align 8
  %286 = icmp slt i64 %284, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %279, %272
  %288 = load i32, i32* @EINVAL, align 4
  %289 = call i32 @SET_ERROR(i32 %288)
  store i32 %289, i32* %6, align 4
  br label %319

290:                                              ; preds = %279
  br label %309

291:                                              ; preds = %264
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 2
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %305, label %298

298:                                              ; preds = %291
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 2
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %298, %291
  %306 = load i32, i32* @EINVAL, align 4
  %307 = call i32 @SET_ERROR(i32 %306)
  store i32 %307, i32* %6, align 4
  br label %319

308:                                              ; preds = %298
  br label %309

309:                                              ; preds = %308, %290
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %311 = call i32 @dmu_objset_check_wkey_loaded(%struct.TYPE_16__* %310)
  store i32 %311, i32* %6, align 4
  %312 = load i32, i32* %6, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %309
  br label %319

315:                                              ; preds = %309
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %317 = load i32, i32* @FTAG, align 4
  %318 = call i32 @dsl_dir_rele(%struct.TYPE_16__* %316, i32 %317)
  store i32 0, i32* %3, align 4
  br label %328

319:                                              ; preds = %314, %305, %287, %261, %246, %232, %213, %205, %192, %183, %155, %147, %133, %123, %114, %85, %77, %70, %64, %52, %25
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %321 = icmp ne %struct.TYPE_16__* %320, null
  br i1 %321, label %322, label %326

322:                                              ; preds = %319
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %324 = load i32, i32* @FTAG, align 4
  %325 = call i32 @dsl_dir_rele(%struct.TYPE_16__* %323, i32 %324)
  br label %326

326:                                              ; preds = %322, %319
  %327 = load i32, i32* %6, align 4
  store i32 %327, i32* %3, align 4
  br label %328

328:                                              ; preds = %326, %315, %195, %157
  %329 = load i32, i32* %3, align 4
  ret i32 %329
}

declare dso_local %struct.TYPE_15__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @spa_feature_is_enabled(i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_dir_hold(%struct.TYPE_15__*, i32, i32, %struct.TYPE_16__**, i32*) #1

declare dso_local i64 @dsl_dir_is_clone(%struct.TYPE_16__*) #1

declare dso_local i32 @dsl_dir_get_encryption_root_ddobj(%struct.TYPE_16__*, i64*) #1

declare dso_local i32 @dmu_objset_check_wkey_loaded(%struct.TYPE_16__*) #1

declare dso_local i32 @dsl_dir_rele(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @zfs_prop_valid_keylocation(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

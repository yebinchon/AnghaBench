; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_sha1_mod.c_sha1_mac_verify_atomic.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_sha1_mod.c_sha1_mac_verify_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i32* }
%struct.TYPE_23__ = type { i64, i32*, i32 }
%struct.TYPE_24__ = type { i32, i32, i64, %struct.TYPE_20__*, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32 }

@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@SHA1_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SHA1_HMAC_MECH_INFO_TYPE = common dso_local global i64 0, align 8
@SHA1_HMAC_GEN_MECH_INFO_TYPE = common dso_local global i64 0, align 8
@CRYPTO_MECHANISM_INVALID = common dso_local global i32 0, align 4
@CRYPTO_KEY_RAW = common dso_local global i64 0, align 8
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@SHA1_HMAC_BLOCK_SIZE = common dso_local global i64 0, align 8
@CRYPTO_MECHANISM_PARAM_INVALID = common dso_local global i32 0, align 4
@CRYPTO_INVALID_MAC = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@CRYPTO_DATA_LEN_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32*, i32)* @sha1_mac_verify_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_mac_verify_atomic(i32 %0, i32 %1, %struct.TYPE_22__* %2, %struct.TYPE_23__* %3, %struct.TYPE_24__* %4, %struct.TYPE_24__* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_21__, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %13, align 8
  store %struct.TYPE_24__* %4, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %5, %struct.TYPE_24__** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %30 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* @SHA1_DIGEST_LENGTH, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %19, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %20, align 8
  %35 = load i32, i32* @SHA1_DIGEST_LENGTH, align 4
  store i32 %35, i32* %22, align 4
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @CRYPTO_BITS2BYTES(i32 %38)
  store i64 %39, i64* %23, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SHA1_HMAC_MECH_INFO_TYPE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SHA1_HMAC_GEN_MECH_INFO_TYPE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @CRYPTO_MECHANISM_INVALID, align 4
  store i32 %52, i32* %9, align 4
  store i32 1, i32* %24, align 4
  br label %290

53:                                               ; preds = %45, %8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CRYPTO_KEY_RAW, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %60, i32* %9, align 4
  store i32 1, i32* %24, align 4
  br label %290

61:                                               ; preds = %53
  %62 = load i32*, i32** %16, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %16, align 8
  %66 = call i32 @bcopy(i32* %65, %struct.TYPE_21__* %21, i32 8)
  br label %88

67:                                               ; preds = %61
  %68 = load i64, i64* %23, align 8
  %69 = load i64, i64* @SHA1_HMAC_BLOCK_SIZE, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 1
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %23, align 8
  %77 = call i32 @PROV_SHA1_DIGEST_KEY(i32* %72, i32* %75, i64 %76, i32* %34)
  %78 = load i32, i32* @SHA1_DIGEST_LENGTH, align 4
  %79 = sext i32 %78 to i64
  %80 = call i32 @sha1_mac_init_ctx(%struct.TYPE_21__* %21, i32* %34, i64 %79)
  br label %87

81:                                               ; preds = %67
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %23, align 8
  %86 = call i32 @sha1_mac_init_ctx(%struct.TYPE_21__* %21, i32* %84, i64 %85)
  br label %87

87:                                               ; preds = %81, %71
  br label %88

88:                                               ; preds = %87, %64
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SHA1_HMAC_GEN_MECH_INFO_TYPE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %88
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %94
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = icmp ne i64 %103, 4
  br i1 %104, label %105, label %107

105:                                              ; preds = %99, %94
  %106 = load i32, i32* @CRYPTO_MECHANISM_PARAM_INVALID, align 4
  store i32 %106, i32* %18, align 4
  br label %285

107:                                              ; preds = %99
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %109 = load i32, i32* %22, align 4
  %110 = call i32 @PROV_SHA1_GET_DIGEST_LEN(%struct.TYPE_22__* %108, i32 %109)
  %111 = load i32, i32* %22, align 4
  %112 = load i32, i32* @SHA1_DIGEST_LENGTH, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @CRYPTO_MECHANISM_PARAM_INVALID, align 4
  store i32 %115, i32* %18, align 4
  br label %285

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %88
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %22, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* @CRYPTO_INVALID_MAC, align 4
  store i32 %124, i32* %18, align 4
  br label %285

125:                                              ; preds = %117
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %127 = load i32, i32* %18, align 4
  %128 = bitcast %struct.TYPE_21__* %21 to i64*
  %129 = load i64, i64* %128, align 4
  %130 = call i32 @SHA1_MAC_UPDATE(%struct.TYPE_24__* %126, i64 %129, i32 %127)
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %285

135:                                              ; preds = %125
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 1
  %137 = call i32 @SHA1Final(i32* %34, i32* %136)
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %139 = load i32, i32* @SHA1_DIGEST_LENGTH, align 4
  %140 = call i32 @SHA1Update(i32* %138, i32* %34, i32 %139)
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %142 = call i32 @SHA1Final(i32* %34, i32* %141)
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  switch i32 %145, label %280 [
    i32 129, label %146
    i32 128, label %162
  ]

146:                                              ; preds = %135
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to i8*
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  %156 = load i32, i32* %22, align 4
  %157 = call i32 (i32*, ...) @bcmp(i32* %34, i8* %155, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %146
  %160 = load i32, i32* @CRYPTO_INVALID_MAC, align 4
  store i32 %160, i32* %18, align 4
  br label %161

161:                                              ; preds = %159, %146
  br label %282

162:                                              ; preds = %135
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %25, align 8
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  %166 = load i32, i32* %22, align 4
  %167 = sext i32 %166 to i64
  store i64 %167, i64* %28, align 8
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @UIO_SYSSPACE, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %162
  %176 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %176, i32* %9, align 4
  store i32 1, i32* %24, align 4
  br label %290

177:                                              ; preds = %162
  br label %178

178:                                              ; preds = %200, %177
  %179 = load i64, i64* %26, align 8
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp slt i64 %179, %184
  br i1 %185, label %186, label %198

186:                                              ; preds = %178
  %187 = load i64, i64* %25, align 8
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %191, align 8
  %193 = load i64, i64* %26, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp uge i64 %187, %196
  br label %198

198:                                              ; preds = %186, %178
  %199 = phi i1 [ false, %178 ], [ %197, %186 ]
  br i1 %199, label %200, label %214

200:                                              ; preds = %198
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %204, align 8
  %206 = load i64, i64* %26, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* %25, align 8
  %211 = sub i64 %210, %209
  store i64 %211, i64* %25, align 8
  %212 = load i64, i64* %26, align 8
  %213 = add nsw i64 %212, 1
  store i64 %213, i64* %26, align 8
  br label %178

214:                                              ; preds = %198
  %215 = load i64, i64* %26, align 8
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %215, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %214
  %223 = load i32, i32* @CRYPTO_DATA_LEN_RANGE, align 4
  store i32 %223, i32* %18, align 4
  br label %282

224:                                              ; preds = %214
  br label %225

225:                                              ; preds = %270, %224
  %226 = load i64, i64* %26, align 8
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 3
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp slt i64 %226, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %225
  %234 = load i64, i64* %28, align 8
  %235 = icmp ugt i64 %234, 0
  br label %236

236:                                              ; preds = %233, %225
  %237 = phi i1 [ false, %225 ], [ %235, %233 ]
  br i1 %237, label %238, label %279

238:                                              ; preds = %236
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 3
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %242, align 8
  %244 = load i64, i64* %26, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* %25, align 8
  %249 = sub i64 %247, %248
  %250 = load i64, i64* %28, align 8
  %251 = call i64 @MIN(i64 %249, i64 %250)
  store i64 %251, i64* %29, align 8
  %252 = load i64, i64* %27, align 8
  %253 = getelementptr inbounds i32, i32* %34, i64 %252
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 3
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %257, align 8
  %259 = load i64, i64* %26, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* %25, align 8
  %264 = add i64 %262, %263
  %265 = load i64, i64* %29, align 8
  %266 = call i32 (i32*, ...) @bcmp(i32* %253, i64 %264, i64 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %238
  %269 = load i32, i32* @CRYPTO_INVALID_MAC, align 4
  store i32 %269, i32* %18, align 4
  br label %279

270:                                              ; preds = %238
  %271 = load i64, i64* %29, align 8
  %272 = load i64, i64* %28, align 8
  %273 = sub i64 %272, %271
  store i64 %273, i64* %28, align 8
  %274 = load i64, i64* %26, align 8
  %275 = add nsw i64 %274, 1
  store i64 %275, i64* %26, align 8
  %276 = load i64, i64* %29, align 8
  %277 = load i64, i64* %27, align 8
  %278 = add i64 %277, %276
  store i64 %278, i64* %27, align 8
  store i64 0, i64* %25, align 8
  br label %225

279:                                              ; preds = %268, %236
  br label %282

280:                                              ; preds = %135
  %281 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %281, i32* %18, align 4
  br label %282

282:                                              ; preds = %280, %279, %222, %161
  %283 = call i32 @bzero(%struct.TYPE_21__* %21, i32 8)
  %284 = load i32, i32* %18, align 4
  store i32 %284, i32* %9, align 4
  store i32 1, i32* %24, align 4
  br label %290

285:                                              ; preds = %134, %123, %114, %105
  %286 = call i32 @bzero(%struct.TYPE_21__* %21, i32 8)
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %287, i32 0, i32 0
  store i32 0, i32* %288, align 8
  %289 = load i32, i32* %18, align 4
  store i32 %289, i32* %9, align 4
  store i32 1, i32* %24, align 4
  br label %290

290:                                              ; preds = %285, %282, %175, %59, %51
  %291 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %291)
  %292 = load i32, i32* %9, align 4
  ret i32 %292
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CRYPTO_BITS2BYTES(i32) #2

declare dso_local i32 @bcopy(i32*, %struct.TYPE_21__*, i32) #2

declare dso_local i32 @PROV_SHA1_DIGEST_KEY(i32*, i32*, i64, i32*) #2

declare dso_local i32 @sha1_mac_init_ctx(%struct.TYPE_21__*, i32*, i64) #2

declare dso_local i32 @PROV_SHA1_GET_DIGEST_LEN(%struct.TYPE_22__*, i32) #2

declare dso_local i32 @SHA1_MAC_UPDATE(%struct.TYPE_24__*, i64, i32) #2

declare dso_local i32 @SHA1Final(i32*, i32*) #2

declare dso_local i32 @SHA1Update(i32*, i32*, i32) #2

declare dso_local i32 @bcmp(i32*, ...) #2

declare dso_local i64 @MIN(i64, i64) #2

declare dso_local i32 @bzero(%struct.TYPE_21__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_decrypt_atomic.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_decrypt_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i32, i8*, i32 }
%struct.TYPE_29__ = type { i64, i64, i64, i64, i64, i64, i32, i32, i32*, %struct.TYPE_29__* }
%struct.TYPE_26__ = type { i64, i32* }

@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@CRYPTO_ENCRYPTED_DATA_LEN_RANGE = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@CRYPTO_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@aes_decrypt_contiguous_blocks = common dso_local global i32 0, align 4
@aes_copy_block64 = common dso_local global i32 0, align 4
@aes_encrypt_block = common dso_local global i32 0, align 4
@aes_copy_block = common dso_local global i32 0, align 4
@aes_xor_block = common dso_local global i32 0, align 4
@CRYPTO_DATA_LEN_RANGE = common dso_local global i32 0, align 4
@PROVIDER_OWNS_KEY_SCHEDULE = common dso_local global i32 0, align 4
@CCM_MODE = common dso_local global i32 0, align 4
@GCM_MODE = common dso_local global i32 0, align 4
@GMAC_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_27__*, i32*, %struct.TYPE_28__*, %struct.TYPE_28__*, i32, i32)* @aes_decrypt_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_decrypt_atomic(i32 %0, i32 %1, %struct.TYPE_27__* %2, i32* %3, %struct.TYPE_28__* %4, %struct.TYPE_28__* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_29__, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %12, align 8
  store i32* %3, i32** %13, align 8
  store %struct.TYPE_28__* %4, %struct.TYPE_28__** %14, align 8
  store %struct.TYPE_28__* %5, %struct.TYPE_28__** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %25 = call i32 @AES_ARG_INPLACE(%struct.TYPE_28__* %23, %struct.TYPE_28__* %24)
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %30 [
    i32 132, label %29
    i32 133, label %29
    i32 131, label %29
    i32 130, label %29
  ]

29:                                               ; preds = %8, %8, %8, %8
  br label %41

30:                                               ; preds = %8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @AES_BLOCK_LEN, align 4
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @CRYPTO_ENCRYPTED_DATA_LEN_RANGE, align 4
  store i32 %39, i32* %9, align 4
  br label %382

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %29
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %43 = call i32 @aes_check_mech_param(%struct.TYPE_27__* %42, i32* null, i32 0)
  store i32 %43, i32* %22, align 4
  %44 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %22, align 4
  store i32 %47, i32* %9, align 4
  br label %382

48:                                               ; preds = %41
  %49 = call i32 @bzero(%struct.TYPE_29__* %18, i32 72)
  %50 = load i32, i32* %16, align 4
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @crypto_kmflag(i32 %53)
  %55 = load i32, i32* @B_FALSE, align 4
  %56 = call i32 @aes_common_init_ctx(%struct.TYPE_29__* %18, i32 %50, %struct.TYPE_27__* %51, i32* %52, i32 %54, i32 %55)
  store i32 %56, i32* %22, align 4
  %57 = load i32, i32* %22, align 4
  %58 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %22, align 4
  store i32 %61, i32* %9, align 4
  br label %382

62:                                               ; preds = %48
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %85 [
    i32 133, label %66
    i32 131, label %69
    i32 130, label %77
  ]

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %21, align 8
  br label %90

69:                                               ; preds = %62
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub i64 %73, %75
  store i64 %76, i64* %21, align 8
  br label %90

77:                                               ; preds = %62
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %83, i32* %9, align 4
  br label %382

84:                                               ; preds = %77
  store i64 0, i64* %21, align 8
  br label %90

85:                                               ; preds = %62
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %21, align 8
  br label %90

90:                                               ; preds = %85, %84, %69, %66
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %21, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load i64, i64* %21, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @CRYPTO_BUFFER_TOO_SMALL, align 4
  store i32 %102, i32* %22, align 4
  br label %323

103:                                              ; preds = %90
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %19, align 8
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  store i64 %110, i64* %20, align 8
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 131
  br i1 %114, label %120, label %115

115:                                              ; preds = %103
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 130
  br i1 %119, label %120, label %125

120:                                              ; preds = %115, %103
  %121 = bitcast %struct.TYPE_29__* %18 to %struct.TYPE_26__*
  %122 = load i32, i32* %17, align 4
  %123 = call i32 @crypto_kmflag(i32 %122)
  %124 = call i32 @gcm_set_kmflag(%struct.TYPE_26__* %121, i32 %123)
  br label %125

125:                                              ; preds = %120, %115
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  switch i32 %128, label %141 [
    i32 129, label %129
    i32 128, label %135
  ]

129:                                              ; preds = %125
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %132 = load i32, i32* @aes_decrypt_contiguous_blocks, align 4
  %133 = load i32, i32* @aes_copy_block64, align 4
  %134 = call i32 @crypto_update_iov(%struct.TYPE_29__* %18, %struct.TYPE_28__* %130, %struct.TYPE_28__* %131, i32 %132, i32 %133)
  store i32 %134, i32* %22, align 4
  br label %143

135:                                              ; preds = %125
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %138 = load i32, i32* @aes_decrypt_contiguous_blocks, align 4
  %139 = load i32, i32* @aes_copy_block64, align 4
  %140 = call i32 @crypto_update_uio(%struct.TYPE_29__* %18, %struct.TYPE_28__* %136, %struct.TYPE_28__* %137, i32 %138, i32 %139)
  store i32 %140, i32* %22, align 4
  br label %143

141:                                              ; preds = %125
  %142 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %142, i32* %22, align 4
  br label %143

143:                                              ; preds = %141, %135, %129
  %144 = load i32, i32* %22, align 4
  %145 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %314

147:                                              ; preds = %143
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 133
  br i1 %151, label %152, label %203

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %154, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @ASSERT(i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %161, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @ASSERT(i32 %165)
  %167 = bitcast %struct.TYPE_29__* %18 to i32*
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %169 = load i32, i32* @AES_BLOCK_LEN, align 4
  %170 = load i32, i32* @aes_encrypt_block, align 4
  %171 = load i32, i32* @aes_copy_block, align 4
  %172 = load i32, i32* @aes_xor_block, align 4
  %173 = call i32 @ccm_decrypt_final(i32* %167, %struct.TYPE_28__* %168, i32 %169, i32 %170, i32 %171, i32 %172)
  store i32 %173, i32* %22, align 4
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  %177 = zext i1 %176 to i32
  %178 = call i32 @ASSERT(i32 %177)
  %179 = load i32, i32* %22, align 4
  %180 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %197

182:                                              ; preds = %152
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %185 = icmp ne %struct.TYPE_28__* %183, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %182
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = load i8*, i8** %19, align 8
  %191 = ptrtoint i8* %189 to i64
  %192 = ptrtoint i8* %190 to i64
  %193 = sub i64 %191, %192
  %194 = trunc i64 %193 to i32
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  br label %202

197:                                              ; preds = %182, %152
  %198 = load i64, i64* %20, align 8
  %199 = trunc i64 %198 to i32
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  br label %202

202:                                              ; preds = %197, %186
  br label %313

203:                                              ; preds = %147
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 131
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 130
  br i1 %212, label %213, label %249

213:                                              ; preds = %208, %203
  %214 = bitcast %struct.TYPE_29__* %18 to %struct.TYPE_26__*
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %216 = load i32, i32* @AES_BLOCK_LEN, align 4
  %217 = load i32, i32* @aes_encrypt_block, align 4
  %218 = load i32, i32* @aes_xor_block, align 4
  %219 = call i32 @gcm_decrypt_final(%struct.TYPE_26__* %214, %struct.TYPE_28__* %215, i32 %216, i32 %217, i32 %218)
  store i32 %219, i32* %22, align 4
  %220 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %221, 0
  %223 = zext i1 %222 to i32
  %224 = call i32 @ASSERT(i32 %223)
  %225 = load i32, i32* %22, align 4
  %226 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %243

228:                                              ; preds = %213
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %231 = icmp ne %struct.TYPE_28__* %229, %230
  br i1 %231, label %232, label %243

232:                                              ; preds = %228
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = load i8*, i8** %19, align 8
  %237 = ptrtoint i8* %235 to i64
  %238 = ptrtoint i8* %236 to i64
  %239 = sub i64 %237, %238
  %240 = trunc i64 %239 to i32
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %242 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  br label %248

243:                                              ; preds = %228, %213
  %244 = load i64, i64* %20, align 8
  %245 = trunc i64 %244 to i32
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  br label %248

248:                                              ; preds = %243, %232
  br label %312

249:                                              ; preds = %208
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %252, 132
  br i1 %253, label %254, label %275

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 5
  %256 = load i64, i64* %255, align 8
  %257 = icmp eq i64 %256, 0
  %258 = zext i1 %257 to i32
  %259 = call i32 @ASSERT(i32 %258)
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %262 = icmp ne %struct.TYPE_28__* %260, %261
  br i1 %262, label %263, label %274

263:                                              ; preds = %254
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  %267 = load i8*, i8** %19, align 8
  %268 = ptrtoint i8* %266 to i64
  %269 = ptrtoint i8* %267 to i64
  %270 = sub i64 %268, %269
  %271 = trunc i64 %270 to i32
  %272 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 8
  br label %274

274:                                              ; preds = %263, %254
  br label %311

275:                                              ; preds = %249
  %276 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 5
  %277 = load i64, i64* %276, align 8
  %278 = icmp sgt i64 %277, 0
  br i1 %278, label %279, label %295

279:                                              ; preds = %275
  %280 = bitcast %struct.TYPE_29__* %18 to i32*
  %281 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %282 = load i32, i32* @aes_encrypt_block, align 4
  %283 = call i32 @ctr_mode_final(i32* %280, %struct.TYPE_28__* %281, i32 %282)
  store i32 %283, i32* %22, align 4
  %284 = load i32, i32* %22, align 4
  %285 = load i32, i32* @CRYPTO_DATA_LEN_RANGE, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %279
  %288 = load i32, i32* @CRYPTO_ENCRYPTED_DATA_LEN_RANGE, align 4
  store i32 %288, i32* %22, align 4
  br label %289

289:                                              ; preds = %287, %279
  %290 = load i32, i32* %22, align 4
  %291 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %289
  br label %323

294:                                              ; preds = %289
  br label %295

295:                                              ; preds = %294, %275
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %298 = icmp ne %struct.TYPE_28__* %296, %297
  br i1 %298, label %299, label %310

299:                                              ; preds = %295
  %300 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %301 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %300, i32 0, i32 1
  %302 = load i8*, i8** %301, align 8
  %303 = load i8*, i8** %19, align 8
  %304 = ptrtoint i8* %302 to i64
  %305 = ptrtoint i8* %303 to i64
  %306 = sub i64 %304, %305
  %307 = trunc i64 %306 to i32
  %308 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %309 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %308, i32 0, i32 0
  store i32 %307, i32* %309, align 8
  br label %310

310:                                              ; preds = %299, %295
  br label %311

311:                                              ; preds = %310, %274
  br label %312

312:                                              ; preds = %311, %248
  br label %313

313:                                              ; preds = %312, %202
  br label %319

314:                                              ; preds = %143
  %315 = load i64, i64* %20, align 8
  %316 = trunc i64 %315 to i32
  %317 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %318 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %317, i32 0, i32 0
  store i32 %316, i32* %318, align 8
  br label %319

319:                                              ; preds = %314, %313
  %320 = load i8*, i8** %19, align 8
  %321 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %322 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %321, i32 0, i32 1
  store i8* %320, i8** %322, align 8
  br label %323

323:                                              ; preds = %319, %293, %97
  %324 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 6
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @PROVIDER_OWNS_KEY_SCHEDULE, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %340

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 9
  %331 = load %struct.TYPE_29__*, %struct.TYPE_29__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 7
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @bzero(%struct.TYPE_29__* %331, i32 %333)
  %335 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 9
  %336 = load %struct.TYPE_29__*, %struct.TYPE_29__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 7
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @kmem_free(%struct.TYPE_29__* %336, i32 %338)
  br label %340

340:                                              ; preds = %329, %323
  %341 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 6
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @CCM_MODE, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %357

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 8
  %348 = load i32*, i32** %347, align 8
  %349 = icmp ne i32* %348, null
  br i1 %349, label %350, label %356

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 8
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = call i32 @vmem_free(i32* %352, i64 %354)
  br label %356

356:                                              ; preds = %350, %346
  br label %380

357:                                              ; preds = %340
  %358 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 6
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @GCM_MODE, align 4
  %361 = load i32, i32* @GMAC_MODE, align 4
  %362 = or i32 %360, %361
  %363 = and i32 %359, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %379

365:                                              ; preds = %357
  %366 = bitcast %struct.TYPE_29__* %18 to %struct.TYPE_26__*
  %367 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %366, i32 0, i32 1
  %368 = load i32*, i32** %367, align 8
  %369 = icmp ne i32* %368, null
  br i1 %369, label %370, label %378

370:                                              ; preds = %365
  %371 = bitcast %struct.TYPE_29__* %18 to %struct.TYPE_26__*
  %372 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %371, i32 0, i32 1
  %373 = load i32*, i32** %372, align 8
  %374 = bitcast %struct.TYPE_29__* %18 to %struct.TYPE_26__*
  %375 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = call i32 @vmem_free(i32* %373, i64 %376)
  br label %378

378:                                              ; preds = %370, %365
  br label %379

379:                                              ; preds = %378, %357
  br label %380

380:                                              ; preds = %379, %356
  %381 = load i32, i32* %22, align 4
  store i32 %381, i32* %9, align 4
  br label %382

382:                                              ; preds = %380, %82, %60, %46, %38
  %383 = load i32, i32* %9, align 4
  ret i32 %383
}

declare dso_local i32 @AES_ARG_INPLACE(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @aes_check_mech_param(%struct.TYPE_27__*, i32*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @aes_common_init_ctx(%struct.TYPE_29__*, i32, %struct.TYPE_27__*, i32*, i32, i32) #1

declare dso_local i32 @crypto_kmflag(i32) #1

declare dso_local i32 @gcm_set_kmflag(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @crypto_update_iov(%struct.TYPE_29__*, %struct.TYPE_28__*, %struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @crypto_update_uio(%struct.TYPE_29__*, %struct.TYPE_28__*, %struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ccm_decrypt_final(i32*, %struct.TYPE_28__*, i32, i32, i32, i32) #1

declare dso_local i32 @gcm_decrypt_final(%struct.TYPE_26__*, %struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i32 @ctr_mode_final(i32*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @vmem_free(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

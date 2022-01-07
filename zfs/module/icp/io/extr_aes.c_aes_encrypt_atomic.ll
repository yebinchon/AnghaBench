; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_encrypt_atomic.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_encrypt_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32, i8*, i32 }
%struct.TYPE_25__ = type { i64, i64, i64, i32, i32, %struct.TYPE_25__* }

@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@CRYPTO_DATA_LEN_RANGE = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@CRYPTO_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@aes_encrypt_contiguous_blocks = common dso_local global i32 0, align 4
@aes_copy_block64 = common dso_local global i32 0, align 4
@aes_encrypt_block = common dso_local global i32 0, align 4
@aes_xor_block = common dso_local global i32 0, align 4
@aes_copy_block = common dso_local global i32 0, align 4
@PROVIDER_OWNS_KEY_SCHEDULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_23__*, i32*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32)* @aes_encrypt_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_encrypt_atomic(i32 %0, i32 %1, %struct.TYPE_23__* %2, i32* %3, %struct.TYPE_24__* %4, %struct.TYPE_24__* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_25__, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %12, align 8
  store i32* %3, i32** %13, align 8
  store %struct.TYPE_24__* %4, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %5, %struct.TYPE_24__** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %25 = call i32 @AES_ARG_INPLACE(%struct.TYPE_24__* %23, %struct.TYPE_24__* %24)
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
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
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @AES_BLOCK_LEN, align 4
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @CRYPTO_DATA_LEN_RANGE, align 4
  store i32 %39, i32* %9, align 4
  br label %259

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %29
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %43 = call i32 @aes_check_mech_param(%struct.TYPE_23__* %42, i32* null, i32 0)
  store i32 %43, i32* %22, align 4
  %44 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %22, align 4
  store i32 %47, i32* %9, align 4
  br label %259

48:                                               ; preds = %41
  %49 = call i32 @bzero(%struct.TYPE_25__* %18, i32 40)
  %50 = load i32, i32* %16, align 4
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @crypto_kmflag(i32 %53)
  %55 = load i32, i32* @B_TRUE, align 4
  %56 = call i32 @aes_common_init_ctx(%struct.TYPE_25__* %18, i32 %50, %struct.TYPE_23__* %51, i32* %52, i32 %54, i32 %55)
  store i32 %56, i32* %22, align 4
  %57 = load i32, i32* %22, align 4
  %58 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %22, align 4
  store i32 %61, i32* %9, align 4
  br label %259

62:                                               ; preds = %48
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %90 [
    i32 133, label %66
    i32 130, label %74
    i32 131, label %82
  ]

66:                                               ; preds = %62
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %70, %72
  store i64 %73, i64* %21, align 8
  br label %95

74:                                               ; preds = %62
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %80, i32* %9, align 4
  br label %259

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %62, %81
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %86, %88
  store i64 %89, i64* %21, align 8
  br label %95

90:                                               ; preds = %62
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %21, align 8
  br label %95

95:                                               ; preds = %90, %82, %66
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %21, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load i64, i64* %21, align 8
  %104 = trunc i64 %103 to i32
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @CRYPTO_BUFFER_TOO_SMALL, align 4
  store i32 %107, i32* %22, align 4
  br label %240

108:                                              ; preds = %95
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %19, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %20, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  switch i32 %118, label %131 [
    i32 129, label %119
    i32 128, label %125
  ]

119:                                              ; preds = %108
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %122 = load i32, i32* @aes_encrypt_contiguous_blocks, align 4
  %123 = load i32, i32* @aes_copy_block64, align 4
  %124 = call i32 @crypto_update_iov(%struct.TYPE_25__* %18, %struct.TYPE_24__* %120, %struct.TYPE_24__* %121, i32 %122, i32 %123)
  store i32 %124, i32* %22, align 4
  br label %133

125:                                              ; preds = %108
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %128 = load i32, i32* @aes_encrypt_contiguous_blocks, align 4
  %129 = load i32, i32* @aes_copy_block64, align 4
  %130 = call i32 @crypto_update_uio(%struct.TYPE_25__* %18, %struct.TYPE_24__* %126, %struct.TYPE_24__* %127, i32 %128, i32 %129)
  store i32 %130, i32* %22, align 4
  br label %133

131:                                              ; preds = %108
  %132 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %132, i32* %22, align 4
  br label %133

133:                                              ; preds = %131, %125, %119
  %134 = load i32, i32* %22, align 4
  %135 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %231

137:                                              ; preds = %133
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 133
  br i1 %141, label %142, label %159

142:                                              ; preds = %137
  %143 = bitcast %struct.TYPE_25__* %18 to i32*
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %145 = load i32, i32* @AES_BLOCK_LEN, align 4
  %146 = load i32, i32* @aes_encrypt_block, align 4
  %147 = load i32, i32* @aes_xor_block, align 4
  %148 = call i32 @ccm_encrypt_final(i32* %143, %struct.TYPE_24__* %144, i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %22, align 4
  %149 = load i32, i32* %22, align 4
  %150 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %142
  br label %240

153:                                              ; preds = %142
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @ASSERT(i32 %157)
  br label %215

159:                                              ; preds = %137
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 131
  br i1 %163, label %169, label %164

164:                                              ; preds = %159
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 130
  br i1 %168, label %169, label %187

169:                                              ; preds = %164, %159
  %170 = bitcast %struct.TYPE_25__* %18 to i32*
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %172 = load i32, i32* @AES_BLOCK_LEN, align 4
  %173 = load i32, i32* @aes_encrypt_block, align 4
  %174 = load i32, i32* @aes_copy_block, align 4
  %175 = load i32, i32* @aes_xor_block, align 4
  %176 = call i32 @gcm_encrypt_final(i32* %170, %struct.TYPE_24__* %171, i32 %172, i32 %173, i32 %174, i32 %175)
  store i32 %176, i32* %22, align 4
  %177 = load i32, i32* %22, align 4
  %178 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %169
  br label %240

181:                                              ; preds = %169
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i32 @ASSERT(i32 %185)
  br label %214

187:                                              ; preds = %164
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 132
  br i1 %191, label %192, label %207

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = icmp sgt i64 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %192
  %197 = bitcast %struct.TYPE_25__* %18 to i32*
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %199 = load i32, i32* @aes_encrypt_block, align 4
  %200 = call i32 @ctr_mode_final(i32* %197, %struct.TYPE_24__* %198, i32 %199)
  store i32 %200, i32* %22, align 4
  %201 = load i32, i32* %22, align 4
  %202 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %196
  br label %240

205:                                              ; preds = %196
  br label %206

206:                                              ; preds = %205, %192
  br label %213

207:                                              ; preds = %187
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %209, 0
  %211 = zext i1 %210 to i32
  %212 = call i32 @ASSERT(i32 %211)
  br label %213

213:                                              ; preds = %207, %206
  br label %214

214:                                              ; preds = %213, %181
  br label %215

215:                                              ; preds = %214, %153
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %218 = icmp ne %struct.TYPE_24__* %216, %217
  br i1 %218, label %219, label %230

219:                                              ; preds = %215
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = load i8*, i8** %19, align 8
  %224 = ptrtoint i8* %222 to i64
  %225 = ptrtoint i8* %223 to i64
  %226 = sub i64 %224, %225
  %227 = trunc i64 %226 to i32
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  br label %230

230:                                              ; preds = %219, %215
  br label %236

231:                                              ; preds = %133
  %232 = load i64, i64* %20, align 8
  %233 = trunc i64 %232 to i32
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 8
  br label %236

236:                                              ; preds = %231, %230
  %237 = load i8*, i8** %19, align 8
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 1
  store i8* %237, i8** %239, align 8
  br label %240

240:                                              ; preds = %236, %204, %180, %152, %102
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @PROVIDER_OWNS_KEY_SCHEDULE, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %257

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 5
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @bzero(%struct.TYPE_25__* %248, i32 %250)
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 5
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @kmem_free(%struct.TYPE_25__* %253, i32 %255)
  br label %257

257:                                              ; preds = %246, %240
  %258 = load i32, i32* %22, align 4
  store i32 %258, i32* %9, align 4
  br label %259

259:                                              ; preds = %257, %79, %60, %46, %38
  %260 = load i32, i32* %9, align 4
  ret i32 %260
}

declare dso_local i32 @AES_ARG_INPLACE(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @aes_check_mech_param(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @aes_common_init_ctx(%struct.TYPE_25__*, i32, %struct.TYPE_23__*, i32*, i32, i32) #1

declare dso_local i32 @crypto_kmflag(i32) #1

declare dso_local i32 @crypto_update_iov(%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @crypto_update_uio(%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @ccm_encrypt_final(i32*, %struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @gcm_encrypt_final(i32*, %struct.TYPE_24__*, i32, i32, i32, i32) #1

declare dso_local i32 @ctr_mode_final(i32*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

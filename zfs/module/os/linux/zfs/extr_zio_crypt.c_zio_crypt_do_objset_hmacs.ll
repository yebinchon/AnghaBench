; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_do_objset_hmacs.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_do_objset_hmacs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i32*, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_11__, i64, i32 }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_16__, %struct.TYPE_16__, %struct.TYPE_16__, i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i64 }

@ZFS_HOST_BYTEORDER = common dso_local global i32 0, align 4
@SHA512_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SUN_CKM_SHA512_HMAC = common dso_local global i32 0, align 4
@CRYPTO_DATA_RAW = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@OBJSET_CRYPT_PORTABLE_FLAGS_MASK = common dso_local global i32 0, align 4
@ZIO_OBJSET_MAC_LEN = common dso_local global i32 0, align 4
@OBJSET_PHYS_SIZE_V3 = common dso_local global i64 0, align 8
@DMU_OT_NONE = common dso_local global i64 0, align 8
@OBJSET_PHYS_SIZE_V2 = common dso_local global i64 0, align 8
@OBJSET_PHYS_SIZE_V1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zio_crypt_do_objset_hmacs(%struct.TYPE_12__* %0, i8* %1, i64 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %18, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @ZFS_HOST_BYTEORDER, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %21, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %22, align 8
  %35 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %23, align 8
  %38 = load i32, i32* @SUN_CKM_SHA512_HMAC, align 4
  %39 = call i32 @crypto_mech2id(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @CRYPTO_DATA_RAW, align 4
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = call i32 @crypto_mac_init(%struct.TYPE_14__* %15, i32* %47, i32* null, i32* %16, i32* null)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %6
  %53 = load i32, i32* @EIO, align 4
  %54 = call i32 @SET_ERROR(i32 %53)
  store i32 %54, i32* %14, align 4
  br label %336

55:                                               ; preds = %6
  %56 = load i32, i32* %20, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  br label %67

62:                                               ; preds = %55
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @BSWAP_64(i32 %65)
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i32 [ %61, %58 ], [ %66, %62 ]
  store i32 %68, i32* %19, align 4
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  store i32 4, i32* %69, align 8
  %70 = bitcast i32* %19 to i8*
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @crypto_mac_update(i32 %77, %struct.TYPE_15__* %17, i32* null)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %67
  %83 = load i32, i32* @EIO, align 4
  %84 = call i32 @SET_ERROR(i32 %83)
  store i32 %84, i32* %14, align 4
  br label %336

85:                                               ; preds = %67
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* %19, align 4
  %93 = call i32 @BSWAP_64(i32 %92)
  store i32 %93, i32* %19, align 4
  br label %94

94:                                               ; preds = %91, %85
  %95 = load i32, i32* @OBJSET_CRYPT_PORTABLE_FLAGS_MASK, align 4
  %96 = load i32, i32* %19, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* @ZFS_HOST_BYTEORDER, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %19, align 4
  %102 = call i32 @BSWAP_64(i32 %101)
  store i32 %102, i32* %19, align 4
  br label %103

103:                                              ; preds = %100, %94
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  store i32 4, i32* %104, align 8
  %105 = bitcast i32* %19 to i8*
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @crypto_mac_update(i32 %112, %struct.TYPE_15__* %17, i32* null)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %103
  %118 = load i32, i32* @EIO, align 4
  %119 = call i32 @SET_ERROR(i32 %118)
  store i32 %119, i32* %14, align 4
  br label %336

120:                                              ; preds = %103
  %121 = load i32, i32* %16, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 4
  %128 = call i32 @zio_crypt_do_dnode_hmac_updates(i32 %121, i32 %124, i32 %125, %struct.TYPE_16__* %127)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %336

132:                                              ; preds = %120
  %133 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  store i32 %133, i32* %134, align 8
  %135 = bitcast i32* %34 to i8*
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* %16, align 4
  %143 = call i32 @crypto_mac_final(i32 %142, %struct.TYPE_15__* %17, i32* null)
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %132
  %148 = load i32, i32* @EIO, align 4
  %149 = call i32 @SET_ERROR(i32 %148)
  store i32 %149, i32* %14, align 4
  br label %336

150:                                              ; preds = %132
  %151 = load i32*, i32** %12, align 8
  %152 = load i32, i32* @ZIO_OBJSET_MAC_LEN, align 4
  %153 = call i32 @bcopy(i32* %34, i32* %151, i32 %152)
  %154 = load i64, i64* %10, align 8
  %155 = load i64, i64* @OBJSET_PHYS_SIZE_V3, align 8
  %156 = icmp sge i64 %154, %155
  br i1 %156, label %157, label %178

157:                                              ; preds = %150
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @DMU_OT_NONE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %178

164:                                              ; preds = %157
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @DMU_OT_NONE, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %164
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @DMU_OT_NONE, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %200, label %178

178:                                              ; preds = %171, %164, %157, %150
  %179 = load i64, i64* %10, align 8
  %180 = load i64, i64* @OBJSET_PHYS_SIZE_V2, align 8
  %181 = icmp sge i64 %179, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %178
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @DMU_OT_NONE, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %182
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @DMU_OT_NONE, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %200, label %196

196:                                              ; preds = %189, %182, %178
  %197 = load i64, i64* %10, align 8
  %198 = load i64, i64* @OBJSET_PHYS_SIZE_V1, align 8
  %199 = icmp sle i64 %197, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %196, %189, %171
  %201 = load i32*, i32** %13, align 8
  %202 = load i32, i32* @ZIO_OBJSET_MAC_LEN, align 4
  %203 = call i32 @bzero(i32* %201, i32 %202)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %344

204:                                              ; preds = %196
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 1
  %207 = call i32 @crypto_mac_init(%struct.TYPE_14__* %15, i32* %206, i32* null, i32* %16, i32* null)
  store i32 %207, i32* %14, align 4
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %204
  %212 = load i32, i32* @EIO, align 4
  %213 = call i32 @SET_ERROR(i32 %212)
  store i32 %213, i32* %14, align 4
  br label %336

214:                                              ; preds = %204
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  store i32 %217, i32* %19, align 4
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %214
  %221 = load i32, i32* %19, align 4
  %222 = call i32 @BSWAP_64(i32 %221)
  store i32 %222, i32* %19, align 4
  br label %223

223:                                              ; preds = %220, %214
  %224 = load i32, i32* @OBJSET_CRYPT_PORTABLE_FLAGS_MASK, align 4
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %19, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %19, align 4
  %228 = load i32, i32* @ZFS_HOST_BYTEORDER, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %223
  %231 = load i32, i32* %19, align 4
  %232 = call i32 @BSWAP_64(i32 %231)
  store i32 %232, i32* %19, align 4
  br label %233

233:                                              ; preds = %230, %223
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  store i32 4, i32* %234, align 8
  %235 = bitcast i32* %19 to i8*
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  store i8* %235, i8** %237, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 8
  %242 = load i32, i32* %16, align 4
  %243 = call i32 @crypto_mac_update(i32 %242, %struct.TYPE_15__* %17, i32* null)
  store i32 %243, i32* %14, align 4
  %244 = load i32, i32* %14, align 4
  %245 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %233
  %248 = load i32, i32* @EIO, align 4
  %249 = call i32 @SET_ERROR(i32 %248)
  store i32 %249, i32* %14, align 4
  br label %336

250:                                              ; preds = %233
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @DMU_OT_NONE, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %257, label %270

257:                                              ; preds = %250
  %258 = load i32, i32* %16, align 4
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %11, align 4
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 2
  %265 = call i32 @zio_crypt_do_dnode_hmac_updates(i32 %258, i32 %261, i32 %262, %struct.TYPE_16__* %264)
  store i32 %265, i32* %14, align 4
  %266 = load i32, i32* %14, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %257
  br label %336

269:                                              ; preds = %257
  br label %270

270:                                              ; preds = %269, %250
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @DMU_OT_NONE, align 8
  %276 = icmp ne i64 %274, %275
  br i1 %276, label %277, label %290

277:                                              ; preds = %270
  %278 = load i32, i32* %16, align 4
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %11, align 4
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 1
  %285 = call i32 @zio_crypt_do_dnode_hmac_updates(i32 %278, i32 %281, i32 %282, %struct.TYPE_16__* %284)
  store i32 %285, i32* %14, align 4
  %286 = load i32, i32* %14, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %277
  br label %336

289:                                              ; preds = %277
  br label %290

290:                                              ; preds = %289, %270
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @DMU_OT_NONE, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %314

297:                                              ; preds = %290
  %298 = load i64, i64* %10, align 8
  %299 = load i64, i64* @OBJSET_PHYS_SIZE_V3, align 8
  %300 = icmp sge i64 %298, %299
  br i1 %300, label %301, label %314

301:                                              ; preds = %297
  %302 = load i32, i32* %16, align 4
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %11, align 4
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 0
  %309 = call i32 @zio_crypt_do_dnode_hmac_updates(i32 %302, i32 %305, i32 %306, %struct.TYPE_16__* %308)
  store i32 %309, i32* %14, align 4
  %310 = load i32, i32* %14, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %301
  br label %336

313:                                              ; preds = %301
  br label %314

314:                                              ; preds = %313, %297, %290
  %315 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  store i32 %315, i32* %316, align 8
  %317 = bitcast i32* %37 to i8*
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 0
  store i8* %317, i8** %319, align 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 1
  store i32 %321, i32* %323, align 8
  %324 = load i32, i32* %16, align 4
  %325 = call i32 @crypto_mac_final(i32 %324, %struct.TYPE_15__* %17, i32* null)
  store i32 %325, i32* %14, align 4
  %326 = load i32, i32* %14, align 4
  %327 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %328 = icmp ne i32 %326, %327
  br i1 %328, label %329, label %332

329:                                              ; preds = %314
  %330 = load i32, i32* @EIO, align 4
  %331 = call i32 @SET_ERROR(i32 %330)
  store i32 %331, i32* %14, align 4
  br label %336

332:                                              ; preds = %314
  %333 = load i32*, i32** %13, align 8
  %334 = load i32, i32* @ZIO_OBJSET_MAC_LEN, align 4
  %335 = call i32 @bcopy(i32* %37, i32* %333, i32 %334)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %344

336:                                              ; preds = %329, %312, %288, %268, %247, %211, %147, %131, %117, %82, %52
  %337 = load i32*, i32** %12, align 8
  %338 = load i32, i32* @ZIO_OBJSET_MAC_LEN, align 4
  %339 = call i32 @bzero(i32* %337, i32 %338)
  %340 = load i32*, i32** %13, align 8
  %341 = load i32, i32* @ZIO_OBJSET_MAC_LEN, align 4
  %342 = call i32 @bzero(i32* %340, i32 %341)
  %343 = load i32, i32* %14, align 4
  store i32 %343, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %344

344:                                              ; preds = %336, %332, %200
  %345 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %345)
  %346 = load i32, i32* %7, align 4
  ret i32 %346
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_mech2id(i32) #2

declare dso_local i32 @crypto_mac_init(%struct.TYPE_14__*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local i32 @BSWAP_64(i32) #2

declare dso_local i32 @crypto_mac_update(i32, %struct.TYPE_15__*, i32*) #2

declare dso_local i32 @zio_crypt_do_dnode_hmac_updates(i32, i32, i32, %struct.TYPE_16__*) #2

declare dso_local i32 @crypto_mac_final(i32, %struct.TYPE_15__*, i32*) #2

declare dso_local i32 @bcopy(i32*, i32*, i32) #2

declare dso_local i32 @bzero(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

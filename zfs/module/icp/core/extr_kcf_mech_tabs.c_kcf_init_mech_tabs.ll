; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_mech_tabs.c_kcf_init_mech_tabs.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_mech_tabs.c_kcf_init_mech_tabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64*, i32, i32 }

@kcf_mech_tabs_lock = common dso_local global i32 0, align 4
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@kcf_digest_mechs_tab = common dso_local global %struct.TYPE_11__* null, align 8
@SUN_CKM_MD5 = common dso_local global i32 0, align 4
@CRYPTO_MAX_MECH_NAME = common dso_local global i32 0, align 4
@kcf_md5_threshold = common dso_local global i8* null, align 8
@SUN_CKM_SHA1 = common dso_local global i32 0, align 4
@kcf_sha1_threshold = common dso_local global i8* null, align 8
@kcf_cipher_mechs_tab = common dso_local global %struct.TYPE_12__* null, align 8
@SUN_CKM_DES_CBC = common dso_local global i32 0, align 4
@kcf_des_threshold = common dso_local global i8* null, align 8
@SUN_CKM_DES3_CBC = common dso_local global i32 0, align 4
@kcf_des3_threshold = common dso_local global i8* null, align 8
@SUN_CKM_DES_ECB = common dso_local global i32 0, align 4
@SUN_CKM_DES3_ECB = common dso_local global i32 0, align 4
@SUN_CKM_BLOWFISH_CBC = common dso_local global i32 0, align 4
@kcf_bf_threshold = common dso_local global i8* null, align 8
@SUN_CKM_BLOWFISH_ECB = common dso_local global i32 0, align 4
@SUN_CKM_AES_CBC = common dso_local global i32 0, align 4
@kcf_aes_threshold = common dso_local global i8* null, align 8
@SUN_CKM_AES_ECB = common dso_local global i32 0, align 4
@SUN_CKM_RC4 = common dso_local global i32 0, align 4
@kcf_rc4_threshold = common dso_local global i8* null, align 8
@kcf_mac_mechs_tab = common dso_local global %struct.TYPE_10__* null, align 8
@SUN_CKM_MD5_HMAC = common dso_local global i32 0, align 4
@SUN_CKM_MD5_HMAC_GENERAL = common dso_local global i32 0, align 4
@SUN_CKM_SHA1_HMAC = common dso_local global i32 0, align 4
@SUN_CKM_SHA1_HMAC_GENERAL = common dso_local global i32 0, align 4
@kcf_misc_mechs_tab = common dso_local global %struct.TYPE_8__* null, align 8
@SUN_RANDOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"kcf mech2id hash\00", align 1
@kcf_mech_hash_size = common dso_local global i32 0, align 4
@mod_hash_null_valdtor = common dso_local global i32 0, align 4
@kcf_mech_hash = common dso_local global i32 0, align 4
@KCF_FIRST_OPSCLASS = common dso_local global i64 0, align 8
@KCF_LAST_OPSCLASS = common dso_local global i64 0, align 8
@kcf_mech_tabs_tab = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kcf_init_mech_tabs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = load i32, i32* @MUTEX_DEFAULT, align 4
  %6 = call i32 @mutex_init(i32* @kcf_mech_tabs_lock, i32* null, i32 %5, i32* null)
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kcf_digest_mechs_tab, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i64 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SUN_CKM_MD5, align 4
  %12 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %13 = call i32 @strncpy(i32 %10, i32 %11, i32 %12)
  %14 = load i8*, i8** @kcf_md5_threshold, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kcf_digest_mechs_tab, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i8* %14, i8** %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kcf_digest_mechs_tab, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i64 1
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SUN_CKM_SHA1, align 4
  %23 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %24 = call i32 @strncpy(i32 %21, i32 %22, i32 %23)
  %25 = load i8*, i8** @kcf_sha1_threshold, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kcf_digest_mechs_tab, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SUN_CKM_DES_CBC, align 4
  %34 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %35 = call i32 @strncpy(i32 %32, i32 %33, i32 %34)
  %36 = load i8*, i8** @kcf_des_threshold, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SUN_CKM_DES3_CBC, align 4
  %45 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %46 = call i32 @strncpy(i32 %43, i32 %44, i32 %45)
  %47 = load i8*, i8** @kcf_des3_threshold, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 2
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SUN_CKM_DES_ECB, align 4
  %56 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %57 = call i32 @strncpy(i32 %54, i32 %55, i32 %56)
  %58 = load i8*, i8** @kcf_des_threshold, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i64 2
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i64 3
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SUN_CKM_DES3_ECB, align 4
  %67 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %68 = call i32 @strncpy(i32 %65, i32 %66, i32 %67)
  %69 = load i8*, i8** @kcf_des3_threshold, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i64 3
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i64 4
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SUN_CKM_BLOWFISH_CBC, align 4
  %78 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %79 = call i32 @strncpy(i32 %76, i32 %77, i32 %78)
  %80 = load i8*, i8** @kcf_bf_threshold, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i64 4
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  store i8* %80, i8** %83, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i64 5
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SUN_CKM_BLOWFISH_ECB, align 4
  %89 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %90 = call i32 @strncpy(i32 %87, i32 %88, i32 %89)
  %91 = load i8*, i8** @kcf_bf_threshold, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i64 5
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store i8* %91, i8** %94, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i64 6
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SUN_CKM_AES_CBC, align 4
  %100 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %101 = call i32 @strncpy(i32 %98, i32 %99, i32 %100)
  %102 = load i8*, i8** @kcf_aes_threshold, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i64 6
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  store i8* %102, i8** %105, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i64 7
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @SUN_CKM_AES_ECB, align 4
  %111 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %112 = call i32 @strncpy(i32 %109, i32 %110, i32 %111)
  %113 = load i8*, i8** @kcf_aes_threshold, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i64 7
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  store i8* %113, i8** %116, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i64 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SUN_CKM_RC4, align 4
  %122 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %123 = call i32 @strncpy(i32 %120, i32 %121, i32 %122)
  %124 = load i8*, i8** @kcf_rc4_threshold, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kcf_cipher_mechs_tab, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i64 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  store i8* %124, i8** %127, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kcf_mac_mechs_tab, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SUN_CKM_MD5_HMAC, align 4
  %133 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %134 = call i32 @strncpy(i32 %131, i32 %132, i32 %133)
  %135 = load i8*, i8** @kcf_md5_threshold, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kcf_mac_mechs_tab, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  store i8* %135, i8** %138, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kcf_mac_mechs_tab, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i64 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @SUN_CKM_MD5_HMAC_GENERAL, align 4
  %144 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %145 = call i32 @strncpy(i32 %142, i32 %143, i32 %144)
  %146 = load i8*, i8** @kcf_md5_threshold, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kcf_mac_mechs_tab, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i64 1
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store i8* %146, i8** %149, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kcf_mac_mechs_tab, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i64 2
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @SUN_CKM_SHA1_HMAC, align 4
  %155 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %156 = call i32 @strncpy(i32 %153, i32 %154, i32 %155)
  %157 = load i8*, i8** @kcf_sha1_threshold, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kcf_mac_mechs_tab, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i64 2
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  store i8* %157, i8** %160, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kcf_mac_mechs_tab, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i64 3
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @SUN_CKM_SHA1_HMAC_GENERAL, align 4
  %166 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %167 = call i32 @strncpy(i32 %164, i32 %165, i32 %166)
  %168 = load i8*, i8** @kcf_sha1_threshold, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kcf_mac_mechs_tab, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i64 3
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  store i8* %168, i8** %171, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kcf_misc_mechs_tab, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @SUN_RANDOM, align 4
  %177 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %178 = call i32 @strncpy(i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* @kcf_mech_hash_size, align 4
  %180 = load i32, i32* @mod_hash_null_valdtor, align 4
  %181 = call i32 @mod_hash_create_strhash_nodtr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %179, i32 %180)
  store i32 %181, i32* @kcf_mech_hash, align 4
  %182 = load i64, i64* @KCF_FIRST_OPSCLASS, align 8
  store i64 %182, i64* %3, align 8
  br label %183

183:                                              ; preds = %248, %0
  %184 = load i64, i64* %3, align 8
  %185 = load i64, i64* @KCF_LAST_OPSCLASS, align 8
  %186 = icmp ule i64 %184, %185
  br i1 %186, label %187, label %251

187:                                              ; preds = %183
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kcf_mech_tabs_tab, align 8
  %189 = load i64, i64* %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  store i32 %192, i32* %2, align 4
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kcf_mech_tabs_tab, align 8
  %194 = load i64, i64* %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  store %struct.TYPE_7__* %197, %struct.TYPE_7__** %4, align 8
  store i32 0, i32* %1, align 4
  br label %198

198:                                              ; preds = %244, %187
  %199 = load i32, i32* %1, align 4
  %200 = load i32, i32* %2, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %247

202:                                              ; preds = %198
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %204 = load i32, i32* %1, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 2
  %208 = load i32, i32* @MUTEX_DEFAULT, align 4
  %209 = call i32 @mutex_init(i32* %207, i32* null, i32 %208, i32* null)
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %211 = load i32, i32* %1, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = load i64*, i64** %214, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %243

219:                                              ; preds = %202
  %220 = load i64, i64* %3, align 8
  %221 = load i32, i32* %1, align 4
  %222 = call i32 @KCF_MECHID(i64 %220, i32 %221)
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %224 = load i32, i32* %1, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 1
  store i32 %222, i32* %227, align 8
  %228 = load i32, i32* @kcf_mech_hash, align 4
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %230 = load i32, i32* %1, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = load i64*, i64** %233, align 8
  %235 = ptrtoint i64* %234 to i32
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %237 = load i32, i32* %1, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  %241 = ptrtoint i32* %240 to i32
  %242 = call i32 @mod_hash_insert(i32 %228, i32 %235, i32 %241)
  br label %243

243:                                              ; preds = %219, %202
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %1, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %1, align 4
  br label %198

247:                                              ; preds = %198
  br label %248

248:                                              ; preds = %247
  %249 = load i64, i64* %3, align 8
  %250 = add i64 %249, 1
  store i64 %250, i64* %3, align 8
  br label %183

251:                                              ; preds = %183
  ret void
}

declare dso_local i32 @mutex_init(i32*, i32*, i32, i32*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @mod_hash_create_strhash_nodtr(i8*, i32, i32) #1

declare dso_local i32 @KCF_MECHID(i64, i32) #1

declare dso_local i32 @mod_hash_insert(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

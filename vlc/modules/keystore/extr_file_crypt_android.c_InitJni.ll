; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_file_crypt_android.c_InitJni.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_file_crypt_android.c_InitJni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"java/lang/Object\00", align 1
@GetMethodID = common dso_local global i32 0, align 4
@Object = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"toString\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"()Ljava/lang/String;\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"java/security/KeyStore\00", align 1
@KeyStore = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@GetStaticMethodID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"getInstance\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"(Ljava/lang/String;)Ljava/security/KeyStore;\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"(Ljava/security/KeyStore$LoadStoreParameter;)V\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"getEntry\00", align 1
@.str.9 = private unnamed_addr constant [95 x i8] c"(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"java/security/KeyStore$SecretKeyEntry\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"getSecretKey\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"()Ljavax/crypto/SecretKey;\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"javax/crypto/spec/IvParameterSpec\00", align 1
@IvParameterSpec = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"<init>\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"([B)V\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"javax/crypto/Cipher\00", align 1
@Cipher = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.17 = private unnamed_addr constant [42 x i8] c"(Ljava/lang/String;)Ljavax/crypto/Cipher;\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"doFinal\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"([B)[B\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"getIV\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"()[B\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"ENCRYPT_MODE\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"DECRYPT_MODE\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"AES/CBC/PKCS7Padding\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@fields = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @InitJni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitJni(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %11 = call i32 @GET_CLASS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @GetMethodID, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Object, i32 0, i32 0), align 4
  %14 = call i32 @GET_ID(i32 %12, i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @GET_CLASS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %16 = bitcast %struct.TYPE_11__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 4 bitcast (%struct.TYPE_11__* @KeyStore to i8*), i64 40, i1 false)
  %17 = call i32 @GET_GLOBAL_CLASS(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %7)
  %18 = load i32, i32* @GetStaticMethodID, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @KeyStore, i32 0, i32 5), align 4
  %20 = call i32 @GET_ID(i32 %18, i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %21 = load i32, i32* @GetMethodID, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @KeyStore, i32 0, i32 9), align 4
  %23 = call i32 @GET_ID(i32 %21, i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %24 = load i32, i32* @GetMethodID, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @KeyStore, i32 0, i32 8), align 4
  %26 = call i32 @GET_ID(i32 %24, i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.9, i64 0, i64 0))
  %27 = call i32 @GET_CLASS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %28 = load i32, i32* @GetMethodID, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @KeyStore, i32 0, i32 7, i32 0), align 4
  %30 = call i32 @GET_ID(i32 %28, i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %31 = call i32 @GET_CLASS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %32 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 4 bitcast (%struct.TYPE_11__* @IvParameterSpec to i8*), i64 40, i1 false)
  %33 = call i32 @GET_GLOBAL_CLASS(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %8)
  %34 = load i32, i32* @GetMethodID, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @IvParameterSpec, i32 0, i32 6), align 4
  %36 = call i32 @GET_ID(i32 %34, i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %37 = call i32 @GET_CLASS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %38 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 4 bitcast (%struct.TYPE_11__* @Cipher to i8*), i64 40, i1 false)
  %39 = call i32 @GET_GLOBAL_CLASS(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %9)
  %40 = load i32, i32* @GetStaticMethodID, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Cipher, i32 0, i32 5), align 4
  %42 = call i32 @GET_ID(i32 %40, i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0))
  %43 = load i32, i32* @GetMethodID, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Cipher, i32 0, i32 4), align 4
  %45 = call i32 @GET_ID(i32 %43, i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.19, i64 0, i64 0))
  %46 = load i32, i32* @GetMethodID, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Cipher, i32 0, i32 3), align 4
  %48 = call i32 @GET_ID(i32 %46, i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %49 = load i32, i32* @GetMethodID, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Cipher, i32 0, i32 2), align 4
  %51 = call i32 @GET_ID(i32 %49, i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Cipher, i32 0, i32 1), align 4
  %53 = call i32 @GET_CONST_INT(i32 %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Cipher, i32 0, i32 0), align 4
  %55 = call i32 @GET_CONST_INT(i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @DEL_LREF(i32* %56)
  %58 = call i32* @NEW_STR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0))
  store i32* %58, i32** %10, align 8
  %59 = call i64 (...) @CHECK_EXCEPTION()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %2
  %62 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %62, i32* %3, align 4
  br label %69

63:                                               ; preds = %2
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @NEW_GREF(i32* %64)
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fields, i32 0, i32 0), align 4
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @DEL_LREF(i32* %66)
  %68 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %61
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @GET_CLASS(i8*) #1

declare dso_local i32 @GET_ID(i32, i32, i8*, i8*) #1

declare dso_local i32 @GET_GLOBAL_CLASS(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GET_CONST_INT(i32, i8*) #1

declare dso_local i32 @DEL_LREF(i32*) #1

declare dso_local i32* @NEW_STR(i8*) #1

declare dso_local i64 @CHECK_EXCEPTION(...) #1

declare dso_local i32 @NEW_GREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

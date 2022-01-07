; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_file_crypt_android.c_InitJniGenKey.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_file_crypt_android.c_InitJniGenKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"android/security/keystore/KeyProperties\00", align 1
@KeyProperties = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"PURPOSE_ENCRYPT\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"PURPOSE_DECRYPT\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"BLOCK_MODE_CBC\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Ljava/lang/String;\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"ENCRYPTION_PADDING_PKCS7\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"KEY_ALGORITHM_AES\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"android/security/keystore/KeyGenParameterSpec$Builder\00", align 1
@KeyGenParameterSpec = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@GetMethodID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"<init>\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"(Ljava/lang/String;I)V\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"setKeySize\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"setBlockModes\00", align 1
@.str.13 = private unnamed_addr constant [77 x i8] c"([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"setEncryptionPaddings\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"build\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"()Landroid/security/keystore/KeyGenParameterSpec;\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"javax/crypto/KeyGenerator\00", align 1
@KeyGenerator = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@GetStaticMethodID = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"getInstance\00", align 1
@.str.19 = private unnamed_addr constant [66 x i8] c"(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"(Ljava/security/spec/AlgorithmParameterSpec;)V\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"generateKey\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"()Ljavax/crypto/SecretKey;\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @InitJniGenKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitJniGenKey(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %8 = call i32 @GET_CLASS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @KeyProperties, i32 0, i32 4), align 4
  %10 = call i32 @GET_CONST_INT(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @KeyProperties, i32 0, i32 3), align 4
  %12 = call i32 @GET_CONST_INT(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @KeyProperties, i32 0, i32 2), align 4
  %14 = call i32 @GET_CONST_OBJ(i32 %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @KeyProperties, i32 0, i32 1), align 4
  %16 = call i32 @GET_CONST_OBJ(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @KeyProperties, i32 0, i32 0), align 4
  %18 = call i32 @GET_CONST_OBJ(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %19 = call i32 @GET_CLASS(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %20 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 4 bitcast (%struct.TYPE_7__* @KeyGenParameterSpec to i8*), i64 32, i1 false)
  %21 = call i32 @GET_GLOBAL_CLASS(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %6)
  %22 = load i32, i32* @GetMethodID, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @KeyGenParameterSpec, i32 0, i32 0, i32 7), align 4
  %24 = call i32 @GET_ID(i32 %22, i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %25 = load i32, i32* @GetMethodID, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @KeyGenParameterSpec, i32 0, i32 0, i32 6), align 4
  %27 = call i32 @GET_ID(i32 %25, i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0))
  %28 = load i32, i32* @GetMethodID, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @KeyGenParameterSpec, i32 0, i32 0, i32 5), align 4
  %30 = call i32 @GET_ID(i32 %28, i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.13, i64 0, i64 0))
  %31 = load i32, i32* @GetMethodID, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @KeyGenParameterSpec, i32 0, i32 0, i32 4), align 4
  %33 = call i32 @GET_ID(i32 %31, i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.13, i64 0, i64 0))
  %34 = load i32, i32* @GetMethodID, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @KeyGenParameterSpec, i32 0, i32 0, i32 3), align 4
  %36 = call i32 @GET_ID(i32 %34, i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  %37 = call i32 @GET_CLASS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  %38 = bitcast %struct.TYPE_6__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 4 bitcast (%struct.TYPE_6__* @KeyGenerator to i8*), i64 32, i1 false)
  %39 = call i32 @GET_GLOBAL_CLASS(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %7)
  %40 = load i32, i32* @GetStaticMethodID, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @KeyGenerator, i32 0, i32 2), align 4
  %42 = call i32 @GET_ID(i32 %40, i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.19, i64 0, i64 0))
  %43 = load i32, i32* @GetMethodID, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @KeyGenerator, i32 0, i32 1), align 4
  %45 = call i32 @GET_ID(i32 %43, i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0))
  %46 = load i32, i32* @GetMethodID, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @KeyGenerator, i32 0, i32 0), align 4
  %48 = call i32 @GET_ID(i32 %46, i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0))
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @DEL_LREF(i32* %49)
  %51 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %51
}

declare dso_local i32 @GET_CLASS(i8*) #1

declare dso_local i32 @GET_CONST_INT(i32, i8*) #1

declare dso_local i32 @GET_CONST_OBJ(i32, i8*, i8*) #1

declare dso_local i32 @GET_GLOBAL_CLASS(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GET_ID(i32, i32, i8*, i8*) #1

declare dso_local i32 @DEL_LREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

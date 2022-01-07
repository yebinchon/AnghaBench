; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_secure.c_sec_parse_x509_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_secure.c_sec_parse_x509_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }

@NID_md5WithRSAEncryption = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Re-setting algorithm type to RSA in server certificate\0A\00", align 1
@NID_rsaEncryption = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to extract public key from certificate\0A\00", align 1
@False = common dso_local global i32 0, align 4
@SEC_MAX_MODULUS_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Bad server public key size (%u bits)\0A\00", align 1
@True = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)* @sec_parse_x509_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_parse_x509_key(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @OBJ_obj2nid(i32 %15)
  %17 = load i64, i64* @NID_md5WithRSAEncryption, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %2
  %20 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ASN1_OBJECT_free(i32 %29)
  %31 = load i32, i32* @NID_rsaEncryption, align 4
  %32 = call i32 @OBJ_nid2obj(i32 %31)
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i32 %32, i32* %40, align 4
  br label %41

41:                                               ; preds = %19, %2
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %43 = call %struct.TYPE_21__* @X509_get_pubkey(%struct.TYPE_19__* %42)
  store %struct.TYPE_21__* %43, %struct.TYPE_21__** %6, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %45 = icmp eq %struct.TYPE_21__* null, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @False, align 4
  store i32 %48, i32* %3, align 4
  br label %91

49:                                               ; preds = %41
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = call i32 @RSAPublicKey_dup(i32* %54)
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %60 = call i32 @EVP_PKEY_free(%struct.TYPE_21__* %59)
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @RSA_size(i32 %64)
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 64
  br i1 %73, label %81, label %74

74:                                               ; preds = %49
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SEC_MAX_MODULUS_SIZE, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %74, %49
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, 8
  %87 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @False, align 4
  store i32 %88, i32* %3, align 4
  br label %91

89:                                               ; preds = %74
  %90 = load i32, i32* @True, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %81, %46
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @OBJ_obj2nid(i32) #1

declare dso_local i32 @DEBUG_RDP5(i8*) #1

declare dso_local i32 @ASN1_OBJECT_free(i32) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local %struct.TYPE_21__* @X509_get_pubkey(%struct.TYPE_19__*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @RSAPublicKey_dup(i32*) #1

declare dso_local i32 @EVP_PKEY_free(%struct.TYPE_21__*) #1

declare dso_local i32 @RSA_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

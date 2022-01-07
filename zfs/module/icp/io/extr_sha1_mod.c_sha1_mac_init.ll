; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_sha1_mod.c_sha1_mac_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_sha1_mod.c_sha1_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32, i32* }
%struct.TYPE_18__ = type { i64, i32*, i32 }
%struct.TYPE_20__ = type { i64, i32 }

@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@SHA1_HMAC_MECH_INFO_TYPE = common dso_local global i64 0, align 8
@SHA1_HMAC_GEN_MECH_INFO_TYPE = common dso_local global i64 0, align 8
@CRYPTO_MECHANISM_INVALID = common dso_local global i32 0, align 4
@CRYPTO_KEY_RAW = common dso_local global i64 0, align 8
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@CRYPTO_HOST_MEMORY = common dso_local global i32 0, align 4
@SHA1_HMAC_BLOCK_SIZE = common dso_local global i64 0, align 8
@SHA1_DIGEST_LENGTH = common dso_local global i32 0, align 4
@CRYPTO_MECHANISM_PARAM_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32*, i32)* @sha1_mac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_mac_init(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %17, i32* %12, align 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @CRYPTO_BITS2BYTES(i32 %20)
  store i64 %21, i64* %13, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SHA1_HMAC_MECH_INFO_TYPE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %5
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SHA1_HMAC_GEN_MECH_INFO_TYPE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @CRYPTO_MECHANISM_INVALID, align 4
  store i32 %34, i32* %6, align 4
  br label %155

35:                                               ; preds = %27, %5
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CRYPTO_KEY_RAW, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %42, i32* %6, align 4
  br label %155

43:                                               ; preds = %35
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @crypto_kmflag(i32 %44)
  %46 = call %struct.TYPE_16__* @kmem_alloc(i32 4, i32 %45)
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  store %struct.TYPE_16__* %46, %struct.TYPE_16__** %48, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = icmp eq %struct.TYPE_16__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @CRYPTO_HOST_MEMORY, align 4
  store i32 %54, i32* %6, align 4
  br label %155

55:                                               ; preds = %43
  %56 = load i32*, i32** %10, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32*, i32** %10, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %61 = call %struct.TYPE_20__* @PROV_SHA1_HMAC_CTX(%struct.TYPE_19__* %60)
  %62 = call i32 @bcopy(i32* %59, %struct.TYPE_20__* %61, i32 4)
  br label %97

63:                                               ; preds = %55
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @SHA1_HMAC_BLOCK_SIZE, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load i32, i32* @SHA1_DIGEST_LENGTH, align 4
  %69 = zext i32 %68 to i64
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** %14, align 8
  %71 = alloca i32, i64 %69, align 16
  store i64 %69, i64* %15, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  store %struct.TYPE_16__* %74, %struct.TYPE_16__** %16, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @PROV_SHA1_DIGEST_KEY(i32* %76, i32* %79, i64 %80, i32* %71)
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %83 = call %struct.TYPE_20__* @PROV_SHA1_HMAC_CTX(%struct.TYPE_19__* %82)
  %84 = load i32, i32* @SHA1_DIGEST_LENGTH, align 4
  %85 = sext i32 %84 to i64
  %86 = call i32 @sha1_mac_init_ctx(%struct.TYPE_20__* %83, i32* %71, i64 %85)
  %87 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %87)
  br label %96

88:                                               ; preds = %63
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %90 = call %struct.TYPE_20__* @PROV_SHA1_HMAC_CTX(%struct.TYPE_19__* %89)
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %13, align 8
  %95 = call i32 @sha1_mac_init_ctx(%struct.TYPE_20__* %90, i32* %93, i64 %94)
  br label %96

96:                                               ; preds = %88, %67
  br label %97

97:                                               ; preds = %96, %58
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %102 = call %struct.TYPE_20__* @PROV_SHA1_HMAC_CTX(%struct.TYPE_19__* %101)
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  store i64 %100, i64* %103, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SHA1_HMAC_GEN_MECH_INFO_TYPE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %138

109:                                              ; preds = %97
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = icmp ne i64 %118, 4
  br i1 %119, label %120, label %122

120:                                              ; preds = %114, %109
  %121 = load i32, i32* @CRYPTO_MECHANISM_PARAM_INVALID, align 4
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %120, %114
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %125 = call %struct.TYPE_20__* @PROV_SHA1_HMAC_CTX(%struct.TYPE_19__* %124)
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @PROV_SHA1_GET_DIGEST_LEN(%struct.TYPE_17__* %123, i32 %127)
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %130 = call %struct.TYPE_20__* @PROV_SHA1_HMAC_CTX(%struct.TYPE_19__* %129)
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @SHA1_DIGEST_LENGTH, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %122
  %136 = load i32, i32* @CRYPTO_MECHANISM_PARAM_INVALID, align 4
  store i32 %136, i32* %12, align 4
  br label %137

137:                                              ; preds = %135, %122
  br label %138

138:                                              ; preds = %137, %97
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %138
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = call i32 @bzero(%struct.TYPE_16__* %145, i32 4)
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = call i32 @kmem_free(%struct.TYPE_16__* %149, i32 4)
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %152, align 8
  br label %153

153:                                              ; preds = %142, %138
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %153, %53, %41, %33
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

declare dso_local i64 @CRYPTO_BITS2BYTES(i32) #1

declare dso_local %struct.TYPE_16__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @crypto_kmflag(i32) #1

declare dso_local i32 @bcopy(i32*, %struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_20__* @PROV_SHA1_HMAC_CTX(%struct.TYPE_19__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @PROV_SHA1_DIGEST_KEY(i32*, i32*, i64, i32*) #1

declare dso_local i32 @sha1_mac_init_ctx(%struct.TYPE_20__*, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @PROV_SHA1_GET_DIGEST_LEN(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

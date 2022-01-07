; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_sha1_mod.c_sha1_create_ctx_template.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_sha1_mod.c_sha1_create_ctx_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32*, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@SHA1_HMAC_MECH_INFO_TYPE = common dso_local global i64 0, align 8
@SHA1_HMAC_GEN_MECH_INFO_TYPE = common dso_local global i64 0, align 8
@CRYPTO_MECHANISM_INVALID = common dso_local global i32 0, align 4
@CRYPTO_KEY_RAW = common dso_local global i64 0, align 8
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@CRYPTO_HOST_MEMORY = common dso_local global i32 0, align 4
@SHA1_HMAC_BLOCK_SIZE = common dso_local global i64 0, align 8
@SHA1_DIGEST_LENGTH = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*, %struct.TYPE_10__*, i64*, i64*, i32)* @sha1_create_ctx_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_create_ctx_template(i32 %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2, i64* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @CRYPTO_BITS2BYTES(i32 %20)
  store i64 %21, i64* %15, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SHA1_HMAC_MECH_INFO_TYPE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %6
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SHA1_HMAC_GEN_MECH_INFO_TYPE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @CRYPTO_MECHANISM_INVALID, align 4
  store i32 %34, i32* %7, align 4
  br label %90

35:                                               ; preds = %27, %6
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CRYPTO_KEY_RAW, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %42, i32* %7, align 4
  br label %90

43:                                               ; preds = %35
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @crypto_kmflag(i32 %44)
  %46 = call %struct.TYPE_8__* @kmem_alloc(i32 16, i32 %45)
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %14, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %48 = icmp eq %struct.TYPE_8__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @CRYPTO_HOST_MEMORY, align 4
  store i32 %50, i32* %7, align 4
  br label %90

51:                                               ; preds = %43
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* @SHA1_HMAC_BLOCK_SIZE, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load i32, i32* @SHA1_DIGEST_LENGTH, align 4
  %57 = zext i32 %56 to i64
  %58 = call i8* @llvm.stacksave()
  store i8* %58, i8** %16, align 8
  %59 = alloca i32, i64 %57, align 16
  store i64 %57, i64* %17, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %15, align 8
  %66 = call i32 @PROV_SHA1_DIGEST_KEY(i32* %61, i32* %64, i64 %65, i32* %59)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %68 = load i32, i32* @SHA1_DIGEST_LENGTH, align 4
  %69 = sext i32 %68 to i64
  %70 = call i32 @sha1_mac_init_ctx(%struct.TYPE_8__* %67, i32* %59, i64 %69)
  %71 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %71)
  br label %79

72:                                               ; preds = %51
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call i32 @sha1_mac_init_ctx(%struct.TYPE_8__* %73, i32* %76, i64 %77)
  br label %79

79:                                               ; preds = %72, %55
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %86 = ptrtoint %struct.TYPE_8__* %85 to i64
  %87 = load i64*, i64** %11, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i64*, i64** %12, align 8
  store i64 16, i64* %88, align 8
  %89 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %79, %49, %41, %33
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i64 @CRYPTO_BITS2BYTES(i32) #1

declare dso_local %struct.TYPE_8__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @crypto_kmflag(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @PROV_SHA1_DIGEST_KEY(i32*, i32*, i64, i32*) #1

declare dso_local i32 @sha1_mac_init_ctx(%struct.TYPE_8__*, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_hkdf.c_hkdf_sha512_extract.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_hkdf.c_hkdf_sha512_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32*, i32 }
%struct.TYPE_11__ = type { i32*, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__, i64, i8* }
%struct.TYPE_9__ = type { i8*, i32 }

@SUN_CKM_SHA512_HMAC = common dso_local global i32 0, align 4
@CRYPTO_KEY_RAW = common dso_local global i32 0, align 4
@CRYPTO_DATA_RAW = common dso_local global i8* null, align 8
@SHA512_DIGEST_LENGTH = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32*)* @hkdf_sha512_extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hkdf_sha512_extract(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca %struct.TYPE_11__, align 8
  %15 = alloca %struct.TYPE_12__, align 8
  %16 = alloca %struct.TYPE_12__, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* @SUN_CKM_SHA512_HMAC, align 4
  %18 = call i32 @crypto_mech2id(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @CRYPTO_KEY_RAW, align 4
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @CRYPTO_BYTES2BITS(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i32* %27, i32** %28, align 8
  %29 = load i8*, i8** @CRYPTO_DATA_RAW, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** @CRYPTO_DATA_RAW, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = bitcast i32* %47 to i8*
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = call i32 @crypto_mac(%struct.TYPE_10__* %13, %struct.TYPE_12__* %15, %struct.TYPE_11__* %14, i32* null, %struct.TYPE_12__* %16, i32* null)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %5
  %60 = load i32, i32* @EIO, align 4
  %61 = call i32 @SET_ERROR(i32 %60)
  store i32 %61, i32* %6, align 4
  br label %63

62:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @crypto_mech2id(i32) #1

declare dso_local i32 @CRYPTO_BYTES2BITS(i32) #1

declare dso_local i32 @crypto_mac(%struct.TYPE_10__*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

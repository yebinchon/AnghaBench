; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_crypto_key_open.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_crypto_key_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__*, i32 }

@MASTER_KEY_MAX_LEN = common dso_local global i32 0, align 4
@SHA512_HMAC_KEYLEN = common dso_local global i32 0, align 4
@WRAPPING_IV_LEN = common dso_local global i32 0, align 4
@WRAPPING_MAC_LEN = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_CRYPTO_SUITE = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_GUID = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_MASTER_KEY = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_HMAC_KEY = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_IV = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_MAC = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_VERSION = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, i32, i8*, %struct.TYPE_11__**)* @dsl_crypto_key_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_crypto_key_open(i32* %0, %struct.TYPE_10__* %1, i32 %2, i8* %3, %struct.TYPE_11__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_11__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_11__*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_11__** %4, %struct.TYPE_11__*** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load i32, i32* @MASTER_KEY_MAX_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %16, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %27 = load i32, i32* @SHA512_HMAC_KEYLEN, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %18, align 8
  %30 = load i32, i32* @WRAPPING_IV_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %19, align 8
  %33 = load i32, i32* @WRAPPING_MAC_LEN, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %20, align 8
  %36 = load i32, i32* @KM_SLEEP, align 4
  %37 = call %struct.TYPE_11__* @kmem_zalloc(i32 24, i32 %36)
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %21, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %39 = icmp ne %struct.TYPE_11__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %5
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = call i32 @SET_ERROR(i32 %41)
  store i32 %42, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %143

43:                                               ; preds = %5
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @DSL_CRYPTO_KEY_CRYPTO_SUITE, align 4
  %47 = call i32 @zap_lookup(i32* %44, i32 %45, i32 %46, i32 8, i32 1, i32* %13)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %132

51:                                               ; preds = %43
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @DSL_CRYPTO_KEY_GUID, align 4
  %55 = call i32 @zap_lookup(i32* %52, i32 %53, i32 %54, i32 8, i32 1, i32* %14)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %132

59:                                               ; preds = %51
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @DSL_CRYPTO_KEY_MASTER_KEY, align 4
  %63 = load i32, i32* @MASTER_KEY_MAX_LEN, align 4
  %64 = call i32 @zap_lookup(i32* %60, i32 %61, i32 %62, i32 1, i32 %63, i32* %26)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %132

68:                                               ; preds = %59
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @DSL_CRYPTO_KEY_HMAC_KEY, align 4
  %72 = load i32, i32* @SHA512_HMAC_KEYLEN, align 4
  %73 = call i32 @zap_lookup(i32* %69, i32 %70, i32 %71, i32 1, i32 %72, i32* %29)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %132

77:                                               ; preds = %68
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @DSL_CRYPTO_KEY_IV, align 4
  %81 = load i32, i32* @WRAPPING_IV_LEN, align 4
  %82 = call i32 @zap_lookup(i32* %78, i32 %79, i32 %80, i32 1, i32 %81, i32* %32)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %132

86:                                               ; preds = %77
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @DSL_CRYPTO_KEY_MAC, align 4
  %90 = load i32, i32* @WRAPPING_MAC_LEN, align 4
  %91 = call i32 @zap_lookup(i32* %87, i32 %88, i32 %89, i32 1, i32 %90, i32* %35)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %132

95:                                               ; preds = %86
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @DSL_CRYPTO_KEY_VERSION, align 4
  %99 = call i32 @zap_lookup(i32* %96, i32 %97, i32 %98, i32 8, i32 1, i32* %15)
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 3
  %107 = call i32 @zio_crypt_key_unwrap(i32* %101, i32 %102, i32 %103, i32 %104, i32* %26, i32* %29, i32* %32, i32* %35, i32* %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %95
  %111 = load i32, i32* @EACCES, align 4
  %112 = call i32 @SET_ERROR(i32 %111)
  store i32 %112, i32* %12, align 4
  br label %132

113:                                              ; preds = %95
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = call i32 @zfs_refcount_create(i32* %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %119 = call i32 @dsl_wrapping_key_hold(%struct.TYPE_10__* %117, %struct.TYPE_11__* %118)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  store %struct.TYPE_10__* %120, %struct.TYPE_10__** %122, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i8*, i8** %10, align 8
  %129 = call i32 @zfs_refcount_add(i32* %127, i8* %128)
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %131 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  store %struct.TYPE_11__* %130, %struct.TYPE_11__** %131, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %143

132:                                              ; preds = %110, %94, %85, %76, %67, %58, %50
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %134 = icmp ne %struct.TYPE_11__* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %137 = call i32 @bzero(%struct.TYPE_11__* %136, i32 24)
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %139 = call i32 @kmem_free(%struct.TYPE_11__* %138, i32 24)
  br label %140

140:                                              ; preds = %135, %132
  %141 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %141, align 8
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %143

143:                                              ; preds = %140, %113, %40
  %144 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_11__* @kmem_zalloc(i32, i32) #2

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local i32 @zap_lookup(i32*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @zio_crypt_key_unwrap(i32*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @zfs_refcount_create(i32*) #2

declare dso_local i32 @dsl_wrapping_key_hold(%struct.TYPE_10__*, %struct.TYPE_11__*) #2

declare dso_local i32 @zfs_refcount_add(i32*, i8*) #2

declare dso_local i32 @bzero(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @kmem_free(%struct.TYPE_11__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

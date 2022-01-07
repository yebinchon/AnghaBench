; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_sha1_mod.c_sha1_mac_final.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_sha1_mod.c_sha1_mac_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64, i32, i32 }

@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@SHA1_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SHA1_HMAC_GEN_MECH_INFO_TYPE = common dso_local global i64 0, align 8
@CRYPTO_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)* @sha1_mac_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_mac_final(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @SHA1_DIGEST_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @SHA1_DIGEST_LENGTH, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %11, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = call %struct.TYPE_12__* @PROV_SHA1_HMAC_CTX(%struct.TYPE_11__* %26)
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SHA1_HMAC_GEN_MECH_INFO_TYPE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = call %struct.TYPE_12__* @PROV_SHA1_HMAC_CTX(%struct.TYPE_11__* %33)
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  br label %37

37:                                               ; preds = %32, %3
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42, %37
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* @CRYPTO_BUFFER_TOO_SMALL, align 4
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %136

53:                                               ; preds = %42
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = call %struct.TYPE_12__* @PROV_SHA1_HMAC_CTX(%struct.TYPE_11__* %54)
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = call i32 @SHA1Final(i8* %17, i32* %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = call %struct.TYPE_12__* @PROV_SHA1_HMAC_CTX(%struct.TYPE_11__* %58)
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i32, i32* @SHA1_DIGEST_LENGTH, align 4
  %62 = call i32 @SHA1Update(i32* %60, i8* %17, i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %111 [
    i32 129, label %66
    i32 128, label %104
  ]

66:                                               ; preds = %53
  %67 = load i64, i64* %11, align 8
  %68 = load i32, i32* @SHA1_DIGEST_LENGTH, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ne i64 %67, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = call %struct.TYPE_12__* @PROV_SHA1_HMAC_CTX(%struct.TYPE_11__* %72)
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = call i32 @SHA1Final(i8* %17, i32* %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @bcopy(i8* %17, i8* %85, i64 %86)
  br label %103

88:                                               ; preds = %66
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %93, i64 %97
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = call %struct.TYPE_12__* @PROV_SHA1_HMAC_CTX(%struct.TYPE_11__* %99)
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = call i32 @SHA1Final(i8* %98, i32* %101)
  br label %103

103:                                              ; preds = %88, %71
  br label %113

104:                                              ; preds = %53
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = call %struct.TYPE_12__* @PROV_SHA1_HMAC_CTX(%struct.TYPE_11__* %105)
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = load i64, i64* %11, align 8
  %110 = call i32 @sha1_digest_final_uio(i32* %107, %struct.TYPE_10__* %108, i64 %109, i8* %17)
  store i32 %110, i32* %8, align 4
  br label %113

111:                                              ; preds = %53
  %112 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %111, %104, %103
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i64, i64* %11, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %124

121:                                              ; preds = %113
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %121, %117
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @bzero(i32* %127, i32 4)
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @kmem_free(i32* %131, i32 4)
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  store i32* null, i32** %134, align 8
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %136

136:                                              ; preds = %124, %48
  %137 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local %struct.TYPE_12__* @PROV_SHA1_HMAC_CTX(%struct.TYPE_11__*) #2

declare dso_local i32 @SHA1Final(i8*, i32*) #2

declare dso_local i32 @SHA1Update(i32*, i8*, i32) #2

declare dso_local i32 @bcopy(i8*, i8*, i64) #2

declare dso_local i32 @sha1_digest_final_uio(i32*, %struct.TYPE_10__*, i64, i8*) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @kmem_free(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

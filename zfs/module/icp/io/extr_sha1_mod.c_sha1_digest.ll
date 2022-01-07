; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_sha1_mod.c_sha1_digest.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_sha1_mod.c_sha1_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i64, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@SHA1_DIGEST_LENGTH = common dso_local global i64 0, align 8
@CRYPTO_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32)* @sha1_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_digest(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SHA1_DIGEST_LENGTH, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22, %4
  %29 = load i64, i64* @SHA1_DIGEST_LENGTH, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @CRYPTO_BUFFER_TOO_SMALL, align 4
  store i32 %32, i32* %5, align 4
  br label %124

33:                                               ; preds = %22
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %61 [
    i32 129, label %37
    i32 128, label %55
  ]

37:                                               ; preds = %33
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = call %struct.TYPE_14__* @PROV_SHA1_CTX(%struct.TYPE_13__* %38)
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @SHA1Update(i32* %40, i32* %50, i64 %53)
  br label %63

55:                                               ; preds = %33
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = call %struct.TYPE_14__* @PROV_SHA1_CTX(%struct.TYPE_13__* %56)
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = call i32 @sha1_digest_update_uio(i32* %58, %struct.TYPE_12__* %59)
  store i32 %60, i32* %10, align 4
  br label %63

61:                                               ; preds = %33
  %62 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %61, %55, %37
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @kmem_free(i32* %70, i32 4)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %124

77:                                               ; preds = %63
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %103 [
    i32 129, label %81
    i32 128, label %96
  ]

81:                                               ; preds = %77
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %93 = call %struct.TYPE_14__* @PROV_SHA1_CTX(%struct.TYPE_13__* %92)
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = call i32 @SHA1Final(i8* %91, i32* %94)
  br label %105

96:                                               ; preds = %77
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %98 = call %struct.TYPE_14__* @PROV_SHA1_CTX(%struct.TYPE_13__* %97)
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %101 = load i64, i64* @SHA1_DIGEST_LENGTH, align 8
  %102 = call i32 @sha1_digest_final_uio(i32* %99, %struct.TYPE_12__* %100, i64 %101, i32* null)
  store i32 %102, i32* %10, align 4
  br label %105

103:                                              ; preds = %77
  %104 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %103, %96, %81
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i64, i64* @SHA1_DIGEST_LENGTH, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  br label %116

113:                                              ; preds = %105
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %109
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @kmem_free(i32* %119, i32 4)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store i32* null, i32** %122, align 8
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %116, %67, %28
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @SHA1Update(i32*, i32*, i64) #1

declare dso_local %struct.TYPE_14__* @PROV_SHA1_CTX(%struct.TYPE_13__*) #1

declare dso_local i32 @sha1_digest_update_uio(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @kmem_free(i32*, i32) #1

declare dso_local i32 @SHA1Final(i8*, i32*) #1

declare dso_local i32 @sha1_digest_final_uio(i32*, %struct.TYPE_12__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

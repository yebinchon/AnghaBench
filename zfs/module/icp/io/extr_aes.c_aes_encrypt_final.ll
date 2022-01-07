; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_encrypt_final.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_encrypt_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64, i64, i64 }

@CRYPTO_DATA_RAW = common dso_local global i64 0, align 8
@CRYPTO_DATA_UIO = common dso_local global i64 0, align 8
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@CTR_MODE = common dso_local global i32 0, align 4
@aes_encrypt_block = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@CCM_MODE = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@aes_xor_block = common dso_local global i32 0, align 4
@GCM_MODE = common dso_local global i32 0, align 4
@GMAC_MODE = common dso_local global i32 0, align 4
@aes_copy_block = common dso_local global i32 0, align 4
@CRYPTO_DATA_LEN_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)* @aes_encrypt_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_encrypt_final(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %8, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CRYPTO_DATA_RAW, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CRYPTO_DATA_UIO, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %32, i32* %4, align 4
  br label %132

33:                                               ; preds = %25, %3
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CTR_MODE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %33
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = bitcast %struct.TYPE_12__* %46 to i32*
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = load i32, i32* @aes_encrypt_block, align 4
  %50 = call i32 @ctr_mode_final(i32* %47, %struct.TYPE_10__* %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %132

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %40
  br label %128

58:                                               ; preds = %33
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CCM_MODE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %58
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = bitcast %struct.TYPE_12__* %66 to i32*
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = load i32, i32* @AES_BLOCK_LEN, align 4
  %70 = load i32, i32* @aes_encrypt_block, align 4
  %71 = load i32, i32* @aes_xor_block, align 4
  %72 = call i32 @ccm_encrypt_final(i32* %67, %struct.TYPE_10__* %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %132

78:                                               ; preds = %65
  br label %127

79:                                               ; preds = %58
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @GCM_MODE, align 4
  %84 = load i32, i32* @GMAC_MODE, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %116

88:                                               ; preds = %79
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %10, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %93 = bitcast %struct.TYPE_12__* %92 to i32*
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = load i32, i32* @AES_BLOCK_LEN, align 4
  %96 = load i32, i32* @aes_encrypt_block, align 4
  %97 = load i32, i32* @aes_copy_block, align 4
  %98 = load i32, i32* @aes_xor_block, align 4
  %99 = call i32 @gcm_encrypt_final(i32* %93, %struct.TYPE_10__* %94, i32 %95, i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %88
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %4, align 4
  br label %132

105:                                              ; preds = %88
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = sub i64 %108, %109
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load i64, i64* %10, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  br label %126

116:                                              ; preds = %79
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* @CRYPTO_DATA_LEN_RANGE, align 4
  store i32 %122, i32* %4, align 4
  br label %132

123:                                              ; preds = %116
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %123, %105
  br label %127

127:                                              ; preds = %126, %78
  br label %128

128:                                              ; preds = %127, %57
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %130 = call i32 @aes_free_context(%struct.TYPE_11__* %129)
  %131 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %128, %121, %103, %76, %54, %31
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ctr_mode_final(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ccm_encrypt_final(i32*, %struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @gcm_encrypt_final(i32*, %struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @aes_free_context(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

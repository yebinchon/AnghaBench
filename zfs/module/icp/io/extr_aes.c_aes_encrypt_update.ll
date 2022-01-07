; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_encrypt_update.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_encrypt_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, i8*, i32 }

@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@CRYPTO_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@aes_encrypt_contiguous_blocks = common dso_local global i32 0, align 4
@aes_copy_block64 = common dso_local global i32 0, align 4
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@CTR_MODE = common dso_local global i32 0, align 4
@aes_encrypt_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32)* @aes_encrypt_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_encrypt_update(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %19 = icmp ne %struct.TYPE_18__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %14, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = call i32 @AES_ARG_INPLACE(%struct.TYPE_16__* %25, %struct.TYPE_16__* %26)
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %12, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %12, align 8
  %36 = load i32, i32* @AES_BLOCK_LEN, align 4
  %37 = sub nsw i32 %36, 1
  %38 = xor i32 %37, -1
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %12, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %12, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %4
  %48 = load i64, i64* %12, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* @CRYPTO_BUFFER_TOO_SMALL, align 4
  store i32 %51, i32* %5, align 4
  br label %128

52:                                               ; preds = %4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %10, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %11, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %80 [
    i32 129, label %62
    i32 128, label %71
  ]

62:                                               ; preds = %52
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %68 = load i32, i32* @aes_encrypt_contiguous_blocks, align 4
  %69 = load i32, i32* @aes_copy_block64, align 4
  %70 = call i32 @crypto_update_iov(%struct.TYPE_18__* %65, %struct.TYPE_16__* %66, %struct.TYPE_16__* %67, i32 %68, i32 %69)
  store i32 %70, i32* %13, align 4
  br label %82

71:                                               ; preds = %52
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %77 = load i32, i32* @aes_encrypt_contiguous_blocks, align 4
  %78 = load i32, i32* @aes_copy_block64, align 4
  %79 = call i32 @crypto_update_uio(%struct.TYPE_18__* %74, %struct.TYPE_16__* %75, %struct.TYPE_16__* %76, i32 %77, i32 %78)
  store i32 %79, i32* %13, align 4
  br label %82

80:                                               ; preds = %52
  %81 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %80, %71, %62
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CTR_MODE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ugt i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %96 = bitcast %struct.TYPE_18__* %95 to i32*
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %98 = load i32, i32* @aes_encrypt_block, align 4
  %99 = call i32 @ctr_mode_final(i32* %96, %struct.TYPE_16__* %97, i32 %98)
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %94, %89, %82
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %100
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %107 = icmp ne %struct.TYPE_16__* %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %108, %104
  br label %123

119:                                              ; preds = %100
  %120 = load i64, i64* %11, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %119, %118
  %124 = load i8*, i8** %10, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %123, %47
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @AES_ARG_INPLACE(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @crypto_update_iov(%struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @crypto_update_uio(%struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @ctr_mode_final(i32*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

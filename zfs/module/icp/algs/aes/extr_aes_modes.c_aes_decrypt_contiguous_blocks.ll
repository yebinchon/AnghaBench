; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/aes/extr_aes_modes.c_aes_decrypt_contiguous_blocks.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/aes/extr_aes_modes.c_aes_decrypt_contiguous_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CTR_MODE = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@aes_encrypt_block = common dso_local global i32 0, align 4
@aes_xor_block = common dso_local global i32 0, align 4
@CRYPTO_DATA_LEN_RANGE = common dso_local global i32 0, align 4
@CRYPTO_ENCRYPTED_DATA_LEN_RANGE = common dso_local global i32 0, align 4
@CCM_MODE = common dso_local global i32 0, align 4
@aes_copy_block = common dso_local global i32 0, align 4
@GCM_MODE = common dso_local global i32 0, align 4
@GMAC_MODE = common dso_local global i32 0, align 4
@CBC_MODE = common dso_local global i32 0, align 4
@aes_decrypt_block = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_decrypt_contiguous_blocks(i8* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %9, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CTR_MODE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %4
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @AES_BLOCK_LEN, align 4
  %25 = load i32, i32* @aes_encrypt_block, align 4
  %26 = load i32, i32* @aes_xor_block, align 4
  %27 = call i32 @ctr_mode_contiguous_blocks(i8* %20, i8* %21, i64 %22, i32* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @CRYPTO_DATA_LEN_RANGE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @CRYPTO_ENCRYPTED_DATA_LEN_RANGE, align 4
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %31, %19
  br label %104

34:                                               ; preds = %4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CCM_MODE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* @AES_BLOCK_LEN, align 4
  %47 = load i32, i32* @aes_encrypt_block, align 4
  %48 = load i32, i32* @aes_copy_block, align 4
  %49 = load i32, i32* @aes_xor_block, align 4
  %50 = call i32 @ccm_mode_decrypt_contiguous_blocks(i8* %42, i8* %43, i64 %44, i32* %45, i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  br label %103

51:                                               ; preds = %34
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @GCM_MODE, align 4
  %56 = load i32, i32* @GMAC_MODE, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* @AES_BLOCK_LEN, align 4
  %66 = load i32, i32* @aes_encrypt_block, align 4
  %67 = load i32, i32* @aes_copy_block, align 4
  %68 = load i32, i32* @aes_xor_block, align 4
  %69 = call i32 @gcm_mode_decrypt_contiguous_blocks(i8* %61, i8* %62, i64 %63, i32* %64, i32 %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  br label %102

70:                                               ; preds = %51
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CBC_MODE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* @AES_BLOCK_LEN, align 4
  %83 = load i32, i32* @aes_decrypt_block, align 4
  %84 = load i32, i32* @aes_copy_block, align 4
  %85 = load i32, i32* @aes_xor_block, align 4
  %86 = call i32 @cbc_decrypt_contiguous_blocks(i8* %78, i8* %79, i64 %80, i32* %81, i32 %82, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %10, align 4
  br label %101

87:                                               ; preds = %70
  %88 = load i8*, i8** %5, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* @AES_BLOCK_LEN, align 4
  %93 = load i32, i32* @aes_decrypt_block, align 4
  %94 = call i32 @ecb_cipher_contiguous_blocks(i8* %88, i8* %89, i64 %90, i32* %91, i32 %92, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @CRYPTO_DATA_LEN_RANGE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = load i32, i32* @CRYPTO_ENCRYPTED_DATA_LEN_RANGE, align 4
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %98, %87
  br label %101

101:                                              ; preds = %100, %77
  br label %102

102:                                              ; preds = %101, %60
  br label %103

103:                                              ; preds = %102, %41
  br label %104

104:                                              ; preds = %103, %33
  %105 = load i32, i32* %10, align 4
  ret i32 %105
}

declare dso_local i32 @ctr_mode_contiguous_blocks(i8*, i8*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @ccm_mode_decrypt_contiguous_blocks(i8*, i8*, i64, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @gcm_mode_decrypt_contiguous_blocks(i8*, i8*, i64, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cbc_decrypt_contiguous_blocks(i8*, i8*, i64, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ecb_cipher_contiguous_blocks(i8*, i8*, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

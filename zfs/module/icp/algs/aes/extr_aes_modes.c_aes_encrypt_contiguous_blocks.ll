; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/aes/extr_aes_modes.c_aes_encrypt_contiguous_blocks.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/aes/extr_aes_modes.c_aes_encrypt_contiguous_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CTR_MODE = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@aes_encrypt_block = common dso_local global i32 0, align 4
@aes_xor_block = common dso_local global i32 0, align 4
@CCM_MODE = common dso_local global i32 0, align 4
@aes_copy_block = common dso_local global i32 0, align 4
@GCM_MODE = common dso_local global i32 0, align 4
@GMAC_MODE = common dso_local global i32 0, align 4
@CBC_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_encrypt_contiguous_blocks(i8* %0, i8* %1, i64 %2, i32* %3) #0 {
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
  br i1 %18, label %19, label %28

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
  br label %92

28:                                               ; preds = %4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CCM_MODE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @AES_BLOCK_LEN, align 4
  %41 = load i32, i32* @aes_encrypt_block, align 4
  %42 = load i32, i32* @aes_copy_block, align 4
  %43 = load i32, i32* @aes_xor_block, align 4
  %44 = call i32 @ccm_mode_encrypt_contiguous_blocks(i8* %36, i8* %37, i64 %38, i32* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  br label %91

45:                                               ; preds = %28
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @GCM_MODE, align 4
  %50 = load i32, i32* @GMAC_MODE, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %45
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @AES_BLOCK_LEN, align 4
  %60 = load i32, i32* @aes_encrypt_block, align 4
  %61 = load i32, i32* @aes_copy_block, align 4
  %62 = load i32, i32* @aes_xor_block, align 4
  %63 = call i32 @gcm_mode_encrypt_contiguous_blocks(i8* %55, i8* %56, i64 %57, i32* %58, i32 %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %10, align 4
  br label %90

64:                                               ; preds = %45
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CBC_MODE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %64
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* @AES_BLOCK_LEN, align 4
  %77 = load i32, i32* @aes_encrypt_block, align 4
  %78 = load i32, i32* @aes_copy_block, align 4
  %79 = load i32, i32* @aes_xor_block, align 4
  %80 = call i32 @cbc_encrypt_contiguous_blocks(i8* %72, i8* %73, i64 %74, i32* %75, i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %10, align 4
  br label %89

81:                                               ; preds = %64
  %82 = load i8*, i8** %5, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* @AES_BLOCK_LEN, align 4
  %87 = load i32, i32* @aes_encrypt_block, align 4
  %88 = call i32 @ecb_cipher_contiguous_blocks(i8* %82, i8* %83, i64 %84, i32* %85, i32 %86, i32 %87)
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %81, %71
  br label %90

90:                                               ; preds = %89, %54
  br label %91

91:                                               ; preds = %90, %35
  br label %92

92:                                               ; preds = %91, %19
  %93 = load i32, i32* %10, align 4
  ret i32 %93
}

declare dso_local i32 @ctr_mode_contiguous_blocks(i8*, i8*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @ccm_mode_encrypt_contiguous_blocks(i8*, i8*, i64, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @gcm_mode_encrypt_contiguous_blocks(i8*, i8*, i64, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cbc_encrypt_contiguous_blocks(i8*, i8*, i64, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ecb_cipher_contiguous_blocks(i8*, i8*, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

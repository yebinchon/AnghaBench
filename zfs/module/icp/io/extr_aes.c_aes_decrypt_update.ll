; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_decrypt_update.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_decrypt_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_16__ = type { i64, i8*, i32 }

@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@CCM_MODE = common dso_local global i32 0, align 4
@GCM_MODE = common dso_local global i32 0, align 4
@GMAC_MODE = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@CRYPTO_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@aes_decrypt_contiguous_blocks = common dso_local global i32 0, align 4
@aes_copy_block64 = common dso_local global i32 0, align 4
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@CTR_MODE = common dso_local global i32 0, align 4
@aes_encrypt_block = common dso_local global i32 0, align 4
@CRYPTO_DATA_LEN_RANGE = common dso_local global i32 0, align 4
@CRYPTO_ENCRYPTED_DATA_LEN_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32)* @aes_decrypt_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_decrypt_update(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
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
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CCM_MODE, align 4
  %32 = load i32, i32* @GCM_MODE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @GMAC_MODE, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %30, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %12, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %12, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %12, align 8
  %47 = load i32, i32* @AES_BLOCK_LEN, align 4
  %48 = sub nsw i32 %47, 1
  %49 = xor i32 %48, -1
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %12, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %12, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %38
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @CRYPTO_BUFFER_TOO_SMALL, align 4
  store i32 %62, i32* %5, align 4
  br label %161

63:                                               ; preds = %38
  br label %64

64:                                               ; preds = %63, %4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %10, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %11, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @GCM_MODE, align 4
  %75 = load i32, i32* @GMAC_MODE, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %64
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %81 = bitcast %struct.TYPE_18__* %80 to i32*
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @crypto_kmflag(i32 %82)
  %84 = call i32 @gcm_set_kmflag(i32* %81, i32 %83)
  br label %85

85:                                               ; preds = %79, %64
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %107 [
    i32 129, label %89
    i32 128, label %98
  ]

89:                                               ; preds = %85
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %95 = load i32, i32* @aes_decrypt_contiguous_blocks, align 4
  %96 = load i32, i32* @aes_copy_block64, align 4
  %97 = call i32 @crypto_update_iov(%struct.TYPE_18__* %92, %struct.TYPE_16__* %93, %struct.TYPE_16__* %94, i32 %95, i32 %96)
  store i32 %97, i32* %13, align 4
  br label %109

98:                                               ; preds = %85
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %104 = load i32, i32* @aes_decrypt_contiguous_blocks, align 4
  %105 = load i32, i32* @aes_copy_block64, align 4
  %106 = call i32 @crypto_update_uio(%struct.TYPE_18__* %101, %struct.TYPE_16__* %102, %struct.TYPE_16__* %103, i32 %104, i32 %105)
  store i32 %106, i32* %13, align 4
  br label %109

107:                                              ; preds = %85
  %108 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %107, %98, %89
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @CTR_MODE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %109
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ugt i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %116
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %123 = bitcast %struct.TYPE_18__* %122 to i32*
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %125 = load i32, i32* @aes_encrypt_block, align 4
  %126 = call i32 @ctr_mode_final(i32* %123, %struct.TYPE_16__* %124, i32 %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @CRYPTO_DATA_LEN_RANGE, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = load i32, i32* @CRYPTO_ENCRYPTED_DATA_LEN_RANGE, align 4
  store i32 %131, i32* %13, align 4
  br label %132

132:                                              ; preds = %130, %121
  br label %133

133:                                              ; preds = %132, %116, %109
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %133
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %140 = icmp ne %struct.TYPE_16__* %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = ptrtoint i8* %144 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %141, %137
  br label %156

152:                                              ; preds = %133
  %153 = load i64, i64* %11, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %152, %151
  %157 = load i8*, i8** %10, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 1
  store i8* %157, i8** %159, align 8
  %160 = load i32, i32* %13, align 4
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %156, %58
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @AES_ARG_INPLACE(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @gcm_set_kmflag(i32*, i32) #1

declare dso_local i32 @crypto_kmflag(i32) #1

declare dso_local i32 @crypto_update_iov(%struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @crypto_update_uio(%struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @ctr_mode_final(i32*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

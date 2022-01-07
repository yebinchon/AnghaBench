; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_common_init_ctx.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_common_init_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i8* }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_8__ = type { i32, i32 }

@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@CRYPTO_HOST_MEMORY = common dso_local global i32 0, align 4
@PROVIDER_OWNS_KEY_SCHEDULE = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@aes_copy_block64 = common dso_local global i32 0, align 4
@CRYPTO_MECHANISM_PARAM_INVALID = common dso_local global i32 0, align 4
@aes_copy_block = common dso_local global i32 0, align 4
@aes_encrypt_block = common dso_local global i32 0, align 4
@aes_xor_block = common dso_local global i32 0, align 4
@ECB_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, %struct.TYPE_6__*, i32*, i32, i32)* @aes_common_init_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_common_init_ctx(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_6__* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %18, i32* %14, align 4
  store i64 0, i64* %16, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %6
  %22 = load i32, i32* %12, align 4
  %23 = call i8* @aes_alloc_keysched(i64* %16, i32 %22)
  store i8* %23, i8** %15, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @CRYPTO_HOST_MEMORY, align 4
  store i32 %26, i32* %7, align 4
  br label %198

27:                                               ; preds = %21
  %28 = load i32*, i32** %11, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = call i32 @init_keysched(i32* %28, i8* %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i8*, i8** %15, align 8
  %35 = load i64, i64* %16, align 8
  %36 = call i32 @kmem_free(i8* %34, i64 %35)
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %7, align 4
  br label %198

38:                                               ; preds = %27
  %39 = load i32, i32* @PROVIDER_OWNS_KEY_SCHEDULE, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load i64, i64* %16, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %50

47:                                               ; preds = %6
  %48 = load i32*, i32** %9, align 8
  %49 = bitcast i32* %48 to i8*
  store i8* %49, i8** %15, align 8
  br label %50

50:                                               ; preds = %47, %38
  %51 = load i8*, i8** %15, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %177 [
    i32 133, label %57
    i32 131, label %69
    i32 132, label %98
    i32 129, label %123
    i32 128, label %147
    i32 130, label %171
  ]

57:                                               ; preds = %50
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = bitcast %struct.TYPE_7__* %58 to i32*
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AES_BLOCK_LEN, align 4
  %67 = load i32, i32* @aes_copy_block64, align 4
  %68 = call i32 @cbc_init_ctx(i32* %59, i32* %62, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %14, align 4
  br label %177

69:                                               ; preds = %50
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp ne i64 %78, 8
  br i1 %79, label %80, label %82

80:                                               ; preds = %74, %69
  %81 = load i32, i32* @CRYPTO_MECHANISM_PARAM_INVALID, align 4
  store i32 %81, i32* %7, align 4
  br label %198

82:                                               ; preds = %74
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = bitcast i32* %85 to i8*
  %87 = bitcast i8* %86 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %17, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = bitcast %struct.TYPE_7__* %88 to i32*
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @aes_copy_block, align 4
  %97 = call i32 @ctr_init_ctx(i32* %89, i32 %92, i32 %95, i32 %96)
  store i32 %97, i32* %14, align 4
  br label %177

98:                                               ; preds = %50
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp ne i64 %107, 4
  br i1 %108, label %109, label %111

109:                                              ; preds = %103, %98
  %110 = load i32, i32* @CRYPTO_MECHANISM_PARAM_INVALID, align 4
  store i32 %110, i32* %7, align 4
  br label %198

111:                                              ; preds = %103
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %113 = bitcast %struct.TYPE_7__* %112 to i32*
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @AES_BLOCK_LEN, align 4
  %120 = load i32, i32* @aes_encrypt_block, align 4
  %121 = load i32, i32* @aes_xor_block, align 4
  %122 = call i32 @ccm_init_ctx(i32* %113, i32* %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121)
  store i32 %122, i32* %14, align 4
  br label %177

123:                                              ; preds = %50
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %123
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = icmp ne i64 %132, 4
  br i1 %133, label %134, label %136

134:                                              ; preds = %128, %123
  %135 = load i32, i32* @CRYPTO_MECHANISM_PARAM_INVALID, align 4
  store i32 %135, i32* %7, align 4
  br label %198

136:                                              ; preds = %128
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %138 = bitcast %struct.TYPE_7__* %137 to i32*
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* @AES_BLOCK_LEN, align 4
  %143 = load i32, i32* @aes_encrypt_block, align 4
  %144 = load i32, i32* @aes_copy_block, align 4
  %145 = load i32, i32* @aes_xor_block, align 4
  %146 = call i32 @gcm_init_ctx(i32* %138, i32* %141, i32 %142, i32 %143, i32 %144, i32 %145)
  store i32 %146, i32* %14, align 4
  br label %177

147:                                              ; preds = %50
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %147
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = icmp ne i64 %156, 4
  br i1 %157, label %158, label %160

158:                                              ; preds = %152, %147
  %159 = load i32, i32* @CRYPTO_MECHANISM_PARAM_INVALID, align 4
  store i32 %159, i32* %7, align 4
  br label %198

160:                                              ; preds = %152
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %162 = bitcast %struct.TYPE_7__* %161 to i32*
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* @AES_BLOCK_LEN, align 4
  %167 = load i32, i32* @aes_encrypt_block, align 4
  %168 = load i32, i32* @aes_copy_block, align 4
  %169 = load i32, i32* @aes_xor_block, align 4
  %170 = call i32 @gmac_init_ctx(i32* %162, i32* %165, i32 %166, i32 %167, i32 %168, i32 %169)
  store i32 %170, i32* %14, align 4
  br label %177

171:                                              ; preds = %50
  %172 = load i32, i32* @ECB_MODE, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %171, %50, %160, %136, %111, %82, %57
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %196

181:                                              ; preds = %177
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @PROVIDER_OWNS_KEY_SCHEDULE, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %181
  %189 = load i8*, i8** %15, align 8
  %190 = load i64, i64* %16, align 8
  %191 = call i32 @bzero(i8* %189, i64 %190)
  %192 = load i8*, i8** %15, align 8
  %193 = load i64, i64* %16, align 8
  %194 = call i32 @kmem_free(i8* %192, i64 %193)
  br label %195

195:                                              ; preds = %188, %181
  br label %196

196:                                              ; preds = %195, %177
  %197 = load i32, i32* %14, align 4
  store i32 %197, i32* %7, align 4
  br label %198

198:                                              ; preds = %196, %158, %134, %109, %80, %33, %25
  %199 = load i32, i32* %7, align 4
  ret i32 %199
}

declare dso_local i8* @aes_alloc_keysched(i64*, i32) #1

declare dso_local i32 @init_keysched(i32*, i8*) #1

declare dso_local i32 @kmem_free(i8*, i64) #1

declare dso_local i32 @cbc_init_ctx(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ctr_init_ctx(i32*, i32, i32, i32) #1

declare dso_local i32 @ccm_init_ctx(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gcm_init_ctx(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @gmac_init_ctx(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @bzero(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_encrypt.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64, i64, i32 }
%struct.TYPE_15__ = type { i32, i64 }

@CRYPTO_FAILED = common dso_local global i32 0, align 4
@CTR_MODE = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@CRYPTO_DATA_LEN_RANGE = common dso_local global i32 0, align 4
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@CRYPTO_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@aes_encrypt_block = common dso_local global i32 0, align 4
@aes_xor_block = common dso_local global i32 0, align 4
@aes_copy_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32)* @aes_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_encrypt(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @CRYPTO_FAILED, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = icmp ne %struct.TYPE_17__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %11, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CTR_MODE, align 4
  %29 = or i32 %28, 130
  %30 = or i32 %29, 129
  %31 = or i32 %30, 128
  %32 = and i32 %27, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AES_BLOCK_LEN, align 4
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @CRYPTO_DATA_LEN_RANGE, align 4
  store i32 %43, i32* %5, align 4
  br label %231

44:                                               ; preds = %34, %4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %47 = call i32 @AES_ARG_INPLACE(%struct.TYPE_15__* %45, %struct.TYPE_15__* %46)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 131
  switch i32 %51, label %81 [
    i32 130, label %52
    i32 129, label %61
    i32 128, label %70
  ]

52:                                               ; preds = %44
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %14, align 8
  br label %86

61:                                               ; preds = %44
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %65, %68
  store i64 %69, i64* %14, align 8
  br label %86

70:                                               ; preds = %44
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %76, i32* %5, align 4
  br label %231

77:                                               ; preds = %70
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %14, align 8
  br label %86

81:                                               ; preds = %44
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %14, align 8
  br label %86

86:                                               ; preds = %81, %77, %61, %52
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %14, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i64, i64* %14, align 8
  %95 = trunc i64 %94 to i32
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @CRYPTO_BUFFER_TOO_SMALL, align 4
  store i32 %98, i32* %5, align 4
  br label %231

99:                                               ; preds = %86
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %12, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %13, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @aes_encrypt_update(%struct.TYPE_16__* %107, %struct.TYPE_15__* %108, %struct.TYPE_15__* %109, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %99
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %5, align 4
  br label %231

117:                                              ; preds = %99
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, 130
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %168

123:                                              ; preds = %117
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load i64, i64* %12, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = sub i64 %130, %134
  %136 = trunc i64 %135 to i32
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %140 = bitcast %struct.TYPE_17__* %139 to i32*
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %142 = load i32, i32* @AES_BLOCK_LEN, align 4
  %143 = load i32, i32* @aes_encrypt_block, align 4
  %144 = load i32, i32* @aes_xor_block, align 4
  %145 = call i32 @ccm_encrypt_final(i32* %140, %struct.TYPE_15__* %141, i32 %142, i32 %143, i32 %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %123
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %5, align 4
  br label %231

151:                                              ; preds = %123
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %154 = icmp ne %struct.TYPE_15__* %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %151
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %13, align 8
  %160 = sub i64 %158, %159
  %161 = trunc i64 %160 to i32
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %155, %151
  %165 = load i64, i64* %13, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  br label %221

168:                                              ; preds = %117
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, 129
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %220

174:                                              ; preds = %168
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  store i64 %178, i64* %180, align 8
  %181 = load i64, i64* %12, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = sub i64 %181, %185
  %187 = trunc i64 %186 to i32
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %191 = bitcast %struct.TYPE_17__* %190 to i32*
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %193 = load i32, i32* @AES_BLOCK_LEN, align 4
  %194 = load i32, i32* @aes_encrypt_block, align 4
  %195 = load i32, i32* @aes_copy_block, align 4
  %196 = load i32, i32* @aes_xor_block, align 4
  %197 = call i32 @gcm_encrypt_final(i32* %191, %struct.TYPE_15__* %192, i32 %193, i32 %194, i32 %195, i32 %196)
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %174
  %202 = load i32, i32* %10, align 4
  store i32 %202, i32* %5, align 4
  br label %231

203:                                              ; preds = %174
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %206 = icmp ne %struct.TYPE_15__* %204, %205
  br i1 %206, label %207, label %216

207:                                              ; preds = %203
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %13, align 8
  %212 = sub i64 %210, %211
  %213 = trunc i64 %212 to i32
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  br label %216

216:                                              ; preds = %207, %203
  %217 = load i64, i64* %13, align 8
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 1
  store i64 %217, i64* %219, align 8
  br label %220

220:                                              ; preds = %216, %168
  br label %221

221:                                              ; preds = %220, %164
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %224, 0
  %226 = zext i1 %225 to i32
  %227 = call i32 @ASSERT(i32 %226)
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %229 = call i32 @aes_free_context(%struct.TYPE_16__* %228)
  %230 = load i32, i32* %10, align 4
  store i32 %230, i32* %5, align 4
  br label %231

231:                                              ; preds = %221, %201, %149, %115, %93, %75, %42
  %232 = load i32, i32* %5, align 4
  ret i32 %232
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @AES_ARG_INPLACE(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @aes_encrypt_update(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ccm_encrypt_final(i32*, %struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @gcm_encrypt_final(i32*, %struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i32 @aes_free_context(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

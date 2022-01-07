; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_decrypt_final.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_decrypt_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32, i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i8* }
%struct.TYPE_12__ = type { i64, i64 }

@CRYPTO_DATA_RAW = common dso_local global i64 0, align 8
@CRYPTO_DATA_UIO = common dso_local global i64 0, align 8
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@CTR_MODE = common dso_local global i32 0, align 4
@CRYPTO_ENCRYPTED_DATA_LEN_RANGE = common dso_local global i32 0, align 4
@aes_encrypt_block = common dso_local global i32 0, align 4
@CRYPTO_DATA_LEN_RANGE = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@CCM_MODE = common dso_local global i32 0, align 4
@CRYPTO_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@aes_copy_block = common dso_local global i32 0, align 4
@aes_xor_block = common dso_local global i32 0, align 4
@GCM_MODE = common dso_local global i32 0, align 4
@GMAC_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32)* @aes_decrypt_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_decrypt_final(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = icmp ne %struct.TYPE_15__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %8, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CRYPTO_DATA_RAW, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CRYPTO_DATA_UIO, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %36, i32* %4, align 4
  br label %240

37:                                               ; preds = %29, %3
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %37
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CTR_MODE, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @CRYPTO_ENCRYPTED_DATA_LEN_RANGE, align 4
  store i32 %50, i32* %4, align 4
  br label %240

51:                                               ; preds = %42
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = bitcast %struct.TYPE_15__* %52 to i32*
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = load i32, i32* @aes_encrypt_block, align 4
  %56 = call i32 @ctr_mode_final(i32* %53, %struct.TYPE_13__* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @CRYPTO_DATA_LEN_RANGE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @CRYPTO_ENCRYPTED_DATA_LEN_RANGE, align 4
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %60, %51
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %240

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69, %37
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CCM_MODE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %149

77:                                               ; preds = %70
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %12, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %77
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* @CRYPTO_BUFFER_TOO_SMALL, align 4
  store i32 %90, i32* %4, align 4
  br label %240

91:                                               ; preds = %77
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @ASSERT(i32 %97)
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %101, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @ASSERT(i32 %106)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %10, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %11, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %115 = bitcast %struct.TYPE_15__* %114 to i32*
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %117 = load i32, i32* @AES_BLOCK_LEN, align 4
  %118 = load i32, i32* @aes_encrypt_block, align 4
  %119 = load i32, i32* @aes_copy_block, align 4
  %120 = load i32, i32* @aes_xor_block, align 4
  %121 = call i32 @ccm_decrypt_final(i32* %115, %struct.TYPE_13__* %116, i32 %117, i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %91
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  br label %139

135:                                              ; preds = %91
  %136 = load i64, i64* %11, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %135, %125
  %140 = load i8*, i8** %10, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %4, align 4
  br label %240

148:                                              ; preds = %139
  br label %220

149:                                              ; preds = %70
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @GCM_MODE, align 4
  %154 = load i32, i32* @GMAC_MODE, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %152, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %219

158:                                              ; preds = %149
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %160 = bitcast %struct.TYPE_15__* %159 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %160, %struct.TYPE_12__** %13, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = sub i64 %163, %166
  store i64 %167, i64* %14, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %14, align 8
  %172 = icmp ult i64 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %158
  %174 = load i64, i64* %14, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  store i64 %174, i64* %176, align 8
  %177 = load i32, i32* @CRYPTO_BUFFER_TOO_SMALL, align 4
  store i32 %177, i32* %4, align 4
  br label %240

178:                                              ; preds = %158
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  store i8* %181, i8** %10, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %11, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %186 = bitcast %struct.TYPE_15__* %185 to %struct.TYPE_12__*
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %188 = load i32, i32* @AES_BLOCK_LEN, align 4
  %189 = load i32, i32* @aes_encrypt_block, align 4
  %190 = load i32, i32* @aes_xor_block, align 4
  %191 = call i32 @gcm_decrypt_final(%struct.TYPE_12__* %186, %struct.TYPE_13__* %187, i32 %188, i32 %189, i32 %190)
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %205

195:                                              ; preds = %178
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = load i8*, i8** %10, align 8
  %200 = ptrtoint i8* %198 to i64
  %201 = ptrtoint i8* %199 to i64
  %202 = sub i64 %200, %201
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 1
  store i64 %202, i64* %204, align 8
  br label %209

205:                                              ; preds = %178
  %206 = load i64, i64* %11, align 8
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  store i64 %206, i64* %208, align 8
  br label %209

209:                                              ; preds = %205, %195
  %210 = load i8*, i8** %10, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 2
  store i8* %210, i8** %212, align 8
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %209
  %217 = load i32, i32* %9, align 4
  store i32 %217, i32* %4, align 4
  br label %240

218:                                              ; preds = %209
  br label %219

219:                                              ; preds = %218, %149
  br label %220

220:                                              ; preds = %219, %148
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @CTR_MODE, align 4
  %225 = load i32, i32* @CCM_MODE, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* @GCM_MODE, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @GMAC_MODE, align 4
  %230 = or i32 %228, %229
  %231 = and i32 %223, %230
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %220
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 1
  store i64 0, i64* %235, align 8
  br label %236

236:                                              ; preds = %233, %220
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %238 = call i32 @aes_free_context(%struct.TYPE_14__* %237)
  %239 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %239, i32* %4, align 4
  br label %240

240:                                              ; preds = %236, %216, %173, %146, %86, %66, %49, %35
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ctr_mode_final(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ccm_decrypt_final(i32*, %struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @gcm_decrypt_final(%struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @aes_free_context(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

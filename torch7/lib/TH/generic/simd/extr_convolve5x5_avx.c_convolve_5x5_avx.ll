; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/generic/simd/extr_convolve5x5_avx.c_convolve_5x5_avx.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/generic/simd/extr_convolve5x5_avx.c_convolve_5x5_avx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convolve_5x5_avx(float* %0, float* %1, float* %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  %30 = alloca float*, align 8
  %31 = alloca float*, align 8
  %32 = alloca float*, align 8
  %33 = alloca float*, align 8
  %34 = alloca float*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  store float* %0, float** %8, align 8
  store float* %1, float** %9, align 8
  store float* %2, float** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  store i64 %37, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %38 = load float*, float** %9, align 8
  store float* %38, float** %17, align 8
  %39 = load float*, float** %8, align 8
  store float* %39, float** %18, align 8
  %40 = load float*, float** %10, align 8
  store float* %40, float** %19, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp eq i64 %41, 64
  br i1 %42, label %43, label %54

43:                                               ; preds = %7
  %44 = load i64, i64* %12, align 8
  %45 = icmp eq i64 %44, 64
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load float*, float** %8, align 8
  %48 = load float*, float** %9, align 8
  %49 = load float*, float** %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %14, align 8
  %53 = call i32 @convolve_5x5_64x64_avx(float* %47, float* %48, float* %49, i64 %50, i64 %51, i64 %52)
  br label %260

54:                                               ; preds = %43, %7
  %55 = load i64, i64* %11, align 8
  %56 = icmp eq i64 %55, 32
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i64, i64* %12, align 8
  %59 = icmp eq i64 %58, 32
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load float*, float** %8, align 8
  %62 = load float*, float** %9, align 8
  %63 = load float*, float** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %14, align 8
  %67 = call i32 @convolve_5x5_32x32_avx(float* %61, float* %62, float* %63, i64 %64, i64 %65, i64 %66)
  br label %260

68:                                               ; preds = %57, %54
  %69 = load i64, i64* %11, align 8
  %70 = icmp eq i64 %69, 16
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load i64, i64* %12, align 8
  %73 = icmp eq i64 %72, 16
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load float*, float** %8, align 8
  %76 = load float*, float** %9, align 8
  %77 = load float*, float** %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %14, align 8
  %81 = call i32 @convolve_5x5_16x16_avx(float* %75, float* %76, float* %77, i64 %78, i64 %79, i64 %80)
  br label %260

82:                                               ; preds = %71, %68
  %83 = load i64, i64* %11, align 8
  %84 = icmp eq i64 %83, 8
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load i64, i64* %12, align 8
  %87 = icmp eq i64 %86, 8
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load float*, float** %8, align 8
  %90 = load float*, float** %9, align 8
  %91 = load float*, float** %10, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %13, align 8
  %94 = load i64, i64* %14, align 8
  %95 = call i32 @convolve_5x5_8x8_avx(float* %89, float* %90, float* %91, i64 %92, i64 %93, i64 %94)
  br label %260

96:                                               ; preds = %85, %82
  br label %97

97:                                               ; preds = %122, %96
  %98 = load i64, i64* %16, align 8
  %99 = load i64, i64* %11, align 8
  %100 = sdiv i64 %99, 6
  %101 = mul nsw i64 %100, 6
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %97
  %104 = load float*, float** %17, align 8
  %105 = load i64, i64* %16, align 8
  %106 = load i64, i64* %15, align 8
  %107 = mul nsw i64 %105, %106
  %108 = getelementptr inbounds float, float* %104, i64 %107
  store float* %108, float** %20, align 8
  %109 = load float*, float** %19, align 8
  store float* %109, float** %21, align 8
  %110 = load float*, float** %20, align 8
  store float* %110, float** %22, align 8
  %111 = load float*, float** %18, align 8
  %112 = load float*, float** %22, align 8
  %113 = load float*, float** %21, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* %15, align 8
  %117 = call i32 @convolve_5x5_6_avx(float* %111, float* %112, float* %113, i64 %114, i64 %115, i64 %116)
  %118 = load i64, i64* %13, align 8
  %119 = mul nsw i64 %118, 6
  %120 = load float*, float** %18, align 8
  %121 = getelementptr inbounds float, float* %120, i64 %119
  store float* %121, float** %18, align 8
  br label %122

122:                                              ; preds = %103
  %123 = load i64, i64* %16, align 8
  %124 = add nsw i64 %123, 6
  store i64 %124, i64* %16, align 8
  br label %97

125:                                              ; preds = %97
  %126 = load i64, i64* %16, align 8
  %127 = load i64, i64* %11, align 8
  %128 = and i64 %127, 4294967294
  %129 = icmp slt i64 %126, %128
  br i1 %129, label %130, label %155

130:                                              ; preds = %125
  %131 = load i64, i64* %16, align 8
  %132 = srem i64 %131, 4
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %155

134:                                              ; preds = %130
  %135 = load float*, float** %17, align 8
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* %15, align 8
  %138 = mul nsw i64 %136, %137
  %139 = getelementptr inbounds float, float* %135, i64 %138
  store float* %139, float** %23, align 8
  %140 = load float*, float** %19, align 8
  store float* %140, float** %24, align 8
  %141 = load float*, float** %23, align 8
  store float* %141, float** %25, align 8
  %142 = load float*, float** %18, align 8
  %143 = load float*, float** %25, align 8
  %144 = load float*, float** %24, align 8
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* %15, align 8
  %148 = call i32 @convolve_5x5_2_avx(float* %142, float* %143, float* %144, i64 %145, i64 %146, i64 %147)
  %149 = load i64, i64* %13, align 8
  %150 = mul nsw i64 %149, 2
  %151 = load float*, float** %18, align 8
  %152 = getelementptr inbounds float, float* %151, i64 %150
  store float* %152, float** %18, align 8
  %153 = load i64, i64* %16, align 8
  %154 = add nsw i64 %153, 2
  store i64 %154, i64* %16, align 8
  br label %155

155:                                              ; preds = %134, %130, %125
  br label %156

156:                                              ; preds = %180, %155
  %157 = load i64, i64* %16, align 8
  %158 = load i64, i64* %11, align 8
  %159 = and i64 %158, 4294967292
  %160 = icmp slt i64 %157, %159
  br i1 %160, label %161, label %183

161:                                              ; preds = %156
  %162 = load float*, float** %17, align 8
  %163 = load i64, i64* %16, align 8
  %164 = load i64, i64* %15, align 8
  %165 = mul nsw i64 %163, %164
  %166 = getelementptr inbounds float, float* %162, i64 %165
  store float* %166, float** %26, align 8
  %167 = load float*, float** %19, align 8
  store float* %167, float** %27, align 8
  %168 = load float*, float** %26, align 8
  store float* %168, float** %28, align 8
  %169 = load float*, float** %18, align 8
  %170 = load float*, float** %28, align 8
  %171 = load float*, float** %27, align 8
  %172 = load i64, i64* %12, align 8
  %173 = load i64, i64* %13, align 8
  %174 = load i64, i64* %15, align 8
  %175 = call i32 @convolve_5x5_4_avx(float* %169, float* %170, float* %171, i64 %172, i64 %173, i64 %174)
  %176 = load i64, i64* %13, align 8
  %177 = mul nsw i64 %176, 4
  %178 = load float*, float** %18, align 8
  %179 = getelementptr inbounds float, float* %178, i64 %177
  store float* %179, float** %18, align 8
  br label %180

180:                                              ; preds = %161
  %181 = load i64, i64* %16, align 8
  %182 = add nsw i64 %181, 4
  store i64 %182, i64* %16, align 8
  br label %156

183:                                              ; preds = %156
  br label %184

184:                                              ; preds = %208, %183
  %185 = load i64, i64* %16, align 8
  %186 = load i64, i64* %11, align 8
  %187 = and i64 %186, 4294967294
  %188 = icmp slt i64 %185, %187
  br i1 %188, label %189, label %211

189:                                              ; preds = %184
  %190 = load float*, float** %17, align 8
  %191 = load i64, i64* %16, align 8
  %192 = load i64, i64* %15, align 8
  %193 = mul nsw i64 %191, %192
  %194 = getelementptr inbounds float, float* %190, i64 %193
  store float* %194, float** %29, align 8
  %195 = load float*, float** %19, align 8
  store float* %195, float** %30, align 8
  %196 = load float*, float** %29, align 8
  store float* %196, float** %31, align 8
  %197 = load float*, float** %18, align 8
  %198 = load float*, float** %31, align 8
  %199 = load float*, float** %30, align 8
  %200 = load i64, i64* %12, align 8
  %201 = load i64, i64* %13, align 8
  %202 = load i64, i64* %15, align 8
  %203 = call i32 @convolve_5x5_2_avx(float* %197, float* %198, float* %199, i64 %200, i64 %201, i64 %202)
  %204 = load i64, i64* %13, align 8
  %205 = mul nsw i64 %204, 2
  %206 = load float*, float** %18, align 8
  %207 = getelementptr inbounds float, float* %206, i64 %205
  store float* %207, float** %18, align 8
  br label %208

208:                                              ; preds = %189
  %209 = load i64, i64* %16, align 8
  %210 = add nsw i64 %209, 2
  store i64 %210, i64* %16, align 8
  br label %184

211:                                              ; preds = %184
  br label %212

212:                                              ; preds = %235, %211
  %213 = load i64, i64* %16, align 8
  %214 = load i64, i64* %11, align 8
  %215 = icmp slt i64 %213, %214
  br i1 %215, label %216, label %238

216:                                              ; preds = %212
  %217 = load float*, float** %17, align 8
  %218 = load i64, i64* %16, align 8
  %219 = load i64, i64* %15, align 8
  %220 = mul nsw i64 %218, %219
  %221 = getelementptr inbounds float, float* %217, i64 %220
  store float* %221, float** %32, align 8
  %222 = load float*, float** %19, align 8
  store float* %222, float** %33, align 8
  %223 = load float*, float** %32, align 8
  store float* %223, float** %34, align 8
  %224 = load float*, float** %18, align 8
  %225 = load float*, float** %34, align 8
  %226 = load float*, float** %33, align 8
  %227 = load i64, i64* %12, align 8
  %228 = load i64, i64* %13, align 8
  %229 = load i64, i64* %15, align 8
  %230 = call i32 @convolve_5x5_1_avx(float* %224, float* %225, float* %226, i64 %227, i64 %228, i64 %229)
  %231 = load i64, i64* %13, align 8
  %232 = mul nsw i64 %231, 1
  %233 = load float*, float** %18, align 8
  %234 = getelementptr inbounds float, float* %233, i64 %232
  store float* %234, float** %18, align 8
  br label %235

235:                                              ; preds = %216
  %236 = load i64, i64* %16, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %16, align 8
  br label %212

238:                                              ; preds = %212
  %239 = load i64, i64* %12, align 8
  %240 = and i64 %239, 4294967288
  store i64 %240, i64* %35, align 8
  %241 = load i64, i64* %12, align 8
  %242 = load i64, i64* %35, align 8
  %243 = sub nsw i64 %241, %242
  store i64 %243, i64* %36, align 8
  %244 = load i64, i64* %36, align 8
  %245 = icmp sgt i64 %244, 0
  br i1 %245, label %246, label %260

246:                                              ; preds = %238
  %247 = call i32 (...) @CLEAR_AVX()
  %248 = load float*, float** %8, align 8
  %249 = load i64, i64* %35, align 8
  %250 = getelementptr inbounds float, float* %248, i64 %249
  %251 = load float*, float** %9, align 8
  %252 = load i64, i64* %35, align 8
  %253 = getelementptr inbounds float, float* %251, i64 %252
  %254 = load float*, float** %10, align 8
  %255 = load i64, i64* %11, align 8
  %256 = load i64, i64* %36, align 8
  %257 = load i64, i64* %13, align 8
  %258 = load i64, i64* %14, align 8
  %259 = call i32 @convolve_5x5_sse(float* %250, float* %253, float* %254, i64 %255, i64 %256, i64 %257, i64 %258)
  br label %260

260:                                              ; preds = %46, %60, %74, %88, %246, %238
  ret void
}

declare dso_local i32 @convolve_5x5_64x64_avx(float*, float*, float*, i64, i64, i64) #1

declare dso_local i32 @convolve_5x5_32x32_avx(float*, float*, float*, i64, i64, i64) #1

declare dso_local i32 @convolve_5x5_16x16_avx(float*, float*, float*, i64, i64, i64) #1

declare dso_local i32 @convolve_5x5_8x8_avx(float*, float*, float*, i64, i64, i64) #1

declare dso_local i32 @convolve_5x5_6_avx(float*, float*, float*, i64, i64, i64) #1

declare dso_local i32 @convolve_5x5_2_avx(float*, float*, float*, i64, i64, i64) #1

declare dso_local i32 @convolve_5x5_4_avx(float*, float*, float*, i64, i64, i64) #1

declare dso_local i32 @convolve_5x5_1_avx(float*, float*, float*, i64, i64, i64) #1

declare dso_local i32 @CLEAR_AVX(...) #1

declare dso_local i32 @convolve_5x5_sse(float*, float*, float*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

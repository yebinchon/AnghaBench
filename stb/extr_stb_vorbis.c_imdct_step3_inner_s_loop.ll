; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_imdct_step3_inner_s_loop.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_imdct_step3_inner_s_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float*, i32, i32, float*, i32, i32)* @imdct_step3_inner_s_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imdct_step3_inner_s_loop(i32 %0, float* %1, i32 %2, i32 %3, float* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  store i32 %0, i32* %8, align 4
  store float* %1, float** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store float* %4, float** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %28 = load float*, float** %12, align 8
  %29 = getelementptr inbounds float, float* %28, i64 0
  %30 = load float, float* %29, align 4
  store float %30, float* %16, align 4
  %31 = load float*, float** %12, align 8
  %32 = getelementptr inbounds float, float* %31, i64 1
  %33 = load float, float* %32, align 4
  store float %33, float* %17, align 4
  %34 = load float*, float** %12, align 8
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 0, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %34, i64 %37
  %39 = load float, float* %38, align 4
  store float %39, float* %18, align 4
  %40 = load float*, float** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 0, %41
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %40, i64 %44
  %46 = load float, float* %45, align 4
  store float %46, float* %19, align 4
  %47 = load float*, float** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = mul nsw i32 %48, 2
  %50 = add nsw i32 0, %49
  %51 = add nsw i32 %50, 0
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %47, i64 %52
  %54 = load float, float* %53, align 4
  store float %54, float* %20, align 4
  %55 = load float*, float** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = mul nsw i32 %56, 2
  %58 = add nsw i32 0, %57
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %55, i64 %60
  %62 = load float, float* %61, align 4
  store float %62, float* %21, align 4
  %63 = load float*, float** %12, align 8
  %64 = load i32, i32* %13, align 4
  %65 = mul nsw i32 %64, 3
  %66 = add nsw i32 0, %65
  %67 = add nsw i32 %66, 0
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %63, i64 %68
  %70 = load float, float* %69, align 4
  store float %70, float* %22, align 4
  %71 = load float*, float** %12, align 8
  %72 = load i32, i32* %13, align 4
  %73 = mul nsw i32 %72, 3
  %74 = add nsw i32 0, %73
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %71, i64 %76
  %78 = load float, float* %77, align 4
  store float %78, float* %23, align 4
  %79 = load float*, float** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %79, i64 %81
  store float* %82, float** %26, align 8
  %83 = load float*, float** %26, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %83, i64 %85
  store float* %86, float** %27, align 8
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %302, %7
  %89 = load i32, i32* %15, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %305

91:                                               ; preds = %88
  %92 = load float*, float** %26, align 8
  %93 = getelementptr inbounds float, float* %92, i64 0
  %94 = load float, float* %93, align 4
  %95 = load float*, float** %27, align 8
  %96 = getelementptr inbounds float, float* %95, i64 0
  %97 = load float, float* %96, align 4
  %98 = fsub float %94, %97
  store float %98, float* %24, align 4
  %99 = load float*, float** %26, align 8
  %100 = getelementptr inbounds float, float* %99, i64 -1
  %101 = load float, float* %100, align 4
  %102 = load float*, float** %27, align 8
  %103 = getelementptr inbounds float, float* %102, i64 -1
  %104 = load float, float* %103, align 4
  %105 = fsub float %101, %104
  store float %105, float* %25, align 4
  %106 = load float*, float** %26, align 8
  %107 = getelementptr inbounds float, float* %106, i64 0
  %108 = load float, float* %107, align 4
  %109 = load float*, float** %27, align 8
  %110 = getelementptr inbounds float, float* %109, i64 0
  %111 = load float, float* %110, align 4
  %112 = fadd float %108, %111
  %113 = load float*, float** %26, align 8
  %114 = getelementptr inbounds float, float* %113, i64 0
  store float %112, float* %114, align 4
  %115 = load float*, float** %26, align 8
  %116 = getelementptr inbounds float, float* %115, i64 -1
  %117 = load float, float* %116, align 4
  %118 = load float*, float** %27, align 8
  %119 = getelementptr inbounds float, float* %118, i64 -1
  %120 = load float, float* %119, align 4
  %121 = fadd float %117, %120
  %122 = load float*, float** %26, align 8
  %123 = getelementptr inbounds float, float* %122, i64 -1
  store float %121, float* %123, align 4
  %124 = load float, float* %24, align 4
  %125 = load float, float* %16, align 4
  %126 = fmul float %124, %125
  %127 = load float, float* %25, align 4
  %128 = load float, float* %17, align 4
  %129 = fmul float %127, %128
  %130 = fsub float %126, %129
  %131 = load float*, float** %27, align 8
  %132 = getelementptr inbounds float, float* %131, i64 0
  store float %130, float* %132, align 4
  %133 = load float, float* %25, align 4
  %134 = load float, float* %16, align 4
  %135 = fmul float %133, %134
  %136 = load float, float* %24, align 4
  %137 = load float, float* %17, align 4
  %138 = fmul float %136, %137
  %139 = fadd float %135, %138
  %140 = load float*, float** %27, align 8
  %141 = getelementptr inbounds float, float* %140, i64 -1
  store float %139, float* %141, align 4
  %142 = load float*, float** %26, align 8
  %143 = getelementptr inbounds float, float* %142, i64 -2
  %144 = load float, float* %143, align 4
  %145 = load float*, float** %27, align 8
  %146 = getelementptr inbounds float, float* %145, i64 -2
  %147 = load float, float* %146, align 4
  %148 = fsub float %144, %147
  store float %148, float* %24, align 4
  %149 = load float*, float** %26, align 8
  %150 = getelementptr inbounds float, float* %149, i64 -3
  %151 = load float, float* %150, align 4
  %152 = load float*, float** %27, align 8
  %153 = getelementptr inbounds float, float* %152, i64 -3
  %154 = load float, float* %153, align 4
  %155 = fsub float %151, %154
  store float %155, float* %25, align 4
  %156 = load float*, float** %26, align 8
  %157 = getelementptr inbounds float, float* %156, i64 -2
  %158 = load float, float* %157, align 4
  %159 = load float*, float** %27, align 8
  %160 = getelementptr inbounds float, float* %159, i64 -2
  %161 = load float, float* %160, align 4
  %162 = fadd float %158, %161
  %163 = load float*, float** %26, align 8
  %164 = getelementptr inbounds float, float* %163, i64 -2
  store float %162, float* %164, align 4
  %165 = load float*, float** %26, align 8
  %166 = getelementptr inbounds float, float* %165, i64 -3
  %167 = load float, float* %166, align 4
  %168 = load float*, float** %27, align 8
  %169 = getelementptr inbounds float, float* %168, i64 -3
  %170 = load float, float* %169, align 4
  %171 = fadd float %167, %170
  %172 = load float*, float** %26, align 8
  %173 = getelementptr inbounds float, float* %172, i64 -3
  store float %171, float* %173, align 4
  %174 = load float, float* %24, align 4
  %175 = load float, float* %18, align 4
  %176 = fmul float %174, %175
  %177 = load float, float* %25, align 4
  %178 = load float, float* %19, align 4
  %179 = fmul float %177, %178
  %180 = fsub float %176, %179
  %181 = load float*, float** %27, align 8
  %182 = getelementptr inbounds float, float* %181, i64 -2
  store float %180, float* %182, align 4
  %183 = load float, float* %25, align 4
  %184 = load float, float* %18, align 4
  %185 = fmul float %183, %184
  %186 = load float, float* %24, align 4
  %187 = load float, float* %19, align 4
  %188 = fmul float %186, %187
  %189 = fadd float %185, %188
  %190 = load float*, float** %27, align 8
  %191 = getelementptr inbounds float, float* %190, i64 -3
  store float %189, float* %191, align 4
  %192 = load float*, float** %26, align 8
  %193 = getelementptr inbounds float, float* %192, i64 -4
  %194 = load float, float* %193, align 4
  %195 = load float*, float** %27, align 8
  %196 = getelementptr inbounds float, float* %195, i64 -4
  %197 = load float, float* %196, align 4
  %198 = fsub float %194, %197
  store float %198, float* %24, align 4
  %199 = load float*, float** %26, align 8
  %200 = getelementptr inbounds float, float* %199, i64 -5
  %201 = load float, float* %200, align 4
  %202 = load float*, float** %27, align 8
  %203 = getelementptr inbounds float, float* %202, i64 -5
  %204 = load float, float* %203, align 4
  %205 = fsub float %201, %204
  store float %205, float* %25, align 4
  %206 = load float*, float** %26, align 8
  %207 = getelementptr inbounds float, float* %206, i64 -4
  %208 = load float, float* %207, align 4
  %209 = load float*, float** %27, align 8
  %210 = getelementptr inbounds float, float* %209, i64 -4
  %211 = load float, float* %210, align 4
  %212 = fadd float %208, %211
  %213 = load float*, float** %26, align 8
  %214 = getelementptr inbounds float, float* %213, i64 -4
  store float %212, float* %214, align 4
  %215 = load float*, float** %26, align 8
  %216 = getelementptr inbounds float, float* %215, i64 -5
  %217 = load float, float* %216, align 4
  %218 = load float*, float** %27, align 8
  %219 = getelementptr inbounds float, float* %218, i64 -5
  %220 = load float, float* %219, align 4
  %221 = fadd float %217, %220
  %222 = load float*, float** %26, align 8
  %223 = getelementptr inbounds float, float* %222, i64 -5
  store float %221, float* %223, align 4
  %224 = load float, float* %24, align 4
  %225 = load float, float* %20, align 4
  %226 = fmul float %224, %225
  %227 = load float, float* %25, align 4
  %228 = load float, float* %21, align 4
  %229 = fmul float %227, %228
  %230 = fsub float %226, %229
  %231 = load float*, float** %27, align 8
  %232 = getelementptr inbounds float, float* %231, i64 -4
  store float %230, float* %232, align 4
  %233 = load float, float* %25, align 4
  %234 = load float, float* %20, align 4
  %235 = fmul float %233, %234
  %236 = load float, float* %24, align 4
  %237 = load float, float* %21, align 4
  %238 = fmul float %236, %237
  %239 = fadd float %235, %238
  %240 = load float*, float** %27, align 8
  %241 = getelementptr inbounds float, float* %240, i64 -5
  store float %239, float* %241, align 4
  %242 = load float*, float** %26, align 8
  %243 = getelementptr inbounds float, float* %242, i64 -6
  %244 = load float, float* %243, align 4
  %245 = load float*, float** %27, align 8
  %246 = getelementptr inbounds float, float* %245, i64 -6
  %247 = load float, float* %246, align 4
  %248 = fsub float %244, %247
  store float %248, float* %24, align 4
  %249 = load float*, float** %26, align 8
  %250 = getelementptr inbounds float, float* %249, i64 -7
  %251 = load float, float* %250, align 4
  %252 = load float*, float** %27, align 8
  %253 = getelementptr inbounds float, float* %252, i64 -7
  %254 = load float, float* %253, align 4
  %255 = fsub float %251, %254
  store float %255, float* %25, align 4
  %256 = load float*, float** %26, align 8
  %257 = getelementptr inbounds float, float* %256, i64 -6
  %258 = load float, float* %257, align 4
  %259 = load float*, float** %27, align 8
  %260 = getelementptr inbounds float, float* %259, i64 -6
  %261 = load float, float* %260, align 4
  %262 = fadd float %258, %261
  %263 = load float*, float** %26, align 8
  %264 = getelementptr inbounds float, float* %263, i64 -6
  store float %262, float* %264, align 4
  %265 = load float*, float** %26, align 8
  %266 = getelementptr inbounds float, float* %265, i64 -7
  %267 = load float, float* %266, align 4
  %268 = load float*, float** %27, align 8
  %269 = getelementptr inbounds float, float* %268, i64 -7
  %270 = load float, float* %269, align 4
  %271 = fadd float %267, %270
  %272 = load float*, float** %26, align 8
  %273 = getelementptr inbounds float, float* %272, i64 -7
  store float %271, float* %273, align 4
  %274 = load float, float* %24, align 4
  %275 = load float, float* %22, align 4
  %276 = fmul float %274, %275
  %277 = load float, float* %25, align 4
  %278 = load float, float* %23, align 4
  %279 = fmul float %277, %278
  %280 = fsub float %276, %279
  %281 = load float*, float** %27, align 8
  %282 = getelementptr inbounds float, float* %281, i64 -6
  store float %280, float* %282, align 4
  %283 = load float, float* %25, align 4
  %284 = load float, float* %22, align 4
  %285 = fmul float %283, %284
  %286 = load float, float* %24, align 4
  %287 = load float, float* %23, align 4
  %288 = fmul float %286, %287
  %289 = fadd float %285, %288
  %290 = load float*, float** %27, align 8
  %291 = getelementptr inbounds float, float* %290, i64 -7
  store float %289, float* %291, align 4
  %292 = load i32, i32* %14, align 4
  %293 = load float*, float** %26, align 8
  %294 = sext i32 %292 to i64
  %295 = sub i64 0, %294
  %296 = getelementptr inbounds float, float* %293, i64 %295
  store float* %296, float** %26, align 8
  %297 = load i32, i32* %14, align 4
  %298 = load float*, float** %27, align 8
  %299 = sext i32 %297 to i64
  %300 = sub i64 0, %299
  %301 = getelementptr inbounds float, float* %298, i64 %300
  store float* %301, float** %27, align 8
  br label %302

302:                                              ; preds = %91
  %303 = load i32, i32* %15, align 4
  %304 = add nsw i32 %303, -1
  store i32 %304, i32* %15, align 4
  br label %88

305:                                              ; preds = %88
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

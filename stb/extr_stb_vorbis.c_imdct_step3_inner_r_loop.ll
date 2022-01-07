; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_imdct_step3_inner_r_loop.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_imdct_step3_inner_r_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float*, i32, i32, float*, i32)* @imdct_step3_inner_r_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imdct_step3_inner_r_loop(i32 %0, float* %1, i32 %2, i32 %3, float* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  store i32 %0, i32* %7, align 4
  store float* %1, float** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store float* %4, float** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load float*, float** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %18, i64 %20
  store float* %21, float** %16, align 8
  %22 = load float*, float** %16, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float, float* %22, i64 %24
  store float* %25, float** %17, align 8
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 2
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %268, %6
  %29 = load i32, i32* %13, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %271

31:                                               ; preds = %28
  %32 = load float*, float** %16, align 8
  %33 = getelementptr inbounds float, float* %32, i64 0
  %34 = load float, float* %33, align 4
  %35 = load float*, float** %17, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  %37 = load float, float* %36, align 4
  %38 = fsub float %34, %37
  store float %38, float* %14, align 4
  %39 = load float*, float** %16, align 8
  %40 = getelementptr inbounds float, float* %39, i64 -1
  %41 = load float, float* %40, align 4
  %42 = load float*, float** %17, align 8
  %43 = getelementptr inbounds float, float* %42, i64 -1
  %44 = load float, float* %43, align 4
  %45 = fsub float %41, %44
  store float %45, float* %15, align 4
  %46 = load float*, float** %17, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  %48 = load float, float* %47, align 4
  %49 = load float*, float** %16, align 8
  %50 = getelementptr inbounds float, float* %49, i64 0
  %51 = load float, float* %50, align 4
  %52 = fadd float %51, %48
  store float %52, float* %50, align 4
  %53 = load float*, float** %17, align 8
  %54 = getelementptr inbounds float, float* %53, i64 -1
  %55 = load float, float* %54, align 4
  %56 = load float*, float** %16, align 8
  %57 = getelementptr inbounds float, float* %56, i64 -1
  %58 = load float, float* %57, align 4
  %59 = fadd float %58, %55
  store float %59, float* %57, align 4
  %60 = load float, float* %14, align 4
  %61 = load float*, float** %11, align 8
  %62 = getelementptr inbounds float, float* %61, i64 0
  %63 = load float, float* %62, align 4
  %64 = fmul float %60, %63
  %65 = load float, float* %15, align 4
  %66 = load float*, float** %11, align 8
  %67 = getelementptr inbounds float, float* %66, i64 1
  %68 = load float, float* %67, align 4
  %69 = fmul float %65, %68
  %70 = fsub float %64, %69
  %71 = load float*, float** %17, align 8
  %72 = getelementptr inbounds float, float* %71, i64 0
  store float %70, float* %72, align 4
  %73 = load float, float* %15, align 4
  %74 = load float*, float** %11, align 8
  %75 = getelementptr inbounds float, float* %74, i64 0
  %76 = load float, float* %75, align 4
  %77 = fmul float %73, %76
  %78 = load float, float* %14, align 4
  %79 = load float*, float** %11, align 8
  %80 = getelementptr inbounds float, float* %79, i64 1
  %81 = load float, float* %80, align 4
  %82 = fmul float %78, %81
  %83 = fadd float %77, %82
  %84 = load float*, float** %17, align 8
  %85 = getelementptr inbounds float, float* %84, i64 -1
  store float %83, float* %85, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load float*, float** %11, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds float, float* %87, i64 %88
  store float* %89, float** %11, align 8
  %90 = load float*, float** %16, align 8
  %91 = getelementptr inbounds float, float* %90, i64 -2
  %92 = load float, float* %91, align 4
  %93 = load float*, float** %17, align 8
  %94 = getelementptr inbounds float, float* %93, i64 -2
  %95 = load float, float* %94, align 4
  %96 = fsub float %92, %95
  store float %96, float* %14, align 4
  %97 = load float*, float** %16, align 8
  %98 = getelementptr inbounds float, float* %97, i64 -3
  %99 = load float, float* %98, align 4
  %100 = load float*, float** %17, align 8
  %101 = getelementptr inbounds float, float* %100, i64 -3
  %102 = load float, float* %101, align 4
  %103 = fsub float %99, %102
  store float %103, float* %15, align 4
  %104 = load float*, float** %17, align 8
  %105 = getelementptr inbounds float, float* %104, i64 -2
  %106 = load float, float* %105, align 4
  %107 = load float*, float** %16, align 8
  %108 = getelementptr inbounds float, float* %107, i64 -2
  %109 = load float, float* %108, align 4
  %110 = fadd float %109, %106
  store float %110, float* %108, align 4
  %111 = load float*, float** %17, align 8
  %112 = getelementptr inbounds float, float* %111, i64 -3
  %113 = load float, float* %112, align 4
  %114 = load float*, float** %16, align 8
  %115 = getelementptr inbounds float, float* %114, i64 -3
  %116 = load float, float* %115, align 4
  %117 = fadd float %116, %113
  store float %117, float* %115, align 4
  %118 = load float, float* %14, align 4
  %119 = load float*, float** %11, align 8
  %120 = getelementptr inbounds float, float* %119, i64 0
  %121 = load float, float* %120, align 4
  %122 = fmul float %118, %121
  %123 = load float, float* %15, align 4
  %124 = load float*, float** %11, align 8
  %125 = getelementptr inbounds float, float* %124, i64 1
  %126 = load float, float* %125, align 4
  %127 = fmul float %123, %126
  %128 = fsub float %122, %127
  %129 = load float*, float** %17, align 8
  %130 = getelementptr inbounds float, float* %129, i64 -2
  store float %128, float* %130, align 4
  %131 = load float, float* %15, align 4
  %132 = load float*, float** %11, align 8
  %133 = getelementptr inbounds float, float* %132, i64 0
  %134 = load float, float* %133, align 4
  %135 = fmul float %131, %134
  %136 = load float, float* %14, align 4
  %137 = load float*, float** %11, align 8
  %138 = getelementptr inbounds float, float* %137, i64 1
  %139 = load float, float* %138, align 4
  %140 = fmul float %136, %139
  %141 = fadd float %135, %140
  %142 = load float*, float** %17, align 8
  %143 = getelementptr inbounds float, float* %142, i64 -3
  store float %141, float* %143, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load float*, float** %11, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds float, float* %145, i64 %146
  store float* %147, float** %11, align 8
  %148 = load float*, float** %16, align 8
  %149 = getelementptr inbounds float, float* %148, i64 -4
  %150 = load float, float* %149, align 4
  %151 = load float*, float** %17, align 8
  %152 = getelementptr inbounds float, float* %151, i64 -4
  %153 = load float, float* %152, align 4
  %154 = fsub float %150, %153
  store float %154, float* %14, align 4
  %155 = load float*, float** %16, align 8
  %156 = getelementptr inbounds float, float* %155, i64 -5
  %157 = load float, float* %156, align 4
  %158 = load float*, float** %17, align 8
  %159 = getelementptr inbounds float, float* %158, i64 -5
  %160 = load float, float* %159, align 4
  %161 = fsub float %157, %160
  store float %161, float* %15, align 4
  %162 = load float*, float** %17, align 8
  %163 = getelementptr inbounds float, float* %162, i64 -4
  %164 = load float, float* %163, align 4
  %165 = load float*, float** %16, align 8
  %166 = getelementptr inbounds float, float* %165, i64 -4
  %167 = load float, float* %166, align 4
  %168 = fadd float %167, %164
  store float %168, float* %166, align 4
  %169 = load float*, float** %17, align 8
  %170 = getelementptr inbounds float, float* %169, i64 -5
  %171 = load float, float* %170, align 4
  %172 = load float*, float** %16, align 8
  %173 = getelementptr inbounds float, float* %172, i64 -5
  %174 = load float, float* %173, align 4
  %175 = fadd float %174, %171
  store float %175, float* %173, align 4
  %176 = load float, float* %14, align 4
  %177 = load float*, float** %11, align 8
  %178 = getelementptr inbounds float, float* %177, i64 0
  %179 = load float, float* %178, align 4
  %180 = fmul float %176, %179
  %181 = load float, float* %15, align 4
  %182 = load float*, float** %11, align 8
  %183 = getelementptr inbounds float, float* %182, i64 1
  %184 = load float, float* %183, align 4
  %185 = fmul float %181, %184
  %186 = fsub float %180, %185
  %187 = load float*, float** %17, align 8
  %188 = getelementptr inbounds float, float* %187, i64 -4
  store float %186, float* %188, align 4
  %189 = load float, float* %15, align 4
  %190 = load float*, float** %11, align 8
  %191 = getelementptr inbounds float, float* %190, i64 0
  %192 = load float, float* %191, align 4
  %193 = fmul float %189, %192
  %194 = load float, float* %14, align 4
  %195 = load float*, float** %11, align 8
  %196 = getelementptr inbounds float, float* %195, i64 1
  %197 = load float, float* %196, align 4
  %198 = fmul float %194, %197
  %199 = fadd float %193, %198
  %200 = load float*, float** %17, align 8
  %201 = getelementptr inbounds float, float* %200, i64 -5
  store float %199, float* %201, align 4
  %202 = load i32, i32* %12, align 4
  %203 = load float*, float** %11, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds float, float* %203, i64 %204
  store float* %205, float** %11, align 8
  %206 = load float*, float** %16, align 8
  %207 = getelementptr inbounds float, float* %206, i64 -6
  %208 = load float, float* %207, align 4
  %209 = load float*, float** %17, align 8
  %210 = getelementptr inbounds float, float* %209, i64 -6
  %211 = load float, float* %210, align 4
  %212 = fsub float %208, %211
  store float %212, float* %14, align 4
  %213 = load float*, float** %16, align 8
  %214 = getelementptr inbounds float, float* %213, i64 -7
  %215 = load float, float* %214, align 4
  %216 = load float*, float** %17, align 8
  %217 = getelementptr inbounds float, float* %216, i64 -7
  %218 = load float, float* %217, align 4
  %219 = fsub float %215, %218
  store float %219, float* %15, align 4
  %220 = load float*, float** %17, align 8
  %221 = getelementptr inbounds float, float* %220, i64 -6
  %222 = load float, float* %221, align 4
  %223 = load float*, float** %16, align 8
  %224 = getelementptr inbounds float, float* %223, i64 -6
  %225 = load float, float* %224, align 4
  %226 = fadd float %225, %222
  store float %226, float* %224, align 4
  %227 = load float*, float** %17, align 8
  %228 = getelementptr inbounds float, float* %227, i64 -7
  %229 = load float, float* %228, align 4
  %230 = load float*, float** %16, align 8
  %231 = getelementptr inbounds float, float* %230, i64 -7
  %232 = load float, float* %231, align 4
  %233 = fadd float %232, %229
  store float %233, float* %231, align 4
  %234 = load float, float* %14, align 4
  %235 = load float*, float** %11, align 8
  %236 = getelementptr inbounds float, float* %235, i64 0
  %237 = load float, float* %236, align 4
  %238 = fmul float %234, %237
  %239 = load float, float* %15, align 4
  %240 = load float*, float** %11, align 8
  %241 = getelementptr inbounds float, float* %240, i64 1
  %242 = load float, float* %241, align 4
  %243 = fmul float %239, %242
  %244 = fsub float %238, %243
  %245 = load float*, float** %17, align 8
  %246 = getelementptr inbounds float, float* %245, i64 -6
  store float %244, float* %246, align 4
  %247 = load float, float* %15, align 4
  %248 = load float*, float** %11, align 8
  %249 = getelementptr inbounds float, float* %248, i64 0
  %250 = load float, float* %249, align 4
  %251 = fmul float %247, %250
  %252 = load float, float* %14, align 4
  %253 = load float*, float** %11, align 8
  %254 = getelementptr inbounds float, float* %253, i64 1
  %255 = load float, float* %254, align 4
  %256 = fmul float %252, %255
  %257 = fadd float %251, %256
  %258 = load float*, float** %17, align 8
  %259 = getelementptr inbounds float, float* %258, i64 -7
  store float %257, float* %259, align 4
  %260 = load float*, float** %16, align 8
  %261 = getelementptr inbounds float, float* %260, i64 -8
  store float* %261, float** %16, align 8
  %262 = load float*, float** %17, align 8
  %263 = getelementptr inbounds float, float* %262, i64 -8
  store float* %263, float** %17, align 8
  %264 = load i32, i32* %12, align 4
  %265 = load float*, float** %11, align 8
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds float, float* %265, i64 %266
  store float* %267, float** %11, align 8
  br label %268

268:                                              ; preds = %31
  %269 = load i32, i32* %13, align 4
  %270 = add nsw i32 %269, -1
  store i32 %270, i32* %13, align 4
  br label %28

271:                                              ; preds = %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

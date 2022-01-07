; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/extr_param_eq.c_CalcShelfEQCoeffs.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/extr_param_eq.c_CalcShelfEQCoeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, float, i32, float, float*)* @CalcShelfEQCoeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CalcShelfEQCoeffs(float %0, float %1, float %2, i32 %3, float %4, float* %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  store float* %5, float** %12, align 8
  %22 = load float, float* %7, align 4
  %23 = load float, float* %11, align 4
  %24 = fdiv float %23, 2.000000e+00
  %25 = fmul float %24, 0x3FEE666660000000
  %26 = fcmp ogt float %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load float, float* %11, align 4
  %29 = fdiv float %28, 2.000000e+00
  %30 = fmul float %29, 0x3FEE666660000000
  store float %30, float* %7, align 4
  br label %31

31:                                               ; preds = %27, %6
  %32 = load float, float* %9, align 4
  %33 = fcmp olt float %32, -4.000000e+01
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store float -4.000000e+01, float* %9, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load float, float* %9, align 4
  %37 = fcmp ogt float %36, 4.000000e+01
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store float 4.000000e+01, float* %9, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load float, float* %9, align 4
  %41 = fdiv float %40, 4.000000e+01
  %42 = call float @powf(i32 10, float %41)
  store float %42, float* %13, align 4
  %43 = load float, float* %7, align 4
  %44 = fmul float 0x401921FB80000000, %43
  %45 = load float, float* %11, align 4
  %46 = fdiv float %44, %45
  store float %46, float* %14, align 4
  %47 = load float, float* %14, align 4
  %48 = call i32 @sinf(float %47)
  %49 = sdiv i32 %48, 2
  %50 = load float, float* %13, align 4
  %51 = load float, float* %13, align 4
  %52 = fdiv float 1.000000e+00, %51
  %53 = fadd float %50, %52
  %54 = load float, float* %8, align 4
  %55 = fdiv float 1.000000e+00, %54
  %56 = fsub float %55, 1.000000e+00
  %57 = fmul float %53, %56
  %58 = fadd float %57, 2.000000e+00
  %59 = call i32 @sqrtf(float %58)
  %60 = mul nsw i32 %49, %59
  %61 = sitofp i32 %60 to float
  store float %61, float* %15, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %149

64:                                               ; preds = %39
  %65 = load float, float* %13, align 4
  %66 = load float, float* %13, align 4
  %67 = fadd float %66, 1.000000e+00
  %68 = load float, float* %13, align 4
  %69 = fsub float %68, 1.000000e+00
  %70 = load float, float* %14, align 4
  %71 = call float @cosf(float %70) #3
  %72 = fmul float %69, %71
  %73 = fadd float %67, %72
  %74 = load float, float* %13, align 4
  %75 = call i32 @sqrtf(float %74)
  %76 = mul nsw i32 2, %75
  %77 = sitofp i32 %76 to float
  %78 = load float, float* %15, align 4
  %79 = fmul float %77, %78
  %80 = fadd float %73, %79
  %81 = fmul float %65, %80
  store float %81, float* %16, align 4
  %82 = load float, float* %13, align 4
  %83 = fmul float -2.000000e+00, %82
  %84 = load float, float* %13, align 4
  %85 = fsub float %84, 1.000000e+00
  %86 = load float, float* %13, align 4
  %87 = fadd float %86, 1.000000e+00
  %88 = load float, float* %14, align 4
  %89 = call float @cosf(float %88) #3
  %90 = fmul float %87, %89
  %91 = fadd float %85, %90
  %92 = fmul float %83, %91
  store float %92, float* %17, align 4
  %93 = load float, float* %13, align 4
  %94 = load float, float* %13, align 4
  %95 = fadd float %94, 1.000000e+00
  %96 = load float, float* %13, align 4
  %97 = fsub float %96, 1.000000e+00
  %98 = load float, float* %14, align 4
  %99 = call float @cosf(float %98) #3
  %100 = fmul float %97, %99
  %101 = fadd float %95, %100
  %102 = load float, float* %13, align 4
  %103 = call i32 @sqrtf(float %102)
  %104 = mul nsw i32 2, %103
  %105 = sitofp i32 %104 to float
  %106 = load float, float* %15, align 4
  %107 = fmul float %105, %106
  %108 = fsub float %101, %107
  %109 = fmul float %93, %108
  store float %109, float* %18, align 4
  %110 = load float, float* %13, align 4
  %111 = fadd float %110, 1.000000e+00
  %112 = load float, float* %13, align 4
  %113 = fsub float %112, 1.000000e+00
  %114 = load float, float* %14, align 4
  %115 = call float @cosf(float %114) #3
  %116 = fmul float %113, %115
  %117 = fsub float %111, %116
  %118 = load float, float* %13, align 4
  %119 = call i32 @sqrtf(float %118)
  %120 = mul nsw i32 2, %119
  %121 = sitofp i32 %120 to float
  %122 = load float, float* %15, align 4
  %123 = fmul float %121, %122
  %124 = fadd float %117, %123
  store float %124, float* %19, align 4
  %125 = load float, float* %13, align 4
  %126 = fsub float %125, 1.000000e+00
  %127 = load float, float* %13, align 4
  %128 = fadd float %127, 1.000000e+00
  %129 = load float, float* %14, align 4
  %130 = call float @cosf(float %129) #3
  %131 = fmul float %128, %130
  %132 = fsub float %126, %131
  %133 = fmul float 2.000000e+00, %132
  store float %133, float* %20, align 4
  %134 = load float, float* %13, align 4
  %135 = fadd float %134, 1.000000e+00
  %136 = load float, float* %13, align 4
  %137 = fsub float %136, 1.000000e+00
  %138 = load float, float* %14, align 4
  %139 = call float @cosf(float %138) #3
  %140 = fmul float %137, %139
  %141 = fsub float %135, %140
  %142 = load float, float* %13, align 4
  %143 = call i32 @sqrtf(float %142)
  %144 = mul nsw i32 2, %143
  %145 = sitofp i32 %144 to float
  %146 = load float, float* %15, align 4
  %147 = fmul float %145, %146
  %148 = fsub float %141, %147
  store float %148, float* %21, align 4
  br label %234

149:                                              ; preds = %39
  %150 = load float, float* %13, align 4
  %151 = load float, float* %13, align 4
  %152 = fadd float %151, 1.000000e+00
  %153 = load float, float* %13, align 4
  %154 = fsub float %153, 1.000000e+00
  %155 = load float, float* %14, align 4
  %156 = call float @cosf(float %155) #3
  %157 = fmul float %154, %156
  %158 = fsub float %152, %157
  %159 = load float, float* %13, align 4
  %160 = call i32 @sqrtf(float %159)
  %161 = mul nsw i32 2, %160
  %162 = sitofp i32 %161 to float
  %163 = load float, float* %15, align 4
  %164 = fmul float %162, %163
  %165 = fadd float %158, %164
  %166 = fmul float %150, %165
  store float %166, float* %16, align 4
  %167 = load float, float* %13, align 4
  %168 = fmul float 2.000000e+00, %167
  %169 = load float, float* %13, align 4
  %170 = fsub float %169, 1.000000e+00
  %171 = load float, float* %13, align 4
  %172 = fadd float %171, 1.000000e+00
  %173 = load float, float* %14, align 4
  %174 = call float @cosf(float %173) #3
  %175 = fmul float %172, %174
  %176 = fsub float %170, %175
  %177 = fmul float %168, %176
  store float %177, float* %17, align 4
  %178 = load float, float* %13, align 4
  %179 = load float, float* %13, align 4
  %180 = fadd float %179, 1.000000e+00
  %181 = load float, float* %13, align 4
  %182 = fsub float %181, 1.000000e+00
  %183 = load float, float* %14, align 4
  %184 = call float @cosf(float %183) #3
  %185 = fmul float %182, %184
  %186 = fsub float %180, %185
  %187 = load float, float* %13, align 4
  %188 = call i32 @sqrtf(float %187)
  %189 = mul nsw i32 2, %188
  %190 = sitofp i32 %189 to float
  %191 = load float, float* %15, align 4
  %192 = fmul float %190, %191
  %193 = fsub float %186, %192
  %194 = fmul float %178, %193
  store float %194, float* %18, align 4
  %195 = load float, float* %13, align 4
  %196 = fadd float %195, 1.000000e+00
  %197 = load float, float* %13, align 4
  %198 = fsub float %197, 1.000000e+00
  %199 = load float, float* %14, align 4
  %200 = call float @cosf(float %199) #3
  %201 = fmul float %198, %200
  %202 = fadd float %196, %201
  %203 = load float, float* %13, align 4
  %204 = call i32 @sqrtf(float %203)
  %205 = mul nsw i32 2, %204
  %206 = sitofp i32 %205 to float
  %207 = load float, float* %15, align 4
  %208 = fmul float %206, %207
  %209 = fadd float %202, %208
  store float %209, float* %19, align 4
  %210 = load float, float* %13, align 4
  %211 = fsub float %210, 1.000000e+00
  %212 = load float, float* %13, align 4
  %213 = fadd float %212, 1.000000e+00
  %214 = load float, float* %14, align 4
  %215 = call float @cosf(float %214) #3
  %216 = fmul float %213, %215
  %217 = fadd float %211, %216
  %218 = fmul float -2.000000e+00, %217
  store float %218, float* %20, align 4
  %219 = load float, float* %13, align 4
  %220 = fadd float %219, 1.000000e+00
  %221 = load float, float* %13, align 4
  %222 = fsub float %221, 1.000000e+00
  %223 = load float, float* %14, align 4
  %224 = call float @cosf(float %223) #3
  %225 = fmul float %222, %224
  %226 = fadd float %220, %225
  %227 = load float, float* %13, align 4
  %228 = call i32 @sqrtf(float %227)
  %229 = mul nsw i32 2, %228
  %230 = sitofp i32 %229 to float
  %231 = load float, float* %15, align 4
  %232 = fmul float %230, %231
  %233 = fsub float %226, %232
  store float %233, float* %21, align 4
  br label %234

234:                                              ; preds = %149, %64
  %235 = load float, float* %16, align 4
  %236 = load float, float* %19, align 4
  %237 = fdiv float %235, %236
  %238 = load float*, float** %12, align 8
  %239 = getelementptr inbounds float, float* %238, i64 0
  store float %237, float* %239, align 4
  %240 = load float, float* %17, align 4
  %241 = load float, float* %19, align 4
  %242 = fdiv float %240, %241
  %243 = load float*, float** %12, align 8
  %244 = getelementptr inbounds float, float* %243, i64 1
  store float %242, float* %244, align 4
  %245 = load float, float* %18, align 4
  %246 = load float, float* %19, align 4
  %247 = fdiv float %245, %246
  %248 = load float*, float** %12, align 8
  %249 = getelementptr inbounds float, float* %248, i64 2
  store float %247, float* %249, align 4
  %250 = load float, float* %20, align 4
  %251 = load float, float* %19, align 4
  %252 = fdiv float %250, %251
  %253 = load float*, float** %12, align 8
  %254 = getelementptr inbounds float, float* %253, i64 3
  store float %252, float* %254, align 4
  %255 = load float, float* %21, align 4
  %256 = load float, float* %19, align 4
  %257 = fdiv float %255, %256
  %258 = load float*, float** %12, align 8
  %259 = getelementptr inbounds float, float* %258, i64 4
  store float %257, float* %259, align 4
  ret void
}

declare dso_local float @powf(i32, float) #1

declare dso_local i32 @sinf(float) #1

declare dso_local i32 @sqrtf(float) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

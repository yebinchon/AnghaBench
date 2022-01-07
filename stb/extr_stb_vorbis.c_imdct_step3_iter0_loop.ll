; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_imdct_step3_iter0_loop.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_imdct_step3_iter0_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float*, i32, i32, float*)* @imdct_step3_iter0_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imdct_step3_iter0_loop(i32 %0, float* %1, i32 %2, i32 %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store float* %4, float** %10, align 8
  %16 = load float*, float** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, float* %16, i64 %18
  store float* %19, float** %11, align 8
  %20 = load float*, float** %11, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %20, i64 %22
  store float* %23, float** %12, align 8
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 3
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 2
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %263, %5
  %32 = load i32, i32* %13, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %266

34:                                               ; preds = %31
  %35 = load float*, float** %11, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  %37 = load float, float* %36, align 4
  %38 = load float*, float** %12, align 8
  %39 = getelementptr inbounds float, float* %38, i64 0
  %40 = load float, float* %39, align 4
  %41 = fsub float %37, %40
  store float %41, float* %14, align 4
  %42 = load float*, float** %11, align 8
  %43 = getelementptr inbounds float, float* %42, i64 -1
  %44 = load float, float* %43, align 4
  %45 = load float*, float** %12, align 8
  %46 = getelementptr inbounds float, float* %45, i64 -1
  %47 = load float, float* %46, align 4
  %48 = fsub float %44, %47
  store float %48, float* %15, align 4
  %49 = load float*, float** %12, align 8
  %50 = getelementptr inbounds float, float* %49, i64 0
  %51 = load float, float* %50, align 4
  %52 = load float*, float** %11, align 8
  %53 = getelementptr inbounds float, float* %52, i64 0
  %54 = load float, float* %53, align 4
  %55 = fadd float %54, %51
  store float %55, float* %53, align 4
  %56 = load float*, float** %12, align 8
  %57 = getelementptr inbounds float, float* %56, i64 -1
  %58 = load float, float* %57, align 4
  %59 = load float*, float** %11, align 8
  %60 = getelementptr inbounds float, float* %59, i64 -1
  %61 = load float, float* %60, align 4
  %62 = fadd float %61, %58
  store float %62, float* %60, align 4
  %63 = load float, float* %14, align 4
  %64 = load float*, float** %10, align 8
  %65 = getelementptr inbounds float, float* %64, i64 0
  %66 = load float, float* %65, align 4
  %67 = fmul float %63, %66
  %68 = load float, float* %15, align 4
  %69 = load float*, float** %10, align 8
  %70 = getelementptr inbounds float, float* %69, i64 1
  %71 = load float, float* %70, align 4
  %72 = fmul float %68, %71
  %73 = fsub float %67, %72
  %74 = load float*, float** %12, align 8
  %75 = getelementptr inbounds float, float* %74, i64 0
  store float %73, float* %75, align 4
  %76 = load float, float* %15, align 4
  %77 = load float*, float** %10, align 8
  %78 = getelementptr inbounds float, float* %77, i64 0
  %79 = load float, float* %78, align 4
  %80 = fmul float %76, %79
  %81 = load float, float* %14, align 4
  %82 = load float*, float** %10, align 8
  %83 = getelementptr inbounds float, float* %82, i64 1
  %84 = load float, float* %83, align 4
  %85 = fmul float %81, %84
  %86 = fadd float %80, %85
  %87 = load float*, float** %12, align 8
  %88 = getelementptr inbounds float, float* %87, i64 -1
  store float %86, float* %88, align 4
  %89 = load float*, float** %10, align 8
  %90 = getelementptr inbounds float, float* %89, i64 8
  store float* %90, float** %10, align 8
  %91 = load float*, float** %11, align 8
  %92 = getelementptr inbounds float, float* %91, i64 -2
  %93 = load float, float* %92, align 4
  %94 = load float*, float** %12, align 8
  %95 = getelementptr inbounds float, float* %94, i64 -2
  %96 = load float, float* %95, align 4
  %97 = fsub float %93, %96
  store float %97, float* %14, align 4
  %98 = load float*, float** %11, align 8
  %99 = getelementptr inbounds float, float* %98, i64 -3
  %100 = load float, float* %99, align 4
  %101 = load float*, float** %12, align 8
  %102 = getelementptr inbounds float, float* %101, i64 -3
  %103 = load float, float* %102, align 4
  %104 = fsub float %100, %103
  store float %104, float* %15, align 4
  %105 = load float*, float** %12, align 8
  %106 = getelementptr inbounds float, float* %105, i64 -2
  %107 = load float, float* %106, align 4
  %108 = load float*, float** %11, align 8
  %109 = getelementptr inbounds float, float* %108, i64 -2
  %110 = load float, float* %109, align 4
  %111 = fadd float %110, %107
  store float %111, float* %109, align 4
  %112 = load float*, float** %12, align 8
  %113 = getelementptr inbounds float, float* %112, i64 -3
  %114 = load float, float* %113, align 4
  %115 = load float*, float** %11, align 8
  %116 = getelementptr inbounds float, float* %115, i64 -3
  %117 = load float, float* %116, align 4
  %118 = fadd float %117, %114
  store float %118, float* %116, align 4
  %119 = load float, float* %14, align 4
  %120 = load float*, float** %10, align 8
  %121 = getelementptr inbounds float, float* %120, i64 0
  %122 = load float, float* %121, align 4
  %123 = fmul float %119, %122
  %124 = load float, float* %15, align 4
  %125 = load float*, float** %10, align 8
  %126 = getelementptr inbounds float, float* %125, i64 1
  %127 = load float, float* %126, align 4
  %128 = fmul float %124, %127
  %129 = fsub float %123, %128
  %130 = load float*, float** %12, align 8
  %131 = getelementptr inbounds float, float* %130, i64 -2
  store float %129, float* %131, align 4
  %132 = load float, float* %15, align 4
  %133 = load float*, float** %10, align 8
  %134 = getelementptr inbounds float, float* %133, i64 0
  %135 = load float, float* %134, align 4
  %136 = fmul float %132, %135
  %137 = load float, float* %14, align 4
  %138 = load float*, float** %10, align 8
  %139 = getelementptr inbounds float, float* %138, i64 1
  %140 = load float, float* %139, align 4
  %141 = fmul float %137, %140
  %142 = fadd float %136, %141
  %143 = load float*, float** %12, align 8
  %144 = getelementptr inbounds float, float* %143, i64 -3
  store float %142, float* %144, align 4
  %145 = load float*, float** %10, align 8
  %146 = getelementptr inbounds float, float* %145, i64 8
  store float* %146, float** %10, align 8
  %147 = load float*, float** %11, align 8
  %148 = getelementptr inbounds float, float* %147, i64 -4
  %149 = load float, float* %148, align 4
  %150 = load float*, float** %12, align 8
  %151 = getelementptr inbounds float, float* %150, i64 -4
  %152 = load float, float* %151, align 4
  %153 = fsub float %149, %152
  store float %153, float* %14, align 4
  %154 = load float*, float** %11, align 8
  %155 = getelementptr inbounds float, float* %154, i64 -5
  %156 = load float, float* %155, align 4
  %157 = load float*, float** %12, align 8
  %158 = getelementptr inbounds float, float* %157, i64 -5
  %159 = load float, float* %158, align 4
  %160 = fsub float %156, %159
  store float %160, float* %15, align 4
  %161 = load float*, float** %12, align 8
  %162 = getelementptr inbounds float, float* %161, i64 -4
  %163 = load float, float* %162, align 4
  %164 = load float*, float** %11, align 8
  %165 = getelementptr inbounds float, float* %164, i64 -4
  %166 = load float, float* %165, align 4
  %167 = fadd float %166, %163
  store float %167, float* %165, align 4
  %168 = load float*, float** %12, align 8
  %169 = getelementptr inbounds float, float* %168, i64 -5
  %170 = load float, float* %169, align 4
  %171 = load float*, float** %11, align 8
  %172 = getelementptr inbounds float, float* %171, i64 -5
  %173 = load float, float* %172, align 4
  %174 = fadd float %173, %170
  store float %174, float* %172, align 4
  %175 = load float, float* %14, align 4
  %176 = load float*, float** %10, align 8
  %177 = getelementptr inbounds float, float* %176, i64 0
  %178 = load float, float* %177, align 4
  %179 = fmul float %175, %178
  %180 = load float, float* %15, align 4
  %181 = load float*, float** %10, align 8
  %182 = getelementptr inbounds float, float* %181, i64 1
  %183 = load float, float* %182, align 4
  %184 = fmul float %180, %183
  %185 = fsub float %179, %184
  %186 = load float*, float** %12, align 8
  %187 = getelementptr inbounds float, float* %186, i64 -4
  store float %185, float* %187, align 4
  %188 = load float, float* %15, align 4
  %189 = load float*, float** %10, align 8
  %190 = getelementptr inbounds float, float* %189, i64 0
  %191 = load float, float* %190, align 4
  %192 = fmul float %188, %191
  %193 = load float, float* %14, align 4
  %194 = load float*, float** %10, align 8
  %195 = getelementptr inbounds float, float* %194, i64 1
  %196 = load float, float* %195, align 4
  %197 = fmul float %193, %196
  %198 = fadd float %192, %197
  %199 = load float*, float** %12, align 8
  %200 = getelementptr inbounds float, float* %199, i64 -5
  store float %198, float* %200, align 4
  %201 = load float*, float** %10, align 8
  %202 = getelementptr inbounds float, float* %201, i64 8
  store float* %202, float** %10, align 8
  %203 = load float*, float** %11, align 8
  %204 = getelementptr inbounds float, float* %203, i64 -6
  %205 = load float, float* %204, align 4
  %206 = load float*, float** %12, align 8
  %207 = getelementptr inbounds float, float* %206, i64 -6
  %208 = load float, float* %207, align 4
  %209 = fsub float %205, %208
  store float %209, float* %14, align 4
  %210 = load float*, float** %11, align 8
  %211 = getelementptr inbounds float, float* %210, i64 -7
  %212 = load float, float* %211, align 4
  %213 = load float*, float** %12, align 8
  %214 = getelementptr inbounds float, float* %213, i64 -7
  %215 = load float, float* %214, align 4
  %216 = fsub float %212, %215
  store float %216, float* %15, align 4
  %217 = load float*, float** %12, align 8
  %218 = getelementptr inbounds float, float* %217, i64 -6
  %219 = load float, float* %218, align 4
  %220 = load float*, float** %11, align 8
  %221 = getelementptr inbounds float, float* %220, i64 -6
  %222 = load float, float* %221, align 4
  %223 = fadd float %222, %219
  store float %223, float* %221, align 4
  %224 = load float*, float** %12, align 8
  %225 = getelementptr inbounds float, float* %224, i64 -7
  %226 = load float, float* %225, align 4
  %227 = load float*, float** %11, align 8
  %228 = getelementptr inbounds float, float* %227, i64 -7
  %229 = load float, float* %228, align 4
  %230 = fadd float %229, %226
  store float %230, float* %228, align 4
  %231 = load float, float* %14, align 4
  %232 = load float*, float** %10, align 8
  %233 = getelementptr inbounds float, float* %232, i64 0
  %234 = load float, float* %233, align 4
  %235 = fmul float %231, %234
  %236 = load float, float* %15, align 4
  %237 = load float*, float** %10, align 8
  %238 = getelementptr inbounds float, float* %237, i64 1
  %239 = load float, float* %238, align 4
  %240 = fmul float %236, %239
  %241 = fsub float %235, %240
  %242 = load float*, float** %12, align 8
  %243 = getelementptr inbounds float, float* %242, i64 -6
  store float %241, float* %243, align 4
  %244 = load float, float* %15, align 4
  %245 = load float*, float** %10, align 8
  %246 = getelementptr inbounds float, float* %245, i64 0
  %247 = load float, float* %246, align 4
  %248 = fmul float %244, %247
  %249 = load float, float* %14, align 4
  %250 = load float*, float** %10, align 8
  %251 = getelementptr inbounds float, float* %250, i64 1
  %252 = load float, float* %251, align 4
  %253 = fmul float %249, %252
  %254 = fadd float %248, %253
  %255 = load float*, float** %12, align 8
  %256 = getelementptr inbounds float, float* %255, i64 -7
  store float %254, float* %256, align 4
  %257 = load float*, float** %10, align 8
  %258 = getelementptr inbounds float, float* %257, i64 8
  store float* %258, float** %10, align 8
  %259 = load float*, float** %11, align 8
  %260 = getelementptr inbounds float, float* %259, i64 -8
  store float* %260, float** %11, align 8
  %261 = load float*, float** %12, align 8
  %262 = getelementptr inbounds float, float* %261, i64 -8
  store float* %262, float** %12, align 8
  br label %263

263:                                              ; preds = %34
  %264 = load i32, i32* %13, align 4
  %265 = add nsw i32 %264, -1
  store i32 %265, i32* %13, align 4
  br label %31

266:                                              ; preds = %31
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

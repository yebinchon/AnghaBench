; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_imdct_step3_inner_s_loop_ld654.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_imdct_step3_inner_s_loop_ld654.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float*, i32, float*, i32)* @imdct_step3_inner_s_loop_ld654 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imdct_step3_inner_s_loop_ld654(i32 %0, float* %1, i32 %2, float* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store float* %3, float** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = ashr i32 %17, 3
  store i32 %18, i32* %11, align 4
  %19 = load float*, float** %9, align 8
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 0, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %19, i64 %22
  %24 = load float, float* %23, align 4
  store float %24, float* %12, align 4
  %25 = load float*, float** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  store float* %28, float** %13, align 8
  %29 = load float*, float** %13, align 8
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 16, %30
  %32 = sext i32 %31 to i64
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds float, float* %29, i64 %33
  store float* %34, float** %14, align 8
  br label %35

35:                                               ; preds = %39, %5
  %36 = load float*, float** %13, align 8
  %37 = load float*, float** %14, align 8
  %38 = icmp ugt float* %36, %37
  br i1 %38, label %39, label %215

39:                                               ; preds = %35
  %40 = load float*, float** %13, align 8
  %41 = getelementptr inbounds float, float* %40, i64 0
  %42 = load float, float* %41, align 4
  %43 = load float*, float** %13, align 8
  %44 = getelementptr inbounds float, float* %43, i64 -8
  %45 = load float, float* %44, align 4
  %46 = fsub float %42, %45
  store float %46, float* %15, align 4
  %47 = load float*, float** %13, align 8
  %48 = getelementptr inbounds float, float* %47, i64 -1
  %49 = load float, float* %48, align 4
  %50 = load float*, float** %13, align 8
  %51 = getelementptr inbounds float, float* %50, i64 -9
  %52 = load float, float* %51, align 4
  %53 = fsub float %49, %52
  store float %53, float* %16, align 4
  %54 = load float*, float** %13, align 8
  %55 = getelementptr inbounds float, float* %54, i64 0
  %56 = load float, float* %55, align 4
  %57 = load float*, float** %13, align 8
  %58 = getelementptr inbounds float, float* %57, i64 -8
  %59 = load float, float* %58, align 4
  %60 = fadd float %56, %59
  %61 = load float*, float** %13, align 8
  %62 = getelementptr inbounds float, float* %61, i64 0
  store float %60, float* %62, align 4
  %63 = load float*, float** %13, align 8
  %64 = getelementptr inbounds float, float* %63, i64 -1
  %65 = load float, float* %64, align 4
  %66 = load float*, float** %13, align 8
  %67 = getelementptr inbounds float, float* %66, i64 -9
  %68 = load float, float* %67, align 4
  %69 = fadd float %65, %68
  %70 = load float*, float** %13, align 8
  %71 = getelementptr inbounds float, float* %70, i64 -1
  store float %69, float* %71, align 4
  %72 = load float, float* %15, align 4
  %73 = load float*, float** %13, align 8
  %74 = getelementptr inbounds float, float* %73, i64 -8
  store float %72, float* %74, align 4
  %75 = load float, float* %16, align 4
  %76 = load float*, float** %13, align 8
  %77 = getelementptr inbounds float, float* %76, i64 -9
  store float %75, float* %77, align 4
  %78 = load float*, float** %13, align 8
  %79 = getelementptr inbounds float, float* %78, i64 -2
  %80 = load float, float* %79, align 4
  %81 = load float*, float** %13, align 8
  %82 = getelementptr inbounds float, float* %81, i64 -10
  %83 = load float, float* %82, align 4
  %84 = fsub float %80, %83
  store float %84, float* %15, align 4
  %85 = load float*, float** %13, align 8
  %86 = getelementptr inbounds float, float* %85, i64 -3
  %87 = load float, float* %86, align 4
  %88 = load float*, float** %13, align 8
  %89 = getelementptr inbounds float, float* %88, i64 -11
  %90 = load float, float* %89, align 4
  %91 = fsub float %87, %90
  store float %91, float* %16, align 4
  %92 = load float*, float** %13, align 8
  %93 = getelementptr inbounds float, float* %92, i64 -2
  %94 = load float, float* %93, align 4
  %95 = load float*, float** %13, align 8
  %96 = getelementptr inbounds float, float* %95, i64 -10
  %97 = load float, float* %96, align 4
  %98 = fadd float %94, %97
  %99 = load float*, float** %13, align 8
  %100 = getelementptr inbounds float, float* %99, i64 -2
  store float %98, float* %100, align 4
  %101 = load float*, float** %13, align 8
  %102 = getelementptr inbounds float, float* %101, i64 -3
  %103 = load float, float* %102, align 4
  %104 = load float*, float** %13, align 8
  %105 = getelementptr inbounds float, float* %104, i64 -11
  %106 = load float, float* %105, align 4
  %107 = fadd float %103, %106
  %108 = load float*, float** %13, align 8
  %109 = getelementptr inbounds float, float* %108, i64 -3
  store float %107, float* %109, align 4
  %110 = load float, float* %15, align 4
  %111 = load float, float* %16, align 4
  %112 = fadd float %110, %111
  %113 = load float, float* %12, align 4
  %114 = fmul float %112, %113
  %115 = load float*, float** %13, align 8
  %116 = getelementptr inbounds float, float* %115, i64 -10
  store float %114, float* %116, align 4
  %117 = load float, float* %16, align 4
  %118 = load float, float* %15, align 4
  %119 = fsub float %117, %118
  %120 = load float, float* %12, align 4
  %121 = fmul float %119, %120
  %122 = load float*, float** %13, align 8
  %123 = getelementptr inbounds float, float* %122, i64 -11
  store float %121, float* %123, align 4
  %124 = load float*, float** %13, align 8
  %125 = getelementptr inbounds float, float* %124, i64 -12
  %126 = load float, float* %125, align 4
  %127 = load float*, float** %13, align 8
  %128 = getelementptr inbounds float, float* %127, i64 -4
  %129 = load float, float* %128, align 4
  %130 = fsub float %126, %129
  store float %130, float* %15, align 4
  %131 = load float*, float** %13, align 8
  %132 = getelementptr inbounds float, float* %131, i64 -5
  %133 = load float, float* %132, align 4
  %134 = load float*, float** %13, align 8
  %135 = getelementptr inbounds float, float* %134, i64 -13
  %136 = load float, float* %135, align 4
  %137 = fsub float %133, %136
  store float %137, float* %16, align 4
  %138 = load float*, float** %13, align 8
  %139 = getelementptr inbounds float, float* %138, i64 -4
  %140 = load float, float* %139, align 4
  %141 = load float*, float** %13, align 8
  %142 = getelementptr inbounds float, float* %141, i64 -12
  %143 = load float, float* %142, align 4
  %144 = fadd float %140, %143
  %145 = load float*, float** %13, align 8
  %146 = getelementptr inbounds float, float* %145, i64 -4
  store float %144, float* %146, align 4
  %147 = load float*, float** %13, align 8
  %148 = getelementptr inbounds float, float* %147, i64 -5
  %149 = load float, float* %148, align 4
  %150 = load float*, float** %13, align 8
  %151 = getelementptr inbounds float, float* %150, i64 -13
  %152 = load float, float* %151, align 4
  %153 = fadd float %149, %152
  %154 = load float*, float** %13, align 8
  %155 = getelementptr inbounds float, float* %154, i64 -5
  store float %153, float* %155, align 4
  %156 = load float, float* %16, align 4
  %157 = load float*, float** %13, align 8
  %158 = getelementptr inbounds float, float* %157, i64 -12
  store float %156, float* %158, align 4
  %159 = load float, float* %15, align 4
  %160 = load float*, float** %13, align 8
  %161 = getelementptr inbounds float, float* %160, i64 -13
  store float %159, float* %161, align 4
  %162 = load float*, float** %13, align 8
  %163 = getelementptr inbounds float, float* %162, i64 -14
  %164 = load float, float* %163, align 4
  %165 = load float*, float** %13, align 8
  %166 = getelementptr inbounds float, float* %165, i64 -6
  %167 = load float, float* %166, align 4
  %168 = fsub float %164, %167
  store float %168, float* %15, align 4
  %169 = load float*, float** %13, align 8
  %170 = getelementptr inbounds float, float* %169, i64 -7
  %171 = load float, float* %170, align 4
  %172 = load float*, float** %13, align 8
  %173 = getelementptr inbounds float, float* %172, i64 -15
  %174 = load float, float* %173, align 4
  %175 = fsub float %171, %174
  store float %175, float* %16, align 4
  %176 = load float*, float** %13, align 8
  %177 = getelementptr inbounds float, float* %176, i64 -6
  %178 = load float, float* %177, align 4
  %179 = load float*, float** %13, align 8
  %180 = getelementptr inbounds float, float* %179, i64 -14
  %181 = load float, float* %180, align 4
  %182 = fadd float %178, %181
  %183 = load float*, float** %13, align 8
  %184 = getelementptr inbounds float, float* %183, i64 -6
  store float %182, float* %184, align 4
  %185 = load float*, float** %13, align 8
  %186 = getelementptr inbounds float, float* %185, i64 -7
  %187 = load float, float* %186, align 4
  %188 = load float*, float** %13, align 8
  %189 = getelementptr inbounds float, float* %188, i64 -15
  %190 = load float, float* %189, align 4
  %191 = fadd float %187, %190
  %192 = load float*, float** %13, align 8
  %193 = getelementptr inbounds float, float* %192, i64 -7
  store float %191, float* %193, align 4
  %194 = load float, float* %15, align 4
  %195 = load float, float* %16, align 4
  %196 = fadd float %194, %195
  %197 = load float, float* %12, align 4
  %198 = fmul float %196, %197
  %199 = load float*, float** %13, align 8
  %200 = getelementptr inbounds float, float* %199, i64 -14
  store float %198, float* %200, align 4
  %201 = load float, float* %15, align 4
  %202 = load float, float* %16, align 4
  %203 = fsub float %201, %202
  %204 = load float, float* %12, align 4
  %205 = fmul float %203, %204
  %206 = load float*, float** %13, align 8
  %207 = getelementptr inbounds float, float* %206, i64 -15
  store float %205, float* %207, align 4
  %208 = load float*, float** %13, align 8
  %209 = call i32 @iter_54(float* %208)
  %210 = load float*, float** %13, align 8
  %211 = getelementptr inbounds float, float* %210, i64 -8
  %212 = call i32 @iter_54(float* %211)
  %213 = load float*, float** %13, align 8
  %214 = getelementptr inbounds float, float* %213, i64 -16
  store float* %214, float** %13, align 8
  br label %35

215:                                              ; preds = %35
  ret void
}

declare dso_local i32 @iter_54(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

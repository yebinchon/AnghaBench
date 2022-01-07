; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_premultiply_alpha.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_premultiply_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @premultiply_alpha(float* %0, float %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float %1, float* %4, align 4
  %5 = load float, float* %4, align 4
  %6 = load float*, float** %3, align 8
  %7 = getelementptr inbounds float, float* %6, i64 3
  %8 = load float, float* %7, align 4
  %9 = fmul float %8, %5
  store float %9, float* %7, align 4
  %10 = load float*, float** %3, align 8
  %11 = getelementptr inbounds float, float* %10, i64 3
  %12 = load float, float* %11, align 4
  %13 = load float*, float** %3, align 8
  %14 = getelementptr inbounds float, float* %13, i64 0
  %15 = load float, float* %14, align 4
  %16 = fmul float %15, %12
  store float %16, float* %14, align 4
  %17 = load float*, float** %3, align 8
  %18 = getelementptr inbounds float, float* %17, i64 3
  %19 = load float, float* %18, align 4
  %20 = load float*, float** %3, align 8
  %21 = getelementptr inbounds float, float* %20, i64 1
  %22 = load float, float* %21, align 4
  %23 = fmul float %22, %19
  store float %23, float* %21, align 4
  %24 = load float*, float** %3, align 8
  %25 = getelementptr inbounds float, float* %24, i64 3
  %26 = load float, float* %25, align 4
  %27 = load float*, float** %3, align 8
  %28 = getelementptr inbounds float, float* %27, i64 2
  %29 = load float, float* %28, align 4
  %30 = fmul float %29, %26
  store float %30, float* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_compute_priority.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_compute_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@view_dist_in_chunks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @compute_priority(i32 %0, i32 %1, float %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 %12, 16
  %14 = add nsw i32 %13, 8
  %15 = sitofp i32 %14 to float
  %16 = load float, float* %7, align 4
  %17 = fsub float %15, %16
  store float %17, float* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %18, 16
  %20 = add nsw i32 %19, 8
  %21 = sitofp i32 %20 to float
  %22 = load float, float* %8, align 4
  %23 = fsub float %21, %22
  store float %23, float* %10, align 4
  %24 = load float, float* %9, align 4
  %25 = load float, float* %9, align 4
  %26 = fmul float %24, %25
  %27 = load float, float* %10, align 4
  %28 = load float, float* %10, align 4
  %29 = fmul float %27, %28
  %30 = fadd float %26, %29
  store float %30, float* %11, align 4
  %31 = load i32, i32* @view_dist_in_chunks, align 4
  %32 = load i32, i32* @view_dist_in_chunks, align 4
  %33 = mul nsw i32 %31, %32
  %34 = mul nsw i32 %33, 16
  %35 = mul nsw i32 %34, 16
  %36 = sitofp i32 %35 to float
  %37 = load float, float* %11, align 4
  %38 = fsub float %36, %37
  ret float %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

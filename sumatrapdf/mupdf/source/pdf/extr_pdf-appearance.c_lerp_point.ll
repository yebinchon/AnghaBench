; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_lerp_point.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_lerp_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (<2 x float> (<2 x float>, <2 x float>, float)* @lerp_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal <2 x float> @lerp_point(<2 x float> %0, <2 x float> %1, float %2) #0 {
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca float, align 4
  %8 = bitcast %struct.TYPE_6__* %5 to <2 x float>*
  store <2 x float> %0, <2 x float>* %8, align 4
  %9 = bitcast %struct.TYPE_6__* %6 to <2 x float>*
  store <2 x float> %1, <2 x float>* %9, align 4
  store float %2, float* %7, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %11 = load float, float* %10, align 4
  %12 = load float, float* %7, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %14 = load float, float* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %16 = load float, float* %15, align 4
  %17 = fsub float %14, %16
  %18 = fmul float %12, %17
  %19 = fadd float %11, %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %21 = load float, float* %20, align 4
  %22 = load float, float* %7, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %24 = load float, float* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %26 = load float, float* %25, align 4
  %27 = fsub float %24, %26
  %28 = fmul float %22, %27
  %29 = fadd float %21, %28
  %30 = call <2 x float> @fz_make_point(float %19, float %29)
  %31 = bitcast %struct.TYPE_6__* %4 to <2 x float>*
  store <2 x float> %30, <2 x float>* %31, align 4
  %32 = bitcast %struct.TYPE_6__* %4 to <2 x float>*
  %33 = load <2 x float>, <2 x float>* %32, align 4
  ret <2 x float> %33
}

declare dso_local <2 x float> @fz_make_point(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

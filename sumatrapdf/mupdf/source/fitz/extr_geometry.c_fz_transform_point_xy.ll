; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_transform_point_xy.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_transform_point_xy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float, float, float, i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @fz_transform_point_xy(float %0, float %1, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %2) #0 {
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  %7 = load float, float* %5, align 4
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %9 = load float, float* %8, align 8
  %10 = fmul float %7, %9
  %11 = load float, float* %6, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %13 = load float, float* %12, align 4
  %14 = fmul float %11, %13
  %15 = fadd float %10, %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = sitofp i64 %17 to float
  %19 = fadd float %15, %18
  %20 = fptosi float %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i64 %20, i64* %21, align 8
  %22 = load float, float* %5, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %24 = load float, float* %23, align 8
  %25 = fmul float %22, %24
  %26 = load float, float* %6, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %28 = load float, float* %27, align 4
  %29 = fmul float %26, %28
  %30 = fadd float %25, %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = sitofp i64 %32 to float
  %34 = fadd float %30, %33
  %35 = fptosi float %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = bitcast %struct.TYPE_5__* %4 to { i64, i64 }*
  %38 = load { i64, i64 }, { i64, i64 }* %37, align 8
  ret { i64, i64 } %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

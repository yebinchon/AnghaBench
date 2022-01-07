; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_transform_point.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_transform_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float, float, float, float, float, float }
%struct.TYPE_6__ = type { float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <2 x float> @fz_transform_point(<2 x float> %0, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1) #0 {
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca float, align 4
  %6 = bitcast %struct.TYPE_6__* %4 to <2 x float>*
  store <2 x float> %0, <2 x float>* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %8 = load float, float* %7, align 4
  store float %8, float* %5, align 4
  %9 = load float, float* %5, align 4
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %11 = load float, float* %10, align 8
  %12 = fmul float %9, %11
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %14 = load float, float* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = fmul float %14, %16
  %18 = fadd float %12, %17
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  %20 = load float, float* %19, align 8
  %21 = fadd float %18, %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store float %21, float* %22, align 4
  %23 = load float, float* %5, align 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 3
  %25 = load float, float* %24, align 4
  %26 = fmul float %23, %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 4
  %30 = load float, float* %29, align 8
  %31 = fmul float %28, %30
  %32 = fadd float %26, %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 5
  %34 = load float, float* %33, align 4
  %35 = fadd float %32, %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store float %35, float* %36, align 4
  %37 = bitcast %struct.TYPE_6__* %3 to i8*
  %38 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 8, i1 false)
  %39 = bitcast %struct.TYPE_6__* %3 to <2 x float>*
  %40 = load <2 x float>, <2 x float>* %39, align 4
  ret <2 x float> %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

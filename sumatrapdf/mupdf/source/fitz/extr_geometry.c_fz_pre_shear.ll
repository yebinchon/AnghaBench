; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_pre_shear.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_pre_shear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { <2 x float>, <2 x float> } @fz_pre_shear(<2 x float> %0, <2 x float> %1, float %2, float %3) #0 {
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = bitcast %struct.TYPE_4__* %6 to { <2 x float>, <2 x float> }*
  %12 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %11, i32 0, i32 0
  store <2 x float> %0, <2 x float>* %12, align 4
  %13 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %11, i32 0, i32 1
  store <2 x float> %1, <2 x float>* %13, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %15 = load float, float* %14, align 4
  store float %15, float* %9, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %17 = load float, float* %16, align 4
  store float %17, float* %10, align 4
  %18 = load float, float* %8, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %20 = load float, float* %19, align 4
  %21 = fmul float %18, %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %23 = load float, float* %22, align 4
  %24 = fadd float %23, %21
  store float %24, float* %22, align 4
  %25 = load float, float* %8, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %27 = load float, float* %26, align 4
  %28 = fmul float %25, %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %30 = load float, float* %29, align 4
  %31 = fadd float %30, %28
  store float %31, float* %29, align 4
  %32 = load float, float* %7, align 4
  %33 = load float, float* %9, align 4
  %34 = fmul float %32, %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %36 = load float, float* %35, align 4
  %37 = fadd float %36, %34
  store float %37, float* %35, align 4
  %38 = load float, float* %7, align 4
  %39 = load float, float* %10, align 4
  %40 = fmul float %38, %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %42 = load float, float* %41, align 4
  %43 = fadd float %42, %40
  store float %43, float* %41, align 4
  %44 = bitcast %struct.TYPE_4__* %5 to i8*
  %45 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 16, i1 false)
  %46 = bitcast %struct.TYPE_4__* %5 to { <2 x float>, <2 x float> }*
  %47 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %46, align 4
  ret { <2 x float>, <2 x float> } %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

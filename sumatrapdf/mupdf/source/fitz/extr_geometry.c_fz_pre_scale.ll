; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_pre_scale.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_pre_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { <2 x float>, <2 x float> } @fz_pre_scale(<2 x float> %0, <2 x float> %1, float %2, float %3) #0 {
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = bitcast %struct.TYPE_4__* %6 to { <2 x float>, <2 x float> }*
  %10 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %9, i32 0, i32 0
  store <2 x float> %0, <2 x float>* %10, align 4
  %11 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %9, i32 0, i32 1
  store <2 x float> %1, <2 x float>* %11, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %12 = load float, float* %7, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %14 = load float, float* %13, align 4
  %15 = fmul float %14, %12
  store float %15, float* %13, align 4
  %16 = load float, float* %7, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %18 = load float, float* %17, align 4
  %19 = fmul float %18, %16
  store float %19, float* %17, align 4
  %20 = load float, float* %8, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %22 = load float, float* %21, align 4
  %23 = fmul float %22, %20
  store float %23, float* %21, align 4
  %24 = load float, float* %8, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %26 = load float, float* %25, align 4
  %27 = fmul float %26, %24
  store float %27, float* %25, align 4
  %28 = bitcast %struct.TYPE_4__* %5 to i8*
  %29 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 16, i1 false)
  %30 = bitcast %struct.TYPE_4__* %5 to { <2 x float>, <2 x float> }*
  %31 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %30, align 4
  ret { <2 x float>, <2 x float> } %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

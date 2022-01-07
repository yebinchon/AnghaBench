; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_transform_page.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_transform_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { float, float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fz_transform_page(<2 x float> %0, <2 x float> %1, float %2, float %3) #0 {
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_9__, align 4
  %14 = alloca %struct.TYPE_10__, align 4
  %15 = alloca %struct.TYPE_9__, align 4
  %16 = bitcast %struct.TYPE_9__* %6 to { <2 x float>, <2 x float> }*
  %17 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %16, i32 0, i32 0
  store <2 x float> %0, <2 x float>* %17, align 4
  %18 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %16, i32 0, i32 1
  store <2 x float> %1, <2 x float>* %18, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %20 = load float, float* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %22 = load float, float* %21, align 4
  %23 = fsub float %20, %22
  store float %23, float* %9, align 4
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %25 = load float, float* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %27 = load float, float* %26, align 4
  %28 = fsub float %25, %27
  store float %28, float* %10, align 4
  %29 = load float, float* %9, align 4
  %30 = load float, float* %7, align 4
  %31 = fmul float %29, %30
  %32 = fdiv float %31, 7.200000e+01
  %33 = fadd float %32, 5.000000e-01
  %34 = call float @llvm.floor.f32(float %33)
  store float %34, float* %11, align 4
  %35 = load float, float* %10, align 4
  %36 = load float, float* %7, align 4
  %37 = fmul float %35, %36
  %38 = fdiv float %37, 7.200000e+01
  %39 = fadd float %38, 5.000000e-01
  %40 = call float @llvm.floor.f32(float %39)
  store float %40, float* %12, align 4
  %41 = load float, float* %11, align 4
  %42 = load float, float* %9, align 4
  %43 = fdiv float %41, %42
  %44 = load float, float* %12, align 4
  %45 = load float, float* %10, align 4
  %46 = fdiv float %44, %45
  %47 = call i32 @fz_scale(float %43, float %46)
  %48 = load float, float* %8, align 4
  %49 = call i64 @fz_pre_rotate(i32 %47, float %48)
  %50 = bitcast %struct.TYPE_10__* %14 to i64*
  store i64 %49, i64* %50, align 4
  %51 = bitcast %struct.TYPE_10__* %5 to i8*
  %52 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 8, i1 false)
  %53 = bitcast %struct.TYPE_9__* %6 to { <2 x float>, <2 x float> }*
  %54 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %53, i32 0, i32 0
  %55 = load <2 x float>, <2 x float>* %54, align 4
  %56 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %53, i32 0, i32 1
  %57 = load <2 x float>, <2 x float>* %56, align 4
  %58 = bitcast %struct.TYPE_10__* %5 to i64*
  %59 = load i64, i64* %58, align 4
  %60 = call { <2 x float>, <2 x float> } @fz_transform_rect(<2 x float> %55, <2 x float> %57, i64 %59)
  %61 = bitcast %struct.TYPE_9__* %15 to { <2 x float>, <2 x float> }*
  %62 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %61, i32 0, i32 0
  %63 = extractvalue { <2 x float>, <2 x float> } %60, 0
  store <2 x float> %63, <2 x float>* %62, align 4
  %64 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %61, i32 0, i32 1
  %65 = extractvalue { <2 x float>, <2 x float> } %60, 1
  store <2 x float> %65, <2 x float>* %64, align 4
  %66 = bitcast %struct.TYPE_9__* %13 to i8*
  %67 = bitcast %struct.TYPE_9__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 16, i1 false)
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %69 = load float, float* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sitofp i32 %71 to float
  %73 = fsub float %72, %69
  %74 = fptosi float %73 to i32
  store i32 %74, i32* %70, align 4
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 3
  %76 = load float, float* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sitofp i32 %78 to float
  %80 = fsub float %79, %76
  %81 = fptosi float %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = bitcast %struct.TYPE_10__* %5 to i64*
  %83 = load i64, i64* %82, align 4
  ret i64 %83
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #1

declare dso_local i64 @fz_pre_rotate(i32, float) #2

declare dso_local i32 @fz_scale(float, float) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local { <2 x float>, <2 x float> } @fz_transform_rect(<2 x float>, <2 x float>, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

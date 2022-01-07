; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_fz_adjust_rect_for_stroke.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_fz_adjust_rect_for_stroke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, i64, i32 }
%struct.TYPE_7__ = type { float, float, float, float }

@FZ_LINEJOIN_MITER = common dso_local global i64 0, align 8
@FZ_LINEJOIN_MITER_XPS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { <2 x float>, <2 x float> } @fz_adjust_rect_for_stroke(i32* %0, <2 x float> %1, <2 x float> %2, %struct.TYPE_6__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = bitcast %struct.TYPE_7__* %7 to { <2 x float>, <2 x float> }*
  %13 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %12, i32 0, i32 0
  store <2 x float> %1, <2 x float>* %13, align 4
  %14 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %12, i32 0, i32 1
  store <2 x float> %2, <2 x float>* %14, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = bitcast %struct.TYPE_7__* %6 to i8*
  %19 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 16, i1 false)
  br label %74

20:                                               ; preds = %5
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load float, float* %22, align 8
  store float %23, float* %11, align 4
  %24 = load float, float* %11, align 4
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store float 1.000000e+00, float* %11, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i32, i32* %10, align 4
  %29 = call float @fz_matrix_max_expansion(i32 %28)
  %30 = load float, float* %11, align 4
  %31 = fmul float %30, %29
  store float %31, float* %11, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FZ_LINEJOIN_MITER, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %27
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FZ_LINEJOIN_MITER_XPS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %37, %27
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sitofp i32 %51 to float
  %53 = load float, float* %11, align 4
  %54 = fmul float %53, %52
  store float %54, float* %11, align 4
  br label %55

55:                                               ; preds = %48, %43, %37
  %56 = load float, float* %11, align 4
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %58 = load float, float* %57, align 4
  %59 = fsub float %58, %56
  store float %59, float* %57, align 4
  %60 = load float, float* %11, align 4
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %62 = load float, float* %61, align 4
  %63 = fsub float %62, %60
  store float %63, float* %61, align 4
  %64 = load float, float* %11, align 4
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %66 = load float, float* %65, align 4
  %67 = fadd float %66, %64
  store float %67, float* %65, align 4
  %68 = load float, float* %11, align 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %70 = load float, float* %69, align 4
  %71 = fadd float %70, %68
  store float %71, float* %69, align 4
  %72 = bitcast %struct.TYPE_7__* %6 to i8*
  %73 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 16, i1 false)
  br label %74

74:                                               ; preds = %55, %17
  %75 = bitcast %struct.TYPE_7__* %6 to { <2 x float>, <2 x float> }*
  %76 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %75, align 4
  ret { <2 x float>, <2 x float> } %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local float @fz_matrix_max_expansion(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

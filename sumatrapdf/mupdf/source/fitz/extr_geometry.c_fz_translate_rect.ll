; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_translate_rect.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_translate_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { <2 x float>, <2 x float> } @fz_translate_rect(<2 x float> %0, <2 x float> %1, float %2, float %3) #0 {
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = bitcast %struct.TYPE_6__* %6 to { <2 x float>, <2 x float> }*
  %10 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %9, i32 0, i32 0
  store <2 x float> %0, <2 x float>* %10, align 4
  %11 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %9, i32 0, i32 1
  store <2 x float> %1, <2 x float>* %11, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %12 = bitcast %struct.TYPE_6__* %6 to { <2 x float>, <2 x float> }*
  %13 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %12, i32 0, i32 0
  %14 = load <2 x float>, <2 x float>* %13, align 4
  %15 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %12, i32 0, i32 1
  %16 = load <2 x float>, <2 x float>* %15, align 4
  %17 = call i64 @fz_is_empty_rect(<2 x float> %14, <2 x float> %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = bitcast %struct.TYPE_6__* %5 to i8*
  %21 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 16, i1 false)
  br label %52

22:                                               ; preds = %4
  %23 = bitcast %struct.TYPE_6__* %6 to { <2 x float>, <2 x float> }*
  %24 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %23, i32 0, i32 0
  %25 = load <2 x float>, <2 x float>* %24, align 4
  %26 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %23, i32 0, i32 1
  %27 = load <2 x float>, <2 x float>* %26, align 4
  %28 = call i64 @fz_is_infinite_rect(<2 x float> %25, <2 x float> %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = bitcast %struct.TYPE_6__* %5 to i8*
  %32 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 16, i1 false)
  br label %52

33:                                               ; preds = %22
  %34 = load float, float* %7, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %36 = load float, float* %35, align 4
  %37 = fadd float %36, %34
  store float %37, float* %35, align 4
  %38 = load float, float* %8, align 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %40 = load float, float* %39, align 4
  %41 = fadd float %40, %38
  store float %41, float* %39, align 4
  %42 = load float, float* %7, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %44 = load float, float* %43, align 4
  %45 = fadd float %44, %42
  store float %45, float* %43, align 4
  %46 = load float, float* %8, align 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %48 = load float, float* %47, align 4
  %49 = fadd float %48, %46
  store float %49, float* %47, align 4
  %50 = bitcast %struct.TYPE_6__* %5 to i8*
  %51 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 16, i1 false)
  br label %52

52:                                               ; preds = %33, %30, %19
  %53 = bitcast %struct.TYPE_6__* %5 to { <2 x float>, <2 x float> }*
  %54 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %53, align 4
  ret { <2 x float>, <2 x float> } %54
}

declare dso_local i64 @fz_is_empty_rect(<2 x float>, <2 x float>) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @fz_is_infinite_rect(<2 x float>, <2 x float>) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

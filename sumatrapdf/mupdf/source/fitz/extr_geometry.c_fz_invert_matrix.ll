; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_invert_matrix.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_invert_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, float, float, float, float }

@FLT_EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_invert_matrix(%struct.TYPE_4__* noalias sret %0, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %7 = load float, float* %6, align 8
  store float %7, float* %3, align 4
  %8 = load float, float* %3, align 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %10 = load float, float* %9, align 4
  %11 = fmul float %8, %10
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %13 = load float, float* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %15 = load float, float* %14, align 4
  %16 = fmul float %13, %15
  %17 = fsub float %11, %16
  store float %17, float* %4, align 4
  %18 = load float, float* %4, align 4
  %19 = load float, float* @FLT_EPSILON, align 4
  %20 = fneg float %19
  %21 = fcmp olt float %18, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load float, float* %4, align 4
  %24 = load float, float* @FLT_EPSILON, align 4
  %25 = fcmp ogt float %23, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %22, %2
  %27 = load float, float* %4, align 4
  %28 = fdiv float 1.000000e+00, %27
  store float %28, float* %5, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %30 = load float, float* %29, align 4
  %31 = load float, float* %5, align 4
  %32 = fmul float %30, %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  store float %32, float* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %35 = load float, float* %34, align 8
  %36 = fneg float %35
  %37 = load float, float* %5, align 4
  %38 = fmul float %36, %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  store float %38, float* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %41 = load float, float* %40, align 4
  %42 = fneg float %41
  %43 = load float, float* %5, align 4
  %44 = fmul float %42, %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  store float %44, float* %45, align 4
  %46 = load float, float* %3, align 4
  %47 = load float, float* %5, align 4
  %48 = fmul float %46, %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  store float %48, float* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %51 = load float, float* %50, align 8
  %52 = fneg float %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %54 = load float, float* %53, align 4
  %55 = fmul float %52, %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  %57 = load float, float* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  %59 = load float, float* %58, align 4
  %60 = fmul float %57, %59
  %61 = fsub float %55, %60
  store float %61, float* %3, align 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %63 = load float, float* %62, align 8
  %64 = fneg float %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %66 = load float, float* %65, align 4
  %67 = fmul float %64, %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  %69 = load float, float* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %71 = load float, float* %70, align 4
  %72 = fmul float %69, %71
  %73 = fsub float %67, %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 5
  store float %73, float* %74, align 4
  %75 = load float, float* %3, align 4
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 4
  store float %75, float* %76, align 4
  br label %80

77:                                               ; preds = %22
  %78 = bitcast %struct.TYPE_4__* %0 to i8*
  %79 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 8 %79, i64 24, i1 false)
  br label %80

80:                                               ; preds = %77, %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

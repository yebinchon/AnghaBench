; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_try_invert_matrix.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_try_invert_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, float, float, double, double }

@DBL_EPSILON = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_try_invert_matrix(%struct.TYPE_4__* %0, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %15 = load float, float* %14, align 8
  %16 = fpext float %15 to double
  store double %16, double* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %18 = load float, float* %17, align 4
  %19 = fpext float %18 to double
  store double %19, double* %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %21 = load float, float* %20, align 8
  %22 = fpext float %21 to double
  store double %22, double* %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %24 = load float, float* %23, align 4
  %25 = fpext float %24 to double
  store double %25, double* %8, align 8
  %26 = load double, double* %5, align 8
  %27 = load double, double* %8, align 8
  %28 = fmul double %26, %27
  %29 = load double, double* %6, align 8
  %30 = load double, double* %7, align 8
  %31 = fmul double %29, %30
  %32 = fsub double %28, %31
  store double %32, double* %13, align 8
  %33 = load double, double* %13, align 8
  %34 = load double, double* @DBL_EPSILON, align 8
  %35 = fneg double %34
  %36 = fcmp oge double %33, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = load double, double* %13, align 8
  %39 = load double, double* @DBL_EPSILON, align 8
  %40 = fcmp ole double %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %104

42:                                               ; preds = %37, %2
  %43 = load double, double* %13, align 8
  %44 = fdiv double 1.000000e+00, %43
  store double %44, double* %13, align 8
  %45 = load double, double* %8, align 8
  %46 = load double, double* %13, align 8
  %47 = fmul double %45, %46
  store double %47, double* %9, align 8
  %48 = load double, double* %9, align 8
  %49 = fptrunc double %48 to float
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store float %49, float* %51, align 8
  %52 = load double, double* %6, align 8
  %53 = fneg double %52
  %54 = load double, double* %13, align 8
  %55 = fmul double %53, %54
  store double %55, double* %10, align 8
  %56 = load double, double* %10, align 8
  %57 = fptrunc double %56 to float
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store float %57, float* %59, align 4
  %60 = load double, double* %7, align 8
  %61 = fneg double %60
  %62 = load double, double* %13, align 8
  %63 = fmul double %61, %62
  store double %63, double* %11, align 8
  %64 = load double, double* %11, align 8
  %65 = fptrunc double %64 to float
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store float %65, float* %67, align 8
  %68 = load double, double* %5, align 8
  %69 = load double, double* %13, align 8
  %70 = fmul double %68, %69
  store double %70, double* %12, align 8
  %71 = load double, double* %12, align 8
  %72 = fptrunc double %71 to float
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  store float %72, float* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %76 = load double, double* %75, align 8
  %77 = fneg double %76
  %78 = load double, double* %9, align 8
  %79 = fmul double %77, %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  %81 = load double, double* %80, align 8
  %82 = load double, double* %11, align 8
  %83 = fmul double %81, %82
  %84 = fsub double %79, %83
  store double %84, double* %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %86 = load double, double* %85, align 8
  %87 = fneg double %86
  %88 = load double, double* %10, align 8
  %89 = fmul double %87, %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  %91 = load double, double* %90, align 8
  %92 = load double, double* %12, align 8
  %93 = fmul double %91, %92
  %94 = fsub double %89, %93
  %95 = fptrunc double %94 to float
  %96 = fpext float %95 to double
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 5
  store double %96, double* %98, align 8
  %99 = load double, double* %9, align 8
  %100 = fptrunc double %99 to float
  %101 = fpext float %100 to double
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 4
  store double %101, double* %103, align 8
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %42, %41
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

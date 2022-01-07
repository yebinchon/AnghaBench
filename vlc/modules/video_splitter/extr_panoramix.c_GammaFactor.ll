; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_splitter/extr_panoramix.c_GammaFactor.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_splitter/extr_panoramix.c_GammaFactor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, double, float, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_3__*, float)* @GammaFactor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @GammaFactor(%struct.TYPE_3__* %0, float %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store float %1, float* %5, align 4
  %8 = load float, float* %5, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load float, float* %10, align 8
  %12 = fcmp ole float %8, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load float, float* %5, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load float, float* %16, align 4
  %18 = fmul float %14, %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 8
  %22 = fdiv float %18, %21
  %23 = fpext float %22 to double
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load float, float* %25, align 4
  %27 = fpext float %26 to double
  %28 = fsub double 1.000000e+00, %27
  %29 = fadd double %23, %28
  %30 = fptrunc double %29 to float
  store float %30, float* %6, align 4
  %31 = load float, float* %6, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load double, double* %33, align 8
  %35 = fdiv double 1.000000e+00, %34
  %36 = call double @pow(float %31, double %35)
  store double %36, double* %3, align 8
  br label %78

37:                                               ; preds = %2
  %38 = load float, float* %5, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load float, float* %40, align 8
  %42 = fcmp oge float %38, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %37
  %44 = load float, float* %5, align 4
  %45 = fpext float %44 to double
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load double, double* %47, align 8
  %49 = fadd double %48, 1.000000e+00
  %50 = fsub double 1.000000e+00, %49
  %51 = fmul double %45, %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  %54 = load double, double* %53, align 8
  %55 = fadd double %54, 1.000000e+00
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load float, float* %57, align 8
  %59 = fpext float %58 to double
  %60 = fmul double %55, %59
  %61 = fadd double %51, %60
  %62 = fsub double %61, 1.000000e+00
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load float, float* %64, align 8
  %66 = fpext float %65 to double
  %67 = fsub double %66, 1.000000e+00
  %68 = fdiv double %62, %67
  %69 = fptrunc double %68 to float
  store float %69, float* %7, align 4
  %70 = load float, float* %7, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load double, double* %72, align 8
  %74 = fdiv double 1.000000e+00, %73
  %75 = call double @pow(float %70, double %74)
  store double %75, double* %3, align 8
  br label %78

76:                                               ; preds = %37
  br label %77

77:                                               ; preds = %76
  store double 1.000000e+00, double* %3, align 8
  br label %78

78:                                               ; preds = %77, %43, %13
  %79 = load double, double* %3, align 8
  ret double %79
}

declare dso_local double @pow(float, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

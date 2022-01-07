; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/extr_param_eq.c_CalcPeakEQCoeffs.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/extr_param_eq.c_CalcPeakEQCoeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, float, float, float*)* @CalcPeakEQCoeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CalcPeakEQCoeffs(float %0, float %1, float %2, float %3, float* %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float* %4, float** %10, align 8
  %20 = load float, float* %7, align 4
  %21 = fcmp olt float %20, 0x3FB99999A0000000
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store float 0x3FB99999A0000000, float* %7, align 4
  br label %23

23:                                               ; preds = %22, %5
  %24 = load float, float* %7, align 4
  %25 = fcmp ogt float %24, 1.000000e+02
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store float 1.000000e+02, float* %7, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load float, float* %6, align 4
  %29 = load float, float* %9, align 4
  %30 = fdiv float %29, 2.000000e+00
  %31 = fmul float %30, 0x3FEE666660000000
  %32 = fcmp ogt float %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load float, float* %9, align 4
  %35 = fdiv float %34, 2.000000e+00
  %36 = fmul float %35, 0x3FEE666660000000
  store float %36, float* %6, align 4
  br label %37

37:                                               ; preds = %33, %27
  %38 = load float, float* %8, align 4
  %39 = fcmp olt float %38, -4.000000e+01
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store float -4.000000e+01, float* %8, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load float, float* %8, align 4
  %43 = fcmp ogt float %42, 4.000000e+01
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store float 4.000000e+01, float* %8, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load float, float* %8, align 4
  %47 = fdiv float %46, 4.000000e+01
  %48 = call float @powf(i32 10, float %47)
  store float %48, float* %11, align 4
  %49 = load i64, i64* @M_PI, align 8
  %50 = sitofp i64 %49 to float
  %51 = fmul float 2.000000e+00, %50
  %52 = load float, float* %6, align 4
  %53 = fmul float %51, %52
  %54 = load float, float* %9, align 4
  %55 = fdiv float %53, %54
  store float %55, float* %12, align 4
  %56 = load float, float* %12, align 4
  %57 = call i32 @sinf(float %56)
  %58 = sitofp i32 %57 to float
  %59 = load float, float* %7, align 4
  %60 = fmul float 2.000000e+00, %59
  %61 = fdiv float %58, %60
  store float %61, float* %13, align 4
  %62 = load float, float* %13, align 4
  %63 = load float, float* %11, align 4
  %64 = fmul float %62, %63
  %65 = fadd float 1.000000e+00, %64
  store float %65, float* %14, align 4
  %66 = load float, float* %12, align 4
  %67 = call i32 @cosf(float %66)
  %68 = mul nsw i32 -2, %67
  %69 = sitofp i32 %68 to float
  store float %69, float* %15, align 4
  %70 = load float, float* %13, align 4
  %71 = load float, float* %11, align 4
  %72 = fmul float %70, %71
  %73 = fsub float 1.000000e+00, %72
  store float %73, float* %16, align 4
  %74 = load float, float* %13, align 4
  %75 = load float, float* %11, align 4
  %76 = fdiv float %74, %75
  %77 = fadd float 1.000000e+00, %76
  store float %77, float* %17, align 4
  %78 = load float, float* %12, align 4
  %79 = call i32 @cosf(float %78)
  %80 = mul nsw i32 -2, %79
  %81 = sitofp i32 %80 to float
  store float %81, float* %18, align 4
  %82 = load float, float* %13, align 4
  %83 = load float, float* %11, align 4
  %84 = fdiv float %82, %83
  %85 = fsub float 1.000000e+00, %84
  store float %85, float* %19, align 4
  %86 = load float, float* %14, align 4
  %87 = load float, float* %17, align 4
  %88 = fdiv float %86, %87
  %89 = load float*, float** %10, align 8
  %90 = getelementptr inbounds float, float* %89, i64 0
  store float %88, float* %90, align 4
  %91 = load float, float* %15, align 4
  %92 = load float, float* %17, align 4
  %93 = fdiv float %91, %92
  %94 = load float*, float** %10, align 8
  %95 = getelementptr inbounds float, float* %94, i64 1
  store float %93, float* %95, align 4
  %96 = load float, float* %16, align 4
  %97 = load float, float* %17, align 4
  %98 = fdiv float %96, %97
  %99 = load float*, float** %10, align 8
  %100 = getelementptr inbounds float, float* %99, i64 2
  store float %98, float* %100, align 4
  %101 = load float, float* %18, align 4
  %102 = load float, float* %17, align 4
  %103 = fdiv float %101, %102
  %104 = load float*, float** %10, align 8
  %105 = getelementptr inbounds float, float* %104, i64 3
  store float %103, float* %105, align 4
  %106 = load float, float* %19, align 4
  %107 = load float, float* %17, align 4
  %108 = fdiv float %106, %107
  %109 = load float*, float** %10, align 8
  %110 = getelementptr inbounds float, float* %109, i64 4
  store float %108, float* %110, align 4
  ret void
}

declare dso_local float @powf(i32, float) #1

declare dso_local i32 @sinf(float) #1

declare dso_local i32 @cosf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

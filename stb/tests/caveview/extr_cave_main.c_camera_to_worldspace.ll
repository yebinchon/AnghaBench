; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_camera_to_worldspace.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_camera_to_worldspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@camang = common dso_local global double* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camera_to_worldspace(float* %0, float %1, float %2, float %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %13 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 0
  %14 = load float, float* %6, align 4
  store float %14, float* %13, align 4
  %15 = getelementptr inbounds float, float* %13, i64 1
  %16 = load float, float* %7, align 4
  store float %16, float* %15, align 4
  %17 = getelementptr inbounds float, float* %15, i64 1
  %18 = load float, float* %8, align 4
  store float %18, float* %17, align 4
  %19 = load double*, double** @camang, align 8
  %20 = getelementptr inbounds double, double* %19, i64 0
  %21 = load double, double* %20, align 8
  %22 = fmul double %21, 0x400921FAFC8B007A
  %23 = fdiv double %22, 1.800000e+02
  %24 = call i64 @sin(double %23)
  %25 = sitofp i64 %24 to float
  store float %25, float* %11, align 4
  %26 = load double*, double** @camang, align 8
  %27 = getelementptr inbounds double, double* %26, i64 0
  %28 = load double, double* %27, align 8
  %29 = fmul double %28, 0x400921FAFC8B007A
  %30 = fdiv double %29, 1.800000e+02
  %31 = call i64 @cos(double %30)
  %32 = sitofp i64 %31 to float
  store float %32, float* %12, align 4
  %33 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 0
  %34 = load float, float* %33, align 4
  %35 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 0
  store float %34, float* %35, align 4
  %36 = load float, float* %12, align 4
  %37 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 1
  %38 = load float, float* %37, align 4
  %39 = fmul float %36, %38
  %40 = load float, float* %11, align 4
  %41 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 2
  %42 = load float, float* %41, align 4
  %43 = fmul float %40, %42
  %44 = fsub float %39, %43
  %45 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 1
  store float %44, float* %45, align 4
  %46 = load float, float* %11, align 4
  %47 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 1
  %48 = load float, float* %47, align 4
  %49 = fmul float %46, %48
  %50 = load float, float* %12, align 4
  %51 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 2
  %52 = load float, float* %51, align 4
  %53 = fmul float %50, %52
  %54 = fadd float %49, %53
  %55 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 2
  store float %54, float* %55, align 4
  %56 = load double*, double** @camang, align 8
  %57 = getelementptr inbounds double, double* %56, i64 2
  %58 = load double, double* %57, align 8
  %59 = fmul double %58, 0x400921FAFC8B007A
  %60 = fdiv double %59, 1.800000e+02
  %61 = call i64 @sin(double %60)
  %62 = sitofp i64 %61 to float
  store float %62, float* %11, align 4
  %63 = load double*, double** @camang, align 8
  %64 = getelementptr inbounds double, double* %63, i64 2
  %65 = load double, double* %64, align 8
  %66 = fmul double %65, 0x400921FAFC8B007A
  %67 = fdiv double %66, 1.800000e+02
  %68 = call i64 @cos(double %67)
  %69 = sitofp i64 %68 to float
  store float %69, float* %12, align 4
  %70 = load float, float* %12, align 4
  %71 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 0
  %72 = load float, float* %71, align 4
  %73 = fmul float %70, %72
  %74 = load float, float* %11, align 4
  %75 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 1
  %76 = load float, float* %75, align 4
  %77 = fmul float %74, %76
  %78 = fsub float %73, %77
  %79 = load float*, float** %5, align 8
  %80 = getelementptr inbounds float, float* %79, i64 0
  store float %78, float* %80, align 4
  %81 = load float, float* %11, align 4
  %82 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 0
  %83 = load float, float* %82, align 4
  %84 = fmul float %81, %83
  %85 = load float, float* %12, align 4
  %86 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 1
  %87 = load float, float* %86, align 4
  %88 = fmul float %85, %87
  %89 = fadd float %84, %88
  %90 = load float*, float** %5, align 8
  %91 = getelementptr inbounds float, float* %90, i64 1
  store float %89, float* %91, align 4
  %92 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 2
  %93 = load float, float* %92, align 4
  %94 = load float*, float** %5, align 8
  %95 = getelementptr inbounds float, float* %94, i64 2
  store float %93, float* %95, align 4
  ret void
}

declare dso_local i64 @sin(double) #1

declare dso_local i64 @cos(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

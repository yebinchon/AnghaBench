; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_colorramp.c_interpolate_color.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_colorramp.c_interpolate_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float*, float*, float*)* @interpolate_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interpolate_color(float %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  store float %0, float* %5, align 4
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %9 = load float, float* %5, align 4
  %10 = fpext float %9 to double
  %11 = fsub double 1.000000e+00, %10
  %12 = load float*, float** %6, align 8
  %13 = getelementptr inbounds float, float* %12, i64 0
  %14 = load float, float* %13, align 4
  %15 = fpext float %14 to double
  %16 = fmul double %11, %15
  %17 = load float, float* %5, align 4
  %18 = load float*, float** %7, align 8
  %19 = getelementptr inbounds float, float* %18, i64 0
  %20 = load float, float* %19, align 4
  %21 = fmul float %17, %20
  %22 = fpext float %21 to double
  %23 = fadd double %16, %22
  %24 = fptrunc double %23 to float
  %25 = load float*, float** %8, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  store float %24, float* %26, align 4
  %27 = load float, float* %5, align 4
  %28 = fpext float %27 to double
  %29 = fsub double 1.000000e+00, %28
  %30 = load float*, float** %6, align 8
  %31 = getelementptr inbounds float, float* %30, i64 1
  %32 = load float, float* %31, align 4
  %33 = fpext float %32 to double
  %34 = fmul double %29, %33
  %35 = load float, float* %5, align 4
  %36 = load float*, float** %7, align 8
  %37 = getelementptr inbounds float, float* %36, i64 1
  %38 = load float, float* %37, align 4
  %39 = fmul float %35, %38
  %40 = fpext float %39 to double
  %41 = fadd double %34, %40
  %42 = fptrunc double %41 to float
  %43 = load float*, float** %8, align 8
  %44 = getelementptr inbounds float, float* %43, i64 1
  store float %42, float* %44, align 4
  %45 = load float, float* %5, align 4
  %46 = fpext float %45 to double
  %47 = fsub double 1.000000e+00, %46
  %48 = load float*, float** %6, align 8
  %49 = getelementptr inbounds float, float* %48, i64 2
  %50 = load float, float* %49, align 4
  %51 = fpext float %50 to double
  %52 = fmul double %47, %51
  %53 = load float, float* %5, align 4
  %54 = load float*, float** %7, align 8
  %55 = getelementptr inbounds float, float* %54, i64 2
  %56 = load float, float* %55, align 4
  %57 = fmul float %53, %56
  %58 = fpext float %57 to double
  %59 = fadd double %52, %58
  %60 = fptrunc double %59 to float
  %61 = load float*, float** %8, align 8
  %62 = getelementptr inbounds float, float* %61, i64 2
  store float %60, float* %62, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

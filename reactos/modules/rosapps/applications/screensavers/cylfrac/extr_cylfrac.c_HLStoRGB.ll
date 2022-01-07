; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/cylfrac/extr_cylfrac.c_HLStoRGB.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/cylfrac/extr_cylfrac.c_HLStoRGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HLStoRGB(float %0, float %1, float %2, float* %3, float* %4, float* %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %15 = load float, float* %9, align 4
  %16 = fpext float %15 to double
  %17 = fcmp ole double %16, 5.000000e-01
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = load float, float* %9, align 4
  %20 = load float, float* %8, align 4
  %21 = fadd float 1.000000e+00, %20
  %22 = fmul float %19, %21
  store float %22, float* %14, align 4
  br label %30

23:                                               ; preds = %6
  %24 = load float, float* %9, align 4
  %25 = load float, float* %8, align 4
  %26 = fsub float 1.000000e+00, %25
  %27 = fmul float %24, %26
  %28 = load float, float* %8, align 4
  %29 = fadd float %27, %28
  store float %29, float* %14, align 4
  br label %30

30:                                               ; preds = %23, %18
  %31 = load float, float* %9, align 4
  %32 = fmul float 2.000000e+00, %31
  %33 = load float, float* %14, align 4
  %34 = fsub float %32, %33
  store float %34, float* %13, align 4
  %35 = load float, float* %8, align 4
  %36 = fpext float %35 to double
  %37 = fcmp oeq double %36, 0.000000e+00
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load float, float* %9, align 4
  %40 = load float*, float** %10, align 8
  store float %39, float* %40, align 4
  %41 = load float, float* %9, align 4
  %42 = load float*, float** %11, align 8
  store float %41, float* %42, align 4
  %43 = load float, float* %9, align 4
  %44 = load float*, float** %12, align 8
  store float %43, float* %44, align 4
  br label %67

45:                                               ; preds = %30
  %46 = load float, float* %7, align 4
  %47 = fpext float %46 to double
  %48 = fadd double %47, 1.200000e+02
  %49 = fptrunc double %48 to float
  %50 = load float, float* %13, align 4
  %51 = load float, float* %14, align 4
  %52 = call float @_RGB(float %49, float %50, float %51)
  %53 = load float*, float** %10, align 8
  store float %52, float* %53, align 4
  %54 = load float, float* %7, align 4
  %55 = load float, float* %13, align 4
  %56 = load float, float* %14, align 4
  %57 = call float @_RGB(float %54, float %55, float %56)
  %58 = load float*, float** %11, align 8
  store float %57, float* %58, align 4
  %59 = load float, float* %7, align 4
  %60 = fpext float %59 to double
  %61 = fsub double %60, 1.200000e+02
  %62 = fptrunc double %61 to float
  %63 = load float, float* %13, align 4
  %64 = load float, float* %14, align 4
  %65 = call float @_RGB(float %62, float %63, float %64)
  %66 = load float*, float** %12, align 8
  store float %65, float* %66, align 4
  br label %67

67:                                               ; preds = %45, %38
  ret void
}

declare dso_local float @_RGB(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

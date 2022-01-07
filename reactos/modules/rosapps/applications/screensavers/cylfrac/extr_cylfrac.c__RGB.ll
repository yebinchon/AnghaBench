; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/cylfrac/extr_cylfrac.c__RGB.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/cylfrac/extr_cylfrac.c__RGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @_RGB(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %8 = load float, float* %5, align 4
  %9 = fpext float %8 to double
  %10 = fcmp olt double %9, 0.000000e+00
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = fpext float %12 to double
  %14 = fadd double %13, 3.600000e+02
  %15 = fptrunc double %14 to float
  store float %15, float* %5, align 4
  br label %26

16:                                               ; preds = %3
  %17 = load float, float* %5, align 4
  %18 = fpext float %17 to double
  %19 = fcmp ogt double %18, 3.600000e+02
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load float, float* %5, align 4
  %22 = fpext float %21 to double
  %23 = fsub double %22, 3.600000e+02
  %24 = fptrunc double %23 to float
  store float %24, float* %5, align 4
  br label %25

25:                                               ; preds = %20, %16
  br label %26

26:                                               ; preds = %25, %11
  %27 = load float, float* %5, align 4
  %28 = fcmp olt float %27, 6.000000e+01
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load float, float* %6, align 4
  %31 = fpext float %30 to double
  %32 = load float, float* %7, align 4
  %33 = load float, float* %6, align 4
  %34 = fsub float %32, %33
  %35 = load float, float* %5, align 4
  %36 = fmul float %34, %35
  %37 = fpext float %36 to double
  %38 = fdiv double %37, 6.000000e+01
  %39 = fadd double %31, %38
  %40 = fptrunc double %39 to float
  store float %40, float* %4, align 4
  br label %70

41:                                               ; preds = %26
  %42 = load float, float* %5, align 4
  %43 = fcmp oge float %42, 6.000000e+01
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load float, float* %5, align 4
  %46 = fcmp olt float %45, 1.800000e+02
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load float, float* %7, align 4
  store float %48, float* %4, align 4
  br label %70

49:                                               ; preds = %44, %41
  %50 = load float, float* %5, align 4
  %51 = fcmp oge float %50, 1.800000e+02
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load float, float* %5, align 4
  %54 = fcmp olt float %53, 2.400000e+02
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load float, float* %6, align 4
  %57 = fpext float %56 to double
  %58 = load float, float* %7, align 4
  %59 = load float, float* %6, align 4
  %60 = fsub float %58, %59
  %61 = load float, float* %5, align 4
  %62 = fsub float 2.400000e+02, %61
  %63 = fmul float %60, %62
  %64 = fpext float %63 to double
  %65 = fdiv double %64, 6.000000e+01
  %66 = fadd double %57, %65
  %67 = fptrunc double %66 to float
  store float %67, float* %4, align 4
  br label %70

68:                                               ; preds = %52, %49
  %69 = load float, float* %6, align 4
  store float %69, float* %4, align 4
  br label %70

70:                                               ; preds = %68, %55, %47, %29
  %71 = load float, float* %4, align 4
  ret float %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

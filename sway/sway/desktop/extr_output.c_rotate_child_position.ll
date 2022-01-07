; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_rotate_child_position.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_rotate_child_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double*, double, double, double, double, float)* @rotate_child_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rotate_child_position(double* %0, double* %1, double %2, double %3, double %4, double %5, float %6) #0 {
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca float, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store double* %0, double** %8, align 8
  store double* %1, double** %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store float %6, float* %14, align 4
  %19 = load float, float* %14, align 4
  %20 = fcmp oeq float %19, 0.000000e+00
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  br label %77

22:                                               ; preds = %7
  %23 = load double*, double** %8, align 8
  %24 = load double, double* %23, align 8
  %25 = load double, double* %12, align 8
  %26 = fdiv double %25, 2.000000e+00
  %27 = fsub double %24, %26
  %28 = load double, double* %10, align 8
  %29 = fdiv double %28, 2.000000e+00
  %30 = fadd double %27, %29
  store double %30, double* %15, align 8
  %31 = load double*, double** %9, align 8
  %32 = load double, double* %31, align 8
  %33 = load double, double* %13, align 8
  %34 = fdiv double %33, 2.000000e+00
  %35 = fsub double %32, %34
  %36 = load double, double* %11, align 8
  %37 = fdiv double %36, 2.000000e+00
  %38 = fadd double %35, %37
  store double %38, double* %16, align 8
  %39 = load float, float* %14, align 4
  %40 = fneg float %39
  %41 = call double @cos(float %40)
  %42 = load double, double* %15, align 8
  %43 = fmul double %41, %42
  %44 = load float, float* %14, align 4
  %45 = fneg float %44
  %46 = call double @sin(float %45)
  %47 = load double, double* %16, align 8
  %48 = fmul double %46, %47
  %49 = fsub double %43, %48
  store double %49, double* %17, align 8
  %50 = load float, float* %14, align 4
  %51 = fneg float %50
  %52 = call double @cos(float %51)
  %53 = load double, double* %16, align 8
  %54 = fmul double %52, %53
  %55 = load float, float* %14, align 4
  %56 = fneg float %55
  %57 = call double @sin(float %56)
  %58 = load double, double* %15, align 8
  %59 = fmul double %57, %58
  %60 = fadd double %54, %59
  store double %60, double* %18, align 8
  %61 = load double, double* %17, align 8
  %62 = load double, double* %12, align 8
  %63 = fdiv double %62, 2.000000e+00
  %64 = fadd double %61, %63
  %65 = load double, double* %10, align 8
  %66 = fdiv double %65, 2.000000e+00
  %67 = fsub double %64, %66
  %68 = load double*, double** %8, align 8
  store double %67, double* %68, align 8
  %69 = load double, double* %18, align 8
  %70 = load double, double* %13, align 8
  %71 = fdiv double %70, 2.000000e+00
  %72 = fadd double %69, %71
  %73 = load double, double* %11, align 8
  %74 = fdiv double %73, 2.000000e+00
  %75 = fsub double %72, %74
  %76 = load double*, double** %9, align 8
  store double %75, double* %76, align 8
  br label %77

77:                                               ; preds = %22, %21
  ret void
}

declare dso_local double @cos(float) #1

declare dso_local double @sin(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

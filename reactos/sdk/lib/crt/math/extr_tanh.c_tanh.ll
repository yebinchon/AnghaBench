; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/math/extr_tanh.c_tanh.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/math/extr_tanh.c_tanh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @tanh(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = fcmp ogt double %6, 5.000000e+01
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store double 1.000000e+00, double* %2, align 8
  br label %25

9:                                                ; preds = %1
  %10 = load double, double* %3, align 8
  %11 = fcmp olt double %10, -5.000000e+01
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store double -1.000000e+00, double* %2, align 8
  br label %25

13:                                               ; preds = %9
  %14 = load double, double* %3, align 8
  %15 = call double @exp(double %14) #2
  store double %15, double* %4, align 8
  %16 = load double, double* %4, align 8
  %17 = fdiv double 1.000000e+00, %16
  store double %17, double* %5, align 8
  %18 = load double, double* %4, align 8
  %19 = load double, double* %5, align 8
  %20 = fsub double %18, %19
  %21 = load double, double* %4, align 8
  %22 = load double, double* %5, align 8
  %23 = fadd double %21, %22
  %24 = fdiv double %20, %23
  store double %24, double* %2, align 8
  br label %25

25:                                               ; preds = %13, %12, %8
  %26 = load double, double* %2, align 8
  ret double %26
}

; Function Attrs: nounwind
declare dso_local double @exp(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

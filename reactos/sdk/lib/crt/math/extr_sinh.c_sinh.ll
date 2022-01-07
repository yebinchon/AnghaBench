; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/math/extr_sinh.c_sinh.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/math/extr_sinh.c_sinh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @sinh(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = fcmp oge double %6, 0.000000e+00
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load double, double* %3, align 8
  %10 = call double @exp(double %9) #2
  store double %10, double* %4, align 8
  %11 = load double, double* %4, align 8
  %12 = load double, double* %4, align 8
  %13 = fdiv double 1.000000e+00, %12
  %14 = fsub double %11, %13
  %15 = fdiv double %14, 2.000000e+00
  store double %15, double* %2, align 8
  br label %25

16:                                               ; preds = %1
  %17 = load double, double* %3, align 8
  %18 = fneg double %17
  %19 = call double @exp(double %18) #2
  store double %19, double* %5, align 8
  %20 = load double, double* %5, align 8
  %21 = fdiv double 1.000000e+00, %20
  %22 = load double, double* %5, align 8
  %23 = fsub double %21, %22
  %24 = fdiv double %23, 2.000000e+00
  store double %24, double* %2, align 8
  br label %25

25:                                               ; preds = %16, %8
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

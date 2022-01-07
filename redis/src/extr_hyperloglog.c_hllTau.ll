; ModuleID = '/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_hllTau.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_hllTau.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @hllTau(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %3, align 8
  %7 = load double, double* %3, align 8
  %8 = fcmp oeq double %7, 0.000000e+00
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load double, double* %3, align 8
  %11 = fcmp oeq double %10, 1.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %1
  store double 0.000000e+00, double* %2, align 8
  br label %37

13:                                               ; preds = %9
  store double 1.000000e+00, double* %5, align 8
  %14 = load double, double* %3, align 8
  %15 = fsub double 1.000000e+00, %14
  store double %15, double* %6, align 8
  br label %16

16:                                               ; preds = %30, %13
  %17 = load double, double* %3, align 8
  %18 = call double @sqrt(double %17) #3
  store double %18, double* %3, align 8
  %19 = load double, double* %6, align 8
  store double %19, double* %4, align 8
  %20 = load double, double* %5, align 8
  %21 = fmul double %20, 5.000000e-01
  store double %21, double* %5, align 8
  %22 = load double, double* %3, align 8
  %23 = fsub double 1.000000e+00, %22
  %24 = fptosi double %23 to i32
  %25 = call double @pow(i32 %24, i32 2)
  %26 = load double, double* %5, align 8
  %27 = fmul double %25, %26
  %28 = load double, double* %6, align 8
  %29 = fsub double %28, %27
  store double %29, double* %6, align 8
  br label %30

30:                                               ; preds = %16
  %31 = load double, double* %4, align 8
  %32 = load double, double* %6, align 8
  %33 = fcmp une double %31, %32
  br i1 %33, label %16, label %34

34:                                               ; preds = %30
  %35 = load double, double* %6, align 8
  %36 = fdiv double %35, 3.000000e+00
  store double %36, double* %2, align 8
  br label %37

37:                                               ; preds = %34, %12
  %38 = load double, double* %2, align 8
  ret double %38
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

declare dso_local double @pow(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

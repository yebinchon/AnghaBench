; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/math/amd64/extr_asin.c_asin.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/math/amd64/extr_asin.c_asin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NaN = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @asin(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = fcmp ogt double %6, 1.000000e+00
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load double, double* %3, align 8
  %10 = fcmp olt double %9, -1.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %1
  %12 = load double, double* @NaN, align 8
  store double %12, double* %2, align 8
  br label %63

13:                                               ; preds = %8
  %14 = load double, double* %3, align 8
  %15 = load double, double* %3, align 8
  %16 = fmul double %14, %15
  store double %16, double* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %17 = load double, double* %5, align 8
  %18 = fadd double %17, 0x3F87A87878787878
  store double %18, double* %5, align 8
  %19 = load double, double* %4, align 8
  %20 = load double, double* %5, align 8
  %21 = fmul double %20, %19
  store double %21, double* %5, align 8
  %22 = load double, double* %5, align 8
  %23 = fadd double %22, 0x3F8C99999999999A
  store double %23, double* %5, align 8
  %24 = load double, double* %4, align 8
  %25 = load double, double* %5, align 8
  %26 = fmul double %25, %24
  store double %26, double* %5, align 8
  %27 = load double, double* %5, align 8
  %28 = fadd double %27, 0x3F91C4EC4EC4EC4F
  store double %28, double* %5, align 8
  %29 = load double, double* %4, align 8
  %30 = load double, double* %5, align 8
  %31 = fmul double %30, %29
  store double %31, double* %5, align 8
  %32 = load double, double* %5, align 8
  %33 = fadd double %32, 0x3F96E8BA2E8BA2E9
  store double %33, double* %5, align 8
  %34 = load double, double* %4, align 8
  %35 = load double, double* %5, align 8
  %36 = fmul double %35, %34
  store double %36, double* %5, align 8
  %37 = load double, double* %5, align 8
  %38 = fadd double %37, 0x3F9F1C71C71C71C7
  store double %38, double* %5, align 8
  %39 = load double, double* %4, align 8
  %40 = load double, double* %5, align 8
  %41 = fmul double %40, %39
  store double %41, double* %5, align 8
  %42 = load double, double* %5, align 8
  %43 = fadd double %42, 0x3FA6DB6DB6DB6DB7
  store double %43, double* %5, align 8
  %44 = load double, double* %4, align 8
  %45 = load double, double* %5, align 8
  %46 = fmul double %45, %44
  store double %46, double* %5, align 8
  %47 = load double, double* %5, align 8
  %48 = fadd double %47, 0x3FB3333333333333
  store double %48, double* %5, align 8
  %49 = load double, double* %4, align 8
  %50 = load double, double* %5, align 8
  %51 = fmul double %50, %49
  store double %51, double* %5, align 8
  %52 = load double, double* %5, align 8
  %53 = fadd double %52, 0x3FC5555555555555
  store double %53, double* %5, align 8
  %54 = load double, double* %4, align 8
  %55 = load double, double* %5, align 8
  %56 = fmul double %55, %54
  store double %56, double* %5, align 8
  %57 = load double, double* %5, align 8
  %58 = fadd double %57, 1.000000e+00
  store double %58, double* %5, align 8
  %59 = load double, double* %3, align 8
  %60 = load double, double* %5, align 8
  %61 = fmul double %60, %59
  store double %61, double* %5, align 8
  %62 = load double, double* %5, align 8
  store double %62, double* %2, align 8
  br label %63

63:                                               ; preds = %13, %11
  %64 = load double, double* %2, align 8
  ret double %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

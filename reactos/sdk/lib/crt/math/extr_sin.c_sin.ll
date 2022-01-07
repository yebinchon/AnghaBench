; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/math/extr_sin.c_sin.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/math/extr_sin.c_sin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global i32 0, align 4
@sin_off_tbl = common dso_local global i64* null, align 8
@sin_sign_tbl = common dso_local global double* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @sin(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %2, align 8
  %6 = load double, double* %2, align 8
  %7 = load i32, i32* @M_PI, align 4
  %8 = sitofp i32 %7 to double
  %9 = fdiv double 2.000000e+00, %8
  %10 = fmul double %6, %9
  %11 = fptosi double %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load double, double* %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sitofp i32 %13 to double
  %15 = load i32, i32* @M_PI, align 4
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 2.000000e+00
  %18 = fmul double %14, %17
  %19 = fsub double %12, %18
  store double %19, double* %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %21, 3
  store i32 %22, i32* %3, align 4
  %23 = load i64*, i64** @sin_off_tbl, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = sitofp i64 %27 to double
  %29 = load double, double* %2, align 8
  %30 = fadd double %29, %28
  store double %30, double* %2, align 8
  %31 = load double, double* %2, align 8
  %32 = load double, double* %2, align 8
  %33 = fmul double %31, %32
  %34 = fneg double %33
  store double %34, double* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %35 = load double, double* %5, align 8
  %36 = fadd double %35, 0x3EFA01A01A01A01A
  store double %36, double* %5, align 8
  %37 = load double, double* %4, align 8
  %38 = load double, double* %5, align 8
  %39 = fmul double %38, %37
  store double %39, double* %5, align 8
  %40 = load double, double* %5, align 8
  %41 = fadd double %40, 0x3F56C16C16C16C17
  store double %41, double* %5, align 8
  %42 = load double, double* %4, align 8
  %43 = load double, double* %5, align 8
  %44 = fmul double %43, %42
  store double %44, double* %5, align 8
  %45 = load double, double* %5, align 8
  %46 = fadd double %45, 0x3FA5555555555555
  store double %46, double* %5, align 8
  %47 = load double, double* %4, align 8
  %48 = load double, double* %5, align 8
  %49 = fmul double %48, %47
  store double %49, double* %5, align 8
  %50 = load double, double* %5, align 8
  %51 = fadd double %50, 5.000000e-01
  store double %51, double* %5, align 8
  %52 = load double, double* %4, align 8
  %53 = load double, double* %5, align 8
  %54 = fmul double %53, %52
  store double %54, double* %5, align 8
  %55 = load double, double* %5, align 8
  %56 = fadd double %55, 1.000000e+00
  store double %56, double* %5, align 8
  %57 = load double*, double** @sin_sign_tbl, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  %61 = load double, double* %60, align 8
  %62 = load double, double* %5, align 8
  %63 = fmul double %62, %61
  store double %63, double* %5, align 8
  %64 = load double, double* %5, align 8
  ret double %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

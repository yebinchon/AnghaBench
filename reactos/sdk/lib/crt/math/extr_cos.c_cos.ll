; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/math/extr_cos.c_cos.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/math/extr_cos.c_cos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global i32 0, align 4
@cos_off_tbl = common dso_local global i64* null, align 8
@cos_sign_tbl = common dso_local global double* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @cos(double %0) #0 {
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
  %21 = and i32 %20, 3
  store i32 %21, i32* %3, align 4
  %22 = load i64*, i64** @cos_off_tbl, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = sitofp i64 %26 to double
  %28 = load double, double* %2, align 8
  %29 = fadd double %28, %27
  store double %29, double* %2, align 8
  %30 = load double, double* %2, align 8
  %31 = load double, double* %2, align 8
  %32 = fmul double %30, %31
  %33 = fneg double %32
  store double %33, double* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %34 = load double, double* %5, align 8
  %35 = fadd double %34, 0x3EFA01A01A01A01A
  store double %35, double* %5, align 8
  %36 = load double, double* %4, align 8
  %37 = load double, double* %5, align 8
  %38 = fmul double %37, %36
  store double %38, double* %5, align 8
  %39 = load double, double* %5, align 8
  %40 = fadd double %39, 0x3F56C16C16C16C17
  store double %40, double* %5, align 8
  %41 = load double, double* %4, align 8
  %42 = load double, double* %5, align 8
  %43 = fmul double %42, %41
  store double %43, double* %5, align 8
  %44 = load double, double* %5, align 8
  %45 = fadd double %44, 0x3FA5555555555555
  store double %45, double* %5, align 8
  %46 = load double, double* %4, align 8
  %47 = load double, double* %5, align 8
  %48 = fmul double %47, %46
  store double %48, double* %5, align 8
  %49 = load double, double* %5, align 8
  %50 = fadd double %49, 5.000000e-01
  store double %50, double* %5, align 8
  %51 = load double, double* %4, align 8
  %52 = load double, double* %5, align 8
  %53 = fmul double %52, %51
  store double %53, double* %5, align 8
  %54 = load double, double* %5, align 8
  %55 = fadd double %54, 1.000000e+00
  store double %55, double* %5, align 8
  %56 = load double*, double** @cos_sign_tbl, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  %60 = load double, double* %59, align 8
  %61 = load double, double* %5, align 8
  %62 = fmul double %61, %60
  store double %62, double* %5, align 8
  %63 = load double, double* %5, align 8
  ret double %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

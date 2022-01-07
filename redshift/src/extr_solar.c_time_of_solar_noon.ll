; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_solar.c_time_of_solar_noon.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_solar.c_time_of_solar_noon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double)* @time_of_solar_noon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @time_of_solar_noon(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %8 = load double, double* %3, align 8
  %9 = call double @jd_from_jcent(double %8)
  %10 = load double, double* %4, align 8
  %11 = fdiv double %10, 3.600000e+02
  %12 = fsub double %9, %11
  %13 = call double @jcent_from_jd(double %12)
  store double %13, double* %5, align 8
  %14 = load double, double* %5, align 8
  %15 = call double @equation_of_time(double %14)
  store double %15, double* %6, align 8
  %16 = load double, double* %4, align 8
  %17 = fmul double 4.000000e+00, %16
  %18 = fsub double 7.200000e+02, %17
  %19 = load double, double* %6, align 8
  %20 = fsub double %18, %19
  store double %20, double* %7, align 8
  %21 = load double, double* %3, align 8
  %22 = call double @jd_from_jcent(double %21)
  %23 = fsub double %22, 5.000000e-01
  %24 = load double, double* %7, align 8
  %25 = fdiv double %24, 1.440000e+03
  %26 = fadd double %23, %25
  %27 = call double @jcent_from_jd(double %26)
  store double %27, double* %5, align 8
  %28 = load double, double* %5, align 8
  %29 = call double @equation_of_time(double %28)
  store double %29, double* %6, align 8
  %30 = load double, double* %4, align 8
  %31 = fmul double 4.000000e+00, %30
  %32 = fsub double 7.200000e+02, %31
  %33 = load double, double* %6, align 8
  %34 = fsub double %32, %33
  store double %34, double* %7, align 8
  %35 = load double, double* %7, align 8
  ret double %35
}

declare dso_local double @jcent_from_jd(double) #1

declare dso_local double @jd_from_jcent(double) #1

declare dso_local double @equation_of_time(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

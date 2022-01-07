; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_solar.c_time_of_solar_elevation.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_solar.c_time_of_solar_elevation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, double, double, double)* @time_of_solar_elevation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @time_of_solar_elevation(double %0, double %1, double %2, double %3, double %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store double %4, double* %10, align 8
  %16 = load double, double* %7, align 8
  %17 = call double @equation_of_time(double %16)
  store double %17, double* %11, align 8
  %18 = load double, double* %7, align 8
  %19 = call double @solar_declination(double %18)
  store double %19, double* %12, align 8
  %20 = load double, double* %8, align 8
  %21 = load double, double* %12, align 8
  %22 = load double, double* %10, align 8
  %23 = call double @hour_angle_from_elevation(double %20, double %21, double %22)
  store double %23, double* %13, align 8
  %24 = load double, double* %9, align 8
  %25 = load double, double* %13, align 8
  %26 = call double @DEG(double %25)
  %27 = fadd double %24, %26
  %28 = fmul double 4.000000e+00, %27
  %29 = fsub double 7.200000e+02, %28
  %30 = load double, double* %11, align 8
  %31 = fsub double %29, %30
  store double %31, double* %14, align 8
  %32 = load double, double* %6, align 8
  %33 = call i64 @jd_from_jcent(double %32)
  %34 = sitofp i64 %33 to double
  %35 = load double, double* %14, align 8
  %36 = fdiv double %35, 1.440000e+03
  %37 = fadd double %34, %36
  %38 = fptosi double %37 to i64
  %39 = call double @jcent_from_jd(i64 %38)
  store double %39, double* %15, align 8
  %40 = load double, double* %15, align 8
  %41 = call double @equation_of_time(double %40)
  store double %41, double* %11, align 8
  %42 = load double, double* %15, align 8
  %43 = call double @solar_declination(double %42)
  store double %43, double* %12, align 8
  %44 = load double, double* %8, align 8
  %45 = load double, double* %12, align 8
  %46 = load double, double* %10, align 8
  %47 = call double @hour_angle_from_elevation(double %44, double %45, double %46)
  store double %47, double* %13, align 8
  %48 = load double, double* %9, align 8
  %49 = load double, double* %13, align 8
  %50 = call double @DEG(double %49)
  %51 = fadd double %48, %50
  %52 = fmul double 4.000000e+00, %51
  %53 = fsub double 7.200000e+02, %52
  %54 = load double, double* %11, align 8
  %55 = fsub double %53, %54
  store double %55, double* %14, align 8
  %56 = load double, double* %14, align 8
  ret double %56
}

declare dso_local double @equation_of_time(double) #1

declare dso_local double @solar_declination(double) #1

declare dso_local double @hour_angle_from_elevation(double, double, double) #1

declare dso_local double @DEG(double) #1

declare dso_local double @jcent_from_jd(i64) #1

declare dso_local i64 @jd_from_jcent(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

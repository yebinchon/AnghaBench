; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_solar.c_equation_of_time.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_solar.c_equation_of_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @equation_of_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @equation_of_time(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %2, align 8
  %9 = load double, double* %2, align 8
  %10 = call double @obliquity_corr(double %9)
  store double %10, double* %3, align 8
  %11 = load double, double* %2, align 8
  %12 = call double @sun_geom_mean_lon(double %11)
  store double %12, double* %4, align 8
  %13 = load double, double* %2, align 8
  %14 = call double @earth_orbit_eccentricity(double %13)
  store double %14, double* %5, align 8
  %15 = load double, double* %2, align 8
  %16 = call double @sun_geom_mean_anomaly(double %15)
  store double %16, double* %6, align 8
  %17 = load double, double* %3, align 8
  %18 = fdiv double %17, 2.000000e+00
  %19 = call i32 @tan(double %18)
  %20 = call double @pow(i32 %19, double 2.000000e+00)
  store double %20, double* %7, align 8
  %21 = load double, double* %7, align 8
  %22 = load double, double* %4, align 8
  %23 = fmul double 2.000000e+00, %22
  %24 = fptosi double %23 to i32
  %25 = call double @sin(i32 %24)
  %26 = fmul double %21, %25
  %27 = load double, double* %5, align 8
  %28 = fmul double 2.000000e+00, %27
  %29 = load double, double* %6, align 8
  %30 = fptosi double %29 to i32
  %31 = call double @sin(i32 %30)
  %32 = fmul double %28, %31
  %33 = fsub double %26, %32
  %34 = load double, double* %5, align 8
  %35 = fmul double 4.000000e+00, %34
  %36 = load double, double* %7, align 8
  %37 = fmul double %35, %36
  %38 = load double, double* %6, align 8
  %39 = fptosi double %38 to i32
  %40 = call double @sin(i32 %39)
  %41 = fmul double %37, %40
  %42 = load double, double* %4, align 8
  %43 = fmul double 2.000000e+00, %42
  %44 = fptosi double %43 to i32
  %45 = call i32 @cos(i32 %44)
  %46 = sitofp i32 %45 to double
  %47 = fmul double %41, %46
  %48 = fadd double %33, %47
  %49 = load double, double* %7, align 8
  %50 = fmul double 5.000000e-01, %49
  %51 = load double, double* %7, align 8
  %52 = fmul double %50, %51
  %53 = load double, double* %4, align 8
  %54 = fmul double 4.000000e+00, %53
  %55 = fptosi double %54 to i32
  %56 = call double @sin(i32 %55)
  %57 = fmul double %52, %56
  %58 = fsub double %48, %57
  %59 = load double, double* %5, align 8
  %60 = fmul double 1.250000e+00, %59
  %61 = load double, double* %5, align 8
  %62 = fmul double %60, %61
  %63 = load double, double* %6, align 8
  %64 = fmul double 2.000000e+00, %63
  %65 = fptosi double %64 to i32
  %66 = call double @sin(i32 %65)
  %67 = fmul double %62, %66
  %68 = fsub double %58, %67
  store double %68, double* %8, align 8
  %69 = load double, double* %8, align 8
  %70 = call i32 @DEG(double %69)
  %71 = mul nsw i32 4, %70
  %72 = sitofp i32 %71 to double
  ret double %72
}

declare dso_local double @obliquity_corr(double) #1

declare dso_local double @sun_geom_mean_lon(double) #1

declare dso_local double @earth_orbit_eccentricity(double) #1

declare dso_local double @sun_geom_mean_anomaly(double) #1

declare dso_local double @pow(i32, double) #1

declare dso_local i32 @tan(double) #1

declare dso_local double @sin(i32) #1

declare dso_local i32 @cos(i32) #1

declare dso_local i32 @DEG(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_solar.c_sun_equation_of_center.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_solar.c_sun_equation_of_center.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @sun_equation_of_center to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @sun_equation_of_center(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %2, align 8
  %5 = load double, double* %2, align 8
  %6 = call double @sun_geom_mean_anomaly(double %5)
  store double %6, double* %3, align 8
  %7 = load double, double* %3, align 8
  %8 = fptosi double %7 to i32
  %9 = call double @sin(i32 %8)
  %10 = load double, double* %2, align 8
  %11 = load double, double* %2, align 8
  %12 = fmul double 1.400000e-05, %11
  %13 = fadd double 4.817000e-03, %12
  %14 = fmul double %10, %13
  %15 = fsub double 0x3FFEA235B4EDB2F6, %14
  %16 = fmul double %9, %15
  %17 = load double, double* %3, align 8
  %18 = fmul double 2.000000e+00, %17
  %19 = fptosi double %18 to i32
  %20 = call double @sin(i32 %19)
  %21 = load double, double* %2, align 8
  %22 = fmul double 1.010000e-04, %21
  %23 = fsub double 1.999300e-02, %22
  %24 = fmul double %20, %23
  %25 = fadd double %16, %24
  %26 = load double, double* %3, align 8
  %27 = fmul double 3.000000e+00, %26
  %28 = fptosi double %27 to i32
  %29 = call double @sin(i32 %28)
  %30 = fmul double %29, 2.890000e-04
  %31 = fadd double %25, %30
  store double %31, double* %4, align 8
  %32 = load double, double* %4, align 8
  %33 = call double @RAD(double %32)
  ret double %33
}

declare dso_local double @sun_geom_mean_anomaly(double) #1

declare dso_local double @sin(i32) #1

declare dso_local double @RAD(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

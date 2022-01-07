; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_solar.c_mean_ecliptic_obliquity.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_solar.c_mean_ecliptic_obliquity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @mean_ecliptic_obliquity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @mean_ecliptic_obliquity(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %2, align 8
  %4 = load double, double* %2, align 8
  %5 = load double, double* %2, align 8
  %6 = load double, double* %2, align 8
  %7 = fmul double %6, 1.813000e-03
  %8 = fsub double 5.900000e-04, %7
  %9 = fmul double %5, %8
  %10 = fadd double 4.681500e+01, %9
  %11 = fmul double %4, %10
  %12 = fsub double 2.144800e+01, %11
  store double %12, double* %3, align 8
  %13 = load double, double* %3, align 8
  %14 = fdiv double %13, 6.000000e+01
  %15 = fadd double 2.600000e+01, %14
  %16 = fdiv double %15, 6.000000e+01
  %17 = fadd double 2.300000e+01, %16
  %18 = call double @RAD(double %17)
  ret double %18
}

declare dso_local double @RAD(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

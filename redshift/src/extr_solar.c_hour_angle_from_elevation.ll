; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_solar.c_hour_angle_from_elevation.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_solar.c_hour_angle_from_elevation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, double)* @hour_angle_from_elevation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @hour_angle_from_elevation(double %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %8 = load double, double* %6, align 8
  %9 = call double @llvm.fabs.f64(double %8)
  %10 = call i32 @cos(double %9)
  %11 = load double, double* %4, align 8
  %12 = call double @RAD(double %11)
  %13 = call i32 @sin(double %12)
  %14 = load double, double* %5, align 8
  %15 = call i32 @sin(double %14)
  %16 = mul nsw i32 %13, %15
  %17 = sub nsw i32 %10, %16
  %18 = load double, double* %4, align 8
  %19 = call double @RAD(double %18)
  %20 = call i32 @cos(double %19)
  %21 = load double, double* %5, align 8
  %22 = call i32 @cos(double %21)
  %23 = mul nsw i32 %20, %22
  %24 = sdiv i32 %17, %23
  %25 = call double @acos(i32 %24)
  store double %25, double* %7, align 8
  %26 = load double, double* %7, align 8
  %27 = load double, double* %6, align 8
  %28 = fneg double %27
  %29 = call double @llvm.copysign.f64(double %26, double %28)
  ret double %29
}

declare dso_local double @acos(i32) #1

declare dso_local i32 @cos(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @sin(double) #1

declare dso_local double @RAD(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.copysign.f64(double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

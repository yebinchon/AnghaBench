; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_solar.c_elevation_from_hour_angle.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_solar.c_elevation_from_hour_angle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, double)* @elevation_from_hour_angle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @elevation_from_hour_angle(double %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load double, double* %6, align 8
  %8 = call i32 @cos(double %7)
  %9 = load double, double* %4, align 8
  %10 = call double @RAD(double %9)
  %11 = call i32 @cos(double %10)
  %12 = mul nsw i32 %8, %11
  %13 = load double, double* %5, align 8
  %14 = call i32 @cos(double %13)
  %15 = mul nsw i32 %12, %14
  %16 = load double, double* %4, align 8
  %17 = call double @RAD(double %16)
  %18 = call i32 @sin(double %17)
  %19 = load double, double* %5, align 8
  %20 = call i32 @sin(double %19)
  %21 = mul nsw i32 %18, %20
  %22 = add nsw i32 %15, %21
  %23 = call double @asin(i32 %22)
  ret double %23
}

declare dso_local double @asin(i32) #1

declare dso_local i32 @cos(double) #1

declare dso_local double @RAD(double) #1

declare dso_local i32 @sin(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

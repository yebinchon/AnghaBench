; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geohash_helper.c_geohashGetDistance.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geohash_helper.c_geohashGetDistance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EARTH_RADIUS_IN_METERS = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @geohashGetDistance(double %0, double %1, double %2, double %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %15 = load double, double* %6, align 8
  %16 = call double @deg_rad(double %15)
  store double %16, double* %9, align 8
  %17 = load double, double* %5, align 8
  %18 = call double @deg_rad(double %17)
  store double %18, double* %10, align 8
  %19 = load double, double* %8, align 8
  %20 = call double @deg_rad(double %19)
  store double %20, double* %11, align 8
  %21 = load double, double* %7, align 8
  %22 = call double @deg_rad(double %21)
  store double %22, double* %12, align 8
  %23 = load double, double* %11, align 8
  %24 = load double, double* %9, align 8
  %25 = fsub double %23, %24
  %26 = fdiv double %25, 2.000000e+00
  %27 = call double @sin(double %26) #3
  store double %27, double* %13, align 8
  %28 = load double, double* %12, align 8
  %29 = load double, double* %10, align 8
  %30 = fsub double %28, %29
  %31 = fdiv double %30, 2.000000e+00
  %32 = call double @sin(double %31) #3
  store double %32, double* %14, align 8
  %33 = load double, double* @EARTH_RADIUS_IN_METERS, align 8
  %34 = fmul double 2.000000e+00, %33
  %35 = load double, double* %13, align 8
  %36 = load double, double* %13, align 8
  %37 = fmul double %35, %36
  %38 = load double, double* %9, align 8
  %39 = call double @cos(double %38) #3
  %40 = load double, double* %11, align 8
  %41 = call double @cos(double %40) #3
  %42 = fmul double %39, %41
  %43 = load double, double* %14, align 8
  %44 = fmul double %42, %43
  %45 = load double, double* %14, align 8
  %46 = fmul double %44, %45
  %47 = fadd double %37, %46
  %48 = call i32 @sqrt(double %47)
  %49 = call double @asin(i32 %48)
  %50 = fmul double %34, %49
  ret double %50
}

declare dso_local double @deg_rad(double) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

declare dso_local double @asin(i32) #1

declare dso_local i32 @sqrt(double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

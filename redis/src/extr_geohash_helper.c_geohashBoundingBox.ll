; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geohash_helper.c_geohashBoundingBox.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geohash_helper.c_geohashBoundingBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EARTH_RADIUS_IN_METERS = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @geohashBoundingBox(double %0, double %1, double %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double* %3, double** %9, align 8
  %10 = load double*, double** %9, align 8
  %11 = icmp ne double* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %54

13:                                               ; preds = %4
  %14 = load double, double* %6, align 8
  %15 = load double, double* %8, align 8
  %16 = load double, double* @EARTH_RADIUS_IN_METERS, align 8
  %17 = fdiv double %15, %16
  %18 = load double, double* %7, align 8
  %19 = call i32 @deg_rad(double %18)
  %20 = call double @cos(i32 %19)
  %21 = fdiv double %17, %20
  %22 = call double @rad_deg(double %21)
  %23 = fsub double %14, %22
  %24 = load double*, double** %9, align 8
  %25 = getelementptr inbounds double, double* %24, i64 0
  store double %23, double* %25, align 8
  %26 = load double, double* %6, align 8
  %27 = load double, double* %8, align 8
  %28 = load double, double* @EARTH_RADIUS_IN_METERS, align 8
  %29 = fdiv double %27, %28
  %30 = load double, double* %7, align 8
  %31 = call i32 @deg_rad(double %30)
  %32 = call double @cos(i32 %31)
  %33 = fdiv double %29, %32
  %34 = call double @rad_deg(double %33)
  %35 = fadd double %26, %34
  %36 = load double*, double** %9, align 8
  %37 = getelementptr inbounds double, double* %36, i64 2
  store double %35, double* %37, align 8
  %38 = load double, double* %7, align 8
  %39 = load double, double* %8, align 8
  %40 = load double, double* @EARTH_RADIUS_IN_METERS, align 8
  %41 = fdiv double %39, %40
  %42 = call double @rad_deg(double %41)
  %43 = fsub double %38, %42
  %44 = load double*, double** %9, align 8
  %45 = getelementptr inbounds double, double* %44, i64 1
  store double %43, double* %45, align 8
  %46 = load double, double* %7, align 8
  %47 = load double, double* %8, align 8
  %48 = load double, double* @EARTH_RADIUS_IN_METERS, align 8
  %49 = fdiv double %47, %48
  %50 = call double @rad_deg(double %49)
  %51 = fadd double %46, %50
  %52 = load double*, double** %9, align 8
  %53 = getelementptr inbounds double, double* %52, i64 3
  store double %51, double* %53, align 8
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %13, %12
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local double @rad_deg(double) #1

declare dso_local double @cos(i32) #1

declare dso_local i32 @deg_rad(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

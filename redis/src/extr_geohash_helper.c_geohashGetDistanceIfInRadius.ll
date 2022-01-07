; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geohash_helper.c_geohashGetDistanceIfInRadius.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geohash_helper.c_geohashGetDistanceIfInRadius.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @geohashGetDistanceIfInRadius(double %0, double %1, double %2, double %3, double %4, double* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  store double %0, double* %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store double* %5, double** %13, align 8
  %14 = load double, double* %8, align 8
  %15 = load double, double* %9, align 8
  %16 = load double, double* %10, align 8
  %17 = load double, double* %11, align 8
  %18 = call double @geohashGetDistance(double %14, double %15, double %16, double %17)
  %19 = load double*, double** %13, align 8
  store double %18, double* %19, align 8
  %20 = load double*, double** %13, align 8
  %21 = load double, double* %20, align 8
  %22 = load double, double* %12, align 8
  %23 = fcmp ogt double %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %26

25:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local double @geohashGetDistance(double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geohash_helper.c_geohashEstimateStepsByRadius.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geohash_helper.c_geohashEstimateStepsByRadius.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MERCATOR_MAX = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @geohashEstimateStepsByRadius(double %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %7 = load double, double* %4, align 8
  %8 = fcmp oeq double %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 26, i32* %3, align 4
  br label %50

10:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %11

11:                                               ; preds = %15, %10
  %12 = load double, double* %4, align 8
  %13 = load double, double* @MERCATOR_MAX, align 8
  %14 = fcmp olt double %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load double, double* %4, align 8
  %17 = fmul double %16, 2.000000e+00
  store double %17, double* %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  br label %11

20:                                               ; preds = %11
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 2
  store i32 %22, i32* %6, align 4
  %23 = load double, double* %5, align 8
  %24 = fcmp ogt double %23, 6.600000e+01
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load double, double* %5, align 8
  %27 = fcmp olt double %26, -6.600000e+01
  br i1 %27, label %28, label %40

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = load double, double* %5, align 8
  %32 = fcmp ogt double %31, 8.000000e+01
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load double, double* %5, align 8
  %35 = fcmp olt double %34, -8.000000e+01
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 26
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 26, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %9
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

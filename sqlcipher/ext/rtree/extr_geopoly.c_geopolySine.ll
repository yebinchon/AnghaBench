; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolySine.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolySine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GEOPOLY_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @geopolySine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @geopolySine(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %3, align 8
  %7 = load double, double* %3, align 8
  %8 = load double, double* @GEOPOLY_PI, align 8
  %9 = fmul double -5.000000e-01, %8
  %10 = fcmp oge double %7, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load double, double* %3, align 8
  %13 = load double, double* @GEOPOLY_PI, align 8
  %14 = fmul double 2.000000e+00, %13
  %15 = fcmp ole double %12, %14
  br label %16

16:                                               ; preds = %11, %1
  %17 = phi i1 [ false, %1 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load double, double* %3, align 8
  %21 = load double, double* @GEOPOLY_PI, align 8
  %22 = fmul double 1.500000e+00, %21
  %23 = fcmp oge double %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load double, double* @GEOPOLY_PI, align 8
  %26 = fmul double 2.000000e+00, %25
  %27 = load double, double* %3, align 8
  %28 = fsub double %27, %26
  store double %28, double* %3, align 8
  br label %29

29:                                               ; preds = %24, %16
  %30 = load double, double* %3, align 8
  %31 = load double, double* @GEOPOLY_PI, align 8
  %32 = fmul double 5.000000e-01, %31
  %33 = fcmp oge double %30, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load double, double* %3, align 8
  %36 = load double, double* @GEOPOLY_PI, align 8
  %37 = fsub double %35, %36
  %38 = call double @geopolySine(double %37)
  %39 = fneg double %38
  store double %39, double* %2, align 8
  br label %58

40:                                               ; preds = %29
  %41 = load double, double* %3, align 8
  %42 = load double, double* %3, align 8
  %43 = fmul double %41, %42
  store double %43, double* %4, align 8
  %44 = load double, double* %4, align 8
  %45 = load double, double* %3, align 8
  %46 = fmul double %44, %45
  store double %46, double* %5, align 8
  %47 = load double, double* %5, align 8
  %48 = load double, double* %4, align 8
  %49 = fmul double %47, %48
  store double %49, double* %6, align 8
  %50 = load double, double* %3, align 8
  %51 = fmul double 0x3FEFFD8028AF4BB3, %50
  %52 = load double, double* %5, align 8
  %53 = fmul double 1.656700e-01, %52
  %54 = fsub double %51, %53
  %55 = load double, double* %6, align 8
  %56 = fmul double 7.513400e-03, %55
  %57 = fadd double %54, %56
  store double %57, double* %2, align 8
  br label %58

58:                                               ; preds = %40, %34
  %59 = load double, double* %2, align 8
  ret double %59
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

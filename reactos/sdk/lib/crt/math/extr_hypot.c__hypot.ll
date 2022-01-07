; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/math/extr_hypot.c__hypot.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/math/extr_hypot.c__hypot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__SQRT_DBL_MIN = common dso_local global double 0.000000e+00, align 8
@__SQRT_DBL_MAX = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @_hypot(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
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
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %15 = load double, double* %4, align 8
  %16 = call double @llvm.fabs.f64(double %15)
  store double %16, double* %6, align 8
  %17 = load double, double* %5, align 8
  %18 = call double @llvm.fabs.f64(double %17)
  store double %18, double* %7, align 8
  %19 = load double, double* %6, align 8
  %20 = load double, double* %7, align 8
  %21 = fcmp olt double %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load double, double* %6, align 8
  store double %23, double* %9, align 8
  %24 = load double, double* %7, align 8
  store double %24, double* %6, align 8
  %25 = load double, double* %9, align 8
  store double %25, double* %7, align 8
  br label %26

26:                                               ; preds = %22, %2
  %27 = load double, double* %7, align 8
  %28 = fcmp oeq double %27, 0.000000e+00
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load double, double* %6, align 8
  store double %30, double* %3, align 8
  br label %84

31:                                               ; preds = %26
  %32 = load double, double* %7, align 8
  %33 = load double, double* %6, align 8
  %34 = fdiv double %32, %33
  store double %34, double* %8, align 8
  %35 = load double, double* @__SQRT_DBL_MIN, align 8
  %36 = fcmp ogt double %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load double, double* %6, align 8
  %39 = load double, double* @__SQRT_DBL_MAX, align 8
  %40 = fcmp olt double %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load double, double* %6, align 8
  %43 = load double, double* %8, align 8
  %44 = load double, double* %8, align 8
  %45 = fmul double %43, %44
  %46 = fadd double 1.000000e+00, %45
  %47 = call double @sqrt(double %46) #3
  %48 = fmul double %42, %47
  store double %48, double* %3, align 8
  br label %84

49:                                               ; preds = %37, %31
  %50 = load double, double* %8, align 8
  %51 = load double, double* %8, align 8
  %52 = fmul double %50, %51
  store double %52, double* %10, align 8
  %53 = load double, double* %6, align 8
  store double %53, double* %13, align 8
  %54 = load double, double* %7, align 8
  store double %54, double* %14, align 8
  br label %55

55:                                               ; preds = %81, %49
  %56 = load double, double* %10, align 8
  %57 = fadd double 4.000000e+00, %56
  store double %57, double* %11, align 8
  %58 = load double, double* %11, align 8
  %59 = fcmp oeq double %58, 4.000000e+00
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %82

61:                                               ; preds = %55
  %62 = load double, double* %10, align 8
  %63 = load double, double* %11, align 8
  %64 = fdiv double %62, %63
  store double %64, double* %12, align 8
  %65 = load double, double* %12, align 8
  %66 = fmul double 2.000000e+00, %65
  %67 = load double, double* %13, align 8
  %68 = fmul double %66, %67
  %69 = load double, double* %13, align 8
  %70 = fadd double %69, %68
  store double %70, double* %13, align 8
  %71 = load double, double* %12, align 8
  %72 = load double, double* %14, align 8
  %73 = fmul double %72, %71
  store double %73, double* %14, align 8
  %74 = load double, double* %14, align 8
  %75 = load double, double* %13, align 8
  %76 = fdiv double %74, %75
  %77 = load double, double* %14, align 8
  %78 = load double, double* %13, align 8
  %79 = fdiv double %77, %78
  %80 = fmul double %76, %79
  store double %80, double* %10, align 8
  br label %81

81:                                               ; preds = %61
  br i1 true, label %55, label %82

82:                                               ; preds = %81, %60
  %83 = load double, double* %13, align 8
  store double %83, double* %3, align 8
  br label %84

84:                                               ; preds = %82, %41, %29
  %85 = load double, double* %3, align 8
  ret double %85
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

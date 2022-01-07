; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_resultScore.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_resultScore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, double, double, double }
%struct.TYPE_5__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_6__*, i64, %struct.TYPE_5__*)* @resultScore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @resultScore(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, i64 %1, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store i64 %1, i64* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  store double 0.000000e+00, double* %6, align 8
  store double 0.000000e+00, double* %8, align 8
  store double 1.000000e+00, double* %9, align 8
  store double 1.000000e-01, double* %10, align 8
  store double 5.000000e-01, double* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = sitofp i64 %20 to double
  %22 = fdiv double %18, %21
  store double %22, double* %5, align 8
  br label %23

23:                                               ; preds = %16, %3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sitofp i64 %31 to double
  %33 = fdiv double %29, %32
  store double %33, double* %6, align 8
  br label %34

34:                                               ; preds = %27, %23
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, -1
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sitofp i64 %40 to double
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %43 = load double, double* %42, align 8
  %44 = fdiv double %41, %43
  store double %44, double* %8, align 8
  br label %45

45:                                               ; preds = %38, %34
  %46 = load i64, i64* %4, align 8
  %47 = uitofp i64 %46 to double
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %49 = load double, double* %48, align 8
  %50 = fdiv double %47, %49
  store double %50, double* %7, align 8
  %51 = load double, double* %5, align 8
  %52 = call double @MIN(i32 1, double %51)
  %53 = load double, double* %6, align 8
  %54 = call double @MIN(i32 1, double %53)
  %55 = fadd double %52, %54
  %56 = load double, double* %8, align 8
  %57 = call double @MIN(i32 1, double %56)
  %58 = fadd double %55, %57
  %59 = fmul double %58, 1.000000e+00
  %60 = load double, double* %7, align 8
  %61 = fmul double %60, 5.000000e-01
  %62 = fadd double %59, %61
  %63 = load double, double* %5, align 8
  %64 = call i32 @log(double %63)
  %65 = call double @MAX(i32 0, i32 %64)
  %66 = load double, double* %6, align 8
  %67 = call i32 @log(double %66)
  %68 = call double @MAX(i32 0, i32 %67)
  %69 = fadd double %65, %68
  %70 = load double, double* %8, align 8
  %71 = call i32 @log(double %70)
  %72 = call double @MAX(i32 0, i32 %71)
  %73 = fadd double %69, %72
  %74 = fmul double %73, 1.000000e-01
  %75 = fadd double %62, %74
  store double %75, double* %12, align 8
  %76 = load double, double* %12, align 8
  ret double %76
}

declare dso_local double @MIN(i32, double) #1

declare dso_local double @MAX(i32, i32) #1

declare dso_local i32 @log(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

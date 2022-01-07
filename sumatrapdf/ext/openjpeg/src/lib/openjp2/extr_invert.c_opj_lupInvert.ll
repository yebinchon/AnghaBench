; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_invert.c_opj_lupInvert.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_invert.c_opj_lupInvert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double*, i64, i64*, double*, double*, double*)* @opj_lupInvert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_lupInvert(double* %0, double* %1, i64 %2, i64* %3, double* %4, double* %5, double* %6) #0 {
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca i64, align 8
  store double* %0, double** %8, align 8
  store double* %1, double** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store double* %4, double** %12, align 8
  store double* %5, double** %13, align 8
  store double* %6, double** %14, align 8
  %20 = load double*, double** %9, align 8
  store double* %20, double** %18, align 8
  %21 = load i64, i64* %10, align 8
  %22 = mul i64 %21, 8
  store i64 %22, i64* %19, align 8
  store i64 0, i64* %15, align 8
  br label %23

23:                                               ; preds = %60, %7
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  %28 = load double*, double** %18, align 8
  %29 = getelementptr inbounds double, double* %28, i32 1
  store double* %29, double** %18, align 8
  store double* %28, double** %17, align 8
  %30 = load double*, double** %12, align 8
  %31 = load i64, i64* %19, align 8
  %32 = call i32 @memset(double* %30, i32 0, i64 %31)
  %33 = load double*, double** %12, align 8
  %34 = load i64, i64* %15, align 8
  %35 = getelementptr inbounds double, double* %33, i64 %34
  store double 1.000000e+00, double* %35, align 8
  %36 = load double*, double** %13, align 8
  %37 = load double*, double** %8, align 8
  %38 = load double*, double** %12, align 8
  %39 = load i64*, i64** %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load double*, double** %14, align 8
  %42 = call i32 @opj_lupSolve(double* %36, double* %37, double* %38, i64* %39, i64 %40, double* %41)
  store i64 0, i64* %16, align 8
  br label %43

43:                                               ; preds = %56, %27
  %44 = load i64, i64* %16, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load double*, double** %13, align 8
  %49 = load i64, i64* %16, align 8
  %50 = getelementptr inbounds double, double* %48, i64 %49
  %51 = load double, double* %50, align 8
  %52 = load double*, double** %17, align 8
  store double %51, double* %52, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load double*, double** %17, align 8
  %55 = getelementptr inbounds double, double* %54, i64 %53
  store double* %55, double** %17, align 8
  br label %56

56:                                               ; preds = %47
  %57 = load i64, i64* %16, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %16, align 8
  br label %43

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %15, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %15, align 8
  br label %23

63:                                               ; preds = %23
  ret void
}

declare dso_local i32 @memset(double*, i32, i64) #1

declare dso_local i32 @opj_lupSolve(double*, double*, double*, i64*, i64, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

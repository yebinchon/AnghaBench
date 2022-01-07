; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_FillSecondShaper.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_FillSecondShaper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i64)* @FillSecondShaper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillSecondShaper(i32 %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %56, %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 16385
  br i1 %16, label %17, label %59

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 1.638400e+04
  store double %20, double* %10, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load double, double* %10, align 8
  %24 = call double @cmsEvalToneCurveFloat(i32 %21, i32* %22, double %23)
  store double %24, double* %11, align 8
  %25 = load double, double* %11, align 8
  %26 = fcmp olt double %25, 0.000000e+00
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store double 0.000000e+00, double* %11, align 8
  br label %28

28:                                               ; preds = %27, %17
  %29 = load double, double* %11, align 8
  %30 = fcmp ogt double %29, 1.000000e+00
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store double 1.000000e+00, double* %11, align 8
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load double, double* %11, align 8
  %37 = fmul double %36, 6.553500e+04
  %38 = call i32 @_cmsQuickSaturateWord(double %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @FROM_16_TO_8(i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @FROM_8_TO_16(i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  br label %55

47:                                               ; preds = %32
  %48 = load double, double* %11, align 8
  %49 = fmul double %48, 6.553500e+04
  %50 = call i32 @_cmsQuickSaturateWord(double %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %47, %35
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %14

59:                                               ; preds = %14
  ret void
}

declare dso_local double @cmsEvalToneCurveFloat(i32, i32*, double) #1

declare dso_local i32 @_cmsQuickSaturateWord(double) #1

declare dso_local i32 @FROM_16_TO_8(i32) #1

declare dso_local i32 @FROM_8_TO_16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

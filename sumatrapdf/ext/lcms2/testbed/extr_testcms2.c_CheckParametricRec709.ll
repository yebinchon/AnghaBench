; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckParametricRec709.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckParametricRec709.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckParametricRec709 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckParametricRec709() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [7 x double], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds [7 x double], [7 x double]* %2, i64 0, i64 0
  store double 4.500000e-01, double* %8, align 16
  %9 = call double @pow(double 1.099000e+00, double 0x4001C71C71C71C72) #3
  %10 = getelementptr inbounds [7 x double], [7 x double]* %2, i64 0, i64 1
  store double %9, double* %10, align 8
  %11 = getelementptr inbounds [7 x double], [7 x double]* %2, i64 0, i64 2
  store double 0.000000e+00, double* %11, align 16
  %12 = getelementptr inbounds [7 x double], [7 x double]* %2, i64 0, i64 3
  store double 4.500000e+00, double* %12, align 8
  %13 = getelementptr inbounds [7 x double], [7 x double]* %2, i64 0, i64 4
  store double 1.800000e-02, double* %13, align 16
  %14 = getelementptr inbounds [7 x double], [7 x double]* %2, i64 0, i64 5
  store double -9.900000e-02, double* %14, align 8
  %15 = getelementptr inbounds [7 x double], [7 x double]* %2, i64 0, i64 6
  store double 0.000000e+00, double* %15, align 16
  %16 = getelementptr inbounds [7 x double], [7 x double]* %2, i64 0, i64 0
  %17 = call i32* @cmsBuildParametricToneCurve(i32* null, i32 5, double* %16)
  store i32* %17, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %49, %0
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = sitofp i32 %22 to float
  %24 = fdiv float %23, 2.550000e+02
  store float %24, float* %5, align 4
  %25 = call i32 (...) @DbgThread()
  %26 = load i32*, i32** %3, align 8
  %27 = load float, float* %5, align 4
  %28 = call double @cmsEvalToneCurveFloat(i32 %25, i32* %26, float %27)
  %29 = fmul double 2.550000e+02, %28
  %30 = fadd double %29, 5.000000e-01
  %31 = call i32 @floor(double %30)
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %34, 2.550000e+02
  %36 = call double @Rec709(double %35)
  %37 = fmul double 2.550000e+02, %36
  %38 = fadd double %37, 5.000000e-01
  %39 = call i32 @floor(double %38)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %21
  %45 = call i32 (...) @DbgThread()
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @cmsFreeToneCurve(i32 %45, i32* %46)
  store i32 0, i32* %1, align 4
  br label %56

48:                                               ; preds = %21
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %18

52:                                               ; preds = %18
  %53 = call i32 (...) @DbgThread()
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @cmsFreeToneCurve(i32 %53, i32* %54)
  store i32 1, i32* %1, align 4
  br label %56

56:                                               ; preds = %52, %44
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

declare dso_local i32* @cmsBuildParametricToneCurve(i32*, i32, double*) #2

declare dso_local i32 @floor(double) #2

declare dso_local double @cmsEvalToneCurveFloat(i32, i32*, float) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local double @Rec709(double) #2

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

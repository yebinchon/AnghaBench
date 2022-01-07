; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckGammaCreationFlt.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckGammaCreationFlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"(lin gamma): Must be %f, But is %f : \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckGammaCreationFlt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckGammaCreationFlt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = call i32 (...) @DbgThread()
  %7 = call i32* @cmsBuildGamma(i32 %6, double 1.000000e+00)
  store i32* %7, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %34, %0
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 65535
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = sitofp i32 %12 to double
  %14 = fdiv double %13, 6.553500e+04
  %15 = fptosi double %14 to i64
  store i64 %15, i64* %4, align 8
  %16 = call i32 (...) @DbgThread()
  %17 = load i32*, i32** %2, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @cmsEvalToneCurveFloat(i32 %16, i32* %17, i64 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = sub nsw i64 %20, %21
  %23 = call i32 @fabs(i64 %22)
  %24 = sitofp i32 %23 to double
  %25 = fcmp ogt double %24, 0x3EF0001000100010
  br i1 %25, label %26, label %33

26:                                               ; preds = %11
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @Fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %28)
  %30 = call i32 (...) @DbgThread()
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @cmsFreeToneCurve(i32 %30, i32* %31)
  store i32 0, i32* %1, align 4
  br label %46

33:                                               ; preds = %11
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %8

37:                                               ; preds = %8
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @CheckGammaEstimation(i32* %38, double 1.000000e+00)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %46

42:                                               ; preds = %37
  %43 = call i32 (...) @DbgThread()
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @cmsFreeToneCurve(i32 %43, i32* %44)
  store i32 1, i32* %1, align 4
  br label %46

46:                                               ; preds = %42, %41, %26
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i32* @cmsBuildGamma(i32, double) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i64 @cmsEvalToneCurveFloat(i32, i32*, i64) #1

declare dso_local i32 @fabs(i64) #1

declare dso_local i32 @Fail(i8*, i64, i64) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

declare dso_local i32 @CheckGammaEstimation(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

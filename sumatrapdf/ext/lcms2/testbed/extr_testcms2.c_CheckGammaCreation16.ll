; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckGammaCreation16.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckGammaCreation16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"(lin gamma): Must be %x, But is %x : \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckGammaCreation16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckGammaCreation16() #0 {
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

8:                                                ; preds = %29, %0
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 65535
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = call i32 (...) @DbgThread()
  %15 = load i32*, i32** %2, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @cmsEvalToneCurve16(i32 %14, i32* %15, i64 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %11
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @Fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %23)
  %25 = call i32 (...) @DbgThread()
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @cmsFreeToneCurve(i32 %25, i32* %26)
  store i32 0, i32* %1, align 4
  br label %41

28:                                               ; preds = %11
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %8

32:                                               ; preds = %8
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @CheckGammaEstimation(i32* %33, double 1.000000e+00)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 0, i32* %1, align 4
  br label %41

37:                                               ; preds = %32
  %38 = call i32 (...) @DbgThread()
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @cmsFreeToneCurve(i32 %38, i32* %39)
  store i32 1, i32* %1, align 4
  br label %41

41:                                               ; preds = %37, %36, %21
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32* @cmsBuildGamma(i32, double) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i64 @cmsEvalToneCurve16(i32, i32*, i64) #1

declare dso_local i32 @Fail(i8*, i64, i64) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

declare dso_local i32 @CheckGammaEstimation(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CombineGammaFloat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CombineGammaFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @CombineGammaFloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CombineGammaFloat(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [256 x i64], align 16
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 256
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = sitofp i32 %12 to float
  %14 = fdiv float %13, 2.550000e+02
  store float %14, float* %6, align 4
  %15 = call i32 (...) @DbgThread()
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 (...) @DbgThread()
  %18 = load i32*, i32** %3, align 8
  %19 = load float, float* %6, align 4
  %20 = call float @cmsEvalToneCurveFloat(i32 %17, i32* %18, float %19)
  %21 = call float @cmsEvalToneCurveFloat(i32 %15, i32* %16, float %20)
  store float %21, float* %6, align 4
  %22 = load float, float* %6, align 4
  %23 = fpext float %22 to double
  %24 = fmul double %23, 6.553500e+04
  %25 = fadd double %24, 5.000000e-01
  %26 = fptrunc double %25 to float
  %27 = call i64 @floor(float %26)
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [256 x i64], [256 x i64]* %5, i64 0, i64 %29
  store i64 %27, i64* %30, align 8
  br label %31

31:                                               ; preds = %11
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %8

34:                                               ; preds = %8
  %35 = call i32 (...) @DbgThread()
  %36 = getelementptr inbounds [256 x i64], [256 x i64]* %5, i64 0, i64 0
  %37 = call i32* @cmsBuildTabulatedToneCurve16(i32 %35, i32 256, i64* %36)
  ret i32* %37
}

declare dso_local float @cmsEvalToneCurveFloat(i32, i32*, float) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i64 @floor(float) #1

declare dso_local i32* @cmsBuildTabulatedToneCurve16(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

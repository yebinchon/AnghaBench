; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckReverseDegenerated.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckReverseDegenerated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckReverseDegenerated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckReverseDegenerated() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [16 x i32], align 16
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %5, align 16
  %6 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 2
  store i32 0, i32* %7, align 8
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 3
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 4
  store i32 0, i32* %9, align 16
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 5
  store i32 21845, i32* %10, align 4
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 6
  store i32 26214, i32* %11, align 8
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 7
  store i32 30583, i32* %12, align 4
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 8
  store i32 34952, i32* %13, align 16
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 9
  store i32 39321, i32* %14, align 4
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 10
  store i32 65535, i32* %15, align 8
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 11
  store i32 65535, i32* %16, align 4
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 12
  store i32 65535, i32* %17, align 16
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 13
  store i32 65535, i32* %18, align 4
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 14
  store i32 65535, i32* %19, align 8
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 15
  store i32 65535, i32* %20, align 4
  %21 = call i32 (...) @DbgThread()
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %23 = call i32* @cmsBuildTabulatedToneCurve16(i32 %21, i32 16, i32* %22)
  store i32* %23, i32** %2, align 8
  %24 = call i32 (...) @DbgThread()
  %25 = load i32*, i32** %2, align 8
  %26 = call i32* @cmsReverseToneCurve(i32 %24, i32* %25)
  store i32* %26, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @CheckFToneCurvePoint(i32* %27, i32 21845, i32 21845)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %53

31:                                               ; preds = %0
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @CheckFToneCurvePoint(i32* %32, i32 30583, i32 30583)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 0, i32* %1, align 4
  br label %53

36:                                               ; preds = %31
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @CheckFToneCurvePoint(i32* %37, i32 0, i32 17476)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 0, i32* %1, align 4
  br label %53

41:                                               ; preds = %36
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @CheckFToneCurvePoint(i32* %42, i32 65535, i32 65535)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 0, i32* %1, align 4
  br label %53

46:                                               ; preds = %41
  %47 = call i32 (...) @DbgThread()
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @cmsFreeToneCurve(i32 %47, i32* %48)
  %50 = call i32 (...) @DbgThread()
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @cmsFreeToneCurve(i32 %50, i32* %51)
  store i32 1, i32* %1, align 4
  br label %53

53:                                               ; preds = %46, %45, %40, %35, %30
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32* @cmsBuildTabulatedToneCurve16(i32, i32, i32*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32* @cmsReverseToneCurve(i32, i32*) #1

declare dso_local i32 @CheckFToneCurvePoint(i32*, i32, i32) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CombineGamma16.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CombineGamma16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @CombineGamma16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CombineGamma16(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [256 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %24, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 256
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @_cmsQuantizeVal(i32 %12, i32 256)
  store i32 %13, i32* %7, align 4
  %14 = call i32 (...) @DbgThread()
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 (...) @DbgThread()
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @cmsEvalToneCurve16(i32 %16, i32* %17, i32 %18)
  %20 = call i32 @cmsEvalToneCurve16(i32 %14, i32* %15, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 %22
  store i32 %20, i32* %23, align 4
  br label %24

24:                                               ; preds = %11
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %8

27:                                               ; preds = %8
  %28 = call i32 (...) @DbgThread()
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %30 = call i32* @cmsBuildTabulatedToneCurve16(i32 %28, i32 256, i32* %29)
  ret i32* %30
}

declare dso_local i32 @_cmsQuantizeVal(i32, i32) #1

declare dso_local i32 @cmsEvalToneCurve16(i32, i32*, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32* @cmsBuildTabulatedToneCurve16(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

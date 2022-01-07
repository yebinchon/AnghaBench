; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckJoint16Curves_sRGB.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckJoint16Curves_sRGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckJoint16Curves_sRGB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckJoint16Curves_sRGB() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32* (...) @Build_sRGBGamma()
  store i32* %5, i32** %1, align 8
  %6 = call i32 (...) @DbgThread()
  %7 = load i32*, i32** %1, align 8
  %8 = call i32* @cmsReverseToneCurve(i32 %6, i32* %7)
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32* @CombineGamma16(i32* %9, i32* %10)
  store i32* %11, i32** %3, align 8
  %12 = call i32 (...) @DbgThread()
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @cmsFreeToneCurve(i32 %12, i32* %13)
  %15 = call i32 (...) @DbgThread()
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @cmsFreeToneCurve(i32 %15, i32* %16)
  %18 = call i32 (...) @DbgThread()
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @cmsIsToneCurveLinear(i32 %18, i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = call i32 (...) @DbgThread()
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @cmsFreeToneCurve(i32 %21, i32* %22)
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32* @Build_sRGBGamma(...) #1

declare dso_local i32* @cmsReverseToneCurve(i32, i32*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32* @CombineGamma16(i32*, i32*) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

declare dso_local i32 @cmsIsToneCurveLinear(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

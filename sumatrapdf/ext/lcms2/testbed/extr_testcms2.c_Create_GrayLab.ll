; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Create_GrayLab.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Create_GrayLab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsSigLabData = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @Create_GrayLab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Create_GrayLab() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32 (...) @DbgThread()
  %5 = call i32* @cmsBuildGamma(i32 %4, double 1.000000e+00)
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %23

9:                                                ; preds = %0
  %10 = call i32 (...) @DbgThread()
  %11 = call i32 (...) @DbgThread()
  %12 = call i32 @cmsD50_xyY(i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @cmsCreateGrayProfile(i32 %10, i32 %12, i32* %13)
  store i32* %14, i32** %2, align 8
  %15 = call i32 (...) @DbgThread()
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @cmsFreeToneCurve(i32 %15, i32* %16)
  %18 = call i32 (...) @DbgThread()
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @cmsSigLabData, align 4
  %21 = call i32 @cmsSetPCS(i32 %18, i32* %19, i32 %20)
  %22 = load i32*, i32** %2, align 8
  store i32* %22, i32** %1, align 8
  br label %23

23:                                               ; preds = %9, %8
  %24 = load i32*, i32** %1, align 8
  ret i32* %24
}

declare dso_local i32* @cmsBuildGamma(i32, double) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32* @cmsCreateGrayProfile(i32, i32, i32*) #1

declare dso_local i32 @cmsD50_xyY(i32) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

declare dso_local i32 @cmsSetPCS(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

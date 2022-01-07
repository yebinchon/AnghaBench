; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pathiterator.c_test_hascurve.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pathiterator.c_test_hascurve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FillModeAlternate = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hascurve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hascurve() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @FillModeAlternate, align 4
  %6 = call i32 @GdipCreatePath(i32 %5, i32** %1)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @GdipAddPathRectangle(i32* %7, double 5.000000e+00, double 5.000000e+00, double 1.000000e+02, double 5.000000e+01)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @GdipCreatePathIter(i32** %2, i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @Ok, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @expect(i32 %11, i32 %12)
  %14 = call i32 @GdipPathIterHasCurve(i32* null, i32* %4)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @InvalidParameter, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @expect(i32 %15, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @GdipPathIterHasCurve(i32* %18, i32* %4)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @Ok, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @expect(i32 %20, i32 %21)
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @expect(i32 %23, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @GdipDeletePathIter(i32* %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @GdipAddPathEllipse(i32* %28, double 0.000000e+00, double 0.000000e+00, double 3.500000e+01, double 7.000000e+01)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @Ok, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @expect(i32 %30, i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @GdipCreatePathIter(i32** %2, i32* %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @Ok, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @expect(i32 %35, i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @GdipPathIterHasCurve(i32* %38, i32* %4)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* @Ok, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @expect(i32 %40, i32 %41)
  %43 = load i32, i32* @TRUE, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @expect(i32 %43, i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @GdipDeletePathIter(i32* %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @GdipDeletePath(i32* %48)
  ret void
}

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipAddPathRectangle(i32*, double, double, double, double) #1

declare dso_local i32 @GdipCreatePathIter(i32**, i32*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipPathIterHasCurve(i32*, i32*) #1

declare dso_local i32 @GdipDeletePathIter(i32*) #1

declare dso_local i32 @GdipAddPathEllipse(i32*, double, double, double, double) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

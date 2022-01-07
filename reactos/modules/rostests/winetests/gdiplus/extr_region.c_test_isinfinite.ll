; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_isinfinite.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_isinfinite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_isinfinite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_isinfinite() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* null, i32** %3, align 8
  %7 = call i32 @GetDC(i32 0)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @GdipCreateFromHDC(i32 %8, i32** %3)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @Ok, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @expect(i32 %10, i32 %11)
  %13 = call i32 @GdipCreateRegion(i32** %2)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @Ok, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @expect(i32 %14, i32 %15)
  %17 = call i32 @GdipCreateMatrix2(double 3.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 2.000000e+01, double 3.000000e+01, i32** %4)
  %18 = call i32 @GdipIsInfiniteRegion(i32* null, i32* null, i32* null)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @InvalidParameter, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @expect(i32 %19, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @GdipIsInfiniteRegion(i32* %22, i32* null, i32* null)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* @InvalidParameter, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @expect(i32 %24, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @GdipIsInfiniteRegion(i32* null, i32* %27, i32* null)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* @InvalidParameter, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @expect(i32 %29, i32 %30)
  %32 = call i32 @GdipIsInfiniteRegion(i32* null, i32* null, i32* %6)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* @InvalidParameter, align 4
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @expect(i32 %33, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @GdipIsInfiniteRegion(i32* %36, i32* null, i32* %6)
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* @InvalidParameter, align 4
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @expect(i32 %38, i32 %39)
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32*, i32** %2, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @GdipIsInfiniteRegion(i32* %42, i32* %43, i32* %6)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* @Ok, align 4
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @expect(i32 %45, i32 %46)
  %48 = load i32, i32* @TRUE, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @expect(i32 %48, i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @GdipSetWorldTransform(i32* %51, i32* %52)
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* @Ok, align 4
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @expect(i32 %54, i32 %55)
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %6, align 4
  %58 = load i32*, i32** %2, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @GdipIsInfiniteRegion(i32* %58, i32* %59, i32* %6)
  store i32 %60, i32* %1, align 4
  %61 = load i32, i32* @Ok, align 4
  %62 = load i32, i32* %1, align 4
  %63 = call i32 @expect(i32 %61, i32 %62)
  %64 = load i32, i32* @TRUE, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @expect(i32 %64, i32 %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @GdipDeleteMatrix(i32* %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @GdipDeleteRegion(i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @GdipDeleteGraphics(i32* %71)
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ReleaseDC(i32 0, i32 %73)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateRegion(i32**) #1

declare dso_local i32 @GdipCreateMatrix2(double, double, double, double, double, double, i32**) #1

declare dso_local i32 @GdipIsInfiniteRegion(i32*, i32*, i32*) #1

declare dso_local i32 @GdipSetWorldTransform(i32*, i32*) #1

declare dso_local i32 @GdipDeleteMatrix(i32*) #1

declare dso_local i32 @GdipDeleteRegion(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

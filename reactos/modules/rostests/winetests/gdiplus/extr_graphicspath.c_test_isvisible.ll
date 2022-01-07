; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_isvisible.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_isvisible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Ok = common dso_local global i32 0, align 4
@FillModeAlternate = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CombineModeReplace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_isvisible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_isvisible() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  %6 = call i32 @GetDC(i32 0)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @GdipCreateFromHDC(i32 %7, i32** %2)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @Ok, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @expect(i32 %9, i32 %10)
  %12 = load i32, i32* @FillModeAlternate, align 4
  %13 = call i32 @GdipCreatePath(i32 %12, i32** %1)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @Ok, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @expect(i32 %14, i32 %15)
  %17 = call i32 @GdipIsVisiblePathPoint(i32* null, double 0.000000e+00, double 0.000000e+00, i32* null, i32* null)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @InvalidParameter, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @expect(i32 %18, i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @GdipIsVisiblePathPoint(i32* %21, double 0.000000e+00, double 0.000000e+00, i32* null, i32* null)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @InvalidParameter, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @expect(i32 %23, i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @GdipIsVisiblePathPoint(i32* %26, double 0.000000e+00, double 0.000000e+00, i32* null, i32* null)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @InvalidParameter, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @expect(i32 %28, i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @GdipIsVisiblePathPoint(i32* %31, double 0.000000e+00, double 0.000000e+00, i32* %32, i32* null)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @InvalidParameter, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @expect(i32 %34, i32 %35)
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %4, align 4
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @GdipIsVisiblePathPoint(i32* %38, double 0.000000e+00, double 0.000000e+00, i32* null, i32* %4)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @Ok, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @expect(i32 %40, i32 %41)
  %43 = load i32, i32* @FALSE, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @expect(i32 %43, i32 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @GdipAddPathRectangle(i32* %46, double 0.000000e+00, double 0.000000e+00, double 1.000000e+01, double 1.000000e+01)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @Ok, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @expect(i32 %48, i32 %49)
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %4, align 4
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @GdipIsVisiblePathPoint(i32* %52, double 0.000000e+00, double 0.000000e+00, i32* null, i32* %4)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @Ok, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @expect(i32 %54, i32 %55)
  %57 = load i32, i32* @TRUE, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @expect(i32 %57, i32 %58)
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %4, align 4
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @GdipIsVisiblePathPoint(i32* %61, double 1.100000e+01, double 1.100000e+01, i32* null, i32* %4)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @Ok, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @expect(i32 %63, i32 %64)
  %66 = load i32, i32* @FALSE, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @expect(i32 %66, i32 %67)
  %69 = load i32*, i32** %2, align 8
  %70 = load i32, i32* @CombineModeReplace, align 4
  %71 = call i32 @GdipSetClipRect(i32* %69, double 5.000000e+00, double 5.000000e+00, double 5.000000e+00, double 5.000000e+00, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @Ok, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @expect(i32 %72, i32 %73)
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %4, align 4
  %76 = load i32*, i32** %1, align 8
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @GdipIsVisiblePathPoint(i32* %76, double 0.000000e+00, double 0.000000e+00, i32* %77, i32* %4)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* @Ok, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @expect(i32 %79, i32 %80)
  %82 = load i32, i32* @TRUE, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @expect(i32 %82, i32 %83)
  %85 = load i32*, i32** %1, align 8
  %86 = call i32 @GdipDeletePath(i32* %85)
  %87 = load i32*, i32** %2, align 8
  %88 = call i32 @GdipDeleteGraphics(i32* %87)
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @ReleaseDC(i32 0, i32 %89)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipIsVisiblePathPoint(i32*, double, double, i32*, i32*) #1

declare dso_local i32 @GdipAddPathRectangle(i32*, double, double, double, double) #1

declare dso_local i32 @GdipSetClipRect(i32*, double, double, double, double, i32) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

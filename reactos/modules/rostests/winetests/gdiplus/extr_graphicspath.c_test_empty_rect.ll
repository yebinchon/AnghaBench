; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_empty_rect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_empty_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FillModeAlternate = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_empty_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_empty_rect() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @FillModeAlternate, align 4
  %6 = call i32 @GdipCreatePath(i32 %5, i32** %1)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* @Ok, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @expect(i32 %7, i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @GdipAddPathRectangle(i32* %10, double 0.000000e+00, double 0.000000e+00, double -5.000000e+00, double 5.000000e+00)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @Ok, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @expect(i32 %12, i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @GdipGetPointCount(i32* %15, i32* %3)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* @Ok, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @expect(i32 %17, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @expect(i32 0, i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @GdipIsVisiblePathPoint(i32* %22, double -2.000000e+00, double 2.000000e+00, i32* null, i32* %4)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* @Ok, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @expect(i32 %24, i32 %25)
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @expect(i32 %27, i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @GdipAddPathRectangle(i32* %30, double 0.000000e+00, double 0.000000e+00, double 5.000000e+00, double -5.000000e+00)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* @Ok, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @expect(i32 %32, i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @GdipGetPointCount(i32* %35, i32* %3)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* @Ok, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @expect(i32 %37, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @expect(i32 0, i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @GdipAddPathRectangle(i32* %42, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 5.000000e+00)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* @Ok, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @expect(i32 %44, i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @GdipGetPointCount(i32* %47, i32* %3)
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* @Ok, align 4
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @expect(i32 %49, i32 %50)
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @expect(i32 0, i32 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @GdipAddPathRectangle(i32* %54, double 0.000000e+00, double 0.000000e+00, double 5.000000e+00, double 0.000000e+00)
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* @Ok, align 4
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @expect(i32 %56, i32 %57)
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @GdipGetPointCount(i32* %59, i32* %3)
  store i32 %60, i32* %2, align 4
  %61 = load i32, i32* @Ok, align 4
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @expect(i32 %61, i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @expect(i32 0, i32 %64)
  %66 = load i32*, i32** %1, align 8
  %67 = call i32 @GdipAddPathRectangle(i32* %66, double 0.000000e+00, double 0.000000e+00, double 5.000000e+00, double 1.000000e-01)
  store i32 %67, i32* %2, align 4
  %68 = load i32, i32* @Ok, align 4
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @expect(i32 %68, i32 %69)
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @GdipGetPointCount(i32* %71, i32* %3)
  store i32 %72, i32* %2, align 4
  %73 = load i32, i32* @Ok, align 4
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @expect(i32 %73, i32 %74)
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @expect(i32 4, i32 %76)
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @GdipDeletePath(i32* %78)
  ret void
}

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipAddPathRectangle(i32*, double, double, double, double) #1

declare dso_local i32 @GdipGetPointCount(i32*, i32*) #1

declare dso_local i32 @GdipIsVisiblePathPoint(i32*, double, double, i32*, i32*) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

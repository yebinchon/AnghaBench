; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pathiterator.c_test_getsubpathcount.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pathiterator.c_test_getsubpathcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidParameter = common dso_local global i32 0, align 4
@FillModeAlternate = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getsubpathcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getsubpathcount() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @GdipPathIterGetSubpathCount(i32* null, i32* null)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @InvalidParameter, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @expect(i32 %6, i32 %7)
  %9 = call i32 @GdipPathIterGetSubpathCount(i32* null, i32* %4)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @InvalidParameter, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @expect(i32 %10, i32 %11)
  %13 = load i32, i32* @FillModeAlternate, align 4
  %14 = call i32 @GdipCreatePath(i32 %13, i32** %1)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @GdipCreatePathIter(i32** %2, i32* %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @GdipPathIterGetSubpathCount(i32* %17, i32* %4)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @Ok, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @expect(i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @expect(i32 0, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @GdipDeletePathIter(i32* %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @GdipAddPathLine(i32* %26, double 5.000000e+00, double 5.000000e+00, double 1.000000e+02, double 5.000000e+01)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @GdipCreatePathIter(i32** %2, i32* %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @GdipPathIterGetSubpathCount(i32* %30, i32* %4)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @Ok, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @expect(i32 %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @expect(i32 1, i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @GdipDeletePathIter(i32* %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @GdipStartPathFigure(i32* %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @GdipAddPathLine(i32* %41, double 5.000000e+01, double 5.000000e+01, double 1.100000e+02, double 4.000000e+01)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @GdipCreatePathIter(i32** %2, i32* %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @GdipPathIterGetSubpathCount(i32* %45, i32* %4)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @Ok, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @expect(i32 %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @expect(i32 2, i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @GdipDeletePathIter(i32* %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @GdipDeletePath(i32* %54)
  ret void
}

declare dso_local i32 @GdipPathIterGetSubpathCount(i32*, i32*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipCreatePathIter(i32**, i32*) #1

declare dso_local i32 @GdipDeletePathIter(i32*) #1

declare dso_local i32 @GdipAddPathLine(i32*, double, double, double, double) #1

declare dso_local i32 @GdipStartPathFigure(i32*) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

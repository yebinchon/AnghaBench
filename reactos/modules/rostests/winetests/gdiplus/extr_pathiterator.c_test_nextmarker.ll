; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pathiterator.c_test_nextmarker.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pathiterator.c_test_nextmarker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidParameter = common dso_local global i32 0, align 4
@FillModeAlternate = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_nextmarker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_nextmarker() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @GdipPathIterNextMarker(i32* null, i32* %6, i32* null, i32* null)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @InvalidParameter, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @expect(i32 %8, i32 %9)
  %11 = call i32 @GdipPathIterNextMarker(i32* null, i32* %6, i32* %4, i32* null)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @InvalidParameter, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @expect(i32 %12, i32 %13)
  %15 = call i32 @GdipPathIterNextMarker(i32* null, i32* %6, i32* null, i32* %5)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @InvalidParameter, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @expect(i32 %16, i32 %17)
  %19 = load i32, i32* @FillModeAlternate, align 4
  %20 = call i32 @GdipCreatePath(i32 %19, i32** %1)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @GdipAddPathRectangle(i32* %21, double 5.000000e+00, double 5.000000e+00, double 1.000000e+02, double 5.000000e+01)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @GdipCreatePathIter(i32** %2, i32* %23)
  store i32 -559038737, i32* %6, align 4
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %4, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @GdipPathIterNextMarker(i32* %25, i32* %6, i32* %4, i32* %5)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @Ok, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @expect(i32 %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @expect(i32 0, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @expect(i32 3, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @expect(i32 4, i32 %34)
  store i32 -559038737, i32* %6, align 4
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %4, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @GdipPathIterNextMarker(i32* %36, i32* %6, i32* %4, i32* %5)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @Ok, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @expect(i32 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @expect(i32 -559038737, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @expect(i32 -559038737, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @expect(i32 0, i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @GdipDeletePathIter(i32* %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @GdipSetPathMarker(i32* %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @GdipCreatePathIter(i32** %2, i32* %51)
  store i32 -559038737, i32* %6, align 4
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %4, align 4
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @GdipPathIterNextMarker(i32* %53, i32* %6, i32* %4, i32* %5)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* @Ok, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @expect(i32 %55, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @expect(i32 0, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @expect(i32 3, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @expect(i32 4, i32 %62)
  store i32 -559038737, i32* %6, align 4
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %4, align 4
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @GdipPathIterNextMarker(i32* %64, i32* %6, i32* %4, i32* %5)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* @Ok, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @expect(i32 %66, i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @expect(i32 -559038737, i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @expect(i32 -559038737, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @expect(i32 0, i32 %73)
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @GdipDeletePathIter(i32* %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @GdipAddPathLine(i32* %77, double 0.000000e+00, double 0.000000e+00, double 1.000000e+01, double 3.000000e+01)
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @GdipSetPathMarker(i32* %79)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @GdipCreatePathIter(i32** %2, i32* %81)
  store i32 -559038737, i32* %6, align 4
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %4, align 4
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @GdipPathIterNextMarker(i32* %83, i32* %6, i32* %4, i32* %5)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* @Ok, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @expect(i32 %85, i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @expect(i32 0, i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @expect(i32 3, i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @expect(i32 4, i32 %92)
  store i32 -559038737, i32* %6, align 4
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %4, align 4
  %94 = load i32*, i32** %2, align 8
  %95 = call i32 @GdipPathIterNextMarker(i32* %94, i32* %6, i32* %4, i32* %5)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* @Ok, align 4
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @expect(i32 %96, i32 %97)
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @expect(i32 4, i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @expect(i32 5, i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @expect(i32 2, i32 %103)
  store i32 -559038737, i32* %6, align 4
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %4, align 4
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 @GdipPathIterNextMarker(i32* %105, i32* %6, i32* %4, i32* %5)
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* @Ok, align 4
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @expect(i32 %107, i32 %108)
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @expect(i32 -559038737, i32 %110)
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @expect(i32 -559038737, i32 %112)
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @expect(i32 0, i32 %114)
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @GdipDeletePathIter(i32* %116)
  %118 = load i32*, i32** %1, align 8
  %119 = call i32 @GdipDeletePath(i32* %118)
  ret void
}

declare dso_local i32 @GdipPathIterNextMarker(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipAddPathRectangle(i32*, double, double, double, double) #1

declare dso_local i32 @GdipCreatePathIter(i32**, i32*) #1

declare dso_local i32 @GdipDeletePathIter(i32*) #1

declare dso_local i32 @GdipSetPathMarker(i32*) #1

declare dso_local i32 @GdipAddPathLine(i32*, double, double, double, double) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

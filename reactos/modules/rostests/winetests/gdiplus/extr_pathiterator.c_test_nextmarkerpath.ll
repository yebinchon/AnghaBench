; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pathiterator.c_test_nextmarkerpath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pathiterator.c_test_nextmarkerpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FillModeAlternate = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_nextmarkerpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_nextmarkerpath() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @FillModeAlternate, align 4
  %8 = call i32 @GdipCreatePath(i32 %7, i32** %1)
  %9 = call i32 @GdipPathIterNextMarkerPath(i32* null, i32* null, i32* null)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @InvalidParameter, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @expect(i32 %10, i32 %11)
  %13 = call i32 @GdipPathIterNextMarkerPath(i32* null, i32* %5, i32* null)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @InvalidParameter, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @expect(i32 %14, i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @GdipPathIterNextMarkerPath(i32* null, i32* %5, i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @InvalidParameter, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @expect(i32 %19, i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @GdipAddPathRectangle(i32* %22, double 5.000000e+00, double 5.000000e+00, double 1.000000e+02, double 5.000000e+01)
  %24 = load i32, i32* @FillModeAlternate, align 4
  %25 = call i32 @GdipCreatePath(i32 %24, i32** %2)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @GdipCreatePathIter(i32** %3, i32* %26)
  store i32 -1, i32* %5, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @GdipPathIterNextMarkerPath(i32* %28, i32* %5, i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @Ok, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @expect(i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @expect(i32 4, i32 %34)
  store i32 -1, i32* %6, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @GdipGetPointCount(i32* %36, i32* %6)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @expect(i32 4, i32 %38)
  store i32 -1, i32* %5, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @GdipPathIterNextMarkerPath(i32* %40, i32* %5, i32* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @Ok, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @expect(i32 %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @expect(i32 0, i32 %46)
  store i32 -1, i32* %6, align 4
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @GdipGetPointCount(i32* %48, i32* %6)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @expect(i32 4, i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @GdipDeletePathIter(i32* %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @GdipDeletePath(i32* %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @GdipSetPathMarker(i32* %56)
  %58 = load i32, i32* @FillModeAlternate, align 4
  %59 = call i32 @GdipCreatePath(i32 %58, i32** %2)
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @GdipCreatePathIter(i32** %3, i32* %60)
  store i32 -1, i32* %5, align 4
  %62 = load i32*, i32** %3, align 8
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @GdipPathIterNextMarkerPath(i32* %62, i32* %5, i32* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @Ok, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @expect(i32 %65, i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @expect(i32 4, i32 %68)
  store i32 -1, i32* %6, align 4
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @GdipGetPointCount(i32* %70, i32* %6)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @expect(i32 4, i32 %72)
  store i32 -1, i32* %5, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @GdipPathIterNextMarkerPath(i32* %74, i32* %5, i32* %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* @Ok, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @expect(i32 %77, i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @expect(i32 0, i32 %80)
  store i32 -1, i32* %6, align 4
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @GdipGetPointCount(i32* %82, i32* %6)
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @expect(i32 4, i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @GdipDeletePathIter(i32* %86)
  %88 = load i32*, i32** %2, align 8
  %89 = call i32 @GdipDeletePath(i32* %88)
  %90 = load i32*, i32** %1, align 8
  %91 = call i32 @GdipAddPathLine(i32* %90, double 0.000000e+00, double 0.000000e+00, double 1.000000e+01, double 3.000000e+01)
  %92 = load i32*, i32** %1, align 8
  %93 = call i32 @GdipSetPathMarker(i32* %92)
  %94 = load i32, i32* @FillModeAlternate, align 4
  %95 = call i32 @GdipCreatePath(i32 %94, i32** %2)
  %96 = load i32*, i32** %1, align 8
  %97 = call i32 @GdipCreatePathIter(i32** %3, i32* %96)
  store i32 -1, i32* %5, align 4
  %98 = load i32*, i32** %3, align 8
  %99 = load i32*, i32** %2, align 8
  %100 = call i32 @GdipPathIterNextMarkerPath(i32* %98, i32* %5, i32* %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* @Ok, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @expect(i32 %101, i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @expect(i32 4, i32 %104)
  store i32 -1, i32* %5, align 4
  %106 = load i32*, i32** %3, align 8
  %107 = load i32*, i32** %2, align 8
  %108 = call i32 @GdipPathIterNextMarkerPath(i32* %106, i32* %5, i32* %107)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* @Ok, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @expect(i32 %109, i32 %110)
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @expect(i32 2, i32 %112)
  store i32 -1, i32* %5, align 4
  %114 = load i32*, i32** %3, align 8
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @GdipPathIterNextMarkerPath(i32* %114, i32* %5, i32* %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* @Ok, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @expect(i32 %117, i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @expect(i32 0, i32 %120)
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @GdipDeletePathIter(i32* %122)
  %124 = load i32*, i32** %2, align 8
  %125 = call i32 @GdipDeletePath(i32* %124)
  %126 = load i32*, i32** %1, align 8
  %127 = call i32 @GdipDeletePath(i32* %126)
  ret void
}

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipPathIterNextMarkerPath(i32*, i32*, i32*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipAddPathRectangle(i32*, double, double, double, double) #1

declare dso_local i32 @GdipCreatePathIter(i32**, i32*) #1

declare dso_local i32 @GdipGetPointCount(i32*, i32*) #1

declare dso_local i32 @GdipDeletePathIter(i32*) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

declare dso_local i32 @GdipSetPathMarker(i32*) #1

declare dso_local i32 @GdipAddPathLine(i32*, double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pathiterator.c_test_nextsubpathpath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pathiterator.c_test_nextsubpathpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FillModeAlternate = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_nextsubpathpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_nextsubpathpath() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @FillModeAlternate, align 4
  %9 = call i32 @GdipCreatePath(i32 %8, i32** %1)
  %10 = load i32, i32* @FillModeAlternate, align 4
  %11 = call i32 @GdipCreatePath(i32 %10, i32** %2)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @GdipCreatePathIter(i32** %3, i32* %12)
  %14 = call i32 @GdipPathIterNextSubpathPath(i32* null, i32* null, i32* null, i32* null)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @InvalidParameter, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @expect(i32 %15, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @GdipPathIterNextSubpathPath(i32* %18, i32* null, i32* null, i32* null)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @InvalidParameter, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @expect(i32 %20, i32 %21)
  %23 = call i32 @GdipPathIterNextSubpathPath(i32* null, i32* %7, i32* null, i32* null)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @InvalidParameter, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @expect(i32 %24, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @GdipPathIterNextSubpathPath(i32* %27, i32* %7, i32* null, i32* %5)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @Ok, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @expect(i32 %29, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @GdipPathIterNextSubpathPath(i32* %32, i32* null, i32* null, i32* %5)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @InvalidParameter, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @expect(i32 %34, i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @GdipPathIterNextSubpathPath(i32* %37, i32* null, i32* %38, i32* null)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @InvalidParameter, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @expect(i32 %40, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @GdipPathIterNextSubpathPath(i32* %43, i32* %7, i32* %44, i32* null)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @InvalidParameter, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @expect(i32 %46, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @GdipDeletePathIter(i32* %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @GdipDeletePath(i32* %51)
  %53 = load i32, i32* @FillModeAlternate, align 4
  %54 = call i32 @GdipCreatePath(i32 %53, i32** %2)
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @GdipCreatePathIter(i32** %3, i32* %55)
  store i32 -2, i32* %7, align 4
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %5, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @GdipPathIterNextSubpathPath(i32* %58, i32* %7, i32* %59, i32* %5)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @Ok, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @expect(i32 %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @expect(i32 0, i32 %64)
  %66 = load i32, i32* @TRUE, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @expect(i32 %66, i32 %67)
  store i32 -1, i32* %6, align 4
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @GdipGetPointCount(i32* %69, i32* %6)
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @expect(i32 0, i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @GdipDeletePathIter(i32* %73)
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @GdipDeletePath(i32* %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @GdipAddPathLine(i32* %77, double 5.000000e+00, double 5.000000e+00, double 1.000000e+02, double 5.000000e+01)
  %79 = load i32, i32* @FillModeAlternate, align 4
  %80 = call i32 @GdipCreatePath(i32 %79, i32** %2)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @GdipCreatePathIter(i32** %3, i32* %81)
  store i32 -2, i32* %7, align 4
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %5, align 4
  %84 = load i32*, i32** %3, align 8
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @GdipPathIterNextSubpathPath(i32* %84, i32* %7, i32* %85, i32* %5)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* @Ok, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @expect(i32 %87, i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @expect(i32 2, i32 %90)
  %92 = load i32, i32* @FALSE, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @expect(i32 %92, i32 %93)
  store i32 -1, i32* %6, align 4
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 @GdipGetPointCount(i32* %95, i32* %6)
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @expect(i32 2, i32 %97)
  store i32 -2, i32* %7, align 4
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %5, align 4
  %100 = load i32*, i32** %3, align 8
  %101 = load i32*, i32** %2, align 8
  %102 = call i32 @GdipPathIterNextSubpathPath(i32* %100, i32* %7, i32* %101, i32* %5)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* @Ok, align 4
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @expect(i32 %103, i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @expect(i32 0, i32 %106)
  %108 = load i32, i32* @TRUE, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @expect(i32 %108, i32 %109)
  store i32 -1, i32* %6, align 4
  %111 = load i32*, i32** %2, align 8
  %112 = call i32 @GdipGetPointCount(i32* %111, i32* %6)
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @expect(i32 2, i32 %113)
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @GdipDeletePathIter(i32* %115)
  %117 = load i32*, i32** %2, align 8
  %118 = call i32 @GdipAddPathLine(i32* %117, double 5.000000e+01, double 5.500000e+01, double 2.000000e+02, double 1.500000e+02)
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @GdipClosePathFigure(i32* %119)
  %121 = load i32*, i32** %1, align 8
  %122 = call i32 @GdipAddPathLine(i32* %121, double 5.000000e+01, double 5.500000e+01, double 2.000000e+02, double 1.500000e+02)
  %123 = load i32*, i32** %1, align 8
  %124 = call i32 @GdipClosePathFigure(i32* %123)
  %125 = load i32*, i32** %1, align 8
  %126 = call i32 @GdipCreatePathIter(i32** %3, i32* %125)
  store i32 -2, i32* %7, align 4
  %127 = load i32, i32* @FALSE, align 4
  store i32 %127, i32* %5, align 4
  %128 = load i32*, i32** %3, align 8
  %129 = load i32*, i32** %2, align 8
  %130 = call i32 @GdipPathIterNextSubpathPath(i32* %128, i32* %7, i32* %129, i32* %5)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* @Ok, align 4
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @expect(i32 %131, i32 %132)
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @expect(i32 2, i32 %134)
  %136 = load i32, i32* @TRUE, align 4
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @expect(i32 %136, i32 %137)
  store i32 -1, i32* %6, align 4
  %139 = load i32*, i32** %2, align 8
  %140 = call i32 @GdipGetPointCount(i32* %139, i32* %6)
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @expect(i32 2, i32 %141)
  store i32 -2, i32* %7, align 4
  %143 = load i32, i32* @FALSE, align 4
  store i32 %143, i32* %5, align 4
  %144 = load i32*, i32** %3, align 8
  %145 = load i32*, i32** %2, align 8
  %146 = call i32 @GdipPathIterNextSubpathPath(i32* %144, i32* %7, i32* %145, i32* %5)
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* @Ok, align 4
  %148 = load i32, i32* %4, align 4
  %149 = call i32 @expect(i32 %147, i32 %148)
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @expect(i32 2, i32 %150)
  %152 = load i32, i32* @TRUE, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @expect(i32 %152, i32 %153)
  store i32 -1, i32* %6, align 4
  %155 = load i32*, i32** %2, align 8
  %156 = call i32 @GdipGetPointCount(i32* %155, i32* %6)
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @expect(i32 2, i32 %157)
  store i32 -2, i32* %7, align 4
  %159 = load i32, i32* @FALSE, align 4
  store i32 %159, i32* %5, align 4
  %160 = load i32*, i32** %3, align 8
  %161 = load i32*, i32** %2, align 8
  %162 = call i32 @GdipPathIterNextSubpathPath(i32* %160, i32* %7, i32* %161, i32* %5)
  store i32 %162, i32* %4, align 4
  %163 = load i32, i32* @Ok, align 4
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @expect(i32 %163, i32 %164)
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @expect(i32 0, i32 %166)
  %168 = load i32, i32* @TRUE, align 4
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @expect(i32 %168, i32 %169)
  store i32 -1, i32* %6, align 4
  %171 = load i32*, i32** %2, align 8
  %172 = call i32 @GdipGetPointCount(i32* %171, i32* %6)
  %173 = load i32, i32* %6, align 4
  %174 = call i32 @expect(i32 2, i32 %173)
  %175 = load i32*, i32** %3, align 8
  %176 = call i32 @GdipDeletePathIter(i32* %175)
  %177 = load i32*, i32** %2, align 8
  %178 = call i32 @GdipDeletePath(i32* %177)
  %179 = load i32*, i32** %1, align 8
  %180 = call i32 @GdipDeletePath(i32* %179)
  ret void
}

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipCreatePathIter(i32**, i32*) #1

declare dso_local i32 @GdipPathIterNextSubpathPath(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipDeletePathIter(i32*) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

declare dso_local i32 @GdipGetPointCount(i32*, i32*) #1

declare dso_local i32 @GdipAddPathLine(i32*, double, double, double, double) #1

declare dso_local i32 @GdipClosePathFigure(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

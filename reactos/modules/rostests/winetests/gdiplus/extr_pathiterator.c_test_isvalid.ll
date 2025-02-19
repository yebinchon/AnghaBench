; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pathiterator.c_test_isvalid.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pathiterator.c_test_isvalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FillModeAlternate = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_isvalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_isvalid() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @FillModeAlternate, align 4
  %9 = call i32 @GdipCreatePath(i32 %8, i32** %1)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @GdipCreatePathIter(i32** %2, i32* %10)
  %12 = call i32 @GdipPathIterIsValid(i32* null, i32* null)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @InvalidParameter, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @expect(i32 %13, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @GdipPathIterIsValid(i32* %16, i32* null)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @InvalidParameter, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @expect(i32 %18, i32 %19)
  %21 = call i32 @GdipPathIterIsValid(i32* null, i32* %4)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @InvalidParameter, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @expect(i32 %22, i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @GdipDeletePathIter(i32* %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @GdipCreatePathIter(i32** %2, i32* %27)
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %4, align 4
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @GdipPathIterIsValid(i32* %30, i32* %4)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @Ok, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @expect(i32 %32, i32 %33)
  %35 = load i32, i32* @TRUE, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @expect(i32 %35, i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @GdipDeletePathIter(i32* %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @GdipAddPathLine(i32* %40, double 5.000000e+01, double 5.000000e+01, double 1.100000e+02, double 4.000000e+01)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @Ok, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @expect(i32 %42, i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @GdipCreatePathIter(i32** %2, i32* %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @Ok, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @expect(i32 %47, i32 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @GdipPathIterNextMarker(i32* %50, i32* %7, i32* %5, i32* %6)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @Ok, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @expect(i32 %52, i32 %53)
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %4, align 4
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @GdipPathIterIsValid(i32* %56, i32* %4)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* @Ok, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @expect(i32 %58, i32 %59)
  %61 = load i32, i32* @TRUE, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @expect(i32 %61, i32 %62)
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @GdipDeletePathIter(i32* %64)
  %66 = load i32*, i32** %1, align 8
  %67 = call i32 @GdipDeletePath(i32* %66)
  ret void
}

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipCreatePathIter(i32**, i32*) #1

declare dso_local i32 @GdipPathIterIsValid(i32*, i32*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipDeletePathIter(i32*) #1

declare dso_local i32 @GdipAddPathLine(i32*, double, double, double, double) #1

declare dso_local i32 @GdipPathIterNextMarker(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

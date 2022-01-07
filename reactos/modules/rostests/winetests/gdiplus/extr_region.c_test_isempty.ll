; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_isempty.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_isempty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_isempty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_isempty() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* null, i32** %3, align 8
  %6 = call i32 @GetDC(i32 0)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @GdipCreateFromHDC(i32 %7, i32** %3)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* @Ok, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @expect(i32 %9, i32 %10)
  %12 = call i32 @GdipCreateRegion(i32** %2)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @Ok, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @expect(i32 %13, i32 %14)
  %16 = call i32 @GdipIsEmptyRegion(i32* null, i32* null, i32* null)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* @InvalidParameter, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @expect(i32 %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @GdipIsEmptyRegion(i32* %20, i32* null, i32* null)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* @InvalidParameter, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @expect(i32 %22, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @GdipIsEmptyRegion(i32* null, i32* %25, i32* null)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* @InvalidParameter, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @expect(i32 %27, i32 %28)
  %30 = call i32 @GdipIsEmptyRegion(i32* null, i32* null, i32* %5)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* @InvalidParameter, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @expect(i32 %31, i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @GdipIsEmptyRegion(i32* %34, i32* null, i32* %5)
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* @InvalidParameter, align 4
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @expect(i32 %36, i32 %37)
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %5, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @GdipIsEmptyRegion(i32* %40, i32* %41, i32* %5)
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* @Ok, align 4
  %44 = load i32, i32* %1, align 4
  %45 = call i32 @expect(i32 %43, i32 %44)
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @expect(i32 %46, i32 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @GdipSetEmpty(i32* %49)
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* @Ok, align 4
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @expect(i32 %51, i32 %52)
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %5, align 4
  %55 = load i32*, i32** %2, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @GdipIsEmptyRegion(i32* %55, i32* %56, i32* %5)
  store i32 %57, i32* %1, align 4
  %58 = load i32, i32* @Ok, align 4
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @expect(i32 %58, i32 %59)
  %61 = load i32, i32* @TRUE, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @expect(i32 %61, i32 %62)
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @GdipDeleteRegion(i32* %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @GdipDeleteGraphics(i32* %66)
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @ReleaseDC(i32 0, i32 %68)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateRegion(i32**) #1

declare dso_local i32 @GdipIsEmptyRegion(i32*, i32*, i32*) #1

declare dso_local i32 @GdipSetEmpty(i32*) #1

declare dso_local i32 @GdipDeleteRegion(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

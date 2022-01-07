; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_get_set_interpolation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_get_set_interpolation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected HDC to be initialized\0A\00", align 1
@Ok = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected graphics to be initialized\0A\00", align 1
@InvalidParameter = common dso_local global i64 0, align 8
@InterpolationModeNearestNeighbor = common dso_local global i64 0, align 8
@InterpolationModeHighQualityBicubic = common dso_local global i64 0, align 8
@InterpolationModeInvalid = common dso_local global i64 0, align 8
@InterpolationModeBilinear = common dso_local global i64 0, align 8
@InterpolationModeDefault = common dso_local global i64 0, align 8
@InterpolationModeLowQuality = common dso_local global i64 0, align 8
@InterpolationModeHighQuality = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_set_interpolation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_set_interpolation() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @hwnd, align 4
  %6 = call i32* @GetDC(i32 %5)
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @GdipCreateFromHDC(i32* %11, i32** %1)
  store i32 %12, i32* %3, align 4
  %13 = load i64, i64* @Ok, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @expect(i64 %13, i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @GdipGetInterpolationMode(i32* null, i32* %4)
  store i32 %20, i32* %3, align 4
  %21 = load i64, i64* @InvalidParameter, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @expect(i64 %21, i32 %22)
  %24 = load i64, i64* @InterpolationModeNearestNeighbor, align 8
  %25 = call i32 @GdipSetInterpolationMode(i32* null, i64 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i64, i64* @InvalidParameter, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @expect(i64 %26, i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = load i64, i64* @InterpolationModeHighQualityBicubic, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i32 @GdipSetInterpolationMode(i32* %29, i64 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i64, i64* @InvalidParameter, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @expect(i64 %33, i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = load i64, i64* @InterpolationModeInvalid, align 8
  %38 = call i32 @GdipSetInterpolationMode(i32* %36, i64 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i64, i64* @InvalidParameter, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @expect(i64 %39, i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @GdipGetInterpolationMode(i32* %42, i32* %4)
  store i32 %43, i32* %3, align 4
  %44 = load i64, i64* @Ok, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @expect(i64 %44, i32 %45)
  %47 = load i64, i64* @InterpolationModeBilinear, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @expect(i64 %47, i32 %48)
  %50 = load i32*, i32** %1, align 8
  %51 = load i64, i64* @InterpolationModeNearestNeighbor, align 8
  %52 = call i32 @GdipSetInterpolationMode(i32* %50, i64 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i64, i64* @Ok, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @expect(i64 %53, i32 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @GdipGetInterpolationMode(i32* %56, i32* %4)
  store i32 %57, i32* %3, align 4
  %58 = load i64, i64* @Ok, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @expect(i64 %58, i32 %59)
  %61 = load i64, i64* @InterpolationModeNearestNeighbor, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @expect(i64 %61, i32 %62)
  %64 = load i32*, i32** %1, align 8
  %65 = load i64, i64* @InterpolationModeDefault, align 8
  %66 = call i32 @GdipSetInterpolationMode(i32* %64, i64 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i64, i64* @Ok, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @expect(i64 %67, i32 %68)
  %70 = load i32*, i32** %1, align 8
  %71 = call i32 @GdipGetInterpolationMode(i32* %70, i32* %4)
  store i32 %71, i32* %3, align 4
  %72 = load i64, i64* @Ok, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @expect(i64 %72, i32 %73)
  %75 = load i64, i64* @InterpolationModeBilinear, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @expect(i64 %75, i32 %76)
  %78 = load i32*, i32** %1, align 8
  %79 = load i64, i64* @InterpolationModeLowQuality, align 8
  %80 = call i32 @GdipSetInterpolationMode(i32* %78, i64 %79)
  store i32 %80, i32* %3, align 4
  %81 = load i64, i64* @Ok, align 8
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @expect(i64 %81, i32 %82)
  %84 = load i32*, i32** %1, align 8
  %85 = call i32 @GdipGetInterpolationMode(i32* %84, i32* %4)
  store i32 %85, i32* %3, align 4
  %86 = load i64, i64* @Ok, align 8
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @expect(i64 %86, i32 %87)
  %89 = load i64, i64* @InterpolationModeBilinear, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @expect(i64 %89, i32 %90)
  %92 = load i32*, i32** %1, align 8
  %93 = load i64, i64* @InterpolationModeHighQuality, align 8
  %94 = call i32 @GdipSetInterpolationMode(i32* %92, i64 %93)
  store i32 %94, i32* %3, align 4
  %95 = load i64, i64* @Ok, align 8
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @expect(i64 %95, i32 %96)
  %98 = load i32*, i32** %1, align 8
  %99 = call i32 @GdipGetInterpolationMode(i32* %98, i32* %4)
  store i32 %99, i32* %3, align 4
  %100 = load i64, i64* @Ok, align 8
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @expect(i64 %100, i32 %101)
  %103 = load i64, i64* @InterpolationModeHighQualityBicubic, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @expect(i64 %103, i32 %104)
  %106 = load i32*, i32** %1, align 8
  %107 = call i32 @GdipDeleteGraphics(i32* %106)
  %108 = load i32, i32* @hwnd, align 4
  %109 = load i32*, i32** %2, align 8
  %110 = call i32 @ReleaseDC(i32 %108, i32* %109)
  ret void
}

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipCreateFromHDC(i32*, i32**) #1

declare dso_local i32 @expect(i64, i32) #1

declare dso_local i32 @GdipGetInterpolationMode(i32*, i32*) #1

declare dso_local i32 @GdipSetInterpolationMode(i32*, i64) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

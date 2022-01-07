; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_gamma.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ColorAdjustTypeDefault = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@ColorAdjustTypeAny = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PixelFormat32bppRGB = common dso_local global i32 0, align 4
@UnitPixel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Expected ff20ffff, got %.8x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Expected ff80ffff, got %.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_gamma() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @ColorAdjustTypeDefault, align 4
  %8 = load i32, i32* @TRUE, align 4
  %9 = call i32 @GdipSetImageAttributesGamma(i32* null, i32 %7, i32 %8, double 1.000000e+00)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @InvalidParameter, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @expect(i32 %10, i32 %11)
  %13 = call i32 @GdipCreateImageAttributes(i32** %2)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @Ok, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @expect(i32 %14, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @ColorAdjustTypeDefault, align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32 @GdipSetImageAttributesGamma(i32* %17, i32 %18, i32 %19, double 1.000000e+00)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* @Ok, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @expect(i32 %21, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @ColorAdjustTypeAny, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @GdipSetImageAttributesGamma(i32* %24, i32 %25, i32 %26, double 1.000000e+00)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* @InvalidParameter, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @expect(i32 %28, i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @ColorAdjustTypeDefault, align 4
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @GdipSetImageAttributesGamma(i32* %31, i32 %32, i32 %33, double -1.000000e+00)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* @InvalidParameter, align 4
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @expect(i32 %35, i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @ColorAdjustTypeDefault, align 4
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i32 @GdipSetImageAttributesGamma(i32* %38, i32 %39, i32 %40, double 0.000000e+00)
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* @InvalidParameter, align 4
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @expect(i32 %42, i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* @ColorAdjustTypeDefault, align 4
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i32 @GdipSetImageAttributesGamma(i32* %45, i32 %46, i32 %47, double 5.000000e-01)
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* @Ok, align 4
  %50 = load i32, i32* %1, align 4
  %51 = call i32 @expect(i32 %49, i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* @ColorAdjustTypeDefault, align 4
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32 @GdipSetImageAttributesGamma(i32* %52, i32 %53, i32 %54, double 0.000000e+00)
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* @Ok, align 4
  %57 = load i32, i32* %1, align 4
  %58 = call i32 @expect(i32 %56, i32 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @ColorAdjustTypeDefault, align 4
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @GdipSetImageAttributesGamma(i32* %59, i32 %60, i32 %61, double 3.000000e+00)
  store i32 %62, i32* %1, align 4
  %63 = load i32, i32* @Ok, align 4
  %64 = load i32, i32* %1, align 4
  %65 = call i32 @expect(i32 %63, i32 %64)
  %66 = load i32, i32* @PixelFormat32bppRGB, align 4
  %67 = call i32 @GdipCreateBitmapFromScan0(i32 1, i32 1, i32 0, i32 %66, i32* null, i32** %3)
  store i32 %67, i32* %1, align 4
  %68 = load i32, i32* @Ok, align 4
  %69 = load i32, i32* %1, align 4
  %70 = call i32 @expect(i32 %68, i32 %69)
  %71 = load i32, i32* @PixelFormat32bppRGB, align 4
  %72 = call i32 @GdipCreateBitmapFromScan0(i32 1, i32 1, i32 0, i32 %71, i32* null, i32** %4)
  store i32 %72, i32* %1, align 4
  %73 = load i32, i32* @Ok, align 4
  %74 = load i32, i32* %1, align 4
  %75 = call i32 @expect(i32 %73, i32 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @GdipBitmapSetPixel(i32* %76, i32 0, i32 0, i32 -8323073)
  store i32 %77, i32* %1, align 4
  %78 = load i32, i32* @Ok, align 4
  %79 = load i32, i32* %1, align 4
  %80 = call i32 @expect(i32 %78, i32 %79)
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @GdipGetImageGraphicsContext(i32* %81, i32** %5)
  store i32 %82, i32* %1, align 4
  %83 = load i32, i32* @Ok, align 4
  %84 = load i32, i32* %1, align 4
  %85 = call i32 @expect(i32 %83, i32 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* @UnitPixel, align 4
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @GdipDrawImageRectRectI(i32* %86, i32* %87, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 %88, i32* %89, i32* null, i32* null)
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* @Ok, align 4
  %92 = load i32, i32* %1, align 4
  %93 = call i32 @expect(i32 %91, i32 %92)
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @GdipBitmapGetPixel(i32* %94, i32 0, i32 0, i32* %6)
  store i32 %95, i32* %1, align 4
  %96 = load i32, i32* @Ok, align 4
  %97 = load i32, i32* %1, align 4
  %98 = call i32 @expect(i32 %96, i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @color_match(i32 -14614529, i32 %99, i32 1)
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %2, align 8
  %104 = load i32, i32* @ColorAdjustTypeDefault, align 4
  %105 = call i32 @GdipResetImageAttributes(i32* %103, i32 %104)
  store i32 %105, i32* %1, align 4
  %106 = load i32, i32* @Ok, align 4
  %107 = load i32, i32* %1, align 4
  %108 = call i32 @expect(i32 %106, i32 %107)
  %109 = load i32*, i32** %5, align 8
  %110 = load i32*, i32** %3, align 8
  %111 = load i32, i32* @UnitPixel, align 4
  %112 = load i32*, i32** %2, align 8
  %113 = call i32 @GdipDrawImageRectRectI(i32* %109, i32* %110, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 %111, i32* %112, i32* null, i32* null)
  store i32 %113, i32* %1, align 4
  %114 = load i32, i32* @Ok, align 4
  %115 = load i32, i32* %1, align 4
  %116 = call i32 @expect(i32 %114, i32 %115)
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @GdipBitmapGetPixel(i32* %117, i32 0, i32 0, i32* %6)
  store i32 %118, i32* %1, align 4
  %119 = load i32, i32* @Ok, align 4
  %120 = load i32, i32* %1, align 4
  %121 = call i32 @expect(i32 %119, i32 %120)
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @color_match(i32 -8323073, i32 %122, i32 1)
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @ok(i32 %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @GdipDeleteGraphics(i32* %126)
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @GdipDisposeImage(i32* %128)
  %130 = load i32*, i32** %4, align 8
  %131 = call i32 @GdipDisposeImage(i32* %130)
  %132 = load i32*, i32** %2, align 8
  %133 = call i32 @GdipDisposeImageAttributes(i32* %132)
  ret void
}

declare dso_local i32 @GdipSetImageAttributesGamma(i32*, i32, i32, double) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateImageAttributes(i32**) #1

declare dso_local i32 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @GdipBitmapSetPixel(i32*, i32, i32, i32) #1

declare dso_local i32 @GdipGetImageGraphicsContext(i32*, i32**) #1

declare dso_local i32 @GdipDrawImageRectRectI(i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @GdipBitmapGetPixel(i32*, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @color_match(i32, i32, i32) #1

declare dso_local i32 @GdipResetImageAttributes(i32*, i32) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

declare dso_local i32 @GdipDisposeImageAttributes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

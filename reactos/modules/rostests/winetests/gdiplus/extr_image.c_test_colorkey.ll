; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_colorkey.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_colorkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ColorAdjustTypeDefault = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@ColorAdjustTypeCount = common dso_local global i32 0, align 4
@ColorAdjustTypeAny = common dso_local global i32 0, align 4
@PixelFormat32bppARGB = common dso_local global i32 0, align 4
@UnitPixel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Expected 00000000, got %.8x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Expected ffffffff, got %.8x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Expected 20405060, got %.8x\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Expected 40506070, got %.8x\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Expected 60708090, got %.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_colorkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_colorkey() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @ColorAdjustTypeDefault, align 4
  %8 = load i32, i32* @TRUE, align 4
  %9 = call i32 @GdipSetImageAttributesColorKeys(i32* null, i32 %7, i32 %8, i32 -12562336, i32 -9404272)
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
  %18 = load i32, i32* @ColorAdjustTypeCount, align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32 @GdipSetImageAttributesColorKeys(i32* %17, i32 %18, i32 %19, i32 -12562336, i32 -9404272)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* @InvalidParameter, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @expect(i32 %21, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @ColorAdjustTypeAny, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @GdipSetImageAttributesColorKeys(i32* %24, i32 %25, i32 %26, i32 -12562336, i32 -9404272)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* @InvalidParameter, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @expect(i32 %28, i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @ColorAdjustTypeDefault, align 4
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @GdipSetImageAttributesColorKeys(i32* %31, i32 %32, i32 %33, i32 -12562336, i32 -9404272)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* @Ok, align 4
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @expect(i32 %35, i32 %36)
  %38 = load i32, i32* @PixelFormat32bppARGB, align 4
  %39 = call i32 @GdipCreateBitmapFromScan0(i32 2, i32 2, i32 0, i32 %38, i32* null, i32** %3)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* @Ok, align 4
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @expect(i32 %40, i32 %41)
  %43 = load i32, i32* @PixelFormat32bppARGB, align 4
  %44 = call i32 @GdipCreateBitmapFromScan0(i32 2, i32 2, i32 0, i32 %43, i32* null, i32** %4)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* @Ok, align 4
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @expect(i32 %45, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @GdipBitmapSetPixel(i32* %48, i32 0, i32 0, i32 541085792)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* @Ok, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @expect(i32 %50, i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @GdipBitmapSetPixel(i32* %53, i32 0, i32 1, i32 1079009392)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* @Ok, align 4
  %56 = load i32, i32* %1, align 4
  %57 = call i32 @expect(i32 %55, i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @GdipBitmapSetPixel(i32* %58, i32 1, i32 0, i32 1617985680)
  store i32 %59, i32* %1, align 4
  %60 = load i32, i32* @Ok, align 4
  %61 = load i32, i32* %1, align 4
  %62 = call i32 @expect(i32 %60, i32 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @GdipBitmapSetPixel(i32* %63, i32 1, i32 1, i32 -1)
  store i32 %64, i32* %1, align 4
  %65 = load i32, i32* @Ok, align 4
  %66 = load i32, i32* %1, align 4
  %67 = call i32 @expect(i32 %65, i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @GdipGetImageGraphicsContext(i32* %68, i32** %5)
  store i32 %69, i32* %1, align 4
  %70 = load i32, i32* @Ok, align 4
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @expect(i32 %70, i32 %71)
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* @UnitPixel, align 4
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @GdipDrawImageRectRectI(i32* %73, i32* %74, i32 0, i32 0, i32 2, i32 2, i32 0, i32 0, i32 2, i32 2, i32 %75, i32* %76, i32* null, i32* null)
  store i32 %77, i32* %1, align 4
  %78 = load i32, i32* @Ok, align 4
  %79 = load i32, i32* %1, align 4
  %80 = call i32 @expect(i32 %78, i32 %79)
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @GdipBitmapGetPixel(i32* %81, i32 0, i32 0, i32* %6)
  store i32 %82, i32* %1, align 4
  %83 = load i32, i32* @Ok, align 4
  %84 = load i32, i32* %1, align 4
  %85 = call i32 @expect(i32 %83, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @color_match(i32 0, i32 %86, i32 1)
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @GdipBitmapGetPixel(i32* %90, i32 0, i32 1, i32* %6)
  store i32 %91, i32* %1, align 4
  %92 = load i32, i32* @Ok, align 4
  %93 = load i32, i32* %1, align 4
  %94 = call i32 @expect(i32 %92, i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @color_match(i32 0, i32 %95, i32 1)
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @GdipBitmapGetPixel(i32* %99, i32 1, i32 0, i32* %6)
  store i32 %100, i32* %1, align 4
  %101 = load i32, i32* @Ok, align 4
  %102 = load i32, i32* %1, align 4
  %103 = call i32 @expect(i32 %101, i32 %102)
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @color_match(i32 0, i32 %104, i32 1)
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @GdipBitmapGetPixel(i32* %108, i32 1, i32 1, i32* %6)
  store i32 %109, i32* %1, align 4
  %110 = load i32, i32* @Ok, align 4
  %111 = load i32, i32* %1, align 4
  %112 = call i32 @expect(i32 %110, i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @color_match(i32 -1, i32 %113, i32 1)
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @ok(i32 %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %2, align 8
  %118 = load i32, i32* @ColorAdjustTypeDefault, align 4
  %119 = call i32 @GdipResetImageAttributes(i32* %117, i32 %118)
  store i32 %119, i32* %1, align 4
  %120 = load i32, i32* @Ok, align 4
  %121 = load i32, i32* %1, align 4
  %122 = call i32 @expect(i32 %120, i32 %121)
  %123 = load i32*, i32** %5, align 8
  %124 = load i32*, i32** %3, align 8
  %125 = load i32, i32* @UnitPixel, align 4
  %126 = load i32*, i32** %2, align 8
  %127 = call i32 @GdipDrawImageRectRectI(i32* %123, i32* %124, i32 0, i32 0, i32 2, i32 2, i32 0, i32 0, i32 2, i32 2, i32 %125, i32* %126, i32* null, i32* null)
  store i32 %127, i32* %1, align 4
  %128 = load i32, i32* @Ok, align 4
  %129 = load i32, i32* %1, align 4
  %130 = call i32 @expect(i32 %128, i32 %129)
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @GdipBitmapGetPixel(i32* %131, i32 0, i32 0, i32* %6)
  store i32 %132, i32* %1, align 4
  %133 = load i32, i32* @Ok, align 4
  %134 = load i32, i32* %1, align 4
  %135 = call i32 @expect(i32 %133, i32 %134)
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @color_match(i32 541085792, i32 %136, i32 1)
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @ok(i32 %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @GdipBitmapGetPixel(i32* %140, i32 0, i32 1, i32* %6)
  store i32 %141, i32* %1, align 4
  %142 = load i32, i32* @Ok, align 4
  %143 = load i32, i32* %1, align 4
  %144 = call i32 @expect(i32 %142, i32 %143)
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @color_match(i32 1079009392, i32 %145, i32 1)
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @ok(i32 %146, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %147)
  %149 = load i32*, i32** %4, align 8
  %150 = call i32 @GdipBitmapGetPixel(i32* %149, i32 1, i32 0, i32* %6)
  store i32 %150, i32* %1, align 4
  %151 = load i32, i32* @Ok, align 4
  %152 = load i32, i32* %1, align 4
  %153 = call i32 @expect(i32 %151, i32 %152)
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @color_match(i32 1617985680, i32 %154, i32 1)
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @ok(i32 %155, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 @GdipBitmapGetPixel(i32* %158, i32 1, i32 1, i32* %6)
  store i32 %159, i32* %1, align 4
  %160 = load i32, i32* @Ok, align 4
  %161 = load i32, i32* %1, align 4
  %162 = call i32 @expect(i32 %160, i32 %161)
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @color_match(i32 -1, i32 %163, i32 1)
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @ok(i32 %164, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %165)
  %167 = load i32*, i32** %5, align 8
  %168 = call i32 @GdipDeleteGraphics(i32* %167)
  %169 = load i32*, i32** %3, align 8
  %170 = call i32 @GdipDisposeImage(i32* %169)
  %171 = load i32*, i32** %4, align 8
  %172 = call i32 @GdipDisposeImage(i32* %171)
  %173 = load i32*, i32** %2, align 8
  %174 = call i32 @GdipDisposeImageAttributes(i32* %173)
  ret void
}

declare dso_local i32 @GdipSetImageAttributesColorKeys(i32*, i32, i32, i32, i32) #1

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

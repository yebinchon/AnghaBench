; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_bitmapfromgraphics.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_bitmapfromgraphics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwnd = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@PixelFormat32bppPARGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_bitmapfromgraphics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bitmapfromgraphics() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  %10 = load i32, i32* @hwnd, align 4
  %11 = call i32 @GetDC(i32 %10)
  store i32 %11, i32* %3, align 4
  store i32* null, i32** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @GdipCreateFromHDC(i32 %12, i32** %2)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @Ok, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @expect(i32 %14, i32 %15)
  %17 = call i32 @GdipCreateBitmapFromGraphics(i32 12, i32 13, i32* null, i32** %4)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* @InvalidParameter, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @expect(i32 %18, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @GdipCreateBitmapFromGraphics(i32 12, i32 13, i32* %21, i32** null)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @InvalidParameter, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @expect(i32 %23, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @GdipCreateBitmapFromGraphics(i32 12, i32 13, i32* %26, i32** %4)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* @Ok, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @expect(i32 %28, i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @GdipGetImagePixelFormat(i32* %31, i32* %5)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* @Ok, align 4
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @expect(i32 %33, i32 %34)
  %36 = load i32, i32* @PixelFormat32bppPARGB, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @expect(i32 %36, i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @GdipGetDpiX(i32* %39, i32* %7)
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* @Ok, align 4
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @expect(i32 %41, i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @GdipGetImageHorizontalResolution(i32* %44, i32* %6)
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* @Ok, align 4
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @expect(i32 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @expectf(i32 %49, i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @GdipGetDpiY(i32* %52, i32* %7)
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* @Ok, align 4
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @expect(i32 %54, i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @GdipGetImageVerticalResolution(i32* %57, i32* %6)
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* @Ok, align 4
  %60 = load i32, i32* %1, align 4
  %61 = call i32 @expect(i32 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @expectf(i32 %62, i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @GdipGetImageWidth(i32* %65, i32* %8)
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* @Ok, align 4
  %68 = load i32, i32* %1, align 4
  %69 = call i32 @expect(i32 %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @expect(i32 12, i32 %70)
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @GdipGetImageHeight(i32* %72, i32* %9)
  store i32 %73, i32* %1, align 4
  %74 = load i32, i32* @Ok, align 4
  %75 = load i32, i32* %1, align 4
  %76 = call i32 @expect(i32 %74, i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @expect(i32 13, i32 %77)
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @GdipDeleteGraphics(i32* %79)
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @GdipDisposeImage(i32* %81)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateBitmapFromGraphics(i32, i32, i32*, i32**) #1

declare dso_local i32 @GdipGetImagePixelFormat(i32*, i32*) #1

declare dso_local i32 @GdipGetDpiX(i32*, i32*) #1

declare dso_local i32 @GdipGetImageHorizontalResolution(i32*, i32*) #1

declare dso_local i32 @expectf(i32, i32) #1

declare dso_local i32 @GdipGetDpiY(i32*, i32*) #1

declare dso_local i32 @GdipGetImageVerticalResolution(i32*, i32*) #1

declare dso_local i32 @GdipGetImageWidth(i32*, i32*) #1

declare dso_local i32 @GdipGetImageHeight(i32*, i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

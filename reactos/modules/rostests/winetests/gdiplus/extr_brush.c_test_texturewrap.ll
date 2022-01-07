; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_texturewrap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_texturewrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Ok = common dso_local global i32 0, align 4
@WrapModeTile = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@WrapModeClamp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_texturewrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_texturewrap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* null, i32** %3, align 8
  %7 = call i32 @GetDC(i32 0)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @GdipCreateFromHDC(i32 %8, i32** %3)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @Ok, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @expect(i32 %10, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @GdipCreateBitmapFromGraphics(i32 1, i32 1, i32* %13, i32** %4)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @Ok, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @expect(i32 %15, i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @WrapModeTile, align 4
  %20 = call i32 @GdipCreateTexture(i32* %18, i32 %19, i32** %2)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* @Ok, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @expect(i32 %21, i32 %22)
  %24 = call i32 @GdipGetTextureWrapMode(i32* null, i32* null)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* @InvalidParameter, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @expect(i32 %25, i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @GdipGetTextureWrapMode(i32* %28, i32* null)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* @InvalidParameter, align 4
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @expect(i32 %30, i32 %31)
  %33 = call i32 @GdipGetTextureWrapMode(i32* null, i32* %6)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* @InvalidParameter, align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @expect(i32 %34, i32 %35)
  %37 = load i32, i32* @WrapModeClamp, align 4
  store i32 %37, i32* %6, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @GdipGetTextureWrapMode(i32* %38, i32* %6)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* @Ok, align 4
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @expect(i32 %40, i32 %41)
  %43 = load i32, i32* @WrapModeTile, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @expect(i32 %43, i32 %44)
  %46 = load i32, i32* @WrapModeClamp, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @GdipSetTextureWrapMode(i32* %47, i32 %48)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* @Ok, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @expect(i32 %50, i32 %51)
  %53 = load i32, i32* @WrapModeTile, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @GdipGetTextureWrapMode(i32* %54, i32* %6)
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* @Ok, align 4
  %57 = load i32, i32* %1, align 4
  %58 = call i32 @expect(i32 %56, i32 %57)
  %59 = load i32, i32* @WrapModeClamp, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @expect(i32 %59, i32 %60)
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @GdipDeleteBrush(i32* %62)
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* @Ok, align 4
  %65 = load i32, i32* %1, align 4
  %66 = call i32 @expect(i32 %64, i32 %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @GdipDisposeImage(i32* %67)
  store i32 %68, i32* %1, align 4
  %69 = load i32, i32* @Ok, align 4
  %70 = load i32, i32* %1, align 4
  %71 = call i32 @expect(i32 %69, i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @GdipDeleteGraphics(i32* %72)
  store i32 %73, i32* %1, align 4
  %74 = load i32, i32* @Ok, align 4
  %75 = load i32, i32* %1, align 4
  %76 = call i32 @expect(i32 %74, i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @ReleaseDC(i32 0, i32 %77)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateBitmapFromGraphics(i32, i32, i32*, i32**) #1

declare dso_local i32 @GdipCreateTexture(i32*, i32, i32**) #1

declare dso_local i32 @GdipGetTextureWrapMode(i32*, i32*) #1

declare dso_local i32 @GdipSetTextureWrapMode(i32*, i32) #1

declare dso_local i32 @GdipDeleteBrush(i32*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

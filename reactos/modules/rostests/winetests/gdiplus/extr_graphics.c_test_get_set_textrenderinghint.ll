; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_get_set_textrenderinghint.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_get_set_textrenderinghint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected HDC to be initialized\0A\00", align 1
@Ok = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected graphics to be initialized\0A\00", align 1
@InvalidParameter = common dso_local global i64 0, align 8
@TextRenderingHintAntiAlias = common dso_local global i64 0, align 8
@TextRenderingHintClearTypeGridFit = common dso_local global i64 0, align 8
@TextRenderingHintSystemDefault = common dso_local global i64 0, align 8
@TextRenderingHintAntiAliasGridFit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_set_textrenderinghint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_set_textrenderinghint() #0 {
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
  %20 = call i32 @GdipGetTextRenderingHint(i32* null, i32* %4)
  store i32 %20, i32* %3, align 4
  %21 = load i64, i64* @InvalidParameter, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @expect(i64 %21, i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @GdipGetTextRenderingHint(i32* %24, i32* null)
  store i32 %25, i32* %3, align 4
  %26 = load i64, i64* @InvalidParameter, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @expect(i64 %26, i32 %27)
  %29 = load i64, i64* @TextRenderingHintAntiAlias, align 8
  %30 = call i32 @GdipSetTextRenderingHint(i32* null, i64 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i64, i64* @InvalidParameter, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @expect(i64 %31, i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = load i64, i64* @TextRenderingHintClearTypeGridFit, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i32 @GdipSetTextRenderingHint(i32* %34, i64 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i64, i64* @InvalidParameter, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @expect(i64 %38, i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @GdipGetTextRenderingHint(i32* %41, i32* %4)
  store i32 %42, i32* %3, align 4
  %43 = load i64, i64* @Ok, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @expect(i64 %43, i32 %44)
  %46 = load i64, i64* @TextRenderingHintSystemDefault, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @expect(i64 %46, i32 %47)
  %49 = load i32*, i32** %1, align 8
  %50 = load i64, i64* @TextRenderingHintSystemDefault, align 8
  %51 = call i32 @GdipSetTextRenderingHint(i32* %49, i64 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i64, i64* @Ok, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @expect(i64 %52, i32 %53)
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @GdipGetTextRenderingHint(i32* %55, i32* %4)
  store i32 %56, i32* %3, align 4
  %57 = load i64, i64* @Ok, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @expect(i64 %57, i32 %58)
  %60 = load i64, i64* @TextRenderingHintSystemDefault, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @expect(i64 %60, i32 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = load i64, i64* @TextRenderingHintAntiAliasGridFit, align 8
  %65 = call i32 @GdipSetTextRenderingHint(i32* %63, i64 %64)
  store i32 %65, i32* %3, align 4
  %66 = load i64, i64* @Ok, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @expect(i64 %66, i32 %67)
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @GdipGetTextRenderingHint(i32* %69, i32* %4)
  store i32 %70, i32* %3, align 4
  %71 = load i64, i64* @Ok, align 8
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @expect(i64 %71, i32 %72)
  %74 = load i64, i64* @TextRenderingHintAntiAliasGridFit, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @expect(i64 %74, i32 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @GdipDeleteGraphics(i32* %77)
  %79 = load i32, i32* @hwnd, align 4
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @ReleaseDC(i32 %79, i32* %80)
  ret void
}

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipCreateFromHDC(i32*, i32**) #1

declare dso_local i32 @expect(i64, i32) #1

declare dso_local i32 @GdipGetTextRenderingHint(i32*, i32*) #1

declare dso_local i32 @GdipSetTextRenderingHint(i32*, i64) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

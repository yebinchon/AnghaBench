; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipDrawArcI.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipDrawArcI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected HDC to be initialized\0A\00", align 1
@Ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected graphics to be initialized\0A\00", align 1
@UnitPixel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Expected pen to be initialized\0A\00", align 1
@InvalidParameter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipDrawArcI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipDrawArcI() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %5 = load i32, i32* @hwnd, align 4
  %6 = call i32* @GetDC(i32 %5)
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @GdipCreateFromHDC(i32* %11, i32** %2)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @Ok, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @expect(i32 %13, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @UnitPixel, align 4
  %21 = call i32 @GdipCreatePen1(i32 -65281, float 1.000000e+01, i32 %20, i32** %3)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* @Ok, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @expect(i32 %22, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @GdipDrawArcI(i32* null, i32* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* @InvalidParameter, align 4
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @expect(i32 %30, i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @GdipDrawArcI(i32* %33, i32* null, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* @InvalidParameter, align 4
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @expect(i32 %35, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @GdipDrawArcI(i32* null, i32* %38, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* @InvalidParameter, align 4
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @expect(i32 %40, i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @GdipDrawArcI(i32* %43, i32* %44, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0)
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* @InvalidParameter, align 4
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @expect(i32 %46, i32 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @GdipDrawArcI(i32* %49, i32* %50, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0)
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* @InvalidParameter, align 4
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @expect(i32 %52, i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @GdipDrawArcI(i32* %55, i32* %56, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0)
  store i32 %57, i32* %1, align 4
  %58 = load i32, i32* @Ok, align 4
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @expect(i32 %58, i32 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @GdipDeletePen(i32* %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @GdipDeleteGraphics(i32* %63)
  %65 = load i32, i32* @hwnd, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @ReleaseDC(i32 %65, i32* %66)
  ret void
}

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipCreateFromHDC(i32*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreatePen1(i32, float, i32, i32**) #1

declare dso_local i32 @GdipDrawArcI(i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GdipDeletePen(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

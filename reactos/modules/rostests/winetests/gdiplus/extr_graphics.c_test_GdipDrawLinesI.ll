; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipDrawLinesI.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipDrawLinesI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@hwnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected HDC to be initialized\0A\00", align 1
@Ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected graphics to be initialized\0A\00", align 1
@UnitPixel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Expected pen to be initialized\0A\00", align 1
@InvalidParameter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipDrawLinesI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipDrawLinesI() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  %6 = load i32, i32* @hwnd, align 4
  %7 = call i32* @GetDC(i32 %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @GdipCreateFromHDC(i32* %12, i32** %2)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @Ok, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @expect(i32 %14, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @UnitPixel, align 4
  %22 = call i32 @GdipCreatePen1(i32 -65281, float 1.000000e+01, i32 %21, i32** %3)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @Ok, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @expect(i32 %23, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %30 = call %struct.TYPE_5__* @GdipAlloc(i32 8)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %4, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 2, i32* %39, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 2, i32* %42, align 4
  %43 = call i32 @GdipDrawLinesI(i32* null, i32* null, %struct.TYPE_5__* null, i32 0)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* @InvalidParameter, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @expect(i32 %44, i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = call i32 @GdipDrawLinesI(i32* %47, i32* %48, %struct.TYPE_5__* %49, i32 0)
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* @InvalidParameter, align 4
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @expect(i32 %51, i32 %52)
  %54 = load i32*, i32** %2, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = call i32 @GdipDrawLinesI(i32* %54, i32* null, %struct.TYPE_5__* %55, i32 2)
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* @InvalidParameter, align 4
  %58 = load i32, i32* %1, align 4
  %59 = call i32 @expect(i32 %57, i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = call i32 @GdipDrawLinesI(i32* null, i32* %60, %struct.TYPE_5__* %61, i32 2)
  store i32 %62, i32* %1, align 4
  %63 = load i32, i32* @InvalidParameter, align 4
  %64 = load i32, i32* %1, align 4
  %65 = call i32 @expect(i32 %63, i32 %64)
  %66 = load i32*, i32** %2, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = call i32 @GdipDrawLinesI(i32* %66, i32* %67, %struct.TYPE_5__* %68, i32 2)
  store i32 %69, i32* %1, align 4
  %70 = load i32, i32* @Ok, align 4
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @expect(i32 %70, i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = call i32 @GdipFree(%struct.TYPE_5__* %73)
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @GdipDeletePen(i32* %75)
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @GdipDeleteGraphics(i32* %77)
  %79 = load i32, i32* @hwnd, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @ReleaseDC(i32 %79, i32* %80)
  ret void
}

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipCreateFromHDC(i32*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreatePen1(i32, float, i32, i32**) #1

declare dso_local %struct.TYPE_5__* @GdipAlloc(i32) #1

declare dso_local i32 @GdipDrawLinesI(i32*, i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @GdipFree(%struct.TYPE_5__*) #1

declare dso_local i32 @GdipDeletePen(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

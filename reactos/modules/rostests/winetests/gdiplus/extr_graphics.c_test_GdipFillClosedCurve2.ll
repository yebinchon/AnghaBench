; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipFillClosedCurve2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipFillClosedCurve2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@hwnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected HDC to be initialized\0A\00", align 1
@Ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected graphics to be initialized\0A\00", align 1
@FillModeAlternate = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipFillClosedCurve2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipFillClosedCurve2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [3 x %struct.TYPE_3__], align 16
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %6 = load i32, i32* @hwnd, align 4
  %7 = call i32* @GetDC(i32 %6)
  store i32* %7, i32** %4, align 8
  %8 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 0, i32* %9, align 16
  %10 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 40, i32* %13, align 8
  %14 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 20, i32* %15, align 4
  %16 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 10, i32* %17, align 16
  %18 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i32 40, i32* %19, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @GdipCreateFromHDC(i32* %24, i32** %2)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* @Ok, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @expect(i32 %26, i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @GdipCreateSolidFill(i32 -559038737, i32** %3)
  %34 = load i32, i32* @FillModeAlternate, align 4
  %35 = call i32 @GdipFillClosedCurve2(i32* null, i32* null, %struct.TYPE_3__* null, i32 3, double 5.000000e-01, i32 %34)
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* @InvalidParameter, align 4
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @expect(i32 %36, i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @FillModeAlternate, align 4
  %41 = call i32 @GdipFillClosedCurve2(i32* %39, i32* null, %struct.TYPE_3__* null, i32 3, double 5.000000e-01, i32 %40)
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* @InvalidParameter, align 4
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @expect(i32 %42, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @FillModeAlternate, align 4
  %47 = call i32 @GdipFillClosedCurve2(i32* null, i32* %45, %struct.TYPE_3__* null, i32 3, double 5.000000e-01, i32 %46)
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* @InvalidParameter, align 4
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @expect(i32 %48, i32 %49)
  %51 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %52 = load i32, i32* @FillModeAlternate, align 4
  %53 = call i32 @GdipFillClosedCurve2(i32* null, i32* null, %struct.TYPE_3__* %51, i32 3, double 5.000000e-01, i32 %52)
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* @InvalidParameter, align 4
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @expect(i32 %54, i32 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @FillModeAlternate, align 4
  %60 = call i32 @GdipFillClosedCurve2(i32* %57, i32* %58, %struct.TYPE_3__* null, i32 3, double 5.000000e-01, i32 %59)
  store i32 %60, i32* %1, align 4
  %61 = load i32, i32* @InvalidParameter, align 4
  %62 = load i32, i32* %1, align 4
  %63 = call i32 @expect(i32 %61, i32 %62)
  %64 = load i32*, i32** %2, align 8
  %65 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %66 = load i32, i32* @FillModeAlternate, align 4
  %67 = call i32 @GdipFillClosedCurve2(i32* %64, i32* null, %struct.TYPE_3__* %65, i32 3, double 5.000000e-01, i32 %66)
  store i32 %67, i32* %1, align 4
  %68 = load i32, i32* @InvalidParameter, align 4
  %69 = load i32, i32* %1, align 4
  %70 = call i32 @expect(i32 %68, i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %73 = load i32, i32* @FillModeAlternate, align 4
  %74 = call i32 @GdipFillClosedCurve2(i32* null, i32* %71, %struct.TYPE_3__* %72, i32 3, double 5.000000e-01, i32 %73)
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* @InvalidParameter, align 4
  %76 = load i32, i32* %1, align 4
  %77 = call i32 @expect(i32 %75, i32 %76)
  %78 = load i32*, i32** %2, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %81 = load i32, i32* @FillModeAlternate, align 4
  %82 = call i32 @GdipFillClosedCurve2(i32* %78, i32* %79, %struct.TYPE_3__* %80, i32 -1, double 5.000000e-01, i32 %81)
  store i32 %82, i32* %1, align 4
  %83 = load i32, i32* @InvalidParameter, align 4
  %84 = load i32, i32* %1, align 4
  %85 = call i32 @expect(i32 %83, i32 %84)
  %86 = load i32*, i32** %2, align 8
  %87 = load i32*, i32** %3, align 8
  %88 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %89 = load i32, i32* @FillModeAlternate, align 4
  %90 = call i32 @GdipFillClosedCurve2(i32* %86, i32* %87, %struct.TYPE_3__* %88, i32 0, double 5.000000e-01, i32 %89)
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* @InvalidParameter, align 4
  %92 = load i32, i32* %1, align 4
  %93 = call i32 @expect(i32 %91, i32 %92)
  %94 = load i32*, i32** %2, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %97 = load i32, i32* @FillModeAlternate, align 4
  %98 = call i32 @GdipFillClosedCurve2(i32* %94, i32* %95, %struct.TYPE_3__* %96, i32 1, double 5.000000e-01, i32 %97)
  store i32 %98, i32* %1, align 4
  %99 = load i32, i32* @Ok, align 4
  %100 = load i32, i32* %1, align 4
  %101 = call i32 @expect(i32 %99, i32 %100)
  %102 = load i32*, i32** %2, align 8
  %103 = load i32*, i32** %3, align 8
  %104 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %105 = load i32, i32* @FillModeAlternate, align 4
  %106 = call i32 @GdipFillClosedCurve2(i32* %102, i32* %103, %struct.TYPE_3__* %104, i32 2, double 5.000000e-01, i32 %105)
  store i32 %106, i32* %1, align 4
  %107 = load i32, i32* @Ok, align 4
  %108 = load i32, i32* %1, align 4
  %109 = call i32 @expect(i32 %107, i32 %108)
  %110 = load i32*, i32** %2, align 8
  %111 = load i32*, i32** %3, align 8
  %112 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %113 = load i32, i32* @FillModeAlternate, align 4
  %114 = call i32 @GdipFillClosedCurve2(i32* %110, i32* %111, %struct.TYPE_3__* %112, i32 3, double 5.000000e-01, i32 %113)
  store i32 %114, i32* %1, align 4
  %115 = load i32, i32* @Ok, align 4
  %116 = load i32, i32* %1, align 4
  %117 = call i32 @expect(i32 %115, i32 %116)
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 @GdipDeleteGraphics(i32* %118)
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @GdipDeleteBrush(i32* %120)
  %122 = load i32, i32* @hwnd, align 4
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @ReleaseDC(i32 %122, i32* %123)
  ret void
}

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipCreateFromHDC(i32*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateSolidFill(i32, i32**) #1

declare dso_local i32 @GdipFillClosedCurve2(i32*, i32*, %struct.TYPE_3__*, i32, double, i32) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @GdipDeleteBrush(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

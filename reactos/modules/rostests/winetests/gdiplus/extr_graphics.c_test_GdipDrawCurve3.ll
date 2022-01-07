; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipDrawCurve3.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipDrawCurve3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@hwnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected HDC to be initialized\0A\00", align 1
@Ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected graphics to be initialized\0A\00", align 1
@UnitPixel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Expected pen to be initialized\0A\00", align 1
@InvalidParameter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipDrawCurve3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipDrawCurve3() #0 {
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
  %33 = load i32, i32* @UnitPixel, align 4
  %34 = call i32 @GdipCreatePen1(i32 -65281, float 1.000000e+01, i32 %33, i32** %3)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* @Ok, align 4
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @expect(i32 %35, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %42 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %43 = call i32 @GdipDrawCurve3(i32* null, i32* null, %struct.TYPE_3__* %42, i32 3, i32 0, i32 2, i32 1)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* @InvalidParameter, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @expect(i32 %44, i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %49 = call i32 @GdipDrawCurve3(i32* %47, i32* null, %struct.TYPE_3__* %48, i32 3, i32 0, i32 2, i32 1)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* @InvalidParameter, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @expect(i32 %50, i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %55 = call i32 @GdipDrawCurve3(i32* null, i32* %53, %struct.TYPE_3__* %54, i32 3, i32 0, i32 2, i32 1)
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* @InvalidParameter, align 4
  %57 = load i32, i32* %1, align 4
  %58 = call i32 @expect(i32 %56, i32 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %62 = call i32 @GdipDrawCurve3(i32* %59, i32* %60, %struct.TYPE_3__* %61, i32 -1, i32 0, i32 2, i32 1)
  store i32 %62, i32* %1, align 4
  %63 = load i32, i32* @InvalidParameter, align 4
  %64 = load i32, i32* %1, align 4
  %65 = call i32 @expect(i32 %63, i32 %64)
  %66 = load i32*, i32** %2, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %69 = call i32 @GdipDrawCurve3(i32* %66, i32* %67, %struct.TYPE_3__* %68, i32 0, i32 0, i32 2, i32 1)
  store i32 %69, i32* %1, align 4
  %70 = load i32, i32* @InvalidParameter, align 4
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @expect(i32 %70, i32 %71)
  %73 = load i32*, i32** %2, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %76 = call i32 @GdipDrawCurve3(i32* %73, i32* %74, %struct.TYPE_3__* %75, i32 1, i32 0, i32 0, i32 1)
  store i32 %76, i32* %1, align 4
  %77 = load i32, i32* @InvalidParameter, align 4
  %78 = load i32, i32* %1, align 4
  %79 = call i32 @expect(i32 %77, i32 %78)
  %80 = load i32*, i32** %2, align 8
  %81 = load i32*, i32** %3, align 8
  %82 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %83 = call i32 @GdipDrawCurve3(i32* %80, i32* %81, %struct.TYPE_3__* %82, i32 3, i32 4, i32 2, i32 1)
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* @InvalidParameter, align 4
  %85 = load i32, i32* %1, align 4
  %86 = call i32 @expect(i32 %84, i32 %85)
  %87 = load i32*, i32** %2, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %90 = call i32 @GdipDrawCurve3(i32* %87, i32* %88, %struct.TYPE_3__* %89, i32 3, i32 0, i32 -1, i32 1)
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* @InvalidParameter, align 4
  %92 = load i32, i32* %1, align 4
  %93 = call i32 @expect(i32 %91, i32 %92)
  %94 = load i32*, i32** %2, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %97 = call i32 @GdipDrawCurve3(i32* %94, i32* %95, %struct.TYPE_3__* %96, i32 3, i32 1, i32 2, i32 1)
  store i32 %97, i32* %1, align 4
  %98 = load i32, i32* @InvalidParameter, align 4
  %99 = load i32, i32* %1, align 4
  %100 = call i32 @expect(i32 %98, i32 %99)
  %101 = load i32*, i32** %2, align 8
  %102 = load i32*, i32** %3, align 8
  %103 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %104 = call i32 @GdipDrawCurve3(i32* %101, i32* %102, %struct.TYPE_3__* %103, i32 2, i32 0, i32 2, i32 1)
  store i32 %104, i32* %1, align 4
  %105 = load i32, i32* @InvalidParameter, align 4
  %106 = load i32, i32* %1, align 4
  %107 = call i32 @expect(i32 %105, i32 %106)
  %108 = load i32*, i32** %2, align 8
  %109 = load i32*, i32** %3, align 8
  %110 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %111 = call i32 @GdipDrawCurve3(i32* %108, i32* %109, %struct.TYPE_3__* %110, i32 2, i32 0, i32 1, i32 1)
  store i32 %111, i32* %1, align 4
  %112 = load i32, i32* @Ok, align 4
  %113 = load i32, i32* %1, align 4
  %114 = call i32 @expect(i32 %112, i32 %113)
  %115 = load i32*, i32** %2, align 8
  %116 = load i32*, i32** %3, align 8
  %117 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %118 = call i32 @GdipDrawCurve3(i32* %115, i32* %116, %struct.TYPE_3__* %117, i32 3, i32 0, i32 2, i32 2)
  store i32 %118, i32* %1, align 4
  %119 = load i32, i32* @Ok, align 4
  %120 = load i32, i32* %1, align 4
  %121 = call i32 @expect(i32 %119, i32 %120)
  %122 = load i32*, i32** %2, align 8
  %123 = load i32*, i32** %3, align 8
  %124 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %125 = call i32 @GdipDrawCurve3(i32* %122, i32* %123, %struct.TYPE_3__* %124, i32 2, i32 0, i32 1, i32 -2)
  store i32 %125, i32* %1, align 4
  %126 = load i32, i32* @Ok, align 4
  %127 = load i32, i32* %1, align 4
  %128 = call i32 @expect(i32 %126, i32 %127)
  %129 = load i32*, i32** %2, align 8
  %130 = load i32*, i32** %3, align 8
  %131 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %132 = call i32 @GdipDrawCurve3(i32* %129, i32* %130, %struct.TYPE_3__* %131, i32 3, i32 1, i32 1, i32 0)
  store i32 %132, i32* %1, align 4
  %133 = load i32, i32* @Ok, align 4
  %134 = load i32, i32* %1, align 4
  %135 = call i32 @expect(i32 %133, i32 %134)
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @GdipDeletePen(i32* %136)
  %138 = load i32*, i32** %2, align 8
  %139 = call i32 @GdipDeleteGraphics(i32* %138)
  %140 = load i32, i32* @hwnd, align 4
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @ReleaseDC(i32 %140, i32* %141)
  ret void
}

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipCreateFromHDC(i32*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreatePen1(i32, float, i32, i32**) #1

declare dso_local i32 @GdipDrawCurve3(i32*, i32*, %struct.TYPE_3__*, i32, i32, i32, i32) #1

declare dso_local i32 @GdipDeletePen(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

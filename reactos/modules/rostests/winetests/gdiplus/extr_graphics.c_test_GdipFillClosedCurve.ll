; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipFillClosedCurve.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipFillClosedCurve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@hwnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected HDC to be initialized\0A\00", align 1
@Ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected graphics to be initialized\0A\00", align 1
@InvalidParameter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipFillClosedCurve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipFillClosedCurve() #0 {
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
  %34 = call i32 @GdipFillClosedCurve(i32* null, i32* null, %struct.TYPE_3__* null, i32 3)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* @InvalidParameter, align 4
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @expect(i32 %35, i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @GdipFillClosedCurve(i32* %38, i32* null, %struct.TYPE_3__* null, i32 3)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* @InvalidParameter, align 4
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @expect(i32 %40, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @GdipFillClosedCurve(i32* null, i32* %43, %struct.TYPE_3__* null, i32 3)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* @InvalidParameter, align 4
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @expect(i32 %45, i32 %46)
  %48 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %49 = call i32 @GdipFillClosedCurve(i32* null, i32* null, %struct.TYPE_3__* %48, i32 3)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* @InvalidParameter, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @expect(i32 %50, i32 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @GdipFillClosedCurve(i32* %53, i32* %54, %struct.TYPE_3__* null, i32 3)
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* @InvalidParameter, align 4
  %57 = load i32, i32* %1, align 4
  %58 = call i32 @expect(i32 %56, i32 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %61 = call i32 @GdipFillClosedCurve(i32* %59, i32* null, %struct.TYPE_3__* %60, i32 3)
  store i32 %61, i32* %1, align 4
  %62 = load i32, i32* @InvalidParameter, align 4
  %63 = load i32, i32* %1, align 4
  %64 = call i32 @expect(i32 %62, i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %67 = call i32 @GdipFillClosedCurve(i32* null, i32* %65, %struct.TYPE_3__* %66, i32 3)
  store i32 %67, i32* %1, align 4
  %68 = load i32, i32* @InvalidParameter, align 4
  %69 = load i32, i32* %1, align 4
  %70 = call i32 @expect(i32 %68, i32 %69)
  %71 = load i32*, i32** %2, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %74 = call i32 @GdipFillClosedCurve(i32* %71, i32* %72, %struct.TYPE_3__* %73, i32 -1)
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* @InvalidParameter, align 4
  %76 = load i32, i32* %1, align 4
  %77 = call i32 @expect(i32 %75, i32 %76)
  %78 = load i32*, i32** %2, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %81 = call i32 @GdipFillClosedCurve(i32* %78, i32* %79, %struct.TYPE_3__* %80, i32 0)
  store i32 %81, i32* %1, align 4
  %82 = load i32, i32* @InvalidParameter, align 4
  %83 = load i32, i32* %1, align 4
  %84 = call i32 @expect(i32 %82, i32 %83)
  %85 = load i32*, i32** %2, align 8
  %86 = load i32*, i32** %3, align 8
  %87 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %88 = call i32 @GdipFillClosedCurve(i32* %85, i32* %86, %struct.TYPE_3__* %87, i32 1)
  store i32 %88, i32* %1, align 4
  %89 = load i32, i32* @Ok, align 4
  %90 = load i32, i32* %1, align 4
  %91 = call i32 @expect(i32 %89, i32 %90)
  %92 = load i32*, i32** %2, align 8
  %93 = load i32*, i32** %3, align 8
  %94 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %95 = call i32 @GdipFillClosedCurve(i32* %92, i32* %93, %struct.TYPE_3__* %94, i32 2)
  store i32 %95, i32* %1, align 4
  %96 = load i32, i32* @Ok, align 4
  %97 = load i32, i32* %1, align 4
  %98 = call i32 @expect(i32 %96, i32 %97)
  %99 = load i32*, i32** %2, align 8
  %100 = load i32*, i32** %3, align 8
  %101 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %102 = call i32 @GdipFillClosedCurve(i32* %99, i32* %100, %struct.TYPE_3__* %101, i32 3)
  store i32 %102, i32* %1, align 4
  %103 = load i32, i32* @Ok, align 4
  %104 = load i32, i32* %1, align 4
  %105 = call i32 @expect(i32 %103, i32 %104)
  %106 = load i32*, i32** %2, align 8
  %107 = call i32 @GdipDeleteGraphics(i32* %106)
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @GdipDeleteBrush(i32* %108)
  %110 = load i32, i32* @hwnd, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @ReleaseDC(i32 %110, i32* %111)
  ret void
}

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipCreateFromHDC(i32*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateSolidFill(i32, i32**) #1

declare dso_local i32 @GdipFillClosedCurve(i32*, i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @GdipDeleteBrush(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

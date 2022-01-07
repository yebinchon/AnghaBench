; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipDrawImagePointsRect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipDrawImagePointsRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@hwnd = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Expected bitmap to be initialized\0A\00", align 1
@UnitPixel = common dso_local global i32 0, align 4
@NotImplemented = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipDrawImagePointsRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipDrawImagePointsRect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [4 x %struct.TYPE_10__], align 16
  %4 = alloca i32*, align 8
  %5 = alloca [4 x %struct.TYPE_10__], align 16
  %6 = alloca [400 x %struct.TYPE_10__], align 16
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %4, align 8
  %9 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %5, i64 0, i64 0
  %10 = bitcast %struct.TYPE_10__* %9 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %7, align 8
  %11 = load i32, i32* @hwnd, align 4
  %12 = call i32 @GetDC(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %0
  br label %132

16:                                               ; preds = %0
  %17 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %5, i64 0, i64 0
  %18 = call i32 @memset(%struct.TYPE_10__* %17, i32 0, i32 32)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i32 4, i32* %21, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  store i32 10, i32* %24, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  store i32 10, i32* %27, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  store i32 1, i32* %30, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 4
  store i32 32, i32* %33, align 4
  %34 = load i32, i32* @BI_RGB, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 5
  store i32 %34, i32* %37, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds [400 x %struct.TYPE_10__], [400 x %struct.TYPE_10__]* %6, i64 0, i64 0
  %40 = call i32 @GdipCreateBitmapFromGdiDib(%struct.TYPE_11__* %38, %struct.TYPE_10__* %39, i32** %4)
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* @Ok, align 4
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @expect(i32 %41, i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = icmp ne i32* null, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @GdipCreateFromHDC(i32 %48, i32** %2)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* @Ok, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @expect(i32 %50, i32 %51)
  %53 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %3, i64 0, i64 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 16
  %55 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %3, i64 0, i64 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %3, i64 0, i64 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i32 10, i32* %58, align 8
  %59 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %3, i64 0, i64 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %3, i64 0, i64 2
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 16
  %63 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %3, i64 0, i64 2
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store i32 10, i32* %64, align 4
  %65 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %3, i64 0, i64 3
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i32 10, i32* %66, align 8
  %67 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %3, i64 0, i64 3
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 10, i32* %68, align 4
  %69 = load i32*, i32** %2, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %3, i64 0, i64 0
  %72 = load i32, i32* @UnitPixel, align 4
  %73 = call i32 @GdipDrawImagePointsRect(i32* %69, i32* %70, %struct.TYPE_10__* %71, i32 4, i32 0, i32 0, i32 10, i32 10, i32 %72, i32* null, i32* null, i32* null)
  store i32 %73, i32* %1, align 4
  %74 = load i32, i32* @NotImplemented, align 4
  %75 = load i32, i32* %1, align 4
  %76 = call i32 @expect(i32 %74, i32 %75)
  %77 = load i32*, i32** %2, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %3, i64 0, i64 0
  %80 = load i32, i32* @UnitPixel, align 4
  %81 = call i32 @GdipDrawImagePointsRect(i32* %77, i32* %78, %struct.TYPE_10__* %79, i32 2, i32 0, i32 0, i32 10, i32 10, i32 %80, i32* null, i32* null, i32* null)
  store i32 %81, i32* %1, align 4
  %82 = load i32, i32* @InvalidParameter, align 4
  %83 = load i32, i32* %1, align 4
  %84 = call i32 @expect(i32 %82, i32 %83)
  %85 = load i32*, i32** %2, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %3, i64 0, i64 0
  %88 = load i32, i32* @UnitPixel, align 4
  %89 = call i32 @GdipDrawImagePointsRect(i32* %85, i32* %86, %struct.TYPE_10__* %87, i32 3, i32 0, i32 0, i32 10, i32 10, i32 %88, i32* null, i32* null, i32* null)
  store i32 %89, i32* %1, align 4
  %90 = load i32, i32* @Ok, align 4
  %91 = load i32, i32* %1, align 4
  %92 = call i32 @expect(i32 %90, i32 %91)
  %93 = load i32*, i32** %2, align 8
  %94 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %3, i64 0, i64 0
  %95 = load i32, i32* @UnitPixel, align 4
  %96 = call i32 @GdipDrawImagePointsRect(i32* %93, i32* null, %struct.TYPE_10__* %94, i32 3, i32 0, i32 0, i32 10, i32 10, i32 %95, i32* null, i32* null, i32* null)
  store i32 %96, i32* %1, align 4
  %97 = load i32, i32* @InvalidParameter, align 4
  %98 = load i32, i32* %1, align 4
  %99 = call i32 @expect(i32 %97, i32 %98)
  %100 = load i32*, i32** %2, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* @UnitPixel, align 4
  %103 = call i32 @GdipDrawImagePointsRect(i32* %100, i32* %101, %struct.TYPE_10__* null, i32 3, i32 0, i32 0, i32 10, i32 10, i32 %102, i32* null, i32* null, i32* null)
  store i32 %103, i32* %1, align 4
  %104 = load i32, i32* @InvalidParameter, align 4
  %105 = load i32, i32* %1, align 4
  %106 = call i32 @expect(i32 %104, i32 %105)
  %107 = load i32*, i32** %2, align 8
  %108 = load i32*, i32** %4, align 8
  %109 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %3, i64 0, i64 0
  %110 = load i32, i32* @UnitPixel, align 4
  %111 = call i32 @GdipDrawImagePointsRect(i32* %107, i32* %108, %struct.TYPE_10__* %109, i32 3, i32 0, i32 0, i32 0, i32 0, i32 %110, i32* null, i32* null, i32* null)
  store i32 %111, i32* %1, align 4
  %112 = load i32, i32* @Ok, align 4
  %113 = load i32, i32* %1, align 4
  %114 = call i32 @expect(i32 %112, i32 %113)
  %115 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %3, i64 0, i64 0
  %116 = call i32 @memset(%struct.TYPE_10__* %115, i32 0, i32 32)
  %117 = load i32*, i32** %2, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %3, i64 0, i64 0
  %120 = load i32, i32* @UnitPixel, align 4
  %121 = call i32 @GdipDrawImagePointsRect(i32* %117, i32* %118, %struct.TYPE_10__* %119, i32 3, i32 0, i32 0, i32 10, i32 10, i32 %120, i32* null, i32* null, i32* null)
  store i32 %121, i32* %1, align 4
  %122 = load i32, i32* @Ok, align 4
  %123 = load i32, i32* %1, align 4
  %124 = call i32 @expect(i32 %122, i32 %123)
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @GdipDisposeImage(i32* %125)
  %127 = load i32*, i32** %2, align 8
  %128 = call i32 @GdipDeleteGraphics(i32* %127)
  %129 = load i32, i32* @hwnd, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @ReleaseDC(i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %16, %15
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @GdipCreateBitmapFromGdiDib(%struct.TYPE_11__*, %struct.TYPE_10__*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @GdipDrawImagePointsRect(i32*, i32*, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

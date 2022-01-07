; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_fillrect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { double, double, double, double }
%struct.TYPE_10__ = type { double, double }

@test_fillrect.frame = internal constant %struct.TYPE_9__ { double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 1.000000e+02 }, align 8
@test_fillrect.dst_points = internal constant [3 x %struct.TYPE_10__] [%struct.TYPE_10__ zeroinitializer, %struct.TYPE_10__ { double 1.000000e+02, double 0.000000e+00 }, %struct.TYPE_10__ { double 0.000000e+00, double 1.000000e+02 }], align 16
@test_fillrect.dst_points_half = internal constant [3 x %struct.TYPE_10__] [%struct.TYPE_10__ zeroinitializer, %struct.TYPE_10__ { double 5.000000e+01, double 0.000000e+00 }, %struct.TYPE_10__ { double 0.000000e+00, double 5.000000e+01 }], align 16
@test_fillrect.description = internal constant [9 x i8] c"winetest\00", align 1
@EmfTypeEmfPlusOnly = common dso_local global i32 0, align 4
@MetafileFrameUnitPixel = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@fillrect_records = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"fillrect metafile\00", align 1
@UnitPixel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"fillrect.emf\00", align 1
@PixelFormat32bppARGB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"fillrect playback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fillrect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EmfTypeEmfPlusOnly, align 4
  %12 = load i32, i32* @MetafileFrameUnitPixel, align 4
  %13 = call i32 @GdipRecordMetafile(i32 %10, i32 %11, %struct.TYPE_9__* @test_fillrect.frame, i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_fillrect.description, i64 0, i64 0), i32** %2)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @Ok, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @expect(i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @DeleteDC(i32 %17)
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @Ok, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  br label %153

23:                                               ; preds = %0
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @GdipGetHemfFromMetafile(i32* %24, i32* %5)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* @InvalidParameter, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @expect(i32 %26, i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @GdipGetImageGraphicsContext(i32* %29, i32** %3)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* @Ok, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @expect(i32 %31, i32 %32)
  %34 = call i32 @GdipCreateSolidFill(i32 -16776961, i32** %8)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* @Ok, align 4
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @expect(i32 %35, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @GdipFillRectangleI(i32* %38, i32* %39, i32 25, i32 25, i32 75, i32 75)
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* @Ok, align 4
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @expect(i32 %41, i32 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @GdipDeleteBrush(i32* %44)
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* @Ok, align 4
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @expect(i32 %46, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @GdipDeleteGraphics(i32* %49)
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* @Ok, align 4
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @expect(i32 %51, i32 %52)
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* @fillrect_records, align 4
  %56 = load i32, i32* @UnitPixel, align 4
  %57 = call i32 @check_metafile(i32* %54, i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* getelementptr inbounds ([3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* @test_fillrect.dst_points, i64 0, i64 0), %struct.TYPE_9__* @test_fillrect.frame, i32 %56)
  %58 = call i32 @sync_metafile(i32** %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @PixelFormat32bppARGB, align 4
  %60 = call i32 @GdipCreateBitmapFromScan0(i32 100, i32 100, i32 0, i32 %59, i32* null, i32** %6)
  store i32 %60, i32* %1, align 4
  %61 = load i32, i32* @Ok, align 4
  %62 = load i32, i32* %1, align 4
  %63 = call i32 @expect(i32 %61, i32 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @GdipGetImageGraphicsContext(i32* %64, i32** %3)
  store i32 %65, i32* %1, align 4
  %66 = load i32, i32* @Ok, align 4
  %67 = load i32, i32* %1, align 4
  %68 = call i32 @expect(i32 %66, i32 %67)
  %69 = load i32*, i32** %2, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* @fillrect_records, align 4
  %72 = load i32, i32* @UnitPixel, align 4
  %73 = call i32 @play_metafile(i32* %69, i32* %70, i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* getelementptr inbounds ([3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* @test_fillrect.dst_points, i64 0, i64 0), %struct.TYPE_9__* @test_fillrect.frame, i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @GdipBitmapGetPixel(i32* %74, i32 15, i32 15, i32* %7)
  store i32 %75, i32* %1, align 4
  %76 = load i32, i32* @Ok, align 4
  %77 = load i32, i32* %1, align 4
  %78 = call i32 @expect(i32 %76, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @expect(i32 0, i32 %79)
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @GdipBitmapGetPixel(i32* %81, i32 50, i32 50, i32* %7)
  store i32 %82, i32* %1, align 4
  %83 = load i32, i32* @Ok, align 4
  %84 = load i32, i32* %1, align 4
  %85 = call i32 @expect(i32 %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @expect(i32 -16776961, i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @GdipBitmapSetPixel(i32* %88, i32 50, i32 50, i32 0)
  store i32 %89, i32* %1, align 4
  %90 = load i32, i32* @Ok, align 4
  %91 = load i32, i32* %1, align 4
  %92 = call i32 @expect(i32 %90, i32 %91)
  %93 = load i32*, i32** %2, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = load i32, i32* @fillrect_records, align 4
  %96 = load i32, i32* @UnitPixel, align 4
  %97 = call i32 @play_metafile(i32* %93, i32* %94, i32 %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* getelementptr inbounds ([3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* @test_fillrect.dst_points_half, i64 0, i64 0), %struct.TYPE_9__* @test_fillrect.frame, i32 %96)
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @GdipBitmapGetPixel(i32* %98, i32 15, i32 15, i32* %7)
  store i32 %99, i32* %1, align 4
  %100 = load i32, i32* @Ok, align 4
  %101 = load i32, i32* %1, align 4
  %102 = call i32 @expect(i32 %100, i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @expect(i32 -16776961, i32 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @GdipBitmapGetPixel(i32* %105, i32 50, i32 50, i32* %7)
  store i32 %106, i32* %1, align 4
  %107 = load i32, i32* @Ok, align 4
  %108 = load i32, i32* %1, align 4
  %109 = call i32 @expect(i32 %107, i32 %108)
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @expect(i32 0, i32 %110)
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @GdipBitmapSetPixel(i32* %112, i32 15, i32 15, i32 0)
  store i32 %113, i32* %1, align 4
  %114 = load i32, i32* @Ok, align 4
  %115 = load i32, i32* %1, align 4
  %116 = call i32 @expect(i32 %114, i32 %115)
  %117 = load i32*, i32** %3, align 8
  %118 = load i32*, i32** %2, align 8
  %119 = load i32, i32* @UnitPixel, align 4
  %120 = call i32 @GdipDrawImagePointsRect(i32* %117, i32* %118, %struct.TYPE_10__* getelementptr inbounds ([3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* @test_fillrect.dst_points, i64 0, i64 0), i32 3, double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 1.000000e+02, i32 %119, i32* null, i32* null, i32* null)
  store i32 %120, i32* %1, align 4
  %121 = load i32, i32* @Ok, align 4
  %122 = load i32, i32* %1, align 4
  %123 = call i32 @expect(i32 %121, i32 %122)
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @GdipBitmapGetPixel(i32* %124, i32 15, i32 15, i32* %7)
  store i32 %125, i32* %1, align 4
  %126 = load i32, i32* @Ok, align 4
  %127 = load i32, i32* %1, align 4
  %128 = call i32 @expect(i32 %126, i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @expect(i32 0, i32 %129)
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @GdipBitmapGetPixel(i32* %131, i32 50, i32 50, i32* %7)
  store i32 %132, i32* %1, align 4
  %133 = load i32, i32* @Ok, align 4
  %134 = load i32, i32* %1, align 4
  %135 = call i32 @expect(i32 %133, i32 %134)
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @expect(i32 -16776961, i32 %136)
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @GdipDeleteGraphics(i32* %138)
  store i32 %139, i32* %1, align 4
  %140 = load i32, i32* @Ok, align 4
  %141 = load i32, i32* %1, align 4
  %142 = call i32 @expect(i32 %140, i32 %141)
  %143 = load i32*, i32** %6, align 8
  %144 = call i32 @GdipDisposeImage(i32* %143)
  store i32 %144, i32* %1, align 4
  %145 = load i32, i32* @Ok, align 4
  %146 = load i32, i32* %1, align 4
  %147 = call i32 @expect(i32 %145, i32 %146)
  %148 = load i32*, i32** %2, align 8
  %149 = call i32 @GdipDisposeImage(i32* %148)
  store i32 %149, i32* %1, align 4
  %150 = load i32, i32* @Ok, align 4
  %151 = load i32, i32* %1, align 4
  %152 = call i32 @expect(i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %23, %22
  ret void
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @GdipRecordMetafile(i32, i32, %struct.TYPE_9__*, i32, i8*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @GdipGetHemfFromMetafile(i32*, i32*) #1

declare dso_local i32 @GdipGetImageGraphicsContext(i32*, i32**) #1

declare dso_local i32 @GdipCreateSolidFill(i32, i32**) #1

declare dso_local i32 @GdipFillRectangleI(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @GdipDeleteBrush(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @check_metafile(i32*, i32, i8*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @sync_metafile(i32**, i8*) #1

declare dso_local i32 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @play_metafile(i32*, i32*, i32, i8*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @GdipBitmapGetPixel(i32*, i32, i32, i32*) #1

declare dso_local i32 @GdipBitmapSetPixel(i32*, i32, i32, i32) #1

declare dso_local i32 @GdipDrawImagePointsRect(i32*, i32*, %struct.TYPE_10__*, i32, double, double, double, double, i32, i32*, i32*, i32*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

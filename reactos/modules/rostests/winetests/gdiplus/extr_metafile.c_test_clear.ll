; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_clear.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, double, double, double }
%struct.TYPE_6__ = type { double, double }

@test_clear.frame = internal constant %struct.TYPE_5__ { double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 1.000000e+02 }, align 8
@test_clear.dst_points = internal constant [3 x %struct.TYPE_6__] [%struct.TYPE_6__ { double 1.000000e+01, double 1.000000e+01 }, %struct.TYPE_6__ { double 2.000000e+01, double 1.000000e+01 }, %struct.TYPE_6__ { double 1.000000e+01, double 2.000000e+01 }], align 16
@test_clear.description = internal constant [9 x i8] c"winetest\00", align 1
@EmfTypeEmfPlusOnly = common dso_local global i32 0, align 4
@MetafileFrameUnitPixel = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"clear.emf\00", align 1
@PixelFormat32bppRGB = common dso_local global i32 0, align 4
@UnitPixel = common dso_local global i32 0, align 4
@clear_emf_records = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"clear emf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_clear() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EmfTypeEmfPlusOnly, align 4
  %11 = load i32, i32* @MetafileFrameUnitPixel, align 4
  %12 = call i32 @GdipRecordMetafile(i32 %9, i32 %10, %struct.TYPE_5__* @test_clear.frame, i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_clear.description, i64 0, i64 0), i32** %2)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @Ok, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @expect(i32 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @DeleteDC(i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @Ok, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  br label %107

22:                                               ; preds = %0
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @GdipGetHemfFromMetafile(i32* %23, i32* %5)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* @InvalidParameter, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @expect(i32 %25, i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @GdipGetImageGraphicsContext(i32* %28, i32** %3)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* @Ok, align 4
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @expect(i32 %30, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @GdipGraphicsClear(i32* %33, i32 -256)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* @Ok, align 4
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @expect(i32 %35, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @GdipDeleteGraphics(i32* %38)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* @Ok, align 4
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @expect(i32 %40, i32 %41)
  %43 = call i32 @sync_metafile(i32** %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @PixelFormat32bppRGB, align 4
  %45 = call i32 @GdipCreateBitmapFromScan0(i32 30, i32 30, i32 0, i32 %44, i32* null, i32** %6)
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* @Ok, align 4
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @expect(i32 %46, i32 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @GdipGetImageGraphicsContext(i32* %49, i32** %3)
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* @Ok, align 4
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @expect(i32 %51, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* @UnitPixel, align 4
  %57 = call i32 @GdipDrawImagePointsRect(i32* %54, i32* %55, %struct.TYPE_6__* getelementptr inbounds ([3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* @test_clear.dst_points, i64 0, i64 0), i32 3, double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 1.000000e+02, i32 %56, i32* null, i32* null, i32* null)
  store i32 %57, i32* %1, align 4
  %58 = load i32, i32* @Ok, align 4
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @expect(i32 %58, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @GdipBitmapGetPixel(i32* %61, i32 5, i32 5, i32* %7)
  store i32 %62, i32* %1, align 4
  %63 = load i32, i32* @Ok, align 4
  %64 = load i32, i32* %1, align 4
  %65 = call i32 @expect(i32 %63, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @expect(i32 -16777216, i32 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @GdipBitmapGetPixel(i32* %68, i32 15, i32 15, i32* %7)
  store i32 %69, i32* %1, align 4
  %70 = load i32, i32* @Ok, align 4
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @expect(i32 %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @expect(i32 -256, i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @GdipBitmapGetPixel(i32* %75, i32 25, i32 25, i32* %7)
  store i32 %76, i32* %1, align 4
  %77 = load i32, i32* @Ok, align 4
  %78 = load i32, i32* %1, align 4
  %79 = call i32 @expect(i32 %77, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @expect(i32 -16777216, i32 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @GdipDeleteGraphics(i32* %82)
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* @Ok, align 4
  %85 = load i32, i32* %1, align 4
  %86 = call i32 @expect(i32 %84, i32 %85)
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @GdipDisposeImage(i32* %87)
  store i32 %88, i32* %1, align 4
  %89 = load i32, i32* @Ok, align 4
  %90 = load i32, i32* %1, align 4
  %91 = call i32 @expect(i32 %89, i32 %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @GdipGetHemfFromMetafile(i32* %92, i32* %5)
  store i32 %93, i32* %1, align 4
  %94 = load i32, i32* @Ok, align 4
  %95 = load i32, i32* %1, align 4
  %96 = call i32 @expect(i32 %94, i32 %95)
  %97 = load i32*, i32** %2, align 8
  %98 = call i32 @GdipDisposeImage(i32* %97)
  store i32 %98, i32* %1, align 4
  %99 = load i32, i32* @Ok, align 4
  %100 = load i32, i32* %1, align 4
  %101 = call i32 @expect(i32 %99, i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @clear_emf_records, align 4
  %104 = call i32 @check_emfplus(i32 %102, i32 %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @DeleteEnhMetaFile(i32 %105)
  br label %107

107:                                              ; preds = %22, %21
  ret void
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @GdipRecordMetafile(i32, i32, %struct.TYPE_5__*, i32, i8*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @GdipGetHemfFromMetafile(i32*, i32*) #1

declare dso_local i32 @GdipGetImageGraphicsContext(i32*, i32**) #1

declare dso_local i32 @GdipGraphicsClear(i32*, i32) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @sync_metafile(i32**, i8*) #1

declare dso_local i32 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @GdipDrawImagePointsRect(i32*, i32*, %struct.TYPE_6__*, i32, double, double, double, double, i32, i32*, i32*, i32*) #1

declare dso_local i32 @GdipBitmapGetPixel(i32*, i32, i32, i32*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

declare dso_local i32 @check_emfplus(i32, i32, i8*) #1

declare dso_local i32 @DeleteEnhMetaFile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

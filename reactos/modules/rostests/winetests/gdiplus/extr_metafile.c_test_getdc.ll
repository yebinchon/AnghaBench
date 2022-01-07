; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_getdc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_getdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { double, double, double, double }
%struct.TYPE_10__ = type { double, double }

@test_getdc.frame = internal constant %struct.TYPE_9__ { double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 1.000000e+02 }, align 8
@test_getdc.dst_points = internal constant [3 x %struct.TYPE_10__] [%struct.TYPE_10__ zeroinitializer, %struct.TYPE_10__ { double 1.000000e+02, double 0.000000e+00 }, %struct.TYPE_10__ { double 0.000000e+00, double 1.000000e+02 }], align 16
@test_getdc.dst_points_half = internal constant [3 x %struct.TYPE_10__] [%struct.TYPE_10__ zeroinitializer, %struct.TYPE_10__ { double 5.000000e+01, double 0.000000e+00 }, %struct.TYPE_10__ { double 0.000000e+00, double 5.000000e+01 }], align 16
@test_getdc.description = internal constant [9 x i8] c"winetest\00", align 1
@EmfTypeEmfPlusOnly = common dso_local global i32 0, align 4
@MetafileFrameUnitPixel = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@getdc_records = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"getdc metafile\00", align 1
@UnitPixel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"getdc.emf\00", align 1
@PixelFormat32bppARGB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"getdc playback\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"getdc emf\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to delete enhmetafile %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getdc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @EmfTypeEmfPlusOnly, align 4
  %15 = load i32, i32* @MetafileFrameUnitPixel, align 4
  %16 = call i32 @GdipRecordMetafile(i32 %13, i32 %14, %struct.TYPE_9__* @test_getdc.frame, i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_getdc.description, i64 0, i64 0), i32** %2)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* @Ok, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @expect(i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @DeleteDC(i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @Ok, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %0
  br label %187

26:                                               ; preds = %0
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @GdipGetHemfFromMetafile(i32* %27, i32* %6)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* @InvalidParameter, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @expect(i32 %29, i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @GdipGetImageGraphicsContext(i32* %32, i32** %3)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* @Ok, align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @expect(i32 %34, i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @GdipGetDC(i32* %37, i32* %5)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* @Ok, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @expect(i32 %39, i32 %40)
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @Ok, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %26
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @GdipDeleteGraphics(i32* %46)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @GdipDisposeImage(i32* %48)
  br label %187

50:                                               ; preds = %26
  %51 = call i32 @CreateSolidBrush(i32 16711680)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @SelectObject(i32 %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @Rectangle(i32 %55, i32 25, i32 25, i32 75, i32 75)
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @SelectObject(i32 %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @DeleteObject(i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @GdipReleaseDC(i32* %62, i32 %63)
  store i32 %64, i32* %1, align 4
  %65 = load i32, i32* @Ok, align 4
  %66 = load i32, i32* %1, align 4
  %67 = call i32 @expect(i32 %65, i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @GdipDeleteGraphics(i32* %68)
  store i32 %69, i32* %1, align 4
  %70 = load i32, i32* @Ok, align 4
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @expect(i32 %70, i32 %71)
  %73 = load i32*, i32** %2, align 8
  %74 = load i32, i32* @getdc_records, align 4
  %75 = load i32, i32* @UnitPixel, align 4
  %76 = call i32 @check_metafile(i32* %73, i32 %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* getelementptr inbounds ([3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* @test_getdc.dst_points, i64 0, i64 0), %struct.TYPE_9__* @test_getdc.frame, i32 %75)
  %77 = call i32 @sync_metafile(i32** %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @PixelFormat32bppARGB, align 4
  %79 = call i32 @GdipCreateBitmapFromScan0(i32 100, i32 100, i32 0, i32 %78, i32* null, i32** %10)
  store i32 %79, i32* %1, align 4
  %80 = load i32, i32* @Ok, align 4
  %81 = load i32, i32* %1, align 4
  %82 = call i32 @expect(i32 %80, i32 %81)
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @GdipGetImageGraphicsContext(i32* %83, i32** %3)
  store i32 %84, i32* %1, align 4
  %85 = load i32, i32* @Ok, align 4
  %86 = load i32, i32* %1, align 4
  %87 = call i32 @expect(i32 %85, i32 %86)
  %88 = load i32*, i32** %2, align 8
  %89 = load i32*, i32** %3, align 8
  %90 = load i32, i32* @getdc_records, align 4
  %91 = load i32, i32* @UnitPixel, align 4
  %92 = call i32 @play_metafile(i32* %88, i32* %89, i32 %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* getelementptr inbounds ([3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* @test_getdc.dst_points, i64 0, i64 0), %struct.TYPE_9__* @test_getdc.frame, i32 %91)
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @GdipBitmapGetPixel(i32* %93, i32 15, i32 15, i32* %11)
  store i32 %94, i32* %1, align 4
  %95 = load i32, i32* @Ok, align 4
  %96 = load i32, i32* %1, align 4
  %97 = call i32 @expect(i32 %95, i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @expect(i32 0, i32 %98)
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @GdipBitmapGetPixel(i32* %100, i32 50, i32 50, i32* %11)
  store i32 %101, i32* %1, align 4
  %102 = load i32, i32* @Ok, align 4
  %103 = load i32, i32* %1, align 4
  %104 = call i32 @expect(i32 %102, i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @expect(i32 -16776961, i32 %105)
  %107 = load i32*, i32** %10, align 8
  %108 = call i32 @GdipBitmapSetPixel(i32* %107, i32 50, i32 50, i32 0)
  store i32 %108, i32* %1, align 4
  %109 = load i32, i32* @Ok, align 4
  %110 = load i32, i32* %1, align 4
  %111 = call i32 @expect(i32 %109, i32 %110)
  %112 = load i32*, i32** %2, align 8
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* @getdc_records, align 4
  %115 = load i32, i32* @UnitPixel, align 4
  %116 = call i32 @play_metafile(i32* %112, i32* %113, i32 %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* getelementptr inbounds ([3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* @test_getdc.dst_points_half, i64 0, i64 0), %struct.TYPE_9__* @test_getdc.frame, i32 %115)
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @GdipBitmapGetPixel(i32* %117, i32 15, i32 15, i32* %11)
  store i32 %118, i32* %1, align 4
  %119 = load i32, i32* @Ok, align 4
  %120 = load i32, i32* %1, align 4
  %121 = call i32 @expect(i32 %119, i32 %120)
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @expect(i32 -16776961, i32 %122)
  %124 = load i32*, i32** %10, align 8
  %125 = call i32 @GdipBitmapGetPixel(i32* %124, i32 50, i32 50, i32* %11)
  store i32 %125, i32* %1, align 4
  %126 = load i32, i32* @Ok, align 4
  %127 = load i32, i32* %1, align 4
  %128 = call i32 @expect(i32 %126, i32 %127)
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @expect(i32 0, i32 %129)
  %131 = load i32*, i32** %10, align 8
  %132 = call i32 @GdipBitmapSetPixel(i32* %131, i32 15, i32 15, i32 0)
  store i32 %132, i32* %1, align 4
  %133 = load i32, i32* @Ok, align 4
  %134 = load i32, i32* %1, align 4
  %135 = call i32 @expect(i32 %133, i32 %134)
  %136 = load i32*, i32** %3, align 8
  %137 = load i32*, i32** %2, align 8
  %138 = load i32, i32* @UnitPixel, align 4
  %139 = call i32 @GdipDrawImagePointsRect(i32* %136, i32* %137, %struct.TYPE_10__* getelementptr inbounds ([3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* @test_getdc.dst_points, i64 0, i64 0), i32 3, double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 1.000000e+02, i32 %138, i32* null, i32* null, i32* null)
  store i32 %139, i32* %1, align 4
  %140 = load i32, i32* @Ok, align 4
  %141 = load i32, i32* %1, align 4
  %142 = call i32 @expect(i32 %140, i32 %141)
  %143 = load i32*, i32** %10, align 8
  %144 = call i32 @GdipBitmapGetPixel(i32* %143, i32 15, i32 15, i32* %11)
  store i32 %144, i32* %1, align 4
  %145 = load i32, i32* @Ok, align 4
  %146 = load i32, i32* %1, align 4
  %147 = call i32 @expect(i32 %145, i32 %146)
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @expect(i32 0, i32 %148)
  %150 = load i32*, i32** %10, align 8
  %151 = call i32 @GdipBitmapGetPixel(i32* %150, i32 50, i32 50, i32* %11)
  store i32 %151, i32* %1, align 4
  %152 = load i32, i32* @Ok, align 4
  %153 = load i32, i32* %1, align 4
  %154 = call i32 @expect(i32 %152, i32 %153)
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @expect(i32 -16776961, i32 %155)
  %157 = load i32*, i32** %3, align 8
  %158 = call i32 @GdipDeleteGraphics(i32* %157)
  store i32 %158, i32* %1, align 4
  %159 = load i32, i32* @Ok, align 4
  %160 = load i32, i32* %1, align 4
  %161 = call i32 @expect(i32 %159, i32 %160)
  %162 = load i32*, i32** %10, align 8
  %163 = call i32 @GdipDisposeImage(i32* %162)
  store i32 %163, i32* %1, align 4
  %164 = load i32, i32* @Ok, align 4
  %165 = load i32, i32* %1, align 4
  %166 = call i32 @expect(i32 %164, i32 %165)
  %167 = load i32*, i32** %2, align 8
  %168 = call i32 @GdipGetHemfFromMetafile(i32* %167, i32* %6)
  store i32 %168, i32* %1, align 4
  %169 = load i32, i32* @Ok, align 4
  %170 = load i32, i32* %1, align 4
  %171 = call i32 @expect(i32 %169, i32 %170)
  %172 = load i32*, i32** %2, align 8
  %173 = call i32 @GdipDisposeImage(i32* %172)
  store i32 %173, i32* %1, align 4
  %174 = load i32, i32* @Ok, align 4
  %175 = load i32, i32* %1, align 4
  %176 = call i32 @expect(i32 %174, i32 %175)
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @getdc_records, align 4
  %179 = call i32 @check_emfplus(i32 %177, i32 %178, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %180 = load i32, i32* %6, align 4
  %181 = call i64 @DeleteEnhMetaFile(i32 %180)
  store i64 %181, i64* %7, align 8
  %182 = load i64, i64* %7, align 8
  %183 = icmp ne i64 %182, 0
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @ok(i32 %184, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %50, %45, %25
  ret void
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @GdipRecordMetafile(i32, i32, %struct.TYPE_9__*, i32, i8*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @GdipGetHemfFromMetafile(i32*, i32*) #1

declare dso_local i32 @GdipGetImageGraphicsContext(i32*, i32**) #1

declare dso_local i32 @GdipGetDC(i32*, i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

declare dso_local i32 @CreateSolidBrush(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @Rectangle(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @GdipReleaseDC(i32*, i32) #1

declare dso_local i32 @check_metafile(i32*, i32, i8*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @sync_metafile(i32**, i8*) #1

declare dso_local i32 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @play_metafile(i32*, i32*, i32, i8*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @GdipBitmapGetPixel(i32*, i32, i32, i32*) #1

declare dso_local i32 @GdipBitmapSetPixel(i32*, i32, i32, i32) #1

declare dso_local i32 @GdipDrawImagePointsRect(i32*, i32*, %struct.TYPE_10__*, i32, double, double, double, double, i32, i32*, i32*, i32*) #1

declare dso_local i32 @check_emfplus(i32, i32, i8*) #1

declare dso_local i64 @DeleteEnhMetaFile(i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_gditransform.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_gditransform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { double, double, double, double }
%struct.TYPE_13__ = type { double, double }
%struct.TYPE_11__ = type { i32, i32 }

@test_gditransform.frame = internal constant %struct.TYPE_12__ { double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 1.000000e+02 }, align 8
@test_gditransform.dst_points = internal constant [3 x %struct.TYPE_13__] [%struct.TYPE_13__ zeroinitializer, %struct.TYPE_13__ { double 4.000000e+01, double 0.000000e+00 }, %struct.TYPE_13__ { double 0.000000e+00, double 4.000000e+01 }], align 16
@test_gditransform.description = internal constant [9 x i8] c"winetest\00", align 1
@EmfTypeEmfOnly = common dso_local global i32 0, align 4
@MetafileFrameUnitPixel = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@MetafileTypeEmf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unexpected version %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"winetest\00", align 1
@gditransform_records = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"gditransform metafile\00", align 1
@UnitPixel = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"gditransform.emf\00", align 1
@PixelFormat32bppARGB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"gditransform playback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_gditransform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_gditransform() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @EmfTypeEmfOnly, align 4
  %15 = load i32, i32* @MetafileFrameUnitPixel, align 4
  %16 = call i32 @GdipRecordMetafile(i32 %13, i32 %14, %struct.TYPE_12__* @test_gditransform.frame, i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_gditransform.description, i64 0, i64 0), i32** %2)
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
  br label %145

26:                                               ; preds = %0
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @GdipGetHemfFromMetafile(i32* %27, i32* %6)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* @InvalidParameter, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @expect(i32 %29, i32 %30)
  %32 = call i32 @memset(%struct.TYPE_11__* %7, i32 170, i32 8)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @GdipGetMetafileHeaderFromMetafile(i32* %33, %struct.TYPE_11__* %7)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* @Ok, align 4
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @expect(i32 %35, i32 %36)
  %38 = load i32, i32* @MetafileTypeEmf, align 4
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @expect(i32 %38, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, -608169983
  br i1 %44, label %49, label %45

45:                                               ; preds = %26
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, -608169982
  br label %49

49:                                               ; preds = %45, %26
  %50 = phi i1 [ true, %26 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @GdipGetImageGraphicsContext(i32* %55, i32** %3)
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* @Ok, align 4
  %58 = load i32, i32* %1, align 4
  %59 = call i32 @expect(i32 %57, i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @GdipGetDC(i32* %60, i32* %5)
  store i32 %61, i32* %1, align 4
  %62 = load i32, i32* @Ok, align 4
  %63 = load i32, i32* %1, align 4
  %64 = call i32 @expect(i32 %62, i32 %63)
  %65 = load i32, i32* %1, align 4
  %66 = load i32, i32* @Ok, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %49
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @GdipDeleteGraphics(i32* %69)
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @GdipDisposeImage(i32* %71)
  br label %145

73:                                               ; preds = %49
  %74 = call i32 @CreateSolidBrush(i32 255)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @SelectObject(i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @GdiComment(i32 %78, i32 8, i32* bitcast ([9 x i8]* @.str.1 to i32*))
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @SelectObject(i32 %80, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @DeleteObject(i32 %83)
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @GdipReleaseDC(i32* %85, i32 %86)
  store i32 %87, i32* %1, align 4
  %88 = load i32, i32* @Ok, align 4
  %89 = load i32, i32* %1, align 4
  %90 = call i32 @expect(i32 %88, i32 %89)
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @GdipDeleteGraphics(i32* %91)
  store i32 %92, i32* %1, align 4
  %93 = load i32, i32* @Ok, align 4
  %94 = load i32, i32* %1, align 4
  %95 = call i32 @expect(i32 %93, i32 %94)
  %96 = load i32*, i32** %2, align 8
  %97 = load i32, i32* @gditransform_records, align 4
  %98 = load i32, i32* @UnitPixel, align 4
  %99 = call i32 @check_metafile(i32* %96, i32 %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_13__* getelementptr inbounds ([3 x %struct.TYPE_13__], [3 x %struct.TYPE_13__]* @test_gditransform.dst_points, i64 0, i64 0), %struct.TYPE_12__* @test_gditransform.frame, i32 %98)
  %100 = call i32 @sync_metafile(i32** %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32, i32* @PixelFormat32bppARGB, align 4
  %102 = call i32 @GdipCreateBitmapFromScan0(i32 100, i32 100, i32 0, i32 %101, i32* null, i32** %10)
  store i32 %102, i32* %1, align 4
  %103 = load i32, i32* @Ok, align 4
  %104 = load i32, i32* %1, align 4
  %105 = call i32 @expect(i32 %103, i32 %104)
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @GdipGetImageGraphicsContext(i32* %106, i32** %3)
  store i32 %107, i32* %1, align 4
  %108 = load i32, i32* @Ok, align 4
  %109 = load i32, i32* %1, align 4
  %110 = call i32 @expect(i32 %108, i32 %109)
  %111 = load i32*, i32** %2, align 8
  %112 = load i32*, i32** %3, align 8
  %113 = load i32, i32* @gditransform_records, align 4
  %114 = load i32, i32* @UnitPixel, align 4
  %115 = call i32 @play_metafile(i32* %111, i32* %112, i32 %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_13__* getelementptr inbounds ([3 x %struct.TYPE_13__], [3 x %struct.TYPE_13__]* @test_gditransform.dst_points, i64 0, i64 0), %struct.TYPE_12__* @test_gditransform.frame, i32 %114)
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @GdipBitmapGetPixel(i32* %116, i32 10, i32 10, i32* %11)
  store i32 %117, i32* %1, align 4
  %118 = load i32, i32* @Ok, align 4
  %119 = load i32, i32* %1, align 4
  %120 = call i32 @expect(i32 %118, i32 %119)
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @expect(i32 -65536, i32 %121)
  %123 = load i32*, i32** %10, align 8
  %124 = call i32 @GdipBitmapGetPixel(i32* %123, i32 30, i32 30, i32* %11)
  store i32 %124, i32* %1, align 4
  %125 = load i32, i32* @Ok, align 4
  %126 = load i32, i32* %1, align 4
  %127 = call i32 @expect(i32 %125, i32 %126)
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @expect(i32 0, i32 %128)
  %130 = load i32*, i32** %3, align 8
  %131 = call i32 @GdipDeleteGraphics(i32* %130)
  store i32 %131, i32* %1, align 4
  %132 = load i32, i32* @Ok, align 4
  %133 = load i32, i32* %1, align 4
  %134 = call i32 @expect(i32 %132, i32 %133)
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @GdipDisposeImage(i32* %135)
  store i32 %136, i32* %1, align 4
  %137 = load i32, i32* @Ok, align 4
  %138 = load i32, i32* %1, align 4
  %139 = call i32 @expect(i32 %137, i32 %138)
  %140 = load i32*, i32** %2, align 8
  %141 = call i32 @GdipDisposeImage(i32* %140)
  store i32 %141, i32* %1, align 4
  %142 = load i32, i32* @Ok, align 4
  %143 = load i32, i32* %1, align 4
  %144 = call i32 @expect(i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %73, %68, %25
  ret void
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @GdipRecordMetafile(i32, i32, %struct.TYPE_12__*, i32, i8*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @GdipGetHemfFromMetafile(i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @GdipGetMetafileHeaderFromMetafile(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GdipGetImageGraphicsContext(i32*, i32**) #1

declare dso_local i32 @GdipGetDC(i32*, i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

declare dso_local i32 @CreateSolidBrush(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @GdiComment(i32, i32, i32*) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @GdipReleaseDC(i32*, i32) #1

declare dso_local i32 @check_metafile(i32*, i32, i8*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @sync_metafile(i32**, i8*) #1

declare dso_local i32 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @play_metafile(i32*, i32*, i32, i8*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @GdipBitmapGetPixel(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

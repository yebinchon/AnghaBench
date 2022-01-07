; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_drawimage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_drawimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { double, double }
%struct.TYPE_28__ = type { double, double, double, double }
%struct.TYPE_19__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_26__ = type { double, double, double, double, double }
%struct.TYPE_25__ = type { double, double, double, double, double }
%struct.TYPE_24__ = type { double, double, double, double, double }
%struct.TYPE_23__ = type { double, double, double, double, double }
%struct.TYPE_22__ = type { double, double, double, double, double }
%struct.TYPE_20__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i32 }

@test_drawimage.description = internal constant [9 x i8] c"winetest\00", align 1
@test_drawimage.dst_points = internal constant [3 x %struct.TYPE_29__] [%struct.TYPE_29__ { double 1.000000e+01, double 1.000000e+01 }, %struct.TYPE_29__ { double 8.500000e+01, double 1.500000e+01 }, %struct.TYPE_29__ { double 1.000000e+01, double 8.000000e+01 }], align 16
@test_drawimage.frame = internal constant %struct.TYPE_28__ { double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 1.000000e+02 }, align 8
@EmfTypeEmfPlusOnly = common dso_local global i32 0, align 4
@MetafileFrameUnitPixel = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i32 0, align 4
@ColorAdjustTypeDefault = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ColorMatrixFlagsDefault = common dso_local global i32 0, align 4
@UnitPixel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"draw_image_bitmap.emf\00", align 1
@draw_image_bitmap_records = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"draw image bitmap\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"draw_image_metafile.emf\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"gdiplus.dll\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"GdipConvertToEmfPlus\00", align 1
@draw_image_metafile_records = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"draw image metafile\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"draw image metafile records tests skipped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_drawimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_drawimage() #0 {
  %1 = alloca %struct.TYPE_19__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__, align 4
  %8 = alloca [400 x %struct.TYPE_20__], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_19__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 200, i1 false)
  %12 = bitcast i8* %11 to %struct.TYPE_19__*
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  store double 2.000000e+00, double* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 1
  store double 1.000000e+00, double* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 2
  store double 1.000000e+00, double* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 3
  store double 1.000000e+00, double* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 4
  store double 1.000000e+00, double* %23, align 8
  %24 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @EmfTypeEmfPlusOnly, align 4
  %27 = load i32, i32* @MetafileFrameUnitPixel, align 4
  %28 = call i32 @GdipRecordMetafile(i32 %25, i32 %26, %struct.TYPE_28__* @test_drawimage.frame, i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_drawimage.description, i64 0, i64 0), i32** %3)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @Ok, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @expect(i32 %29, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @GdipGetImageGraphicsContext(i32* %32, i32** %4)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @Ok, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @expect(i32 %34, i32 %35)
  %37 = call i32 @memset(%struct.TYPE_20__* %7, i32 0, i32 24)
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 0
  store i32 4, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 1
  store i32 10, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 2
  store i32 10, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 3
  store i32 1, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 4
  store i32 32, i32* %47, align 4
  %48 = load i32, i32* @BI_RGB, align 4
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds [400 x %struct.TYPE_20__], [400 x %struct.TYPE_20__]* %8, i64 0, i64 0
  %52 = call i32 @memset(%struct.TYPE_20__* %51, i32 128, i32 9600)
  %53 = getelementptr inbounds [400 x %struct.TYPE_20__], [400 x %struct.TYPE_20__]* %8, i64 0, i64 0
  %54 = call i32 @GdipCreateBitmapFromGdiDib(%struct.TYPE_20__* %7, %struct.TYPE_20__* %53, i32** %9)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @Ok, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @expect(i32 %55, i32 %56)
  %58 = call i32 @GdipCreateImageAttributes(i32** %2)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* @Ok, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @expect(i32 %59, i32 %60)
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* @ColorAdjustTypeDefault, align 4
  %64 = load i32, i32* @TRUE, align 4
  %65 = load i32, i32* @ColorMatrixFlagsDefault, align 4
  %66 = call i32 @GdipSetImageAttributesColorMatrix(i32* %62, i32 %63, i32 %64, %struct.TYPE_19__* %1, i32* null, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* @Ok, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @expect(i32 %67, i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* @UnitPixel, align 4
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @GdipDrawImagePointsRect(i32* %70, i32* %71, %struct.TYPE_29__* getelementptr inbounds ([3 x %struct.TYPE_29__], [3 x %struct.TYPE_29__]* @test_drawimage.dst_points, i64 0, i64 0), i32 3, double 0.000000e+00, double 0.000000e+00, double 1.000000e+01, double 1.000000e+01, i32 %72, i32* %73, i32* null, i32* null)
  store i32 %74, i32* %6, align 4
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @GdipDisposeImageAttributes(i32* %75)
  %77 = load i32, i32* @Ok, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @expect(i32 %77, i32 %78)
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @GdipDisposeImage(i32* %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @GdipDeleteGraphics(i32* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* @Ok, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @expect(i32 %84, i32 %85)
  %87 = call i32 @sync_metafile(i32** %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @GdipGetHemfFromMetafile(i32* %88, i32* %5)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* @Ok, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @expect(i32 %90, i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @draw_image_bitmap_records, align 4
  %95 = call i32 @check_emfplus(i32 %93, i32 %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @EmfTypeEmfPlusOnly, align 4
  %98 = load i32, i32* @MetafileFrameUnitPixel, align 4
  %99 = call i32 @GdipRecordMetafile(i32 %96, i32 %97, %struct.TYPE_28__* @test_drawimage.frame, i32 %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_drawimage.description, i64 0, i64 0), i32** %3)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* @Ok, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @expect(i32 %100, i32 %101)
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @GdipGetImageGraphicsContext(i32* %103, i32** %4)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* @Ok, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @expect(i32 %105, i32 %106)
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @TRUE, align 4
  %110 = call i32 @GdipCreateMetafileFromEmf(i32 %108, i32 %109, i32** %9)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* @Ok, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @expect(i32 %111, i32 %112)
  %114 = load i32*, i32** %4, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* @UnitPixel, align 4
  %117 = call i32 @GdipDrawImagePointsRect(i32* %114, i32* %115, %struct.TYPE_29__* getelementptr inbounds ([3 x %struct.TYPE_29__], [3 x %struct.TYPE_29__]* @test_drawimage.dst_points, i64 0, i64 0), i32 3, double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 1.000000e+02, i32 %116, i32* null, i32* null, i32* null)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* @Ok, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @expect(i32 %118, i32 %119)
  %121 = load i32*, i32** %9, align 8
  %122 = call i32 @GdipDisposeImage(i32* %121)
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @GdipDeleteGraphics(i32* %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* @Ok, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @expect(i32 %125, i32 %126)
  %128 = call i32 @sync_metafile(i32** %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @GdipGetHemfFromMetafile(i32* %129, i32* %5)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* @Ok, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @expect(i32 %131, i32 %132)
  %134 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %135 = call i64 @GetProcAddress(i32 %134, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %0
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @draw_image_metafile_records, align 4
  %140 = call i32 @check_emfplus(i32 %138, i32 %139, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %143

141:                                              ; preds = %0
  %142 = call i32 @win_skip(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %137
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @DeleteEnhMetaFile(i32 %144)
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @DeleteDC(i32 %146)
  %148 = load i32*, i32** %3, align 8
  %149 = call i32 @GdipDisposeImage(i32* %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* @Ok, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @expect(i32 %150, i32 %151)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CreateCompatibleDC(i32) #2

declare dso_local i32 @GdipRecordMetafile(i32, i32, %struct.TYPE_28__*, i32, i8*, i32**) #2

declare dso_local i32 @expect(i32, i32) #2

declare dso_local i32 @GdipGetImageGraphicsContext(i32*, i32**) #2

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #2

declare dso_local i32 @GdipCreateBitmapFromGdiDib(%struct.TYPE_20__*, %struct.TYPE_20__*, i32**) #2

declare dso_local i32 @GdipCreateImageAttributes(i32**) #2

declare dso_local i32 @GdipSetImageAttributesColorMatrix(i32*, i32, i32, %struct.TYPE_19__*, i32*, i32) #2

declare dso_local i32 @GdipDrawImagePointsRect(i32*, i32*, %struct.TYPE_29__*, i32, double, double, double, double, i32, i32*, i32*, i32*) #2

declare dso_local i32 @GdipDisposeImageAttributes(i32*) #2

declare dso_local i32 @GdipDisposeImage(i32*) #2

declare dso_local i32 @GdipDeleteGraphics(i32*) #2

declare dso_local i32 @sync_metafile(i32**, i8*) #2

declare dso_local i32 @GdipGetHemfFromMetafile(i32*, i32*) #2

declare dso_local i32 @check_emfplus(i32, i32, i8*) #2

declare dso_local i32 @GdipCreateMetafileFromEmf(i32, i32, i32**) #2

declare dso_local i64 @GetProcAddress(i32, i8*) #2

declare dso_local i32 @GetModuleHandleA(i8*) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @DeleteEnhMetaFile(i32) #2

declare dso_local i32 @DeleteDC(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_clipping.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_clipping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { double, double, double, double, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { double, double }

@test_clipping.frame = internal constant %struct.TYPE_10__ { double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 1.000000e+02, i32 0, i32 0, i32 0, i32 0 }, align 8
@test_clipping.dst_points = internal constant [3 x %struct.TYPE_11__] [%struct.TYPE_11__ zeroinitializer, %struct.TYPE_11__ { double 1.000000e+02, double 0.000000e+00 }, %struct.TYPE_11__ { double 0.000000e+00, double 1.000000e+02 }], align 16
@test_clipping.description = internal constant [9 x i8] c"winetest\00", align 1
@EmfTypeEmfPlusOnly = common dso_local global i32 0, align 4
@MetafileFrameUnitPixel = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"rect.X = %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"rect.Y = %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"rect.Width = %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"rect.Height = %f\0A\00", align 1
@CombineModeReplace = common dso_local global i32 0, align 4
@CombineModeXor = common dso_local global i32 0, align 4
@CombineModeIntersect = common dso_local global i32 0, align 4
@clipping_records = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"clipping metafile\00", align 1
@UnitPixel = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"clipping.emf\00", align 1
@PixelFormat32bppARGB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"clipping playback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_clipping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_clipping() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @EmfTypeEmfPlusOnly, align 4
  %14 = load i32, i32* @MetafileFrameUnitPixel, align 4
  %15 = call i32 @GdipRecordMetafile(i32 %12, i32 %13, %struct.TYPE_10__* @test_clipping.frame, i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_clipping.description, i64 0, i64 0), i32** %2)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* @Ok, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @expect(i32 %16, i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @DeleteDC(i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @Ok, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %0
  br label %227

25:                                               ; preds = %0
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @GdipGetImageGraphicsContext(i32* %26, i32** %3)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* @Ok, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @expect(i32 %28, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @GdipSaveGraphics(i32* %31, i32* %10)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* @Ok, align 4
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @expect(i32 %33, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @GdipGetVisibleClipBounds(i32* %36, %struct.TYPE_10__* %7)
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* @Ok, align 4
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @expect(i32 %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, -4194304
  %44 = zext i1 %43 to i32
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, -4194304
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 8388608
  %58 = zext i1 %57 to i32
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 8388608
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* @CombineModeReplace, align 4
  %71 = call i32 @GdipSetClipRect(i32* %69, i32 30, i32 30, i32 10, i32 10, i32 %70)
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* @Ok, align 4
  %73 = load i32, i32* %1, align 4
  %74 = call i32 @expect(i32 %72, i32 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @GdipGetVisibleClipBounds(i32* %75, %struct.TYPE_10__* %7)
  store i32 %76, i32* %1, align 4
  %77 = load i32, i32* @Ok, align 4
  %78 = load i32, i32* %1, align 4
  %79 = call i32 @expect(i32 %77, i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 30
  %83 = zext i1 %82 to i32
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 30
  %90 = zext i1 %89 to i32
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 10
  %97 = zext i1 %96 to i32
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 10
  %104 = zext i1 %103 to i32
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = call i32 @GdipCreateSolidFill(i32 -16777216, i32** %6)
  store i32 %108, i32* %1, align 4
  %109 = load i32, i32* @Ok, align 4
  %110 = load i32, i32* %1, align 4
  %111 = call i32 @expect(i32 %109, i32 %110)
  %112 = load i32*, i32** %3, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @GdipFillRectangle(i32* %112, i32* %113, i32 0, i32 0, i32 100, i32 100)
  store i32 %114, i32* %1, align 4
  %115 = load i32, i32* @Ok, align 4
  %116 = load i32, i32* %1, align 4
  %117 = call i32 @expect(i32 %115, i32 %116)
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @GdipDeleteBrush(i32* %118)
  store i32 %119, i32* %1, align 4
  %120 = load i32, i32* @Ok, align 4
  %121 = load i32, i32* %1, align 4
  %122 = call i32 @expect(i32 %120, i32 %121)
  %123 = load i32*, i32** %3, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @GdipRestoreGraphics(i32* %123, i32 %124)
  store i32 %125, i32* %1, align 4
  %126 = load i32, i32* @Ok, align 4
  %127 = load i32, i32* %1, align 4
  %128 = call i32 @expect(i32 %126, i32 %127)
  %129 = load i32*, i32** %3, align 8
  %130 = load i32, i32* @CombineModeXor, align 4
  %131 = call i32 @GdipSetClipRect(i32* %129, i32 30, i32 30, i32 10, i32 10, i32 %130)
  store i32 %131, i32* %1, align 4
  %132 = load i32, i32* @Ok, align 4
  %133 = load i32, i32* %1, align 4
  %134 = call i32 @expect(i32 %132, i32 %133)
  %135 = call i32 @GdipCreateSolidFill(i32 -16776961, i32** %6)
  store i32 %135, i32* %1, align 4
  %136 = load i32, i32* @Ok, align 4
  %137 = load i32, i32* %1, align 4
  %138 = call i32 @expect(i32 %136, i32 %137)
  %139 = load i32*, i32** %3, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @GdipFillRectangle(i32* %139, i32* %140, i32 30, i32 30, i32 20, i32 10)
  store i32 %141, i32* %1, align 4
  %142 = load i32, i32* @Ok, align 4
  %143 = load i32, i32* %1, align 4
  %144 = call i32 @expect(i32 %142, i32 %143)
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 @GdipDeleteBrush(i32* %145)
  store i32 %146, i32* %1, align 4
  %147 = load i32, i32* @Ok, align 4
  %148 = load i32, i32* %1, align 4
  %149 = call i32 @expect(i32 %147, i32 %148)
  %150 = call i32 @GdipCreateRegionRect(%struct.TYPE_10__* %7, i32** %5)
  store i32 %150, i32* %1, align 4
  %151 = load i32, i32* @Ok, align 4
  %152 = load i32, i32* %1, align 4
  %153 = call i32 @expect(i32 %151, i32 %152)
  %154 = load i32*, i32** %3, align 8
  %155 = load i32*, i32** %5, align 8
  %156 = load i32, i32* @CombineModeIntersect, align 4
  %157 = call i32 @GdipSetClipRegion(i32* %154, i32* %155, i32 %156)
  store i32 %157, i32* %1, align 4
  %158 = load i32, i32* @Ok, align 4
  %159 = load i32, i32* %1, align 4
  %160 = call i32 @expect(i32 %158, i32 %159)
  %161 = load i32*, i32** %5, align 8
  %162 = call i32 @GdipDeleteRegion(i32* %161)
  store i32 %162, i32* %1, align 4
  %163 = load i32, i32* @Ok, align 4
  %164 = load i32, i32* %1, align 4
  %165 = call i32 @expect(i32 %163, i32 %164)
  %166 = load i32*, i32** %3, align 8
  %167 = call i32 @GdipDeleteGraphics(i32* %166)
  store i32 %167, i32* %1, align 4
  %168 = load i32, i32* @Ok, align 4
  %169 = load i32, i32* %1, align 4
  %170 = call i32 @expect(i32 %168, i32 %169)
  %171 = load i32*, i32** %2, align 8
  %172 = load i32, i32* @clipping_records, align 4
  %173 = load i32, i32* @UnitPixel, align 4
  %174 = call i32 @check_metafile(i32* %171, i32 %172, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_11__* getelementptr inbounds ([3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* @test_clipping.dst_points, i64 0, i64 0), %struct.TYPE_10__* @test_clipping.frame, i32 %173)
  %175 = call i32 @sync_metafile(i32** %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %176 = load i32, i32* @PixelFormat32bppARGB, align 4
  %177 = call i32 @GdipCreateBitmapFromScan0(i32 100, i32 100, i32 0, i32 %176, i32* null, i32** %4)
  store i32 %177, i32* %1, align 4
  %178 = load i32, i32* @Ok, align 4
  %179 = load i32, i32* %1, align 4
  %180 = call i32 @expect(i32 %178, i32 %179)
  %181 = load i32*, i32** %4, align 8
  %182 = call i32 @GdipGetImageGraphicsContext(i32* %181, i32** %3)
  store i32 %182, i32* %1, align 4
  %183 = load i32, i32* @Ok, align 4
  %184 = load i32, i32* %1, align 4
  %185 = call i32 @expect(i32 %183, i32 %184)
  %186 = load i32*, i32** %2, align 8
  %187 = load i32*, i32** %3, align 8
  %188 = load i32, i32* @clipping_records, align 4
  %189 = load i32, i32* @UnitPixel, align 4
  %190 = call i32 @play_metafile(i32* %186, i32* %187, i32 %188, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_11__* getelementptr inbounds ([3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* @test_clipping.dst_points, i64 0, i64 0), %struct.TYPE_10__* @test_clipping.frame, i32 %189)
  %191 = load i32*, i32** %4, align 8
  %192 = call i32 @GdipBitmapGetPixel(i32* %191, i32 80, i32 80, i32* %8)
  store i32 %192, i32* %1, align 4
  %193 = load i32, i32* @Ok, align 4
  %194 = load i32, i32* %1, align 4
  %195 = call i32 @expect(i32 %193, i32 %194)
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @expect(i32 0, i32 %196)
  %198 = load i32*, i32** %4, align 8
  %199 = call i32 @GdipBitmapGetPixel(i32* %198, i32 35, i32 35, i32* %8)
  store i32 %199, i32* %1, align 4
  %200 = load i32, i32* @Ok, align 4
  %201 = load i32, i32* %1, align 4
  %202 = call i32 @expect(i32 %200, i32 %201)
  %203 = load i32, i32* %8, align 4
  %204 = call i32 @expect(i32 -16777216, i32 %203)
  %205 = load i32*, i32** %4, align 8
  %206 = call i32 @GdipBitmapGetPixel(i32* %205, i32 45, i32 35, i32* %8)
  store i32 %206, i32* %1, align 4
  %207 = load i32, i32* @Ok, align 4
  %208 = load i32, i32* %1, align 4
  %209 = call i32 @expect(i32 %207, i32 %208)
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @expect(i32 -16776961, i32 %210)
  %212 = load i32*, i32** %3, align 8
  %213 = call i32 @GdipDeleteGraphics(i32* %212)
  store i32 %213, i32* %1, align 4
  %214 = load i32, i32* @Ok, align 4
  %215 = load i32, i32* %1, align 4
  %216 = call i32 @expect(i32 %214, i32 %215)
  %217 = load i32*, i32** %4, align 8
  %218 = call i32 @GdipDisposeImage(i32* %217)
  store i32 %218, i32* %1, align 4
  %219 = load i32, i32* @Ok, align 4
  %220 = load i32, i32* %1, align 4
  %221 = call i32 @expect(i32 %219, i32 %220)
  %222 = load i32*, i32** %2, align 8
  %223 = call i32 @GdipDisposeImage(i32* %222)
  store i32 %223, i32* %1, align 4
  %224 = load i32, i32* @Ok, align 4
  %225 = load i32, i32* %1, align 4
  %226 = call i32 @expect(i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %25, %24
  ret void
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @GdipRecordMetafile(i32, i32, %struct.TYPE_10__*, i32, i8*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @GdipGetImageGraphicsContext(i32*, i32**) #1

declare dso_local i32 @GdipSaveGraphics(i32*, i32*) #1

declare dso_local i32 @GdipGetVisibleClipBounds(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GdipSetClipRect(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GdipCreateSolidFill(i32, i32**) #1

declare dso_local i32 @GdipFillRectangle(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @GdipDeleteBrush(i32*) #1

declare dso_local i32 @GdipRestoreGraphics(i32*, i32) #1

declare dso_local i32 @GdipCreateRegionRect(%struct.TYPE_10__*, i32**) #1

declare dso_local i32 @GdipSetClipRegion(i32*, i32*, i32) #1

declare dso_local i32 @GdipDeleteRegion(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @check_metafile(i32*, i32, i8*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @sync_metafile(i32**, i8*) #1

declare dso_local i32 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @play_metafile(i32*, i32*, i32, i8*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @GdipBitmapGetPixel(i32*, i32, i32, i32*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

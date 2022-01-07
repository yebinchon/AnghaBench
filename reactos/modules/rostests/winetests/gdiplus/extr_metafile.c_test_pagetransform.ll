; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_pagetransform.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_pagetransform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double, double, double, double }
%struct.TYPE_9__ = type { double, double }

@test_pagetransform.frame = internal constant %struct.TYPE_8__ { double 0.000000e+00, double 0.000000e+00, double 5.000000e+00, double 5.000000e+00 }, align 8
@test_pagetransform.dst_points = internal constant [3 x %struct.TYPE_9__] [%struct.TYPE_9__ zeroinitializer, %struct.TYPE_9__ { double 1.000000e+02, double 0.000000e+00 }, %struct.TYPE_9__ { double 0.000000e+00, double 1.000000e+02 }], align 16
@test_pagetransform.description = internal constant [9 x i8] c"winetest\00", align 1
@EmfTypeEmfPlusOnly = common dso_local global i32 0, align 4
@MetafileFrameUnitInch = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@UnitDisplay = common dso_local global i32 0, align 4
@UnitPixel = common dso_local global i32 0, align 4
@UnitInch = common dso_local global i32 0, align 4
@pagetransform_records = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"pagetransform metafile\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"pagetransform.emf\00", align 1
@PixelFormat32bppARGB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"pagetransform playback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_pagetransform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pagetransform() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @EmfTypeEmfPlusOnly, align 4
  %17 = load i32, i32* @MetafileFrameUnitInch, align 4
  %18 = call i32 @GdipRecordMetafile(i32 %15, i32 %16, %struct.TYPE_8__* @test_pagetransform.frame, i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_pagetransform.description, i64 0, i64 0), i32** %2)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @Ok, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @expect(i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @DeleteDC(i32 %22)
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @Ok, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %0
  br label %282

28:                                               ; preds = %0
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @GdipGetImageHorizontalResolution(i32* %29, i32* %10)
  store i32 %30, i32* %1, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @GdipGetImageVerticalResolution(i32* %31, i32* %11)
  store i32 %32, i32* %1, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @GdipGetImageWidth(i32* %33, i32* %12)
  store i32 %34, i32* %1, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @GdipGetImageHeight(i32* %35, i32* %13)
  store i32 %36, i32* %1, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @GdipGetImageGraphicsContext(i32* %37, i32** %3)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* @Ok, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @expect(i32 %39, i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @GdipGetPageUnit(i32* %42, i32* %8)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* @Ok, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @expect(i32 %44, i32 %45)
  %47 = load i32, i32* @UnitDisplay, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @expect(i32 %47, i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @GdipGetPageScale(i32* %50, i32* %9)
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* @Ok, align 4
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @expect(i32 %52, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @expectf(double 1.000000e+00, i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @GdipGetDpiX(i32* %57, i32* %10)
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* @Ok, align 4
  %60 = load i32, i32* %1, align 4
  %61 = call i32 @expect(i32 %59, i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @expectf(double 9.600000e+01, i32 %62)
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @GdipGetDpiY(i32* %64, i32* %11)
  store i32 %65, i32* %1, align 4
  %66 = load i32, i32* @Ok, align 4
  %67 = load i32, i32* %1, align 4
  %68 = call i32 @expect(i32 %66, i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @expectf(double 9.600000e+01, i32 %69)
  %71 = call i32 @GdipCreateSolidFill(i32 -16776961, i32** %7)
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* @Ok, align 4
  %73 = load i32, i32* %1, align 4
  %74 = call i32 @expect(i32 %72, i32 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @GdipFillRectangleI(i32* %75, i32* %76, i32 1, i32 2, i32 1, i32 1)
  store i32 %77, i32* %1, align 4
  %78 = load i32, i32* @Ok, align 4
  %79 = load i32, i32* %1, align 4
  %80 = call i32 @expect(i32 %78, i32 %79)
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @GdipDeleteBrush(i32* %81)
  store i32 %82, i32* %1, align 4
  %83 = load i32, i32* @Ok, align 4
  %84 = load i32, i32* %1, align 4
  %85 = call i32 @expect(i32 %83, i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* @UnitPixel, align 4
  %88 = call i32 @GdipSetPageUnit(i32* %86, i32 %87)
  store i32 %88, i32* %1, align 4
  %89 = load i32, i32* @Ok, align 4
  %90 = load i32, i32* %1, align 4
  %91 = call i32 @expect(i32 %89, i32 %90)
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @GdipGetPageUnit(i32* %92, i32* %8)
  store i32 %93, i32* %1, align 4
  %94 = load i32, i32* @Ok, align 4
  %95 = load i32, i32* %1, align 4
  %96 = call i32 @expect(i32 %94, i32 %95)
  %97 = load i32, i32* @UnitPixel, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @expect(i32 %97, i32 %98)
  %100 = call i32 @GdipCreateSolidFill(i32 -16711936, i32** %7)
  store i32 %100, i32* %1, align 4
  %101 = load i32, i32* @Ok, align 4
  %102 = load i32, i32* %1, align 4
  %103 = call i32 @expect(i32 %101, i32 %102)
  %104 = load i32*, i32** %3, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @GdipFillRectangleI(i32* %104, i32* %105, i32 0, i32 1, i32 1, i32 1)
  store i32 %106, i32* %1, align 4
  %107 = load i32, i32* @Ok, align 4
  %108 = load i32, i32* %1, align 4
  %109 = call i32 @expect(i32 %107, i32 %108)
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @GdipDeleteBrush(i32* %110)
  store i32 %111, i32* %1, align 4
  %112 = load i32, i32* @Ok, align 4
  %113 = load i32, i32* %1, align 4
  %114 = call i32 @expect(i32 %112, i32 %113)
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @GdipSetPageScale(i32* %115, double 3.000000e+00)
  store i32 %116, i32* %1, align 4
  %117 = load i32, i32* @Ok, align 4
  %118 = load i32, i32* %1, align 4
  %119 = call i32 @expect(i32 %117, i32 %118)
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @GdipGetPageScale(i32* %120, i32* %9)
  store i32 %121, i32* %1, align 4
  %122 = load i32, i32* @Ok, align 4
  %123 = load i32, i32* %1, align 4
  %124 = call i32 @expect(i32 %122, i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @expectf(double 3.000000e+00, i32 %125)
  %127 = call i32 @GdipCreateSolidFill(i32 -16711681, i32** %7)
  store i32 %127, i32* %1, align 4
  %128 = load i32, i32* @Ok, align 4
  %129 = load i32, i32* %1, align 4
  %130 = call i32 @expect(i32 %128, i32 %129)
  %131 = load i32*, i32** %3, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 @GdipFillRectangleI(i32* %131, i32* %132, i32 0, i32 1, i32 2, i32 2)
  store i32 %133, i32* %1, align 4
  %134 = load i32, i32* @Ok, align 4
  %135 = load i32, i32* %1, align 4
  %136 = call i32 @expect(i32 %134, i32 %135)
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @GdipDeleteBrush(i32* %137)
  store i32 %138, i32* %1, align 4
  %139 = load i32, i32* @Ok, align 4
  %140 = load i32, i32* %1, align 4
  %141 = call i32 @expect(i32 %139, i32 %140)
  %142 = load i32*, i32** %3, align 8
  %143 = load i32, i32* @UnitInch, align 4
  %144 = call i32 @GdipSetPageUnit(i32* %142, i32 %143)
  store i32 %144, i32* %1, align 4
  %145 = load i32, i32* @Ok, align 4
  %146 = load i32, i32* %1, align 4
  %147 = call i32 @expect(i32 %145, i32 %146)
  %148 = load i32*, i32** %3, align 8
  %149 = call i32 @GdipGetPageUnit(i32* %148, i32* %8)
  store i32 %149, i32* %1, align 4
  %150 = load i32, i32* @Ok, align 4
  %151 = load i32, i32* %1, align 4
  %152 = call i32 @expect(i32 %150, i32 %151)
  %153 = load i32, i32* @UnitInch, align 4
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @expect(i32 %153, i32 %154)
  %156 = call i32 @GdipCreateSolidFill(i32 -65536, i32** %7)
  store i32 %156, i32* %1, align 4
  %157 = load i32, i32* @Ok, align 4
  %158 = load i32, i32* %1, align 4
  %159 = call i32 @expect(i32 %157, i32 %158)
  %160 = load i32*, i32** %3, align 8
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @GdipFillRectangle(i32* %160, i32* %161, i32 0, i32 0, i32 1, i32 1)
  store i32 %162, i32* %1, align 4
  %163 = load i32, i32* @Ok, align 4
  %164 = load i32, i32* %1, align 4
  %165 = call i32 @expect(i32 %163, i32 %164)
  %166 = load i32*, i32** %7, align 8
  %167 = call i32 @GdipDeleteBrush(i32* %166)
  store i32 %167, i32* %1, align 4
  %168 = load i32, i32* @Ok, align 4
  %169 = load i32, i32* %1, align 4
  %170 = call i32 @expect(i32 %168, i32 %169)
  %171 = load i32*, i32** %3, align 8
  %172 = load i32, i32* @UnitDisplay, align 4
  %173 = call i32 @GdipSetPageUnit(i32* %171, i32 %172)
  store i32 %173, i32* %1, align 4
  %174 = load i32, i32* @Ok, align 4
  %175 = load i32, i32* %1, align 4
  %176 = call i32 @expect(i32 %174, i32 %175)
  %177 = load i32*, i32** %3, align 8
  %178 = call i32 @GdipGetPageUnit(i32* %177, i32* %8)
  store i32 %178, i32* %1, align 4
  %179 = load i32, i32* @Ok, align 4
  %180 = load i32, i32* %1, align 4
  %181 = call i32 @expect(i32 %179, i32 %180)
  %182 = load i32, i32* @UnitDisplay, align 4
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @expect(i32 %182, i32 %183)
  %185 = call i32 @GdipCreateSolidFill(i32 -65281, i32** %7)
  store i32 %185, i32* %1, align 4
  %186 = load i32, i32* @Ok, align 4
  %187 = load i32, i32* %1, align 4
  %188 = call i32 @expect(i32 %186, i32 %187)
  %189 = load i32*, i32** %3, align 8
  %190 = load i32*, i32** %7, align 8
  %191 = call i32 @GdipFillRectangle(i32* %189, i32* %190, i32 3, i32 3, i32 2, i32 2)
  store i32 %191, i32* %1, align 4
  %192 = load i32, i32* @Ok, align 4
  %193 = load i32, i32* %1, align 4
  %194 = call i32 @expect(i32 %192, i32 %193)
  %195 = load i32*, i32** %7, align 8
  %196 = call i32 @GdipDeleteBrush(i32* %195)
  store i32 %196, i32* %1, align 4
  %197 = load i32, i32* @Ok, align 4
  %198 = load i32, i32* %1, align 4
  %199 = call i32 @expect(i32 %197, i32 %198)
  %200 = load i32*, i32** %3, align 8
  %201 = call i32 @GdipDeleteGraphics(i32* %200)
  store i32 %201, i32* %1, align 4
  %202 = load i32, i32* @Ok, align 4
  %203 = load i32, i32* %1, align 4
  %204 = call i32 @expect(i32 %202, i32 %203)
  %205 = load i32*, i32** %2, align 8
  %206 = load i32, i32* @pagetransform_records, align 4
  %207 = load i32, i32* @UnitPixel, align 4
  %208 = call i32 @check_metafile(i32* %205, i32 %206, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* getelementptr inbounds ([3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* @test_pagetransform.dst_points, i64 0, i64 0), %struct.TYPE_8__* @test_pagetransform.frame, i32 %207)
  %209 = call i32 @sync_metafile(i32** %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %210 = load i32, i32* @PixelFormat32bppARGB, align 4
  %211 = call i32 @GdipCreateBitmapFromScan0(i32 100, i32 100, i32 0, i32 %210, i32* null, i32** %5)
  store i32 %211, i32* %1, align 4
  %212 = load i32, i32* @Ok, align 4
  %213 = load i32, i32* %1, align 4
  %214 = call i32 @expect(i32 %212, i32 %213)
  %215 = load i32*, i32** %5, align 8
  %216 = call i32 @GdipGetImageGraphicsContext(i32* %215, i32** %3)
  store i32 %216, i32* %1, align 4
  %217 = load i32, i32* @Ok, align 4
  %218 = load i32, i32* %1, align 4
  %219 = call i32 @expect(i32 %217, i32 %218)
  %220 = load i32*, i32** %2, align 8
  %221 = load i32*, i32** %3, align 8
  %222 = load i32, i32* @pagetransform_records, align 4
  %223 = load i32, i32* @UnitPixel, align 4
  %224 = call i32 @play_metafile(i32* %220, i32* %221, i32 %222, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* getelementptr inbounds ([3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* @test_pagetransform.dst_points, i64 0, i64 0), %struct.TYPE_8__* @test_pagetransform.frame, i32 %223)
  %225 = load i32*, i32** %5, align 8
  %226 = call i32 @GdipBitmapGetPixel(i32* %225, i32 50, i32 50, i32* %6)
  store i32 %226, i32* %1, align 4
  %227 = load i32, i32* @Ok, align 4
  %228 = load i32, i32* %1, align 4
  %229 = call i32 @expect(i32 %227, i32 %228)
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @expect(i32 0, i32 %230)
  %232 = load i32*, i32** %5, align 8
  %233 = call i32 @GdipBitmapGetPixel(i32* %232, i32 30, i32 50, i32* %6)
  store i32 %233, i32* %1, align 4
  %234 = load i32, i32* @Ok, align 4
  %235 = load i32, i32* %1, align 4
  %236 = call i32 @expect(i32 %234, i32 %235)
  %237 = load i32, i32* %6, align 4
  %238 = call i32 @expect(i32 -16776961, i32 %237)
  %239 = load i32*, i32** %5, align 8
  %240 = call i32 @GdipBitmapGetPixel(i32* %239, i32 10, i32 30, i32* %6)
  store i32 %240, i32* %1, align 4
  %241 = load i32, i32* @Ok, align 4
  %242 = load i32, i32* %1, align 4
  %243 = call i32 @expect(i32 %241, i32 %242)
  %244 = load i32, i32* %6, align 4
  %245 = call i32 @expect(i32 -16711936, i32 %244)
  %246 = load i32*, i32** %5, align 8
  %247 = call i32 @GdipBitmapGetPixel(i32* %246, i32 20, i32 80, i32* %6)
  store i32 %247, i32* %1, align 4
  %248 = load i32, i32* @Ok, align 4
  %249 = load i32, i32* %1, align 4
  %250 = call i32 @expect(i32 %248, i32 %249)
  %251 = load i32, i32* %6, align 4
  %252 = call i32 @expect(i32 -16711681, i32 %251)
  %253 = load i32*, i32** %5, align 8
  %254 = call i32 @GdipBitmapGetPixel(i32* %253, i32 80, i32 20, i32* %6)
  store i32 %254, i32* %1, align 4
  %255 = load i32, i32* @Ok, align 4
  %256 = load i32, i32* %1, align 4
  %257 = call i32 @expect(i32 %255, i32 %256)
  %258 = load i32, i32* %6, align 4
  %259 = call i32 @expect(i32 -65536, i32 %258)
  %260 = load i32*, i32** %5, align 8
  %261 = call i32 @GdipBitmapGetPixel(i32* %260, i32 80, i32 80, i32* %6)
  store i32 %261, i32* %1, align 4
  %262 = load i32, i32* @Ok, align 4
  %263 = load i32, i32* %1, align 4
  %264 = call i32 @expect(i32 %262, i32 %263)
  %265 = load i32, i32* %6, align 4
  %266 = call i32 @expect(i32 -65281, i32 %265)
  %267 = load i32*, i32** %3, align 8
  %268 = call i32 @GdipDeleteGraphics(i32* %267)
  store i32 %268, i32* %1, align 4
  %269 = load i32, i32* @Ok, align 4
  %270 = load i32, i32* %1, align 4
  %271 = call i32 @expect(i32 %269, i32 %270)
  %272 = load i32*, i32** %5, align 8
  %273 = call i32 @GdipDisposeImage(i32* %272)
  store i32 %273, i32* %1, align 4
  %274 = load i32, i32* @Ok, align 4
  %275 = load i32, i32* %1, align 4
  %276 = call i32 @expect(i32 %274, i32 %275)
  %277 = load i32*, i32** %2, align 8
  %278 = call i32 @GdipDisposeImage(i32* %277)
  store i32 %278, i32* %1, align 4
  %279 = load i32, i32* @Ok, align 4
  %280 = load i32, i32* %1, align 4
  %281 = call i32 @expect(i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %28, %27
  ret void
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @GdipRecordMetafile(i32, i32, %struct.TYPE_8__*, i32, i8*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @GdipGetImageHorizontalResolution(i32*, i32*) #1

declare dso_local i32 @GdipGetImageVerticalResolution(i32*, i32*) #1

declare dso_local i32 @GdipGetImageWidth(i32*, i32*) #1

declare dso_local i32 @GdipGetImageHeight(i32*, i32*) #1

declare dso_local i32 @GdipGetImageGraphicsContext(i32*, i32**) #1

declare dso_local i32 @GdipGetPageUnit(i32*, i32*) #1

declare dso_local i32 @GdipGetPageScale(i32*, i32*) #1

declare dso_local i32 @expectf(double, i32) #1

declare dso_local i32 @GdipGetDpiX(i32*, i32*) #1

declare dso_local i32 @GdipGetDpiY(i32*, i32*) #1

declare dso_local i32 @GdipCreateSolidFill(i32, i32**) #1

declare dso_local i32 @GdipFillRectangleI(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @GdipDeleteBrush(i32*) #1

declare dso_local i32 @GdipSetPageUnit(i32*, i32) #1

declare dso_local i32 @GdipSetPageScale(i32*, double) #1

declare dso_local i32 @GdipFillRectangle(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @check_metafile(i32*, i32, i8*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @sync_metafile(i32**, i8*) #1

declare dso_local i32 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @play_metafile(i32*, i32*, i32, i8*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @GdipBitmapGetPixel(i32*, i32, i32, i32*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

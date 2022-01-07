; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_transformpoints.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_transformpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, double }
%struct.TYPE_6__ = type { i32, i32 }

@hwnd = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@CoordinateSpacePage = common dso_local global i32 0, align 4
@CoordinateSpaceWorld = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@CoordinateSpaceDevice = common dso_local global i32 0, align 4
@MatrixOrderAppend = common dso_local global i32 0, align 4
@UnitPixel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_transformpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_transformpoints() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x %struct.TYPE_5__], align 16
  %5 = alloca [2 x %struct.TYPE_6__], align 16
  store i32* null, i32** %2, align 8
  %6 = load i32, i32* @hwnd, align 4
  %7 = call i32 @GetDC(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @GdipCreateFromHDC(i32 %8, i32** %2)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @Ok, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @expect(i32 %10, i32 %11)
  %13 = load i32, i32* @CoordinateSpacePage, align 4
  %14 = load i32, i32* @CoordinateSpaceWorld, align 4
  %15 = call i32 @GdipTransformPoints(i32* null, i32 %13, i32 %14, %struct.TYPE_5__* null, i32 0)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* @InvalidParameter, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @expect(i32 %16, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @CoordinateSpacePage, align 4
  %21 = load i32, i32* @CoordinateSpaceWorld, align 4
  %22 = call i32 @GdipTransformPoints(i32* %19, i32 %20, i32 %21, %struct.TYPE_5__* null, i32 0)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @InvalidParameter, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @expect(i32 %23, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @CoordinateSpacePage, align 4
  %28 = load i32, i32* @CoordinateSpaceWorld, align 4
  %29 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %30 = call i32 @GdipTransformPoints(i32* %26, i32 %27, i32 %28, %struct.TYPE_5__* %29, i32 0)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* @InvalidParameter, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @expect(i32 %31, i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @CoordinateSpacePage, align 4
  %36 = load i32, i32* @CoordinateSpaceWorld, align 4
  %37 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %38 = call i32 @GdipTransformPoints(i32* %34, i32 %35, i32 %36, %struct.TYPE_5__* %37, i32 -1)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* @InvalidParameter, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @expect(i32 %39, i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = load i32, i32* @CoordinateSpaceDevice, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* @CoordinateSpaceWorld, align 4
  %46 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %47 = call i32 @GdipTransformPoints(i32* %42, i32 %44, i32 %45, %struct.TYPE_5__* %46, i32 2)
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* @InvalidParameter, align 4
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @expect(i32 %48, i32 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* @CoordinateSpaceWorld, align 4
  %53 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %54 = call i32 @GdipTransformPoints(i32* %51, i32 -1, i32 %52, %struct.TYPE_5__* %53, i32 2)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* @InvalidParameter, align 4
  %56 = load i32, i32* %1, align 4
  %57 = call i32 @expect(i32 %55, i32 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* @CoordinateSpaceDevice, align 4
  %60 = load i32, i32* @CoordinateSpaceDevice, align 4
  %61 = add nsw i32 %60, 1
  %62 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %63 = call i32 @GdipTransformPoints(i32* %58, i32 %59, i32 %61, %struct.TYPE_5__* %62, i32 2)
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* @InvalidParameter, align 4
  %65 = load i32, i32* %1, align 4
  %66 = call i32 @expect(i32 %64, i32 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = load i32, i32* @CoordinateSpaceDevice, align 4
  %69 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %70 = call i32 @GdipTransformPoints(i32* %67, i32 %68, i32 -1, %struct.TYPE_5__* %69, i32 2)
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* @InvalidParameter, align 4
  %72 = load i32, i32* %1, align 4
  %73 = call i32 @expect(i32 %71, i32 %72)
  %74 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store double 1.000000e+00, double* %75, align 16
  %76 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store double 0.000000e+00, double* %77, align 8
  %78 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store double 0.000000e+00, double* %79, align 16
  %80 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store double 1.000000e+00, double* %81, align 8
  %82 = load i32*, i32** %2, align 8
  %83 = load i32, i32* @CoordinateSpaceDevice, align 4
  %84 = load i32, i32* @CoordinateSpaceWorld, align 4
  %85 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %86 = call i32 @GdipTransformPoints(i32* %82, i32 %83, i32 %84, %struct.TYPE_5__* %85, i32 2)
  store i32 %86, i32* %1, align 4
  %87 = load i32, i32* @Ok, align 4
  %88 = load i32, i32* %1, align 4
  %89 = call i32 @expect(i32 %87, i32 %88)
  %90 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load double, double* %91, align 16
  %93 = call i32 @expectf(double 1.000000e+00, double %92)
  %94 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load double, double* %95, align 8
  %97 = call i32 @expectf(double 0.000000e+00, double %96)
  %98 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load double, double* %99, align 16
  %101 = call i32 @expectf(double 0.000000e+00, double %100)
  %102 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load double, double* %103, align 8
  %105 = call i32 @expectf(double 1.000000e+00, double %104)
  %106 = load i32*, i32** %2, align 8
  %107 = load i32, i32* @MatrixOrderAppend, align 4
  %108 = call i32 @GdipTranslateWorldTransform(i32* %106, double 5.000000e+00, double 5.000000e+00, i32 %107)
  store i32 %108, i32* %1, align 4
  %109 = load i32, i32* @Ok, align 4
  %110 = load i32, i32* %1, align 4
  %111 = call i32 @expect(i32 %109, i32 %110)
  %112 = load i32*, i32** %2, align 8
  %113 = load i32, i32* @UnitPixel, align 4
  %114 = call i32 @GdipSetPageUnit(i32* %112, i32 %113)
  store i32 %114, i32* %1, align 4
  %115 = load i32, i32* @Ok, align 4
  %116 = load i32, i32* %1, align 4
  %117 = call i32 @expect(i32 %115, i32 %116)
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 @GdipSetPageScale(i32* %118, double 3.000000e+00)
  store i32 %119, i32* %1, align 4
  %120 = load i32, i32* @Ok, align 4
  %121 = load i32, i32* %1, align 4
  %122 = call i32 @expect(i32 %120, i32 %121)
  %123 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store double 1.000000e+00, double* %124, align 16
  %125 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store double 0.000000e+00, double* %126, align 8
  %127 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store double 0.000000e+00, double* %128, align 16
  %129 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  store double 1.000000e+00, double* %130, align 8
  %131 = load i32*, i32** %2, align 8
  %132 = load i32, i32* @CoordinateSpaceDevice, align 4
  %133 = load i32, i32* @CoordinateSpaceWorld, align 4
  %134 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %135 = call i32 @GdipTransformPoints(i32* %131, i32 %132, i32 %133, %struct.TYPE_5__* %134, i32 2)
  store i32 %135, i32* %1, align 4
  %136 = load i32, i32* @Ok, align 4
  %137 = load i32, i32* %1, align 4
  %138 = call i32 @expect(i32 %136, i32 %137)
  %139 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load double, double* %140, align 16
  %142 = call i32 @expectf(double 1.800000e+01, double %141)
  %143 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load double, double* %144, align 8
  %146 = call i32 @expectf(double 1.500000e+01, double %145)
  %147 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load double, double* %148, align 16
  %150 = call i32 @expectf(double 1.500000e+01, double %149)
  %151 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load double, double* %152, align 8
  %154 = call i32 @expectf(double 1.800000e+01, double %153)
  %155 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  store double 1.000000e+00, double* %156, align 16
  %157 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  store double 0.000000e+00, double* %158, align 8
  %159 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  store double 0.000000e+00, double* %160, align 16
  %161 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  store double 1.000000e+00, double* %162, align 8
  %163 = load i32*, i32** %2, align 8
  %164 = load i32, i32* @CoordinateSpacePage, align 4
  %165 = load i32, i32* @CoordinateSpaceWorld, align 4
  %166 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %167 = call i32 @GdipTransformPoints(i32* %163, i32 %164, i32 %165, %struct.TYPE_5__* %166, i32 2)
  store i32 %167, i32* %1, align 4
  %168 = load i32, i32* @Ok, align 4
  %169 = load i32, i32* %1, align 4
  %170 = call i32 @expect(i32 %168, i32 %169)
  %171 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load double, double* %172, align 16
  %174 = call i32 @expectf(double 6.000000e+00, double %173)
  %175 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load double, double* %176, align 8
  %178 = call i32 @expectf(double 5.000000e+00, double %177)
  %179 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load double, double* %180, align 16
  %182 = call i32 @expectf(double 5.000000e+00, double %181)
  %183 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load double, double* %184, align 8
  %186 = call i32 @expectf(double 6.000000e+00, double %185)
  %187 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  store double 1.000000e+00, double* %188, align 16
  %189 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  store double 0.000000e+00, double* %190, align 8
  %191 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  store double 0.000000e+00, double* %192, align 16
  %193 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  store double 1.000000e+00, double* %194, align 8
  %195 = load i32*, i32** %2, align 8
  %196 = load i32, i32* @CoordinateSpaceDevice, align 4
  %197 = load i32, i32* @CoordinateSpacePage, align 4
  %198 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %199 = call i32 @GdipTransformPoints(i32* %195, i32 %196, i32 %197, %struct.TYPE_5__* %198, i32 2)
  store i32 %199, i32* %1, align 4
  %200 = load i32, i32* @Ok, align 4
  %201 = load i32, i32* %1, align 4
  %202 = call i32 @expect(i32 %200, i32 %201)
  %203 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load double, double* %204, align 16
  %206 = call i32 @expectf(double 3.000000e+00, double %205)
  %207 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  %209 = load double, double* %208, align 8
  %210 = call i32 @expectf(double 0.000000e+00, double %209)
  %211 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load double, double* %212, align 16
  %214 = call i32 @expectf(double 0.000000e+00, double %213)
  %215 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  %217 = load double, double* %216, align 8
  %218 = call i32 @expectf(double 3.000000e+00, double %217)
  %219 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  store double 1.800000e+01, double* %220, align 16
  %221 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 1
  store double 1.500000e+01, double* %222, align 8
  %223 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  store double 1.500000e+01, double* %224, align 16
  %225 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 1
  store double 1.800000e+01, double* %226, align 8
  %227 = load i32*, i32** %2, align 8
  %228 = load i32, i32* @CoordinateSpaceWorld, align 4
  %229 = load i32, i32* @CoordinateSpaceDevice, align 4
  %230 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %231 = call i32 @GdipTransformPoints(i32* %227, i32 %228, i32 %229, %struct.TYPE_5__* %230, i32 2)
  store i32 %231, i32* %1, align 4
  %232 = load i32, i32* @Ok, align 4
  %233 = load i32, i32* %1, align 4
  %234 = call i32 @expect(i32 %232, i32 %233)
  %235 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = load double, double* %236, align 16
  %238 = call i32 @expectf(double 1.000000e+00, double %237)
  %239 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 1
  %241 = load double, double* %240, align 8
  %242 = call i32 @expectf(double 0.000000e+00, double %241)
  %243 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = load double, double* %244, align 16
  %246 = call i32 @expectf(double 0.000000e+00, double %245)
  %247 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 1
  %249 = load double, double* %248, align 8
  %250 = call i32 @expectf(double 1.000000e+00, double %249)
  %251 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  store double 6.000000e+00, double* %252, align 16
  %253 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 1
  store double 5.000000e+00, double* %254, align 8
  %255 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 0
  store double 5.000000e+00, double* %256, align 16
  %257 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 1
  store double 6.000000e+00, double* %258, align 8
  %259 = load i32*, i32** %2, align 8
  %260 = load i32, i32* @CoordinateSpaceWorld, align 4
  %261 = load i32, i32* @CoordinateSpacePage, align 4
  %262 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %263 = call i32 @GdipTransformPoints(i32* %259, i32 %260, i32 %261, %struct.TYPE_5__* %262, i32 2)
  store i32 %263, i32* %1, align 4
  %264 = load i32, i32* @Ok, align 4
  %265 = load i32, i32* %1, align 4
  %266 = call i32 @expect(i32 %264, i32 %265)
  %267 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  %269 = load double, double* %268, align 16
  %270 = call i32 @expectf(double 1.000000e+00, double %269)
  %271 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 1
  %273 = load double, double* %272, align 8
  %274 = call i32 @expectf(double 0.000000e+00, double %273)
  %275 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = load double, double* %276, align 16
  %278 = call i32 @expectf(double 0.000000e+00, double %277)
  %279 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 1
  %281 = load double, double* %280, align 8
  %282 = call i32 @expectf(double 1.000000e+00, double %281)
  %283 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 0
  store double 3.000000e+00, double* %284, align 16
  %285 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 1
  store double 0.000000e+00, double* %286, align 8
  %287 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 0
  store double 0.000000e+00, double* %288, align 16
  %289 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 1
  store double 3.000000e+00, double* %290, align 8
  %291 = load i32*, i32** %2, align 8
  %292 = load i32, i32* @CoordinateSpacePage, align 4
  %293 = load i32, i32* @CoordinateSpaceDevice, align 4
  %294 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %295 = call i32 @GdipTransformPoints(i32* %291, i32 %292, i32 %293, %struct.TYPE_5__* %294, i32 2)
  store i32 %295, i32* %1, align 4
  %296 = load i32, i32* @Ok, align 4
  %297 = load i32, i32* %1, align 4
  %298 = call i32 @expect(i32 %296, i32 %297)
  %299 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 0
  %301 = load double, double* %300, align 16
  %302 = call i32 @expectf(double 1.000000e+00, double %301)
  %303 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 1
  %305 = load double, double* %304, align 8
  %306 = call i32 @expectf(double 0.000000e+00, double %305)
  %307 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 0
  %309 = load double, double* %308, align 16
  %310 = call i32 @expectf(double 0.000000e+00, double %309)
  %311 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 1
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 1
  %313 = load double, double* %312, align 8
  %314 = call i32 @expectf(double 1.000000e+00, double %313)
  %315 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 0
  store i32 1, i32* %316, align 16
  %317 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 1
  store i32 0, i32* %318, align 4
  %319 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %5, i64 0, i64 1
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 0
  store i32 0, i32* %320, align 8
  %321 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %5, i64 0, i64 1
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 1
  store i32 1, i32* %322, align 4
  %323 = load i32*, i32** %2, align 8
  %324 = load i32, i32* @CoordinateSpaceDevice, align 4
  %325 = load i32, i32* @CoordinateSpaceWorld, align 4
  %326 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %327 = call i32 @GdipTransformPointsI(i32* %323, i32 %324, i32 %325, %struct.TYPE_6__* %326, i32 2)
  store i32 %327, i32* %1, align 4
  %328 = load i32, i32* @Ok, align 4
  %329 = load i32, i32* %1, align 4
  %330 = call i32 @expect(i32 %328, i32 %329)
  %331 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 16
  %334 = call i32 @expect(i32 18, i32 %333)
  %335 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @expect(i32 15, i32 %337)
  %339 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %5, i64 0, i64 1
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @expect(i32 15, i32 %341)
  %343 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %5, i64 0, i64 1
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @expect(i32 18, i32 %345)
  %347 = load i32*, i32** %2, align 8
  %348 = call i32 @GdipDeleteGraphics(i32* %347)
  %349 = load i32, i32* @hwnd, align 4
  %350 = load i32, i32* %3, align 4
  %351 = call i32 @ReleaseDC(i32 %349, i32 %350)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipTransformPoints(i32*, i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @expectf(double, double) #1

declare dso_local i32 @GdipTranslateWorldTransform(i32*, double, double, i32) #1

declare dso_local i32 @GdipSetPageUnit(i32*, i32) #1

declare dso_local i32 @GdipSetPageScale(i32*, double) #1

declare dso_local i32 @GdipTransformPointsI(i32*, i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

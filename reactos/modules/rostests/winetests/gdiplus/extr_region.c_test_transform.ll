; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_transform.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double }

@Ok = common dso_local global i32 0, align 4
@FillModeAlternate = common dso_local global i32 0, align 4
@MatrixOrderAppend = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Expected to be equal.\0A\00", align 1
@CombineModeReplace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_transform() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = call i32 @GetDC(i32 0)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @GdipCreateFromHDC(i32 %12, i32** %4)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @Ok, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @expect(i32 %14, i32 %15)
  %17 = load i32, i32* @FillModeAlternate, align 4
  %18 = call i32 @GdipCreatePath(i32 %17, i32** %5)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @Ok, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @expect(i32 %19, i32 %20)
  %22 = call i32 @GdipCreateRegion(i32** %1)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @Ok, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @expect(i32 %23, i32 %24)
  %26 = call i32 @GdipCreateRegion(i32** %2)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @Ok, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @expect(i32 %27, i32 %28)
  %30 = call i32 @GdipCreateMatrix(i32** %3)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @Ok, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @expect(i32 %31, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @MatrixOrderAppend, align 4
  %36 = call i32 @GdipScaleMatrix(i32* %34, double 2.000000e+00, double 3.000000e+00, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @Ok, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @expect(i32 %37, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @GdipTransformRegion(i32* null, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @InvalidParameter, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @expect(i32 %42, i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @GdipTransformRegion(i32* %45, i32* null)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @InvalidParameter, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @expect(i32 %47, i32 %48)
  %50 = load i32*, i32** %1, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @GdipTransformRegion(i32* %50, i32* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @Ok, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @expect(i32 %53, i32 %54)
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32*, i32** %1, align 8
  %58 = load i32*, i32** %2, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @GdipIsEqualRegion(i32* %57, i32* %58, i32* %59, i32* %9)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @Ok, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @expect(i32 %61, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %66 = load i32*, i32** %1, align 8
  %67 = call i32 @get_region_type(i32* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @expect(i32 268435459, i32 %68)
  %70 = load i32*, i32** %1, align 8
  %71 = call i32 @GdipSetEmpty(i32* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @Ok, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @expect(i32 %72, i32 %73)
  %75 = load i32*, i32** %1, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @GdipTransformRegion(i32* %75, i32* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* @Ok, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @expect(i32 %78, i32 %79)
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @GdipSetEmpty(i32* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* @Ok, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @expect(i32 %83, i32 %84)
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %9, align 4
  %87 = load i32*, i32** %1, align 8
  %88 = load i32*, i32** %2, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @GdipIsEqualRegion(i32* %87, i32* %88, i32* %89, i32* %9)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* @Ok, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @expect(i32 %91, i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %96 = load i32*, i32** %1, align 8
  %97 = call i32 @get_region_type(i32* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @expect(i32 268435458, i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store double 1.000000e+01, double* %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store double 0.000000e+00, double* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  store double 1.000000e+02, double* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store double 1.000000e+02, double* %103, align 8
  %104 = load i32*, i32** %1, align 8
  %105 = load i32, i32* @CombineModeReplace, align 4
  %106 = call i32 @GdipCombineRegionRect(i32* %104, %struct.TYPE_3__* %6, i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* @Ok, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @expect(i32 %107, i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store double 2.000000e+01, double* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store double 0.000000e+00, double* %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store double 2.000000e+02, double* %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  store double 3.000000e+02, double* %113, align 8
  %114 = load i32*, i32** %2, align 8
  %115 = load i32, i32* @CombineModeReplace, align 4
  %116 = call i32 @GdipCombineRegionRect(i32* %114, %struct.TYPE_3__* %6, i32 %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* @Ok, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @expect(i32 %117, i32 %118)
  %120 = load i32*, i32** %1, align 8
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @GdipTransformRegion(i32* %120, i32* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* @Ok, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @expect(i32 %123, i32 %124)
  %126 = load i32, i32* @FALSE, align 4
  store i32 %126, i32* %9, align 4
  %127 = load i32*, i32** %1, align 8
  %128 = load i32*, i32** %2, align 8
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @GdipIsEqualRegion(i32* %127, i32* %128, i32* %129, i32* %9)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* @Ok, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @expect(i32 %131, i32 %132)
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @ok(i32 %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %136 = load i32*, i32** %1, align 8
  %137 = call i32 @get_region_type(i32* %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @expect(i32 268435456, i32 %138)
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @GdipAddPathEllipse(i32* %140, double 0.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.500000e+02)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* @Ok, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @expect(i32 %142, i32 %143)
  %145 = load i32*, i32** %1, align 8
  %146 = load i32*, i32** %5, align 8
  %147 = load i32, i32* @CombineModeReplace, align 4
  %148 = call i32 @GdipCombineRegionPath(i32* %145, i32* %146, i32 %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* @Ok, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @expect(i32 %149, i32 %150)
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 @GdipResetPath(i32* %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* @Ok, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @expect(i32 %154, i32 %155)
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 @GdipAddPathEllipse(i32* %157, double 0.000000e+00, double 3.000000e+01, double 2.000000e+02, double 4.500000e+02)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* @Ok, align 4
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @expect(i32 %159, i32 %160)
  %162 = load i32*, i32** %2, align 8
  %163 = load i32*, i32** %5, align 8
  %164 = load i32, i32* @CombineModeReplace, align 4
  %165 = call i32 @GdipCombineRegionPath(i32* %162, i32* %163, i32 %164)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* @Ok, align 4
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @expect(i32 %166, i32 %167)
  %169 = load i32*, i32** %1, align 8
  %170 = load i32*, i32** %3, align 8
  %171 = call i32 @GdipTransformRegion(i32* %169, i32* %170)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* @Ok, align 4
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @expect(i32 %172, i32 %173)
  %175 = load i32, i32* @FALSE, align 4
  store i32 %175, i32* %9, align 4
  %176 = load i32*, i32** %1, align 8
  %177 = load i32*, i32** %2, align 8
  %178 = load i32*, i32** %4, align 8
  %179 = call i32 @GdipIsEqualRegion(i32* %176, i32* %177, i32* %178, i32* %9)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* @Ok, align 4
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @expect(i32 %180, i32 %181)
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @ok(i32 %183, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %185 = load i32*, i32** %1, align 8
  %186 = call i32 @get_region_type(i32* %185)
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @expect(i32 268435457, i32 %187)
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store double 1.000000e+01, double* %189, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store double 0.000000e+00, double* %190, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  store double 1.000000e+02, double* %191, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store double 1.000000e+02, double* %192, align 8
  %193 = load i32*, i32** %1, align 8
  %194 = load i32, i32* @CombineModeReplace, align 4
  %195 = call i32 @GdipCombineRegionRect(i32* %193, %struct.TYPE_3__* %6, i32 %194)
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* @Ok, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @expect(i32 %196, i32 %197)
  %199 = load i32*, i32** %3, align 8
  %200 = load i32, i32* @MatrixOrderAppend, align 4
  %201 = call i32 @GdipRotateMatrix(i32* %199, double 4.500000e+01, i32 %200)
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* @Ok, align 4
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @expect(i32 %202, i32 %203)
  %205 = load i32*, i32** %1, align 8
  %206 = load i32*, i32** %3, align 8
  %207 = call i32 @GdipTransformRegion(i32* %205, i32* %206)
  store i32 %207, i32* %7, align 4
  %208 = load i32, i32* @Ok, align 4
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @expect(i32 %208, i32 %209)
  %211 = load i32*, i32** %1, align 8
  %212 = call i32 @get_region_type(i32* %211)
  store i32 %212, i32* %10, align 4
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @expect(i32 268435457, i32 %213)
  %215 = load i32*, i32** %1, align 8
  %216 = call i32 @GdipDeleteRegion(i32* %215)
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* @Ok, align 4
  %218 = load i32, i32* %7, align 4
  %219 = call i32 @expect(i32 %217, i32 %218)
  %220 = load i32*, i32** %2, align 8
  %221 = call i32 @GdipDeleteRegion(i32* %220)
  store i32 %221, i32* %7, align 4
  %222 = load i32, i32* @Ok, align 4
  %223 = load i32, i32* %7, align 4
  %224 = call i32 @expect(i32 %222, i32 %223)
  %225 = load i32*, i32** %4, align 8
  %226 = call i32 @GdipDeleteGraphics(i32* %225)
  store i32 %226, i32* %7, align 4
  %227 = load i32, i32* @Ok, align 4
  %228 = load i32, i32* %7, align 4
  %229 = call i32 @expect(i32 %227, i32 %228)
  %230 = load i32*, i32** %5, align 8
  %231 = call i32 @GdipDeletePath(i32* %230)
  store i32 %231, i32* %7, align 4
  %232 = load i32, i32* @Ok, align 4
  %233 = load i32, i32* %7, align 4
  %234 = call i32 @expect(i32 %232, i32 %233)
  %235 = load i32*, i32** %3, align 8
  %236 = call i32 @GdipDeleteMatrix(i32* %235)
  store i32 %236, i32* %7, align 4
  %237 = load i32, i32* @Ok, align 4
  %238 = load i32, i32* %7, align 4
  %239 = call i32 @expect(i32 %237, i32 %238)
  %240 = load i32, i32* %8, align 4
  %241 = call i32 @ReleaseDC(i32 0, i32 %240)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipCreateRegion(i32**) #1

declare dso_local i32 @GdipCreateMatrix(i32**) #1

declare dso_local i32 @GdipScaleMatrix(i32*, double, double, i32) #1

declare dso_local i32 @GdipTransformRegion(i32*, i32*) #1

declare dso_local i32 @GdipIsEqualRegion(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @get_region_type(i32*) #1

declare dso_local i32 @GdipSetEmpty(i32*) #1

declare dso_local i32 @GdipCombineRegionRect(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @GdipAddPathEllipse(i32*, double, double, double, double) #1

declare dso_local i32 @GdipCombineRegionPath(i32*, i32*, i32) #1

declare dso_local i32 @GdipResetPath(i32*) #1

declare dso_local i32 @GdipRotateMatrix(i32*, double, i32) #1

declare dso_local i32 @GdipDeleteRegion(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

declare dso_local i32 @GdipDeleteMatrix(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

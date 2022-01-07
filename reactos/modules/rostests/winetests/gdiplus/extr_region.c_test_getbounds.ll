; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_getbounds.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_getbounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, double, double, double }

@Ok = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [13 x i8] c"status %08x\0A\00", align 1
@InvalidParameter = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Expected X = %.2f, got %.2f\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Expected Y = %.2f, got %.2f\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Expected width = %.2f, got %.2f\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Expected height = %.2f, got %.2f\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Expected X = 0.0, got %.2f\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Expected Y = 0.0, got %.2f\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Expected width = 0.0, got %.2f\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Expected height = 0.0, got %.2f\0A\00", align 1
@CombineModeReplace = common dso_local global i32 0, align 4
@MatrixOrderPrepend = common dso_local global i32 0, align 4
@UnitInch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getbounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getbounds() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  %6 = call i32 @GetDC(i32 0)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call double @GdipCreateFromHDC(i32 %7, i32** %2)
  store double %8, double* %3, align 8
  %9 = load double, double* %3, align 8
  %10 = load double, double* @Ok, align 8
  %11 = fcmp oeq double %9, %10
  %12 = zext i1 %11 to i32
  %13 = load double, double* %3, align 8
  %14 = call i32 (i32, i8*, double, ...) @ok(i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %13)
  %15 = call double @GdipCreateRegion(i32** %1)
  store double %15, double* %3, align 8
  %16 = load double, double* %3, align 8
  %17 = load double, double* @Ok, align 8
  %18 = fcmp oeq double %16, %17
  %19 = zext i1 %18 to i32
  %20 = load double, double* %3, align 8
  %21 = call i32 (i32, i8*, double, ...) @ok(i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %20)
  %22 = call double @GdipGetRegionBounds(i32* null, i32* null, %struct.TYPE_4__* null)
  store double %22, double* %3, align 8
  %23 = load double, double* %3, align 8
  %24 = load double, double* @InvalidParameter, align 8
  %25 = fcmp oeq double %23, %24
  %26 = zext i1 %25 to i32
  %27 = load double, double* %3, align 8
  %28 = call i32 (i32, i8*, double, ...) @ok(i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call double @GdipGetRegionBounds(i32* %29, i32* null, %struct.TYPE_4__* null)
  store double %30, double* %3, align 8
  %31 = load double, double* %3, align 8
  %32 = load double, double* @InvalidParameter, align 8
  %33 = fcmp oeq double %31, %32
  %34 = zext i1 %33 to i32
  %35 = load double, double* %3, align 8
  %36 = call i32 (i32, i8*, double, ...) @ok(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %35)
  %37 = load i32*, i32** %1, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = call double @GdipGetRegionBounds(i32* %37, i32* %38, %struct.TYPE_4__* null)
  store double %39, double* %3, align 8
  %40 = load double, double* %3, align 8
  %41 = load double, double* @InvalidParameter, align 8
  %42 = fcmp oeq double %40, %41
  %43 = zext i1 %42 to i32
  %44 = load double, double* %3, align 8
  %45 = call i32 (i32, i8*, double, ...) @ok(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store double 0.000000e+00, double* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store double 0.000000e+00, double* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store double 1.000000e+02, double* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store double 1.000000e+02, double* %49, align 8
  %50 = load i32*, i32** %1, align 8
  %51 = load i32*, i32** %2, align 8
  %52 = call double @GdipGetRegionBounds(i32* %50, i32* %51, %struct.TYPE_4__* %4)
  store double %52, double* %3, align 8
  %53 = load double, double* %3, align 8
  %54 = load double, double* @Ok, align 8
  %55 = fcmp oeq double %53, %54
  %56 = zext i1 %55 to i32
  %57 = load double, double* %3, align 8
  %58 = call i32 (i32, i8*, double, ...) @ok(i32 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %60 = load double, double* %59, align 8
  %61 = fcmp oeq double %60, 0xC150000000000000
  %62 = zext i1 %61 to i32
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %64 = load double, double* %63, align 8
  %65 = call i32 (i32, i8*, double, ...) @ok(i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), double 0xC150000000000000, double %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %67 = load double, double* %66, align 8
  %68 = fcmp oeq double %67, 0xC150000000000000
  %69 = zext i1 %68 to i32
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %71 = load double, double* %70, align 8
  %72 = call i32 (i32, i8*, double, ...) @ok(i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), double 0xC150000000000000, double %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %74 = load double, double* %73, align 8
  %75 = fcmp oeq double %74, 0x4160000000000000
  %76 = zext i1 %75 to i32
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %78 = load double, double* %77, align 8
  %79 = call i32 (i32, i8*, double, ...) @ok(i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), double 0x4160000000000000, double %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %81 = load double, double* %80, align 8
  %82 = fcmp oeq double %81, 0x4160000000000000
  %83 = zext i1 %82 to i32
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %85 = load double, double* %84, align 8
  %86 = call i32 (i32, i8*, double, ...) @ok(i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), double 0x4160000000000000, double %85)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store double 0.000000e+00, double* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store double 0.000000e+00, double* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store double 1.000000e+02, double* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store double 1.000000e+02, double* %90, align 8
  %91 = load i32*, i32** %1, align 8
  %92 = call double @GdipSetEmpty(i32* %91)
  store double %92, double* %3, align 8
  %93 = load double, double* %3, align 8
  %94 = load double, double* @Ok, align 8
  %95 = fcmp oeq double %93, %94
  %96 = zext i1 %95 to i32
  %97 = load double, double* %3, align 8
  %98 = call i32 (i32, i8*, double, ...) @ok(i32 %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %97)
  %99 = load i32*, i32** %1, align 8
  %100 = load i32*, i32** %2, align 8
  %101 = call double @GdipGetRegionBounds(i32* %99, i32* %100, %struct.TYPE_4__* %4)
  store double %101, double* %3, align 8
  %102 = load double, double* %3, align 8
  %103 = load double, double* @Ok, align 8
  %104 = fcmp oeq double %102, %103
  %105 = zext i1 %104 to i32
  %106 = load double, double* %3, align 8
  %107 = call i32 (i32, i8*, double, ...) @ok(i32 %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %106)
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %109 = load double, double* %108, align 8
  %110 = fcmp oeq double %109, 0.000000e+00
  %111 = zext i1 %110 to i32
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %113 = load double, double* %112, align 8
  %114 = call i32 (i32, i8*, double, ...) @ok(i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), double %113)
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %116 = load double, double* %115, align 8
  %117 = fcmp oeq double %116, 0.000000e+00
  %118 = zext i1 %117 to i32
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %120 = load double, double* %119, align 8
  %121 = call i32 (i32, i8*, double, ...) @ok(i32 %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), double %120)
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %123 = load double, double* %122, align 8
  %124 = fcmp oeq double %123, 0.000000e+00
  %125 = zext i1 %124 to i32
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %127 = load double, double* %126, align 8
  %128 = call i32 (i32, i8*, double, ...) @ok(i32 %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), double %127)
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %130 = load double, double* %129, align 8
  %131 = fcmp oeq double %130, 0.000000e+00
  %132 = zext i1 %131 to i32
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %134 = load double, double* %133, align 8
  %135 = call i32 (i32, i8*, double, ...) @ok(i32 %132, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), double %134)
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store double 1.000000e+01, double* %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store double 0.000000e+00, double* %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store double 1.000000e+02, double* %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store double 1.000000e+02, double* %139, align 8
  %140 = load i32*, i32** %1, align 8
  %141 = load i32, i32* @CombineModeReplace, align 4
  %142 = call double @GdipCombineRegionRect(i32* %140, %struct.TYPE_4__* %4, i32 %141)
  store double %142, double* %3, align 8
  %143 = load double, double* %3, align 8
  %144 = load double, double* @Ok, align 8
  %145 = fcmp oeq double %143, %144
  %146 = zext i1 %145 to i32
  %147 = load double, double* %3, align 8
  %148 = call i32 (i32, i8*, double, ...) @ok(i32 %146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %147)
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store double 0.000000e+00, double* %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store double 0.000000e+00, double* %150, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store double 0.000000e+00, double* %151, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store double 0.000000e+00, double* %152, align 8
  %153 = load i32*, i32** %1, align 8
  %154 = load i32*, i32** %2, align 8
  %155 = call double @GdipGetRegionBounds(i32* %153, i32* %154, %struct.TYPE_4__* %4)
  store double %155, double* %3, align 8
  %156 = load double, double* %3, align 8
  %157 = load double, double* @Ok, align 8
  %158 = fcmp oeq double %156, %157
  %159 = zext i1 %158 to i32
  %160 = load double, double* %3, align 8
  %161 = call i32 (i32, i8*, double, ...) @ok(i32 %159, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %160)
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %163 = load double, double* %162, align 8
  %164 = fcmp oeq double %163, 1.000000e+01
  %165 = zext i1 %164 to i32
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %167 = load double, double* %166, align 8
  %168 = call i32 (i32, i8*, double, ...) @ok(i32 %165, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), double %167)
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %170 = load double, double* %169, align 8
  %171 = fcmp oeq double %170, 0.000000e+00
  %172 = zext i1 %171 to i32
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %174 = load double, double* %173, align 8
  %175 = call i32 (i32, i8*, double, ...) @ok(i32 %172, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), double %174)
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %177 = load double, double* %176, align 8
  %178 = fcmp oeq double %177, 1.000000e+02
  %179 = zext i1 %178 to i32
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %181 = load double, double* %180, align 8
  %182 = call i32 (i32, i8*, double, ...) @ok(i32 %179, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), double %181)
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %184 = load double, double* %183, align 8
  %185 = fcmp oeq double %184, 1.000000e+02
  %186 = zext i1 %185 to i32
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %188 = load double, double* %187, align 8
  %189 = call i32 (i32, i8*, double, ...) @ok(i32 %186, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), double %188)
  %190 = load i32*, i32** %2, align 8
  %191 = load i32, i32* @MatrixOrderPrepend, align 4
  %192 = call double @GdipScaleWorldTransform(i32* %190, double 2.000000e+00, double 2.000000e+00, i32 %191)
  store double %192, double* %3, align 8
  %193 = load double, double* %3, align 8
  %194 = load double, double* @Ok, align 8
  %195 = fcmp oeq double %193, %194
  %196 = zext i1 %195 to i32
  %197 = load double, double* %3, align 8
  %198 = call i32 (i32, i8*, double, ...) @ok(i32 %196, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %197)
  %199 = load i32*, i32** %2, align 8
  %200 = load i32, i32* @UnitInch, align 4
  %201 = call i32 @GdipSetPageUnit(i32* %199, i32 %200)
  %202 = load i32*, i32** %2, align 8
  %203 = call i32 @GdipSetPageScale(i32* %202, double 2.000000e+00)
  %204 = load i32*, i32** %1, align 8
  %205 = load i32*, i32** %2, align 8
  %206 = call double @GdipGetRegionBounds(i32* %204, i32* %205, %struct.TYPE_4__* %4)
  store double %206, double* %3, align 8
  %207 = load double, double* %3, align 8
  %208 = load double, double* @Ok, align 8
  %209 = fcmp oeq double %207, %208
  %210 = zext i1 %209 to i32
  %211 = load double, double* %3, align 8
  %212 = call i32 (i32, i8*, double, ...) @ok(i32 %210, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %211)
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %214 = load double, double* %213, align 8
  %215 = fcmp oeq double %214, 1.000000e+01
  %216 = zext i1 %215 to i32
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %218 = load double, double* %217, align 8
  %219 = call i32 (i32, i8*, double, ...) @ok(i32 %216, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), double %218)
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %221 = load double, double* %220, align 8
  %222 = fcmp oeq double %221, 0.000000e+00
  %223 = zext i1 %222 to i32
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %225 = load double, double* %224, align 8
  %226 = call i32 (i32, i8*, double, ...) @ok(i32 %223, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), double %225)
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %228 = load double, double* %227, align 8
  %229 = fcmp oeq double %228, 1.000000e+02
  %230 = zext i1 %229 to i32
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %232 = load double, double* %231, align 8
  %233 = call i32 (i32, i8*, double, ...) @ok(i32 %230, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), double %232)
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store double 1.000000e+01, double* %234, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store double 0.000000e+00, double* %235, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store double 1.000000e+02, double* %236, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store double 1.000000e+02, double* %237, align 8
  %238 = load i32*, i32** %1, align 8
  %239 = load i32, i32* @CombineModeReplace, align 4
  %240 = call double @GdipCombineRegionRect(i32* %238, %struct.TYPE_4__* %4, i32 %239)
  store double %240, double* %3, align 8
  %241 = load double, double* %3, align 8
  %242 = load double, double* @Ok, align 8
  %243 = fcmp oeq double %241, %242
  %244 = zext i1 %243 to i32
  %245 = load double, double* %3, align 8
  %246 = call i32 (i32, i8*, double, ...) @ok(i32 %244, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %245)
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store double 0.000000e+00, double* %247, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store double 0.000000e+00, double* %248, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store double 0.000000e+00, double* %249, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store double 0.000000e+00, double* %250, align 8
  %251 = load i32*, i32** %1, align 8
  %252 = load i32*, i32** %2, align 8
  %253 = call double @GdipGetRegionBounds(i32* %251, i32* %252, %struct.TYPE_4__* %4)
  store double %253, double* %3, align 8
  %254 = load double, double* %3, align 8
  %255 = load double, double* @Ok, align 8
  %256 = fcmp oeq double %254, %255
  %257 = zext i1 %256 to i32
  %258 = load double, double* %3, align 8
  %259 = call i32 (i32, i8*, double, ...) @ok(i32 %257, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %258)
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %261 = load double, double* %260, align 8
  %262 = fcmp oeq double %261, 1.000000e+01
  %263 = zext i1 %262 to i32
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %265 = load double, double* %264, align 8
  %266 = call i32 (i32, i8*, double, ...) @ok(i32 %263, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), double %265)
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %268 = load double, double* %267, align 8
  %269 = fcmp oeq double %268, 0.000000e+00
  %270 = zext i1 %269 to i32
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %272 = load double, double* %271, align 8
  %273 = call i32 (i32, i8*, double, ...) @ok(i32 %270, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), double %272)
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %275 = load double, double* %274, align 8
  %276 = fcmp oeq double %275, 1.000000e+02
  %277 = zext i1 %276 to i32
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %279 = load double, double* %278, align 8
  %280 = call i32 (i32, i8*, double, ...) @ok(i32 %277, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), double %279)
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %282 = load double, double* %281, align 8
  %283 = fcmp oeq double %282, 1.000000e+02
  %284 = zext i1 %283 to i32
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %286 = load double, double* %285, align 8
  %287 = call i32 (i32, i8*, double, ...) @ok(i32 %284, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), double %286)
  %288 = load i32*, i32** %1, align 8
  %289 = call double @GdipDeleteRegion(i32* %288)
  store double %289, double* %3, align 8
  %290 = load double, double* %3, align 8
  %291 = load double, double* @Ok, align 8
  %292 = fcmp oeq double %290, %291
  %293 = zext i1 %292 to i32
  %294 = load double, double* %3, align 8
  %295 = call i32 (i32, i8*, double, ...) @ok(i32 %293, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %294)
  %296 = load i32*, i32** %2, align 8
  %297 = call double @GdipDeleteGraphics(i32* %296)
  store double %297, double* %3, align 8
  %298 = load double, double* %3, align 8
  %299 = load double, double* @Ok, align 8
  %300 = fcmp oeq double %298, %299
  %301 = zext i1 %300 to i32
  %302 = load double, double* %3, align 8
  %303 = call i32 (i32, i8*, double, ...) @ok(i32 %301, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %302)
  %304 = load i32, i32* %5, align 4
  %305 = call i32 @ReleaseDC(i32 0, i32 %304)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local double @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, double, ...) #1

declare dso_local double @GdipCreateRegion(i32**) #1

declare dso_local double @GdipGetRegionBounds(i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local double @GdipSetEmpty(i32*) #1

declare dso_local double @GdipCombineRegionRect(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local double @GdipScaleWorldTransform(i32*, double, double, i32) #1

declare dso_local i32 @GdipSetPageUnit(i32*, i32) #1

declare dso_local i32 @GdipSetPageScale(i32*, double) #1

declare dso_local double @GdipDeleteRegion(i32*) #1

declare dso_local double @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

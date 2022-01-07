; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_isequal.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_isequal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double }

@Ok = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"status %08x\0A\00", align 1
@InvalidParameter = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Expected to be equal.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Expected to be unequal.\0A\00", align 1
@CombineModeReplace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_isequal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_isequal() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @GetDC(i32 0)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @GdipCreateFromHDC(i32 %9, i32** %3)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @Ok, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %5, align 8
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = call i64 @GdipCreateRegion(i32** %1)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @Ok, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %5, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = call i64 @GdipCreateRegion(i32** %2)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @Ok, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %5, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = call i64 @GdipIsEqualRegion(i32* null, i32* null, i32* null, i32* null)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @InvalidParameter, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %5, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = load i32*, i32** %2, align 8
  %40 = call i64 @GdipIsEqualRegion(i32* %38, i32* %39, i32* null, i32* null)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @InvalidParameter, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %5, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = load i32*, i32** %2, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = call i64 @GdipIsEqualRegion(i32* %47, i32* %48, i32* %49, i32* null)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @InvalidParameter, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %5, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = load i32*, i32** %1, align 8
  %58 = load i32*, i32** %2, align 8
  %59 = call i64 @GdipIsEqualRegion(i32* %57, i32* %58, i32* null, i32* %7)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @InvalidParameter, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i64, i64* %5, align 8
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %7, align 4
  %67 = load i32*, i32** %1, align 8
  %68 = load i32*, i32** %2, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = call i64 @GdipIsEqualRegion(i32* %67, i32* %68, i32* %69, i32* %7)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* @Ok, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %5, align 8
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32*, i32** %1, align 8
  %80 = call i64 @GdipSetEmpty(i32* %79)
  store i64 %80, i64* %5, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* @Ok, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %5, align 8
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %85)
  %87 = load i32*, i32** %2, align 8
  %88 = call i64 @GdipSetEmpty(i32* %87)
  store i64 %88, i64* %5, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* @Ok, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %5, align 8
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %93)
  %95 = load i32, i32* @FALSE, align 4
  store i32 %95, i32* %7, align 4
  %96 = load i32*, i32** %1, align 8
  %97 = load i32*, i32** %2, align 8
  %98 = load i32*, i32** %3, align 8
  %99 = call i64 @GdipIsEqualRegion(i32* %96, i32* %97, i32* %98, i32* %7)
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* @Ok, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %5, align 8
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %104)
  %106 = load i32, i32* %7, align 4
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32*, i32** %1, align 8
  %109 = call i64 @GdipSetInfinite(i32* %108)
  store i64 %109, i64* %5, align 8
  %110 = load i64, i64* %5, align 8
  %111 = load i64, i64* @Ok, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i64, i64* %5, align 8
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %114)
  %116 = load i32, i32* @TRUE, align 4
  store i32 %116, i32* %7, align 4
  %117 = load i32*, i32** %1, align 8
  %118 = load i32*, i32** %2, align 8
  %119 = load i32*, i32** %3, align 8
  %120 = call i64 @GdipIsEqualRegion(i32* %117, i32* %118, i32* %119, i32* %7)
  store i64 %120, i64* %5, align 8
  %121 = load i64, i64* %5, align 8
  %122 = load i64, i64* @Ok, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i64, i64* %5, align 8
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %125)
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store double 0.000000e+00, double* %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store double 0.000000e+00, double* %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  store double 1.000000e+02, double* %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store double 1.000000e+02, double* %135, align 8
  %136 = load i32*, i32** %1, align 8
  %137 = load i32, i32* @CombineModeReplace, align 4
  %138 = call i64 @GdipCombineRegionRect(i32* %136, %struct.TYPE_3__* %4, i32 %137)
  store i64 %138, i64* %5, align 8
  %139 = load i64, i64* %5, align 8
  %140 = load i64, i64* @Ok, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i64, i64* %5, align 8
  %144 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %143)
  %145 = load i32, i32* @TRUE, align 4
  store i32 %145, i32* %7, align 4
  %146 = load i32*, i32** %1, align 8
  %147 = load i32*, i32** %2, align 8
  %148 = load i32*, i32** %3, align 8
  %149 = call i64 @GdipIsEqualRegion(i32* %146, i32* %147, i32* %148, i32* %7)
  store i64 %149, i64* %5, align 8
  %150 = load i64, i64* %5, align 8
  %151 = load i64, i64* @Ok, align 8
  %152 = icmp eq i64 %150, %151
  %153 = zext i1 %152 to i32
  %154 = load i64, i64* %5, align 8
  %155 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %154)
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %161 = load i32*, i32** %2, align 8
  %162 = call i64 @GdipSetInfinite(i32* %161)
  store i64 %162, i64* %5, align 8
  %163 = load i64, i64* %5, align 8
  %164 = load i64, i64* @Ok, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i64, i64* %5, align 8
  %168 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %167)
  %169 = load i32, i32* @TRUE, align 4
  store i32 %169, i32* %7, align 4
  %170 = load i32*, i32** %1, align 8
  %171 = load i32*, i32** %2, align 8
  %172 = load i32*, i32** %3, align 8
  %173 = call i64 @GdipIsEqualRegion(i32* %170, i32* %171, i32* %172, i32* %7)
  store i64 %173, i64* %5, align 8
  %174 = load i64, i64* %5, align 8
  %175 = load i64, i64* @Ok, align 8
  %176 = icmp eq i64 %174, %175
  %177 = zext i1 %176 to i32
  %178 = load i64, i64* %5, align 8
  %179 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %178)
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store double 0.000000e+00, double* %185, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store double 0.000000e+00, double* %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  store double 1.000010e+02, double* %187, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store double 1.000010e+02, double* %188, align 8
  %189 = load i32*, i32** %2, align 8
  %190 = load i32, i32* @CombineModeReplace, align 4
  %191 = call i64 @GdipCombineRegionRect(i32* %189, %struct.TYPE_3__* %4, i32 %190)
  store i64 %191, i64* %5, align 8
  %192 = load i64, i64* %5, align 8
  %193 = load i64, i64* @Ok, align 8
  %194 = icmp eq i64 %192, %193
  %195 = zext i1 %194 to i32
  %196 = load i64, i64* %5, align 8
  %197 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %196)
  %198 = load i32, i32* @FALSE, align 4
  store i32 %198, i32* %7, align 4
  %199 = load i32*, i32** %1, align 8
  %200 = load i32*, i32** %2, align 8
  %201 = load i32*, i32** %3, align 8
  %202 = call i64 @GdipIsEqualRegion(i32* %199, i32* %200, i32* %201, i32* %7)
  store i64 %202, i64* %5, align 8
  %203 = load i64, i64* %5, align 8
  %204 = load i64, i64* @Ok, align 8
  %205 = icmp eq i64 %203, %204
  %206 = zext i1 %205 to i32
  %207 = load i64, i64* %5, align 8
  %208 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %207)
  %209 = load i32, i32* %7, align 4
  %210 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store double 0.000000e+00, double* %211, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store double 0.000000e+00, double* %212, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  store double 1.000000e+02, double* %213, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store double 1.000000e+02, double* %214, align 8
  %215 = load i32*, i32** %2, align 8
  %216 = load i32, i32* @CombineModeReplace, align 4
  %217 = call i64 @GdipCombineRegionRect(i32* %215, %struct.TYPE_3__* %4, i32 %216)
  store i64 %217, i64* %5, align 8
  %218 = load i64, i64* %5, align 8
  %219 = load i64, i64* @Ok, align 8
  %220 = icmp eq i64 %218, %219
  %221 = zext i1 %220 to i32
  %222 = load i64, i64* %5, align 8
  %223 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %222)
  %224 = load i32, i32* @FALSE, align 4
  store i32 %224, i32* %7, align 4
  %225 = load i32*, i32** %1, align 8
  %226 = load i32*, i32** %2, align 8
  %227 = load i32*, i32** %3, align 8
  %228 = call i64 @GdipIsEqualRegion(i32* %225, i32* %226, i32* %227, i32* %7)
  store i64 %228, i64* %5, align 8
  %229 = load i64, i64* %5, align 8
  %230 = load i64, i64* @Ok, align 8
  %231 = icmp eq i64 %229, %230
  %232 = zext i1 %231 to i32
  %233 = load i64, i64* %5, align 8
  %234 = call i32 (i32, i8*, ...) @ok(i32 %232, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %233)
  %235 = load i32, i32* %7, align 4
  %236 = call i32 (i32, i8*, ...) @ok(i32 %235, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %237 = load i32*, i32** %1, align 8
  %238 = call i64 @GdipDeleteRegion(i32* %237)
  store i64 %238, i64* %5, align 8
  %239 = load i64, i64* %5, align 8
  %240 = load i64, i64* @Ok, align 8
  %241 = icmp eq i64 %239, %240
  %242 = zext i1 %241 to i32
  %243 = load i64, i64* %5, align 8
  %244 = call i32 (i32, i8*, ...) @ok(i32 %242, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %243)
  %245 = load i32*, i32** %2, align 8
  %246 = call i64 @GdipDeleteRegion(i32* %245)
  store i64 %246, i64* %5, align 8
  %247 = load i64, i64* %5, align 8
  %248 = load i64, i64* @Ok, align 8
  %249 = icmp eq i64 %247, %248
  %250 = zext i1 %249 to i32
  %251 = load i64, i64* %5, align 8
  %252 = call i32 (i32, i8*, ...) @ok(i32 %250, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %251)
  %253 = load i32*, i32** %3, align 8
  %254 = call i64 @GdipDeleteGraphics(i32* %253)
  store i64 %254, i64* %5, align 8
  %255 = load i64, i64* %5, align 8
  %256 = load i64, i64* @Ok, align 8
  %257 = icmp eq i64 %255, %256
  %258 = zext i1 %257 to i32
  %259 = load i64, i64* %5, align 8
  %260 = call i32 (i32, i8*, ...) @ok(i32 %258, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %259)
  %261 = load i32, i32* %6, align 4
  %262 = call i32 @ReleaseDC(i32 0, i32 %261)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i64 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GdipCreateRegion(i32**) #1

declare dso_local i64 @GdipIsEqualRegion(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @GdipSetEmpty(i32*) #1

declare dso_local i64 @GdipSetInfinite(i32*) #1

declare dso_local i64 @GdipCombineRegionRect(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @GdipDeleteRegion(i32*) #1

declare dso_local i64 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

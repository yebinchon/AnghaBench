; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipIsVisiblePoint.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipIsVisiblePoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected HDC to be initialized\0A\00", align 1
@Ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected graphics to be initialized\0A\00", align 1
@InvalidParameter = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Expected (%.2f, %.2f) to be visible\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Expected (%.2f, %.2f) not to be visible\0A\00", align 1
@CombineModeReplace = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"After clipping, expected (%.2f, %.2f) not to be visible\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"After clipping, expected (%.2f, %.2f) to be visible\0A\00", align 1
@MatrixOrderAppend = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipIsVisiblePoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipIsVisiblePoint() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  store i32* null, i32** %2, align 8
  %7 = load i32, i32* @hwnd, align 4
  %8 = call i32* @GetDC(i32 %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @GdipCreateFromHDC(i32* %13, i32** %2)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @Ok, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @expect(i32 %15, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @GdipIsVisiblePoint(i32* null, double 0.000000e+00, double 0.000000e+00, i64* %6)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @InvalidParameter, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @expect(i32 %23, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @GdipIsVisiblePoint(i32* %26, double 0.000000e+00, double 0.000000e+00, i64* null)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* @InvalidParameter, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @expect(i32 %28, i32 %29)
  %31 = call i32 @GdipIsVisiblePointI(i32* null, i32 0, i32 0, i64* %6)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* @InvalidParameter, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @expect(i32 %32, i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @GdipIsVisiblePointI(i32* %35, i32 0, i32 0, i64* null)
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* @InvalidParameter, align 4
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @expect(i32 %37, i32 %38)
  store double 0.000000e+00, double* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %40 = load i32*, i32** %2, align 8
  %41 = load double, double* %4, align 8
  %42 = load double, double* %5, align 8
  %43 = call i32 @GdipIsVisiblePoint(i32* %40, double %41, double %42, i64* %6)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* @Ok, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @expect(i32 %44, i32 %45)
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @TRUE, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load double, double* %4, align 8
  %52 = load double, double* %5, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), double %51, double %52)
  store double -1.000000e+01, double* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %54 = load i32*, i32** %2, align 8
  %55 = load double, double* %4, align 8
  %56 = load double, double* %5, align 8
  %57 = call i32 @GdipIsVisiblePoint(i32* %54, double %55, double %56, i64* %6)
  store i32 %57, i32* %1, align 4
  %58 = load i32, i32* @Ok, align 4
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @expect(i32 %58, i32 %59)
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @FALSE, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load double, double* %4, align 8
  %66 = load double, double* %5, align 8
  %67 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), double %65, double %66)
  store double 0.000000e+00, double* %4, align 8
  store double -5.000000e+00, double* %5, align 8
  %68 = load i32*, i32** %2, align 8
  %69 = load double, double* %4, align 8
  %70 = load double, double* %5, align 8
  %71 = call i32 @GdipIsVisiblePoint(i32* %68, double %69, double %70, i64* %6)
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* @Ok, align 4
  %73 = load i32, i32* %1, align 4
  %74 = call i32 @expect(i32 %72, i32 %73)
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @FALSE, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load double, double* %4, align 8
  %80 = load double, double* %5, align 8
  %81 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), double %79, double %80)
  store double 1.000000e+00, double* %4, align 8
  store double 1.000000e+00, double* %5, align 8
  %82 = load i32*, i32** %2, align 8
  %83 = load double, double* %4, align 8
  %84 = load double, double* %5, align 8
  %85 = call i32 @GdipIsVisiblePoint(i32* %82, double %83, double %84, i64* %6)
  store i32 %85, i32* %1, align 4
  %86 = load i32, i32* @Ok, align 4
  %87 = load i32, i32* %1, align 4
  %88 = call i32 @expect(i32 %86, i32 %87)
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @TRUE, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load double, double* %4, align 8
  %94 = load double, double* %5, align 8
  %95 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), double %93, double %94)
  %96 = load i32*, i32** %2, align 8
  %97 = load i32, i32* @CombineModeReplace, align 4
  %98 = call i32 @GdipSetClipRect(i32* %96, i32 10, i32 20, i32 30, i32 40, i32 %97)
  store i32 %98, i32* %1, align 4
  %99 = load i32, i32* @Ok, align 4
  %100 = load i32, i32* %1, align 4
  %101 = call i32 @expect(i32 %99, i32 %100)
  store double 1.000000e+00, double* %4, align 8
  store double 1.000000e+00, double* %5, align 8
  %102 = load i32*, i32** %2, align 8
  %103 = load double, double* %4, align 8
  %104 = load double, double* %5, align 8
  %105 = call i32 @GdipIsVisiblePoint(i32* %102, double %103, double %104, i64* %6)
  store i32 %105, i32* %1, align 4
  %106 = load i32, i32* @Ok, align 4
  %107 = load i32, i32* %1, align 4
  %108 = call i32 @expect(i32 %106, i32 %107)
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @FALSE, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load double, double* %4, align 8
  %114 = load double, double* %5, align 8
  %115 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), double %113, double %114)
  store double 1.550000e+01, double* %4, align 8
  store double 4.050000e+01, double* %5, align 8
  %116 = load i32*, i32** %2, align 8
  %117 = load double, double* %4, align 8
  %118 = load double, double* %5, align 8
  %119 = call i32 @GdipIsVisiblePoint(i32* %116, double %117, double %118, i64* %6)
  store i32 %119, i32* %1, align 4
  %120 = load i32, i32* @Ok, align 4
  %121 = load i32, i32* %1, align 4
  %122 = call i32 @expect(i32 %120, i32 %121)
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* @TRUE, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load double, double* %4, align 8
  %128 = load double, double* %5, align 8
  %129 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), double %127, double %128)
  %130 = load i32*, i32** %2, align 8
  %131 = load i32, i32* @MatrixOrderAppend, align 4
  %132 = call i32 @GdipTranslateWorldTransform(i32* %130, i32 25, i32 40, i32 %131)
  store double 0.000000e+00, double* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %133 = load i32*, i32** %2, align 8
  %134 = load double, double* %4, align 8
  %135 = load double, double* %5, align 8
  %136 = call i32 @GdipIsVisiblePoint(i32* %133, double %134, double %135, i64* %6)
  store i32 %136, i32* %1, align 4
  %137 = load i32, i32* @Ok, align 4
  %138 = load i32, i32* %1, align 4
  %139 = call i32 @expect(i32 %137, i32 %138)
  %140 = load i64, i64* %6, align 8
  %141 = load i64, i64* @TRUE, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = load double, double* %4, align 8
  %145 = load double, double* %5, align 8
  %146 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), double %144, double %145)
  store double 2.500000e+01, double* %4, align 8
  store double 4.000000e+01, double* %5, align 8
  %147 = load i32*, i32** %2, align 8
  %148 = load double, double* %4, align 8
  %149 = load double, double* %5, align 8
  %150 = call i32 @GdipIsVisiblePoint(i32* %147, double %148, double %149, i64* %6)
  store i32 %150, i32* %1, align 4
  %151 = load i32, i32* @Ok, align 4
  %152 = load i32, i32* %1, align 4
  %153 = call i32 @expect(i32 %151, i32 %152)
  %154 = load i64, i64* %6, align 8
  %155 = load i64, i64* @FALSE, align 8
  %156 = icmp eq i64 %154, %155
  %157 = zext i1 %156 to i32
  %158 = load double, double* %4, align 8
  %159 = load double, double* %5, align 8
  %160 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), double %158, double %159)
  %161 = load i32*, i32** %2, align 8
  %162 = load i32, i32* @MatrixOrderAppend, align 4
  %163 = call i32 @GdipTranslateWorldTransform(i32* %161, i32 -25, i32 -40, i32 %162)
  store double 9.000000e+00, double* %4, align 8
  store double 1.900000e+01, double* %5, align 8
  %164 = load i32*, i32** %2, align 8
  %165 = load double, double* %4, align 8
  %166 = load double, double* %5, align 8
  %167 = call i32 @GdipIsVisiblePoint(i32* %164, double %165, double %166, i64* %6)
  store i32 %167, i32* %1, align 4
  %168 = load i32, i32* @Ok, align 4
  %169 = load i32, i32* %1, align 4
  %170 = call i32 @expect(i32 %168, i32 %169)
  %171 = load i64, i64* %6, align 8
  %172 = load i64, i64* @FALSE, align 8
  %173 = icmp eq i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = load double, double* %4, align 8
  %176 = load double, double* %5, align 8
  %177 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), double %175, double %176)
  store double 9.250000e+00, double* %4, align 8
  store double 1.925000e+01, double* %5, align 8
  %178 = load i32*, i32** %2, align 8
  %179 = load double, double* %4, align 8
  %180 = load double, double* %5, align 8
  %181 = call i32 @GdipIsVisiblePoint(i32* %178, double %179, double %180, i64* %6)
  store i32 %181, i32* %1, align 4
  %182 = load i32, i32* @Ok, align 4
  %183 = load i32, i32* %1, align 4
  %184 = call i32 @expect(i32 %182, i32 %183)
  %185 = load i64, i64* %6, align 8
  %186 = load i64, i64* @FALSE, align 8
  %187 = icmp eq i64 %185, %186
  %188 = zext i1 %187 to i32
  %189 = load double, double* %4, align 8
  %190 = load double, double* %5, align 8
  %191 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), double %189, double %190)
  store double 9.500000e+00, double* %4, align 8
  store double 1.950000e+01, double* %5, align 8
  %192 = load i32*, i32** %2, align 8
  %193 = load double, double* %4, align 8
  %194 = load double, double* %5, align 8
  %195 = call i32 @GdipIsVisiblePoint(i32* %192, double %193, double %194, i64* %6)
  store i32 %195, i32* %1, align 4
  %196 = load i32, i32* @Ok, align 4
  %197 = load i32, i32* %1, align 4
  %198 = call i32 @expect(i32 %196, i32 %197)
  %199 = load i64, i64* %6, align 8
  %200 = load i64, i64* @TRUE, align 8
  %201 = icmp eq i64 %199, %200
  %202 = zext i1 %201 to i32
  %203 = load double, double* %4, align 8
  %204 = load double, double* %5, align 8
  %205 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), double %203, double %204)
  store double 9.750000e+00, double* %4, align 8
  store double 1.975000e+01, double* %5, align 8
  %206 = load i32*, i32** %2, align 8
  %207 = load double, double* %4, align 8
  %208 = load double, double* %5, align 8
  %209 = call i32 @GdipIsVisiblePoint(i32* %206, double %207, double %208, i64* %6)
  store i32 %209, i32* %1, align 4
  %210 = load i32, i32* @Ok, align 4
  %211 = load i32, i32* %1, align 4
  %212 = call i32 @expect(i32 %210, i32 %211)
  %213 = load i64, i64* %6, align 8
  %214 = load i64, i64* @TRUE, align 8
  %215 = icmp eq i64 %213, %214
  %216 = zext i1 %215 to i32
  %217 = load double, double* %4, align 8
  %218 = load double, double* %5, align 8
  %219 = call i32 (i32, i8*, ...) @ok(i32 %216, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), double %217, double %218)
  store double 1.000000e+01, double* %4, align 8
  store double 2.000000e+01, double* %5, align 8
  %220 = load i32*, i32** %2, align 8
  %221 = load double, double* %4, align 8
  %222 = load double, double* %5, align 8
  %223 = call i32 @GdipIsVisiblePoint(i32* %220, double %221, double %222, i64* %6)
  store i32 %223, i32* %1, align 4
  %224 = load i32, i32* @Ok, align 4
  %225 = load i32, i32* %1, align 4
  %226 = call i32 @expect(i32 %224, i32 %225)
  %227 = load i64, i64* %6, align 8
  %228 = load i64, i64* @TRUE, align 8
  %229 = icmp eq i64 %227, %228
  %230 = zext i1 %229 to i32
  %231 = load double, double* %4, align 8
  %232 = load double, double* %5, align 8
  %233 = call i32 (i32, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), double %231, double %232)
  store double 4.000000e+01, double* %4, align 8
  store double 2.000000e+01, double* %5, align 8
  %234 = load i32*, i32** %2, align 8
  %235 = load double, double* %4, align 8
  %236 = load double, double* %5, align 8
  %237 = call i32 @GdipIsVisiblePoint(i32* %234, double %235, double %236, i64* %6)
  store i32 %237, i32* %1, align 4
  %238 = load i32, i32* @Ok, align 4
  %239 = load i32, i32* %1, align 4
  %240 = call i32 @expect(i32 %238, i32 %239)
  %241 = load i64, i64* %6, align 8
  %242 = load i64, i64* @FALSE, align 8
  %243 = icmp eq i64 %241, %242
  %244 = zext i1 %243 to i32
  %245 = load double, double* %4, align 8
  %246 = load double, double* %5, align 8
  %247 = call i32 (i32, i8*, ...) @ok(i32 %244, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), double %245, double %246)
  store double 3.900000e+01, double* %4, align 8
  store double 5.900000e+01, double* %5, align 8
  %248 = load i32*, i32** %2, align 8
  %249 = load double, double* %4, align 8
  %250 = load double, double* %5, align 8
  %251 = call i32 @GdipIsVisiblePoint(i32* %248, double %249, double %250, i64* %6)
  store i32 %251, i32* %1, align 4
  %252 = load i32, i32* @Ok, align 4
  %253 = load i32, i32* %1, align 4
  %254 = call i32 @expect(i32 %252, i32 %253)
  %255 = load i64, i64* %6, align 8
  %256 = load i64, i64* @TRUE, align 8
  %257 = icmp eq i64 %255, %256
  %258 = zext i1 %257 to i32
  %259 = load double, double* %4, align 8
  %260 = load double, double* %5, align 8
  %261 = call i32 (i32, i8*, ...) @ok(i32 %258, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), double %259, double %260)
  store double 3.925000e+01, double* %4, align 8
  store double 5.925000e+01, double* %5, align 8
  %262 = load i32*, i32** %2, align 8
  %263 = load double, double* %4, align 8
  %264 = load double, double* %5, align 8
  %265 = call i32 @GdipIsVisiblePoint(i32* %262, double %263, double %264, i64* %6)
  store i32 %265, i32* %1, align 4
  %266 = load i32, i32* @Ok, align 4
  %267 = load i32, i32* %1, align 4
  %268 = call i32 @expect(i32 %266, i32 %267)
  %269 = load i64, i64* %6, align 8
  %270 = load i64, i64* @TRUE, align 8
  %271 = icmp eq i64 %269, %270
  %272 = zext i1 %271 to i32
  %273 = load double, double* %4, align 8
  %274 = load double, double* %5, align 8
  %275 = call i32 (i32, i8*, ...) @ok(i32 %272, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), double %273, double %274)
  store double 3.950000e+01, double* %4, align 8
  store double 3.950000e+01, double* %5, align 8
  %276 = load i32*, i32** %2, align 8
  %277 = load double, double* %4, align 8
  %278 = load double, double* %5, align 8
  %279 = call i32 @GdipIsVisiblePoint(i32* %276, double %277, double %278, i64* %6)
  store i32 %279, i32* %1, align 4
  %280 = load i32, i32* @Ok, align 4
  %281 = load i32, i32* %1, align 4
  %282 = call i32 @expect(i32 %280, i32 %281)
  %283 = load i64, i64* %6, align 8
  %284 = load i64, i64* @FALSE, align 8
  %285 = icmp eq i64 %283, %284
  %286 = zext i1 %285 to i32
  %287 = load double, double* %4, align 8
  %288 = load double, double* %5, align 8
  %289 = call i32 (i32, i8*, ...) @ok(i32 %286, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), double %287, double %288)
  store double 3.975000e+01, double* %4, align 8
  store double 5.975000e+01, double* %5, align 8
  %290 = load i32*, i32** %2, align 8
  %291 = load double, double* %4, align 8
  %292 = load double, double* %5, align 8
  %293 = call i32 @GdipIsVisiblePoint(i32* %290, double %291, double %292, i64* %6)
  store i32 %293, i32* %1, align 4
  %294 = load i32, i32* @Ok, align 4
  %295 = load i32, i32* %1, align 4
  %296 = call i32 @expect(i32 %294, i32 %295)
  %297 = load i64, i64* %6, align 8
  %298 = load i64, i64* @FALSE, align 8
  %299 = icmp eq i64 %297, %298
  %300 = zext i1 %299 to i32
  %301 = load double, double* %4, align 8
  %302 = load double, double* %5, align 8
  %303 = call i32 (i32, i8*, ...) @ok(i32 %300, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), double %301, double %302)
  store double 4.000000e+01, double* %4, align 8
  store double 6.000000e+01, double* %5, align 8
  %304 = load i32*, i32** %2, align 8
  %305 = load double, double* %4, align 8
  %306 = load double, double* %5, align 8
  %307 = call i32 @GdipIsVisiblePoint(i32* %304, double %305, double %306, i64* %6)
  store i32 %307, i32* %1, align 4
  %308 = load i32, i32* @Ok, align 4
  %309 = load i32, i32* %1, align 4
  %310 = call i32 @expect(i32 %308, i32 %309)
  %311 = load i64, i64* %6, align 8
  %312 = load i64, i64* @FALSE, align 8
  %313 = icmp eq i64 %311, %312
  %314 = zext i1 %313 to i32
  %315 = load double, double* %4, align 8
  %316 = load double, double* %5, align 8
  %317 = call i32 (i32, i8*, ...) @ok(i32 %314, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), double %315, double %316)
  store double 4.015000e+01, double* %4, align 8
  store double 0x404E133333333333, double* %5, align 8
  %318 = load i32*, i32** %2, align 8
  %319 = load double, double* %4, align 8
  %320 = load double, double* %5, align 8
  %321 = call i32 @GdipIsVisiblePoint(i32* %318, double %319, double %320, i64* %6)
  store i32 %321, i32* %1, align 4
  %322 = load i32, i32* @Ok, align 4
  %323 = load i32, i32* %1, align 4
  %324 = call i32 @expect(i32 %322, i32 %323)
  %325 = load i64, i64* %6, align 8
  %326 = load i64, i64* @FALSE, align 8
  %327 = icmp eq i64 %325, %326
  %328 = zext i1 %327 to i32
  %329 = load double, double* %4, align 8
  %330 = load double, double* %5, align 8
  %331 = call i32 (i32, i8*, ...) @ok(i32 %328, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), double %329, double %330)
  store double 1.000000e+01, double* %4, align 8
  store double 6.000000e+01, double* %5, align 8
  %332 = load i32*, i32** %2, align 8
  %333 = load double, double* %4, align 8
  %334 = load double, double* %5, align 8
  %335 = call i32 @GdipIsVisiblePoint(i32* %332, double %333, double %334, i64* %6)
  store i32 %335, i32* %1, align 4
  %336 = load i32, i32* @Ok, align 4
  %337 = load i32, i32* %1, align 4
  %338 = call i32 @expect(i32 %336, i32 %337)
  %339 = load i64, i64* %6, align 8
  %340 = load i64, i64* @FALSE, align 8
  %341 = icmp eq i64 %339, %340
  %342 = zext i1 %341 to i32
  %343 = load double, double* %4, align 8
  %344 = load double, double* %5, align 8
  %345 = call i32 (i32, i8*, ...) @ok(i32 %342, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), double %343, double %344)
  store double 2.500000e+01, double* %4, align 8
  store double 3.000000e+01, double* %5, align 8
  %346 = load i32*, i32** %2, align 8
  %347 = load double, double* %4, align 8
  %348 = fptosi double %347 to i32
  %349 = load double, double* %5, align 8
  %350 = fptosi double %349 to i32
  %351 = call i32 @GdipIsVisiblePointI(i32* %346, i32 %348, i32 %350, i64* %6)
  store i32 %351, i32* %1, align 4
  %352 = load i32, i32* @Ok, align 4
  %353 = load i32, i32* %1, align 4
  %354 = call i32 @expect(i32 %352, i32 %353)
  %355 = load i64, i64* %6, align 8
  %356 = load i64, i64* @TRUE, align 8
  %357 = icmp eq i64 %355, %356
  %358 = zext i1 %357 to i32
  %359 = load double, double* %4, align 8
  %360 = load double, double* %5, align 8
  %361 = call i32 (i32, i8*, ...) @ok(i32 %358, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), double %359, double %360)
  store double 5.000000e+01, double* %4, align 8
  store double 1.000000e+02, double* %5, align 8
  %362 = load i32*, i32** %2, align 8
  %363 = load double, double* %4, align 8
  %364 = fptosi double %363 to i32
  %365 = load double, double* %5, align 8
  %366 = fptosi double %365 to i32
  %367 = call i32 @GdipIsVisiblePointI(i32* %362, i32 %364, i32 %366, i64* %6)
  store i32 %367, i32* %1, align 4
  %368 = load i32, i32* @Ok, align 4
  %369 = load i32, i32* %1, align 4
  %370 = call i32 @expect(i32 %368, i32 %369)
  %371 = load i64, i64* %6, align 8
  %372 = load i64, i64* @FALSE, align 8
  %373 = icmp eq i64 %371, %372
  %374 = zext i1 %373 to i32
  %375 = load double, double* %4, align 8
  %376 = load double, double* %5, align 8
  %377 = call i32 (i32, i8*, ...) @ok(i32 %374, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), double %375, double %376)
  %378 = load i32*, i32** %2, align 8
  %379 = call i32 @GdipDeleteGraphics(i32* %378)
  %380 = load i32, i32* @hwnd, align 4
  %381 = load i32*, i32** %3, align 8
  %382 = call i32 @ReleaseDC(i32 %380, i32* %381)
  ret void
}

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GdipCreateFromHDC(i32*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipIsVisiblePoint(i32*, double, double, i64*) #1

declare dso_local i32 @GdipIsVisiblePointI(i32*, i32, i32, i64*) #1

declare dso_local i32 @GdipSetClipRect(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GdipTranslateWorldTransform(i32*, i32, i32, i32) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

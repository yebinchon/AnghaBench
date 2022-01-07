; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipIsVisibleRect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipIsVisibleRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected HDC to be initialized\0A\00", align 1
@Ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected graphics to be initialized\0A\00", align 1
@InvalidParameter = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Expected (%.2f, %.2f, %.2f, %.2f) to be visible\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"Expected (%.2f, %.2f, %.2f, %.2f) not to be visible\0A\00", align 1
@CombineModeReplace = common dso_local global i32 0, align 4
@MatrixOrderAppend = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipIsVisibleRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipIsVisibleRect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  store i32* null, i32** %2, align 8
  %9 = load i32, i32* @hwnd, align 4
  %10 = call i32* @GetDC(i32 %9)
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @GdipCreateFromHDC(i32* %15, i32** %2)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* @Ok, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @expect(i32 %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @GdipIsVisibleRect(i32* null, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, i64* %8)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* @InvalidParameter, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @expect(i32 %25, i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @GdipIsVisibleRect(i32* %28, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, i64* null)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* @InvalidParameter, align 4
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @expect(i32 %30, i32 %31)
  %33 = call i32 @GdipIsVisibleRectI(i32* null, i32 0, i32 0, i32 0, i32 0, i64* %8)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* @InvalidParameter, align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @expect(i32 %34, i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @GdipIsVisibleRectI(i32* %37, i32 0, i32 0, i32 0, i32 0, i64* null)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* @InvalidParameter, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @expect(i32 %39, i32 %40)
  store double 0.000000e+00, double* %4, align 8
  store double 1.000000e+01, double* %6, align 8
  store double 0.000000e+00, double* %5, align 8
  store double 1.000000e+01, double* %7, align 8
  %42 = load i32*, i32** %2, align 8
  %43 = load double, double* %4, align 8
  %44 = load double, double* %5, align 8
  %45 = load double, double* %6, align 8
  %46 = load double, double* %7, align 8
  %47 = call i32 @GdipIsVisibleRect(i32* %42, double %43, double %44, double %45, double %46, i64* %8)
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* @Ok, align 4
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @expect(i32 %48, i32 %49)
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @TRUE, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load double, double* %4, align 8
  %56 = load double, double* %5, align 8
  %57 = load double, double* %6, align 8
  %58 = load double, double* %7, align 8
  %59 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), double %55, double %56, double %57, double %58)
  store double -1.000000e+01, double* %4, align 8
  store double 2.000000e+01, double* %6, align 8
  store double -1.000000e+01, double* %5, align 8
  store double 2.000000e+01, double* %7, align 8
  %60 = load i32*, i32** %2, align 8
  %61 = load double, double* %4, align 8
  %62 = load double, double* %5, align 8
  %63 = load double, double* %6, align 8
  %64 = load double, double* %7, align 8
  %65 = call i32 @GdipIsVisibleRect(i32* %60, double %61, double %62, double %63, double %64, i64* %8)
  store i32 %65, i32* %1, align 4
  %66 = load i32, i32* @Ok, align 4
  %67 = load i32, i32* %1, align 4
  %68 = call i32 @expect(i32 %66, i32 %67)
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @TRUE, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load double, double* %4, align 8
  %74 = load double, double* %5, align 8
  %75 = load double, double* %6, align 8
  %76 = load double, double* %7, align 8
  %77 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), double %73, double %74, double %75, double %76)
  store double -1.000000e+01, double* %4, align 8
  store double 5.000000e+00, double* %6, align 8
  store double -1.000000e+01, double* %5, align 8
  store double 5.000000e+00, double* %7, align 8
  %78 = load i32*, i32** %2, align 8
  %79 = load double, double* %4, align 8
  %80 = load double, double* %5, align 8
  %81 = load double, double* %6, align 8
  %82 = load double, double* %7, align 8
  %83 = call i32 @GdipIsVisibleRect(i32* %78, double %79, double %80, double %81, double %82, i64* %8)
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* @Ok, align 4
  %85 = load i32, i32* %1, align 4
  %86 = call i32 @expect(i32 %84, i32 %85)
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @FALSE, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load double, double* %4, align 8
  %92 = load double, double* %5, align 8
  %93 = load double, double* %6, align 8
  %94 = load double, double* %7, align 8
  %95 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), double %91, double %92, double %93, double %94)
  %96 = load i32*, i32** %2, align 8
  %97 = load i32, i32* @CombineModeReplace, align 4
  %98 = call i32 @GdipSetClipRect(i32* %96, i32 10, i32 20, i32 30, i32 40, i32 %97)
  store i32 %98, i32* %1, align 4
  %99 = load i32, i32* @Ok, align 4
  %100 = load i32, i32* %1, align 4
  %101 = call i32 @expect(i32 %99, i32 %100)
  store double 1.200000e+01, double* %4, align 8
  store double 1.000000e+01, double* %6, align 8
  store double 2.200000e+01, double* %5, align 8
  store double 1.000000e+01, double* %7, align 8
  %102 = load i32*, i32** %2, align 8
  %103 = load double, double* %4, align 8
  %104 = load double, double* %5, align 8
  %105 = load double, double* %6, align 8
  %106 = load double, double* %7, align 8
  %107 = call i32 @GdipIsVisibleRect(i32* %102, double %103, double %104, double %105, double %106, i64* %8)
  store i32 %107, i32* %1, align 4
  %108 = load i32, i32* @Ok, align 4
  %109 = load i32, i32* %1, align 4
  %110 = call i32 @expect(i32 %108, i32 %109)
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* @TRUE, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load double, double* %4, align 8
  %116 = load double, double* %5, align 8
  %117 = load double, double* %6, align 8
  %118 = load double, double* %7, align 8
  %119 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), double %115, double %116, double %117, double %118)
  store double 3.500000e+01, double* %4, align 8
  store double 1.000000e+01, double* %6, align 8
  store double 5.500000e+01, double* %5, align 8
  store double 1.000000e+01, double* %7, align 8
  %120 = load i32*, i32** %2, align 8
  %121 = load double, double* %4, align 8
  %122 = load double, double* %5, align 8
  %123 = load double, double* %6, align 8
  %124 = load double, double* %7, align 8
  %125 = call i32 @GdipIsVisibleRect(i32* %120, double %121, double %122, double %123, double %124, i64* %8)
  store i32 %125, i32* %1, align 4
  %126 = load i32, i32* @Ok, align 4
  %127 = load i32, i32* %1, align 4
  %128 = call i32 @expect(i32 %126, i32 %127)
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* @TRUE, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = load double, double* %4, align 8
  %134 = load double, double* %5, align 8
  %135 = load double, double* %6, align 8
  %136 = load double, double* %7, align 8
  %137 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), double %133, double %134, double %135, double %136)
  store double 4.500000e+01, double* %4, align 8
  store double 5.000000e+00, double* %6, align 8
  store double 6.500000e+01, double* %5, align 8
  store double 5.000000e+00, double* %7, align 8
  %138 = load i32*, i32** %2, align 8
  %139 = load double, double* %4, align 8
  %140 = load double, double* %5, align 8
  %141 = load double, double* %6, align 8
  %142 = load double, double* %7, align 8
  %143 = call i32 @GdipIsVisibleRect(i32* %138, double %139, double %140, double %141, double %142, i64* %8)
  store i32 %143, i32* %1, align 4
  %144 = load i32, i32* @Ok, align 4
  %145 = load i32, i32* %1, align 4
  %146 = call i32 @expect(i32 %144, i32 %145)
  %147 = load i64, i64* %8, align 8
  %148 = load i64, i64* @FALSE, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = load double, double* %4, align 8
  %152 = load double, double* %5, align 8
  %153 = load double, double* %6, align 8
  %154 = load double, double* %7, align 8
  %155 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), double %151, double %152, double %153, double %154)
  %156 = load i32*, i32** %2, align 8
  %157 = load i32, i32* @MatrixOrderAppend, align 4
  %158 = call i32 @GdipTranslateWorldTransform(i32* %156, i32 25, i32 40, i32 %157)
  store double 0.000000e+00, double* %4, align 8
  store double 1.000000e+01, double* %6, align 8
  store double 0.000000e+00, double* %5, align 8
  store double 1.000000e+01, double* %7, align 8
  %159 = load i32*, i32** %2, align 8
  %160 = load double, double* %4, align 8
  %161 = load double, double* %5, align 8
  %162 = load double, double* %6, align 8
  %163 = load double, double* %7, align 8
  %164 = call i32 @GdipIsVisibleRect(i32* %159, double %160, double %161, double %162, double %163, i64* %8)
  store i32 %164, i32* %1, align 4
  %165 = load i32, i32* @Ok, align 4
  %166 = load i32, i32* %1, align 4
  %167 = call i32 @expect(i32 %165, i32 %166)
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* @TRUE, align 8
  %170 = icmp eq i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = load double, double* %4, align 8
  %173 = load double, double* %5, align 8
  %174 = load double, double* %6, align 8
  %175 = load double, double* %7, align 8
  %176 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), double %172, double %173, double %174, double %175)
  store double 2.500000e+01, double* %4, align 8
  store double 5.000000e+00, double* %6, align 8
  store double 4.000000e+01, double* %5, align 8
  store double 5.000000e+00, double* %7, align 8
  %177 = load i32*, i32** %2, align 8
  %178 = load double, double* %4, align 8
  %179 = load double, double* %5, align 8
  %180 = load double, double* %6, align 8
  %181 = load double, double* %7, align 8
  %182 = call i32 @GdipIsVisibleRect(i32* %177, double %178, double %179, double %180, double %181, i64* %8)
  store i32 %182, i32* %1, align 4
  %183 = load i32, i32* @Ok, align 4
  %184 = load i32, i32* %1, align 4
  %185 = call i32 @expect(i32 %183, i32 %184)
  %186 = load i64, i64* %8, align 8
  %187 = load i64, i64* @FALSE, align 8
  %188 = icmp eq i64 %186, %187
  %189 = zext i1 %188 to i32
  %190 = load double, double* %4, align 8
  %191 = load double, double* %5, align 8
  %192 = load double, double* %6, align 8
  %193 = load double, double* %7, align 8
  %194 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), double %190, double %191, double %192, double %193)
  %195 = load i32*, i32** %2, align 8
  %196 = load i32, i32* @MatrixOrderAppend, align 4
  %197 = call i32 @GdipTranslateWorldTransform(i32* %195, i32 -25, i32 -40, i32 %196)
  store double 0.000000e+00, double* %4, align 8
  store double 7.000000e+01, double* %6, align 8
  store double 0.000000e+00, double* %5, align 8
  store double 9.000000e+01, double* %7, align 8
  %198 = load i32*, i32** %2, align 8
  %199 = load double, double* %4, align 8
  %200 = load double, double* %5, align 8
  %201 = load double, double* %6, align 8
  %202 = load double, double* %7, align 8
  %203 = call i32 @GdipIsVisibleRect(i32* %198, double %199, double %200, double %201, double %202, i64* %8)
  store i32 %203, i32* %1, align 4
  %204 = load i32, i32* @Ok, align 4
  %205 = load i32, i32* %1, align 4
  %206 = call i32 @expect(i32 %204, i32 %205)
  %207 = load i64, i64* %8, align 8
  %208 = load i64, i64* @TRUE, align 8
  %209 = icmp eq i64 %207, %208
  %210 = zext i1 %209 to i32
  %211 = load double, double* %4, align 8
  %212 = load double, double* %5, align 8
  %213 = load double, double* %6, align 8
  %214 = load double, double* %7, align 8
  %215 = call i32 (i32, i8*, ...) @ok(i32 %210, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), double %211, double %212, double %213, double %214)
  store double 0.000000e+00, double* %4, align 8
  store double 7.000000e+01, double* %6, align 8
  store double 0.000000e+00, double* %5, align 8
  store double 3.000000e+01, double* %7, align 8
  %216 = load i32*, i32** %2, align 8
  %217 = load double, double* %4, align 8
  %218 = load double, double* %5, align 8
  %219 = load double, double* %6, align 8
  %220 = load double, double* %7, align 8
  %221 = call i32 @GdipIsVisibleRect(i32* %216, double %217, double %218, double %219, double %220, i64* %8)
  store i32 %221, i32* %1, align 4
  %222 = load i32, i32* @Ok, align 4
  %223 = load i32, i32* %1, align 4
  %224 = call i32 @expect(i32 %222, i32 %223)
  %225 = load i64, i64* %8, align 8
  %226 = load i64, i64* @TRUE, align 8
  %227 = icmp eq i64 %225, %226
  %228 = zext i1 %227 to i32
  %229 = load double, double* %4, align 8
  %230 = load double, double* %5, align 8
  %231 = load double, double* %6, align 8
  %232 = load double, double* %7, align 8
  %233 = call i32 (i32, i8*, ...) @ok(i32 %228, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), double %229, double %230, double %231, double %232)
  store double 0.000000e+00, double* %4, align 8
  store double 3.000000e+01, double* %6, align 8
  store double 0.000000e+00, double* %5, align 8
  store double 9.000000e+01, double* %7, align 8
  %234 = load i32*, i32** %2, align 8
  %235 = load double, double* %4, align 8
  %236 = load double, double* %5, align 8
  %237 = load double, double* %6, align 8
  %238 = load double, double* %7, align 8
  %239 = call i32 @GdipIsVisibleRect(i32* %234, double %235, double %236, double %237, double %238, i64* %8)
  store i32 %239, i32* %1, align 4
  %240 = load i32, i32* @Ok, align 4
  %241 = load i32, i32* %1, align 4
  %242 = call i32 @expect(i32 %240, i32 %241)
  %243 = load i64, i64* %8, align 8
  %244 = load i64, i64* @TRUE, align 8
  %245 = icmp eq i64 %243, %244
  %246 = zext i1 %245 to i32
  %247 = load double, double* %4, align 8
  %248 = load double, double* %5, align 8
  %249 = load double, double* %6, align 8
  %250 = load double, double* %7, align 8
  %251 = call i32 (i32, i8*, ...) @ok(i32 %246, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), double %247, double %248, double %249, double %250)
  store double 0.000000e+00, double* %4, align 8
  store double 1.000000e+01, double* %6, align 8
  store double 2.000000e+01, double* %5, align 8
  store double 4.000000e+01, double* %7, align 8
  %252 = load i32*, i32** %2, align 8
  %253 = load double, double* %4, align 8
  %254 = load double, double* %5, align 8
  %255 = load double, double* %6, align 8
  %256 = load double, double* %7, align 8
  %257 = call i32 @GdipIsVisibleRect(i32* %252, double %253, double %254, double %255, double %256, i64* %8)
  store i32 %257, i32* %1, align 4
  %258 = load i32, i32* @Ok, align 4
  %259 = load i32, i32* %1, align 4
  %260 = call i32 @expect(i32 %258, i32 %259)
  %261 = load i64, i64* %8, align 8
  %262 = load i64, i64* @FALSE, align 8
  %263 = icmp eq i64 %261, %262
  %264 = zext i1 %263 to i32
  %265 = load double, double* %4, align 8
  %266 = load double, double* %5, align 8
  %267 = load double, double* %6, align 8
  %268 = load double, double* %7, align 8
  %269 = call i32 (i32, i8*, ...) @ok(i32 %264, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), double %265, double %266, double %267, double %268)
  store double 1.000000e+01, double* %4, align 8
  store double 3.000000e+01, double* %6, align 8
  store double 0.000000e+00, double* %5, align 8
  store double 2.000000e+01, double* %7, align 8
  %270 = load i32*, i32** %2, align 8
  %271 = load double, double* %4, align 8
  %272 = load double, double* %5, align 8
  %273 = load double, double* %6, align 8
  %274 = load double, double* %7, align 8
  %275 = call i32 @GdipIsVisibleRect(i32* %270, double %271, double %272, double %273, double %274, i64* %8)
  store i32 %275, i32* %1, align 4
  %276 = load i32, i32* @Ok, align 4
  %277 = load i32, i32* %1, align 4
  %278 = call i32 @expect(i32 %276, i32 %277)
  %279 = load i64, i64* %8, align 8
  %280 = load i64, i64* @FALSE, align 8
  %281 = icmp eq i64 %279, %280
  %282 = zext i1 %281 to i32
  %283 = load double, double* %4, align 8
  %284 = load double, double* %5, align 8
  %285 = load double, double* %6, align 8
  %286 = load double, double* %7, align 8
  %287 = call i32 (i32, i8*, ...) @ok(i32 %282, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), double %283, double %284, double %285, double %286)
  store double 4.000000e+01, double* %4, align 8
  store double 1.000000e+01, double* %6, align 8
  store double 2.000000e+01, double* %5, align 8
  store double 4.000000e+01, double* %7, align 8
  %288 = load i32*, i32** %2, align 8
  %289 = load double, double* %4, align 8
  %290 = load double, double* %5, align 8
  %291 = load double, double* %6, align 8
  %292 = load double, double* %7, align 8
  %293 = call i32 @GdipIsVisibleRect(i32* %288, double %289, double %290, double %291, double %292, i64* %8)
  store i32 %293, i32* %1, align 4
  %294 = load i32, i32* @Ok, align 4
  %295 = load i32, i32* %1, align 4
  %296 = call i32 @expect(i32 %294, i32 %295)
  %297 = load i64, i64* %8, align 8
  %298 = load i64, i64* @FALSE, align 8
  %299 = icmp eq i64 %297, %298
  %300 = zext i1 %299 to i32
  %301 = load double, double* %4, align 8
  %302 = load double, double* %5, align 8
  %303 = load double, double* %6, align 8
  %304 = load double, double* %7, align 8
  %305 = call i32 (i32, i8*, ...) @ok(i32 %300, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), double %301, double %302, double %303, double %304)
  store double 1.000000e+01, double* %4, align 8
  store double 3.000000e+01, double* %6, align 8
  store double 6.000000e+01, double* %5, align 8
  store double 1.000000e+01, double* %7, align 8
  %306 = load i32*, i32** %2, align 8
  %307 = load double, double* %4, align 8
  %308 = load double, double* %5, align 8
  %309 = load double, double* %6, align 8
  %310 = load double, double* %7, align 8
  %311 = call i32 @GdipIsVisibleRect(i32* %306, double %307, double %308, double %309, double %310, i64* %8)
  store i32 %311, i32* %1, align 4
  %312 = load i32, i32* @Ok, align 4
  %313 = load i32, i32* %1, align 4
  %314 = call i32 @expect(i32 %312, i32 %313)
  %315 = load i64, i64* %8, align 8
  %316 = load i64, i64* @FALSE, align 8
  %317 = icmp eq i64 %315, %316
  %318 = zext i1 %317 to i32
  %319 = load double, double* %4, align 8
  %320 = load double, double* %5, align 8
  %321 = load double, double* %6, align 8
  %322 = load double, double* %7, align 8
  %323 = call i32 (i32, i8*, ...) @ok(i32 %318, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), double %319, double %320, double %321, double %322)
  store double 4.000000e-01, double* %4, align 8
  store double 1.040000e+01, double* %6, align 8
  store double 2.000000e+01, double* %5, align 8
  store double 4.000000e+01, double* %7, align 8
  %324 = load i32*, i32** %2, align 8
  %325 = load double, double* %4, align 8
  %326 = load double, double* %5, align 8
  %327 = load double, double* %6, align 8
  %328 = load double, double* %7, align 8
  %329 = call i32 @GdipIsVisibleRect(i32* %324, double %325, double %326, double %327, double %328, i64* %8)
  store i32 %329, i32* %1, align 4
  %330 = load i32, i32* @Ok, align 4
  %331 = load i32, i32* %1, align 4
  %332 = call i32 @expect(i32 %330, i32 %331)
  %333 = load i64, i64* %8, align 8
  %334 = load i64, i64* @TRUE, align 8
  %335 = icmp eq i64 %333, %334
  %336 = zext i1 %335 to i32
  %337 = load double, double* %4, align 8
  %338 = load double, double* %5, align 8
  %339 = load double, double* %6, align 8
  %340 = load double, double* %7, align 8
  %341 = call i32 (i32, i8*, ...) @ok(i32 %336, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), double %337, double %338, double %339, double %340)
  store double 1.000000e+01, double* %4, align 8
  store double 3.000000e+01, double* %6, align 8
  store double 4.000000e-01, double* %5, align 8
  store double 2.040000e+01, double* %7, align 8
  %342 = load i32*, i32** %2, align 8
  %343 = load double, double* %4, align 8
  %344 = load double, double* %5, align 8
  %345 = load double, double* %6, align 8
  %346 = load double, double* %7, align 8
  %347 = call i32 @GdipIsVisibleRect(i32* %342, double %343, double %344, double %345, double %346, i64* %8)
  store i32 %347, i32* %1, align 4
  %348 = load i32, i32* @Ok, align 4
  %349 = load i32, i32* %1, align 4
  %350 = call i32 @expect(i32 %348, i32 %349)
  %351 = load i64, i64* %8, align 8
  %352 = load i64, i64* @TRUE, align 8
  %353 = icmp eq i64 %351, %352
  %354 = zext i1 %353 to i32
  %355 = load double, double* %4, align 8
  %356 = load double, double* %5, align 8
  %357 = load double, double* %6, align 8
  %358 = load double, double* %7, align 8
  %359 = call i32 (i32, i8*, ...) @ok(i32 %354, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), double %355, double %356, double %357, double %358)
  store double 0.000000e+00, double* %4, align 8
  store double 3.000000e+01, double* %6, align 8
  store double 0.000000e+00, double* %5, align 8
  store double 9.000000e+01, double* %7, align 8
  %360 = load i32*, i32** %2, align 8
  %361 = load double, double* %4, align 8
  %362 = fptosi double %361 to i32
  %363 = load double, double* %5, align 8
  %364 = fptosi double %363 to i32
  %365 = load double, double* %6, align 8
  %366 = fptosi double %365 to i32
  %367 = load double, double* %7, align 8
  %368 = fptosi double %367 to i32
  %369 = call i32 @GdipIsVisibleRectI(i32* %360, i32 %362, i32 %364, i32 %366, i32 %368, i64* %8)
  store i32 %369, i32* %1, align 4
  %370 = load i32, i32* @Ok, align 4
  %371 = load i32, i32* %1, align 4
  %372 = call i32 @expect(i32 %370, i32 %371)
  %373 = load i64, i64* %8, align 8
  %374 = load i64, i64* @TRUE, align 8
  %375 = icmp eq i64 %373, %374
  %376 = zext i1 %375 to i32
  %377 = load double, double* %4, align 8
  %378 = load double, double* %5, align 8
  %379 = load double, double* %6, align 8
  %380 = load double, double* %7, align 8
  %381 = call i32 (i32, i8*, ...) @ok(i32 %376, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), double %377, double %378, double %379, double %380)
  store double 1.200000e+01, double* %4, align 8
  store double 1.000000e+01, double* %6, align 8
  store double 2.200000e+01, double* %5, align 8
  store double 1.000000e+01, double* %7, align 8
  %382 = load i32*, i32** %2, align 8
  %383 = load double, double* %4, align 8
  %384 = fptosi double %383 to i32
  %385 = load double, double* %5, align 8
  %386 = fptosi double %385 to i32
  %387 = load double, double* %6, align 8
  %388 = fptosi double %387 to i32
  %389 = load double, double* %7, align 8
  %390 = fptosi double %389 to i32
  %391 = call i32 @GdipIsVisibleRectI(i32* %382, i32 %384, i32 %386, i32 %388, i32 %390, i64* %8)
  store i32 %391, i32* %1, align 4
  %392 = load i32, i32* @Ok, align 4
  %393 = load i32, i32* %1, align 4
  %394 = call i32 @expect(i32 %392, i32 %393)
  %395 = load i64, i64* %8, align 8
  %396 = load i64, i64* @TRUE, align 8
  %397 = icmp eq i64 %395, %396
  %398 = zext i1 %397 to i32
  %399 = load double, double* %4, align 8
  %400 = load double, double* %5, align 8
  %401 = load double, double* %6, align 8
  %402 = load double, double* %7, align 8
  %403 = call i32 (i32, i8*, ...) @ok(i32 %398, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), double %399, double %400, double %401, double %402)
  %404 = load i32*, i32** %2, align 8
  %405 = call i32 @GdipDeleteGraphics(i32* %404)
  %406 = load i32, i32* @hwnd, align 4
  %407 = load i32*, i32** %3, align 8
  %408 = call i32 @ReleaseDC(i32 %406, i32* %407)
  ret void
}

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GdipCreateFromHDC(i32*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipIsVisibleRect(i32*, double, double, double, double, i64*) #1

declare dso_local i32 @GdipIsVisibleRectI(i32*, i32, i32, i32, i32, i64*) #1

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

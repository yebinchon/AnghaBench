; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_pen_thickness.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_pen_thickness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_data = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%union.anon = type { i32* }
%struct.TYPE_7__ = type { double, double }
%struct.TYPE_8__ = type { i32, i64 }
%struct.test_data.0 = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@test_pen_thickness.td = internal constant [9 x %struct.test_data] [%struct.test_data { i32 10, i32 10, i32 1, i32 129, i32 129, i32 1, i64 1, i64 1, i64 1, i64 1 }, %struct.test_data { i32 10, i32 10, i32 1, i32 129, i32 129, i32 0, i64 0, i64 0, i64 1, i64 1 }, %struct.test_data { i32 10, i32 10, i32 1, i32 129, i32 129, i32 0, i64 1, i64 1, i64 1, i64 1 }, %struct.test_data { i32 10, i32 10, i32 3, i32 129, i32 129, i32 2, i64 2, i64 2, i64 2, i64 2 }, %struct.test_data { i32 10, i32 10, i32 30, i32 129, i32 130, i32 1, i64 1, i64 1, i64 1, i64 1 }, %struct.test_data { i32 10, i32 10, i32 1, i32 128, i32 129, i32 1, i64 1, i64 1, i64 1, i64 1 }, %struct.test_data { i32 10, i32 10, i32 1, i32 128, i32 129, i32 0, i64 1, i64 1, i64 1, i64 1 }, %struct.test_data { i32 10, i32 10, i32 3, i32 128, i32 129, i32 2, i64 6, i64 6, i64 6, i64 6 }, %struct.test_data { i32 10, i32 10, i32 2, i32 128, i32 130, i32 1, i64 20, i64 20, i64 20, i64 20 }], align 16
@PixelFormat24bppRGB = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@CoordinateSpaceWorld = common dso_local global i32 0, align 4
@CoordinateSpaceDevice = common dso_local global i32 0, align 4
@ImageLockModeRead = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%u: expected %d, got %d\0A\00", align 1
@FillModeAlternate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_pen_thickness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pen_thickness() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %union.anon, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %470, %0
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @ARRAY_SIZE(%struct.test_data.0* bitcast ([9 x %struct.test_data]* @test_pen_thickness.td to %struct.test_data.0*))
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %473

17:                                               ; preds = %13
  %18 = load i32, i32* @PixelFormat24bppRGB, align 4
  %19 = bitcast %union.anon* %5 to i32**
  %20 = call i32 @GdipCreateBitmapFromScan0(i32 100, i32 100, i32 0, i32 %18, i32* null, i32** %19)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* @Ok, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @expect(i32 %21, i32 %22)
  %24 = bitcast %union.anon* %5 to i32**
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [9 x %struct.test_data], [9 x %struct.test_data]* @test_pen_thickness.td, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.test_data, %struct.test_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [9 x %struct.test_data], [9 x %struct.test_data]* @test_pen_thickness.td, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.test_data, %struct.test_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @GdipBitmapSetResolution(i32* %25, i32 %30, i32 %35)
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* @Ok, align 4
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @expect(i32 %37, i32 %38)
  %40 = bitcast %union.anon* %5 to i32**
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @GdipGetImageGraphicsContext(i32* %41, i32** %4)
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* @Ok, align 4
  %44 = load i32, i32* %1, align 4
  %45 = call i32 @expect(i32 %43, i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [9 x %struct.test_data], [9 x %struct.test_data]* @test_pen_thickness.td, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.test_data, %struct.test_data* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @GdipSetPageUnit(i32* %46, i32 %51)
  store i32 %52, i32* %1, align 4
  %53 = load i32, i32* @Ok, align 4
  %54 = load i32, i32* %1, align 4
  %55 = call i32 @expect(i32 %53, i32 %54)
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [9 x %struct.test_data], [9 x %struct.test_data]* @test_pen_thickness.td, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.test_data, %struct.test_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @GdipSetPageScale(i32* %56, i32 %61)
  store i32 %62, i32* %1, align 4
  %63 = load i32, i32* @Ok, align 4
  %64 = load i32, i32* %1, align 4
  %65 = call i32 @expect(i32 %63, i32 %64)
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [9 x %struct.test_data], [9 x %struct.test_data]* @test_pen_thickness.td, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.test_data, %struct.test_data* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [9 x %struct.test_data], [9 x %struct.test_data]* @test_pen_thickness.td, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.test_data, %struct.test_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @GdipCreatePen1(i32 -1, i32 %70, i32 %75, i32** %6)
  store i32 %76, i32* %1, align 4
  %77 = load i32, i32* @Ok, align 4
  %78 = load i32, i32* %1, align 4
  %79 = call i32 @expect(i32 %77, i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store double 1.000000e+02, double* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store double 1.000000e+02, double* %81, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* @CoordinateSpaceWorld, align 4
  %84 = load i32, i32* @CoordinateSpaceDevice, align 4
  %85 = call i32 @GdipTransformPoints(i32* %82, i32 %83, i32 %84, %struct.TYPE_7__* %7, i32 1)
  store i32 %85, i32* %1, align 4
  %86 = load i32, i32* @Ok, align 4
  %87 = load i32, i32* %1, align 4
  %88 = call i32 @expect(i32 %86, i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %92 = load double, double* %91, align 8
  %93 = fdiv double %92, 2.000000e+00
  %94 = fptosi double %93 to i32
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %96 = load double, double* %95, align 8
  %97 = fdiv double %96, 2.000000e+00
  %98 = fptosi double %97 to i32
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %100 = load double, double* %99, align 8
  %101 = fptosi double %100 to i32
  %102 = call i32 @GdipDrawLine(i32* %89, i32* %90, i32 %94, i32 0, i32 %98, i32 %101)
  store i32 %102, i32* %1, align 4
  %103 = load i32, i32* @Ok, align 4
  %104 = load i32, i32* %1, align 4
  %105 = call i32 @expect(i32 %103, i32 %104)
  %106 = load i32*, i32** %4, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %109 = load double, double* %108, align 8
  %110 = fdiv double %109, 2.000000e+00
  %111 = fptosi double %110 to i32
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %113 = load double, double* %112, align 8
  %114 = fptosi double %113 to i32
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %116 = load double, double* %115, align 8
  %117 = fdiv double %116, 2.000000e+00
  %118 = fptosi double %117 to i32
  %119 = call i32 @GdipDrawLine(i32* %106, i32* %107, i32 0, i32 %111, i32 %114, i32 %118)
  store i32 %119, i32* %1, align 4
  %120 = load i32, i32* @Ok, align 4
  %121 = load i32, i32* %1, align 4
  %122 = call i32 @expect(i32 %120, i32 %121)
  %123 = bitcast %union.anon* %5 to i32**
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* @ImageLockModeRead, align 4
  %126 = load i32, i32* @PixelFormat24bppRGB, align 4
  %127 = call i32 @GdipBitmapLockBits(i32* %124, i32* null, i32 %125, i32 %126, %struct.TYPE_8__* %9)
  store i32 %127, i32* %1, align 4
  %128 = load i32, i32* @Ok, align 4
  %129 = load i32, i32* %1, align 4
  %130 = call i32 @expect(i32 %128, i32 %129)
  store i64 -1, i64* %10, align 8
  store i64 -2, i64* %11, align 8
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %148, %17
  %132 = load i32, i32* %3, align 4
  %133 = icmp slt i32 %132, 100
  br i1 %133, label %134, label %151

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i32*
  %138 = load i32, i32* %3, align 4
  %139 = mul nsw i32 %138, 3
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 255
  br i1 %143, label %144, label %147

144:                                              ; preds = %134
  %145 = load i32, i32* %3, align 4
  %146 = sext i32 %145 to i64
  store i64 %146, i64* %10, align 8
  br label %151

147:                                              ; preds = %134
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %3, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %3, align 4
  br label %131

151:                                              ; preds = %144, %131
  store i32 99, i32* %3, align 4
  br label %152

152:                                              ; preds = %169, %151
  %153 = load i32, i32* %3, align 4
  %154 = icmp sge i32 %153, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to i32*
  %159 = load i32, i32* %3, align 4
  %160 = mul nsw i32 %159, 3
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 255
  br i1 %164, label %165, label %168

165:                                              ; preds = %155
  %166 = load i32, i32* %3, align 4
  %167 = sext i32 %166 to i64
  store i64 %167, i64* %11, align 8
  br label %172

168:                                              ; preds = %155
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %3, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %3, align 4
  br label %152

172:                                              ; preds = %165, %152
  %173 = load i64, i64* %11, align 8
  %174 = load i64, i64* %10, align 8
  %175 = sub nsw i64 %173, %174
  %176 = add nsw i64 %175, 1
  store i64 %176, i64* %12, align 8
  %177 = load i64, i64* %12, align 8
  %178 = load i32, i32* %2, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [9 x %struct.test_data], [9 x %struct.test_data]* @test_pen_thickness.td, i64 0, i64 %179
  %181 = getelementptr inbounds %struct.test_data, %struct.test_data* %180, i32 0, i32 6
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %177, %182
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* %2, align 4
  %186 = load i32, i32* %2, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [9 x %struct.test_data], [9 x %struct.test_data]* @test_pen_thickness.td, i64 0, i64 %187
  %189 = getelementptr inbounds %struct.test_data, %struct.test_data* %188, i32 0, i32 6
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %12, align 8
  %192 = call i32 @ok(i32 %184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %185, i64 %190, i64 %191)
  store i64 -1, i64* %10, align 8
  store i64 -2, i64* %11, align 8
  store i32 0, i32* %3, align 4
  br label %193

193:                                              ; preds = %212, %172
  %194 = load i32, i32* %3, align 4
  %195 = icmp slt i32 %194, 100
  br i1 %195, label %196, label %215

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = inttoptr i64 %198 to i32*
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %3, align 4
  %203 = mul nsw i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %199, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 255
  br i1 %207, label %208, label %211

208:                                              ; preds = %196
  %209 = load i32, i32* %3, align 4
  %210 = sext i32 %209 to i64
  store i64 %210, i64* %10, align 8
  br label %215

211:                                              ; preds = %196
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %3, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %3, align 4
  br label %193

215:                                              ; preds = %208, %193
  store i32 99, i32* %3, align 4
  br label %216

216:                                              ; preds = %235, %215
  %217 = load i32, i32* %3, align 4
  %218 = icmp sge i32 %217, 0
  br i1 %218, label %219, label %238

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = inttoptr i64 %221 to i32*
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %3, align 4
  %226 = mul nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %222, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 255
  br i1 %230, label %231, label %234

231:                                              ; preds = %219
  %232 = load i32, i32* %3, align 4
  %233 = sext i32 %232 to i64
  store i64 %233, i64* %11, align 8
  br label %238

234:                                              ; preds = %219
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %3, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %3, align 4
  br label %216

238:                                              ; preds = %231, %216
  %239 = load i64, i64* %11, align 8
  %240 = load i64, i64* %10, align 8
  %241 = sub nsw i64 %239, %240
  %242 = add nsw i64 %241, 1
  store i64 %242, i64* %12, align 8
  %243 = load i64, i64* %12, align 8
  %244 = load i32, i32* %2, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [9 x %struct.test_data], [9 x %struct.test_data]* @test_pen_thickness.td, i64 0, i64 %245
  %247 = getelementptr inbounds %struct.test_data, %struct.test_data* %246, i32 0, i32 7
  %248 = load i64, i64* %247, align 8
  %249 = icmp eq i64 %243, %248
  %250 = zext i1 %249 to i32
  %251 = load i32, i32* %2, align 4
  %252 = load i32, i32* %2, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [9 x %struct.test_data], [9 x %struct.test_data]* @test_pen_thickness.td, i64 0, i64 %253
  %255 = getelementptr inbounds %struct.test_data, %struct.test_data* %254, i32 0, i32 7
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* %12, align 8
  %258 = call i32 @ok(i32 %250, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %251, i64 %256, i64 %257)
  %259 = bitcast %union.anon* %5 to i32**
  %260 = load i32*, i32** %259, align 8
  %261 = call i32 @GdipBitmapUnlockBits(i32* %260, %struct.TYPE_8__* %9)
  store i32 %261, i32* %1, align 4
  %262 = load i32, i32* @Ok, align 4
  %263 = load i32, i32* %1, align 4
  %264 = call i32 @expect(i32 %262, i32 %263)
  %265 = load i32*, i32** %4, align 8
  %266 = call i32 @GdipGraphicsClear(i32* %265, i32 -16777216)
  store i32 %266, i32* %1, align 4
  %267 = load i32, i32* @Ok, align 4
  %268 = load i32, i32* %1, align 4
  %269 = call i32 @expect(i32 %267, i32 %268)
  %270 = load i32, i32* @FillModeAlternate, align 4
  %271 = call i32 @GdipCreatePath(i32 %270, i32** %8)
  store i32 %271, i32* %1, align 4
  %272 = load i32, i32* @Ok, align 4
  %273 = load i32, i32* %1, align 4
  %274 = call i32 @expect(i32 %272, i32 %273)
  %275 = load i32*, i32** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %277 = load double, double* %276, align 8
  %278 = fdiv double %277, 2.000000e+00
  %279 = fptosi double %278 to i32
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %281 = load double, double* %280, align 8
  %282 = fdiv double %281, 2.000000e+00
  %283 = fptosi double %282 to i32
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %285 = load double, double* %284, align 8
  %286 = fptosi double %285 to i32
  %287 = call i32 @GdipAddPathLine(i32* %275, i32 %279, i32 0, i32 %283, i32 %286)
  store i32 %287, i32* %1, align 4
  %288 = load i32, i32* @Ok, align 4
  %289 = load i32, i32* %1, align 4
  %290 = call i32 @expect(i32 %288, i32 %289)
  %291 = load i32*, i32** %8, align 8
  %292 = call i32 @GdipClosePathFigure(i32* %291)
  store i32 %292, i32* %1, align 4
  %293 = load i32, i32* @Ok, align 4
  %294 = load i32, i32* %1, align 4
  %295 = call i32 @expect(i32 %293, i32 %294)
  %296 = load i32*, i32** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %298 = load double, double* %297, align 8
  %299 = fdiv double %298, 2.000000e+00
  %300 = fptosi double %299 to i32
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %302 = load double, double* %301, align 8
  %303 = fptosi double %302 to i32
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %305 = load double, double* %304, align 8
  %306 = fdiv double %305, 2.000000e+00
  %307 = fptosi double %306 to i32
  %308 = call i32 @GdipAddPathLine(i32* %296, i32 0, i32 %300, i32 %303, i32 %307)
  store i32 %308, i32* %1, align 4
  %309 = load i32, i32* @Ok, align 4
  %310 = load i32, i32* %1, align 4
  %311 = call i32 @expect(i32 %309, i32 %310)
  %312 = load i32*, i32** %4, align 8
  %313 = load i32*, i32** %6, align 8
  %314 = load i32*, i32** %8, align 8
  %315 = call i32 @GdipDrawPath(i32* %312, i32* %313, i32* %314)
  store i32 %315, i32* %1, align 4
  %316 = load i32, i32* @Ok, align 4
  %317 = load i32, i32* %1, align 4
  %318 = call i32 @expect(i32 %316, i32 %317)
  %319 = load i32*, i32** %8, align 8
  %320 = call i32 @GdipDeletePath(i32* %319)
  %321 = bitcast %union.anon* %5 to i32**
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* @ImageLockModeRead, align 4
  %324 = load i32, i32* @PixelFormat24bppRGB, align 4
  %325 = call i32 @GdipBitmapLockBits(i32* %322, i32* null, i32 %323, i32 %324, %struct.TYPE_8__* %9)
  store i32 %325, i32* %1, align 4
  %326 = load i32, i32* @Ok, align 4
  %327 = load i32, i32* %1, align 4
  %328 = call i32 @expect(i32 %326, i32 %327)
  store i64 -1, i64* %10, align 8
  store i64 -2, i64* %11, align 8
  store i32 0, i32* %3, align 4
  br label %329

329:                                              ; preds = %346, %238
  %330 = load i32, i32* %3, align 4
  %331 = icmp slt i32 %330, 100
  br i1 %331, label %332, label %349

332:                                              ; preds = %329
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = inttoptr i64 %334 to i32*
  %336 = load i32, i32* %3, align 4
  %337 = mul nsw i32 %336, 3
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %335, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = icmp eq i32 %340, 255
  br i1 %341, label %342, label %345

342:                                              ; preds = %332
  %343 = load i32, i32* %3, align 4
  %344 = sext i32 %343 to i64
  store i64 %344, i64* %10, align 8
  br label %349

345:                                              ; preds = %332
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %3, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %3, align 4
  br label %329

349:                                              ; preds = %342, %329
  store i32 99, i32* %3, align 4
  br label %350

350:                                              ; preds = %367, %349
  %351 = load i32, i32* %3, align 4
  %352 = icmp sge i32 %351, 0
  br i1 %352, label %353, label %370

353:                                              ; preds = %350
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = inttoptr i64 %355 to i32*
  %357 = load i32, i32* %3, align 4
  %358 = mul nsw i32 %357, 3
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %356, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = icmp eq i32 %361, 255
  br i1 %362, label %363, label %366

363:                                              ; preds = %353
  %364 = load i32, i32* %3, align 4
  %365 = sext i32 %364 to i64
  store i64 %365, i64* %11, align 8
  br label %370

366:                                              ; preds = %353
  br label %367

367:                                              ; preds = %366
  %368 = load i32, i32* %3, align 4
  %369 = add nsw i32 %368, -1
  store i32 %369, i32* %3, align 4
  br label %350

370:                                              ; preds = %363, %350
  %371 = load i64, i64* %11, align 8
  %372 = load i64, i64* %10, align 8
  %373 = sub nsw i64 %371, %372
  %374 = add nsw i64 %373, 1
  store i64 %374, i64* %12, align 8
  %375 = load i64, i64* %12, align 8
  %376 = load i32, i32* %2, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [9 x %struct.test_data], [9 x %struct.test_data]* @test_pen_thickness.td, i64 0, i64 %377
  %379 = getelementptr inbounds %struct.test_data, %struct.test_data* %378, i32 0, i32 8
  %380 = load i64, i64* %379, align 8
  %381 = icmp eq i64 %375, %380
  %382 = zext i1 %381 to i32
  %383 = load i32, i32* %2, align 4
  %384 = load i32, i32* %2, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [9 x %struct.test_data], [9 x %struct.test_data]* @test_pen_thickness.td, i64 0, i64 %385
  %387 = getelementptr inbounds %struct.test_data, %struct.test_data* %386, i32 0, i32 8
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* %12, align 8
  %390 = call i32 @ok(i32 %382, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %383, i64 %388, i64 %389)
  store i64 -1, i64* %10, align 8
  store i64 -2, i64* %11, align 8
  store i32 0, i32* %3, align 4
  br label %391

391:                                              ; preds = %410, %370
  %392 = load i32, i32* %3, align 4
  %393 = icmp slt i32 %392, 100
  br i1 %393, label %394, label %413

394:                                              ; preds = %391
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = inttoptr i64 %396 to i32*
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* %3, align 4
  %401 = mul nsw i32 %399, %400
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %397, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = icmp eq i32 %404, 255
  br i1 %405, label %406, label %409

406:                                              ; preds = %394
  %407 = load i32, i32* %3, align 4
  %408 = sext i32 %407 to i64
  store i64 %408, i64* %10, align 8
  br label %413

409:                                              ; preds = %394
  br label %410

410:                                              ; preds = %409
  %411 = load i32, i32* %3, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %3, align 4
  br label %391

413:                                              ; preds = %406, %391
  store i32 99, i32* %3, align 4
  br label %414

414:                                              ; preds = %433, %413
  %415 = load i32, i32* %3, align 4
  %416 = icmp sge i32 %415, 0
  br i1 %416, label %417, label %436

417:                                              ; preds = %414
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  %420 = inttoptr i64 %419 to i32*
  %421 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* %3, align 4
  %424 = mul nsw i32 %422, %423
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %420, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = icmp eq i32 %427, 255
  br i1 %428, label %429, label %432

429:                                              ; preds = %417
  %430 = load i32, i32* %3, align 4
  %431 = sext i32 %430 to i64
  store i64 %431, i64* %11, align 8
  br label %436

432:                                              ; preds = %417
  br label %433

433:                                              ; preds = %432
  %434 = load i32, i32* %3, align 4
  %435 = add nsw i32 %434, -1
  store i32 %435, i32* %3, align 4
  br label %414

436:                                              ; preds = %429, %414
  %437 = load i64, i64* %11, align 8
  %438 = load i64, i64* %10, align 8
  %439 = sub nsw i64 %437, %438
  %440 = add nsw i64 %439, 1
  store i64 %440, i64* %12, align 8
  %441 = load i64, i64* %12, align 8
  %442 = load i32, i32* %2, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [9 x %struct.test_data], [9 x %struct.test_data]* @test_pen_thickness.td, i64 0, i64 %443
  %445 = getelementptr inbounds %struct.test_data, %struct.test_data* %444, i32 0, i32 9
  %446 = load i64, i64* %445, align 8
  %447 = icmp eq i64 %441, %446
  %448 = zext i1 %447 to i32
  %449 = load i32, i32* %2, align 4
  %450 = load i32, i32* %2, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [9 x %struct.test_data], [9 x %struct.test_data]* @test_pen_thickness.td, i64 0, i64 %451
  %453 = getelementptr inbounds %struct.test_data, %struct.test_data* %452, i32 0, i32 9
  %454 = load i64, i64* %453, align 8
  %455 = load i64, i64* %12, align 8
  %456 = call i32 @ok(i32 %448, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %449, i64 %454, i64 %455)
  %457 = bitcast %union.anon* %5 to i32**
  %458 = load i32*, i32** %457, align 8
  %459 = call i32 @GdipBitmapUnlockBits(i32* %458, %struct.TYPE_8__* %9)
  store i32 %459, i32* %1, align 4
  %460 = load i32, i32* @Ok, align 4
  %461 = load i32, i32* %1, align 4
  %462 = call i32 @expect(i32 %460, i32 %461)
  %463 = load i32*, i32** %6, align 8
  %464 = call i32 @GdipDeletePen(i32* %463)
  %465 = load i32*, i32** %4, align 8
  %466 = call i32 @GdipDeleteGraphics(i32* %465)
  %467 = bitcast %union.anon* %5 to i32**
  %468 = load i32*, i32** %467, align 8
  %469 = call i32 @GdipDisposeImage(i32* %468)
  br label %470

470:                                              ; preds = %436
  %471 = load i32, i32* %2, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %2, align 4
  br label %13

473:                                              ; preds = %13
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.test_data.0*) #1

declare dso_local i32 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipBitmapSetResolution(i32*, i32, i32) #1

declare dso_local i32 @GdipGetImageGraphicsContext(i32*, i32**) #1

declare dso_local i32 @GdipSetPageUnit(i32*, i32) #1

declare dso_local i32 @GdipSetPageScale(i32*, i32) #1

declare dso_local i32 @GdipCreatePen1(i32, i32, i32, i32**) #1

declare dso_local i32 @GdipTransformPoints(i32*, i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @GdipDrawLine(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @GdipBitmapLockBits(i32*, i32*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ok(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @GdipBitmapUnlockBits(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @GdipGraphicsClear(i32*, i32) #1

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipAddPathLine(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @GdipClosePathFigure(i32*) #1

declare dso_local i32 @GdipDrawPath(i32*, i32*, i32*) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

declare dso_local i32 @GdipDeletePen(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

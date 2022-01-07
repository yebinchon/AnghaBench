; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_test_converter_8bppIndexed.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_test_converter_8bppIndexed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@testdata_24bppBGR = common dso_local global i32 0, align 4
@factory = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CreatePalette error %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"GetColorCount error %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"expected 0, got %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"CreateFormatConverter error %#x\0A\00", align 1
@GUID_WICPixelFormat24bppBGR = common dso_local global i32 0, align 4
@WICBitmapDitherTypeNone = common dso_local global i32 0, align 4
@WICBitmapPaletteTypeCustom = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Initialize error %#x\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"unexpected error %#x\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"CopyPixels error %#x\0A\00", align 1
@GUID_WICPixelFormat8bppIndexed = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@WINCODEC_ERR_WRONGSTATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"CopyPalette error %#x\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"expected 0\0A\00", align 1
@WICBitmapPaletteTypeFixedGray16 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"expected 16, got %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"expected != 0\0A\00", align 1
@WICBitmapPaletteTypeFixedHalftone64 = common dso_local global i32 0, align 4
@WICBitmapPaletteTypeMedianCut = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"expected 8, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_converter_8bppIndexed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_converter_8bppIndexed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [192 x i64], align 16
  %8 = call i32 @CreateTestBitmap(i32* @testdata_24bppBGR, %struct.TYPE_4__** %2)
  %9 = load i32, i32* @factory, align 4
  %10 = call i32 @IWICImagingFactory_CreatePalette(i32 %9, i32** %4)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @S_OK, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %1, align 4
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 -559038737, i32* %5, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @IWICPalette_GetColorCount(i32* %17, i32* %5)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @S_OK, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %1, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @factory, align 4
  %31 = call i32 @IWICImagingFactory_CreateFormatConverter(i32 %30, i32** %3)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @S_OK, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %1, align 4
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* @WICBitmapDitherTypeNone, align 4
  %42 = load i32, i32* @WICBitmapPaletteTypeCustom, align 4
  %43 = call i32 @IWICFormatConverter_Initialize(i32* %38, i32* %40, i32* @GUID_WICPixelFormat24bppBGR, i32 %41, i32* null, double 0.000000e+00, i32 %42)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @S_OK, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %1, align 4
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @IWICFormatConverter_CopyPalette(i32* %50, i32* %51)
  store i32 %52, i32* %1, align 4
  %53 = load i32, i32* %1, align 4
  %54 = icmp eq i32 %53, -559038737
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %1, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = getelementptr inbounds [192 x i64], [192 x i64]* %7, i64 0, i64 0
  %60 = call i32 @IWICFormatConverter_CopyPixels(i32* %58, i32* null, i32 96, i32 1536, i64* %59)
  store i32 %60, i32* %1, align 4
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @S_OK, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %1, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @IWICFormatConverter_Release(i32* %67)
  %69 = load i32, i32* @factory, align 4
  %70 = call i32 @IWICImagingFactory_CreateFormatConverter(i32 %69, i32** %3)
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* %1, align 4
  %72 = load i32, i32* @S_OK, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %1, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* @WICBitmapDitherTypeNone, align 4
  %81 = load i32, i32* @WICBitmapPaletteTypeCustom, align 4
  %82 = call i32 @IWICFormatConverter_Initialize(i32* %77, i32* %79, i32* @GUID_WICPixelFormat8bppIndexed, i32 %80, i32* null, double 0.000000e+00, i32 %81)
  store i32 %82, i32* %1, align 4
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* @E_INVALIDARG, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %1, align 4
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %3, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @IWICFormatConverter_CopyPalette(i32* %89, i32* %90)
  store i32 %91, i32* %1, align 4
  %92 = load i32, i32* %1, align 4
  %93 = load i32, i32* @WINCODEC_ERR_WRONGSTATE, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %1, align 4
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i32*, i32** %3, align 8
  %99 = getelementptr inbounds [192 x i64], [192 x i64]* %7, i64 0, i64 0
  %100 = call i32 @IWICFormatConverter_CopyPixels(i32* %98, i32* null, i32 32, i32 1536, i64* %99)
  store i32 %100, i32* %1, align 4
  %101 = load i32, i32* %1, align 4
  %102 = load i32, i32* @WINCODEC_ERR_WRONGSTATE, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %1, align 4
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @IWICFormatConverter_Release(i32* %107)
  %109 = load i32, i32* @factory, align 4
  %110 = call i32 @IWICImagingFactory_CreateFormatConverter(i32 %109, i32** %3)
  store i32 %110, i32* %1, align 4
  %111 = load i32, i32* %1, align 4
  %112 = load i32, i32* @S_OK, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %1, align 4
  %116 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %3, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* @WICBitmapDitherTypeNone, align 4
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* @WICBitmapPaletteTypeCustom, align 4
  %123 = call i32 @IWICFormatConverter_Initialize(i32* %117, i32* %119, i32* @GUID_WICPixelFormat8bppIndexed, i32 %120, i32* %121, double 0.000000e+00, i32 %122)
  store i32 %123, i32* %1, align 4
  %124 = load i32, i32* %1, align 4
  %125 = load i32, i32* @S_OK, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %1, align 4
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  %130 = load i32*, i32** %3, align 8
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @IWICFormatConverter_CopyPalette(i32* %130, i32* %131)
  store i32 %132, i32* %1, align 4
  %133 = load i32, i32* %1, align 4
  %134 = load i32, i32* @S_OK, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %1, align 4
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %137)
  store i32 -559038737, i32* %5, align 4
  %139 = load i32*, i32** %4, align 8
  %140 = call i32 @IWICPalette_GetColorCount(i32* %139, i32* %5)
  store i32 %140, i32* %1, align 4
  %141 = load i32, i32* %1, align 4
  %142 = load i32, i32* @S_OK, align 4
  %143 = icmp eq i32 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %1, align 4
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %5, align 4
  %148 = icmp eq i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = load i32, i32* %5, align 4
  %151 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  %152 = getelementptr inbounds [192 x i64], [192 x i64]* %7, i64 0, i64 0
  %153 = call i32 @memset(i64* %152, i32 170, i32 1536)
  %154 = load i32*, i32** %3, align 8
  %155 = getelementptr inbounds [192 x i64], [192 x i64]* %7, i64 0, i64 0
  %156 = call i32 @IWICFormatConverter_CopyPixels(i32* %154, i32* null, i32 32, i32 1536, i64* %155)
  store i32 %156, i32* %1, align 4
  %157 = load i32, i32* %1, align 4
  %158 = load i32, i32* @S_OK, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %1, align 4
  %162 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %161)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %163

163:                                              ; preds = %176, %0
  %164 = load i32, i32* %6, align 4
  %165 = icmp slt i32 %164, 64
  br i1 %165, label %166, label %179

166:                                              ; preds = %163
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [192 x i64], [192 x i64]* %7, i64 0, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load i32, i32* %5, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %172, %166
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %6, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %6, align 4
  br label %163

179:                                              ; preds = %163
  %180 = load i32, i32* %5, align 4
  %181 = icmp eq i32 %180, 0
  %182 = zext i1 %181 to i32
  %183 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %184 = load i32*, i32** %3, align 8
  %185 = call i32 @IWICFormatConverter_Release(i32* %184)
  %186 = load i32, i32* @factory, align 4
  %187 = call i32 @IWICImagingFactory_CreateFormatConverter(i32 %186, i32** %3)
  store i32 %187, i32* %1, align 4
  %188 = load i32, i32* %1, align 4
  %189 = load i32, i32* @S_OK, align 4
  %190 = icmp eq i32 %188, %189
  %191 = zext i1 %190 to i32
  %192 = load i32, i32* %1, align 4
  %193 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %192)
  %194 = load i32*, i32** %3, align 8
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* @WICBitmapDitherTypeNone, align 4
  %198 = load i32, i32* @WICBitmapPaletteTypeFixedGray16, align 4
  %199 = call i32 @IWICFormatConverter_Initialize(i32* %194, i32* %196, i32* @GUID_WICPixelFormat8bppIndexed, i32 %197, i32* null, double 0.000000e+00, i32 %198)
  store i32 %199, i32* %1, align 4
  %200 = load i32, i32* %1, align 4
  %201 = load i32, i32* @S_OK, align 4
  %202 = icmp eq i32 %200, %201
  %203 = zext i1 %202 to i32
  %204 = load i32, i32* %1, align 4
  %205 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %204)
  %206 = load i32*, i32** %3, align 8
  %207 = load i32*, i32** %4, align 8
  %208 = call i32 @IWICFormatConverter_CopyPalette(i32* %206, i32* %207)
  store i32 %208, i32* %1, align 4
  %209 = load i32, i32* %1, align 4
  %210 = load i32, i32* @S_OK, align 4
  %211 = icmp eq i32 %209, %210
  %212 = zext i1 %211 to i32
  %213 = load i32, i32* %1, align 4
  %214 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %213)
  store i32 -559038737, i32* %5, align 4
  %215 = load i32*, i32** %4, align 8
  %216 = call i32 @IWICPalette_GetColorCount(i32* %215, i32* %5)
  store i32 %216, i32* %1, align 4
  %217 = load i32, i32* %1, align 4
  %218 = load i32, i32* @S_OK, align 4
  %219 = icmp eq i32 %217, %218
  %220 = zext i1 %219 to i32
  %221 = load i32, i32* %1, align 4
  %222 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* %5, align 4
  %224 = icmp eq i32 %223, 16
  %225 = zext i1 %224 to i32
  %226 = load i32, i32* %5, align 4
  %227 = call i32 (i32, i8*, ...) @ok(i32 %225, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %226)
  %228 = load i32*, i32** %3, align 8
  %229 = getelementptr inbounds [192 x i64], [192 x i64]* %7, i64 0, i64 0
  %230 = call i32 @IWICFormatConverter_CopyPixels(i32* %228, i32* null, i32 32, i32 1536, i64* %229)
  store i32 %230, i32* %1, align 4
  %231 = load i32, i32* %1, align 4
  %232 = load i32, i32* @S_OK, align 4
  %233 = icmp eq i32 %231, %232
  %234 = zext i1 %233 to i32
  %235 = load i32, i32* %1, align 4
  %236 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %235)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %237

237:                                              ; preds = %250, %179
  %238 = load i32, i32* %6, align 4
  %239 = icmp slt i32 %238, 64
  br i1 %239, label %240, label %253

240:                                              ; preds = %237
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [192 x i64], [192 x i64]* %7, i64 0, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %240
  %247 = load i32, i32* %5, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %5, align 4
  br label %249

249:                                              ; preds = %246, %240
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %6, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %6, align 4
  br label %237

253:                                              ; preds = %237
  %254 = load i32, i32* %5, align 4
  %255 = icmp ne i32 %254, 0
  %256 = zext i1 %255 to i32
  %257 = call i32 (i32, i8*, ...) @ok(i32 %256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %258 = load i32*, i32** %3, align 8
  %259 = call i32 @IWICFormatConverter_Release(i32* %258)
  %260 = load i32, i32* @factory, align 4
  %261 = call i32 @IWICImagingFactory_CreateFormatConverter(i32 %260, i32** %3)
  store i32 %261, i32* %1, align 4
  %262 = load i32, i32* %1, align 4
  %263 = load i32, i32* @S_OK, align 4
  %264 = icmp eq i32 %262, %263
  %265 = zext i1 %264 to i32
  %266 = load i32, i32* %1, align 4
  %267 = call i32 (i32, i8*, ...) @ok(i32 %265, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %266)
  %268 = load i32*, i32** %3, align 8
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = load i32, i32* @WICBitmapDitherTypeNone, align 4
  %272 = load i32*, i32** %4, align 8
  %273 = load i32, i32* @WICBitmapPaletteTypeFixedHalftone64, align 4
  %274 = call i32 @IWICFormatConverter_Initialize(i32* %268, i32* %270, i32* @GUID_WICPixelFormat8bppIndexed, i32 %271, i32* %272, double 0.000000e+00, i32 %273)
  store i32 %274, i32* %1, align 4
  %275 = load i32, i32* %1, align 4
  %276 = load i32, i32* @S_OK, align 4
  %277 = icmp eq i32 %275, %276
  %278 = zext i1 %277 to i32
  %279 = load i32, i32* %1, align 4
  %280 = call i32 (i32, i8*, ...) @ok(i32 %278, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %279)
  %281 = load i32*, i32** %3, align 8
  %282 = load i32*, i32** %4, align 8
  %283 = call i32 @IWICFormatConverter_CopyPalette(i32* %281, i32* %282)
  store i32 %283, i32* %1, align 4
  %284 = load i32, i32* %1, align 4
  %285 = load i32, i32* @S_OK, align 4
  %286 = icmp eq i32 %284, %285
  %287 = zext i1 %286 to i32
  %288 = load i32, i32* %1, align 4
  %289 = call i32 (i32, i8*, ...) @ok(i32 %287, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %288)
  store i32 -559038737, i32* %5, align 4
  %290 = load i32*, i32** %4, align 8
  %291 = call i32 @IWICPalette_GetColorCount(i32* %290, i32* %5)
  store i32 %291, i32* %1, align 4
  %292 = load i32, i32* %1, align 4
  %293 = load i32, i32* @S_OK, align 4
  %294 = icmp eq i32 %292, %293
  %295 = zext i1 %294 to i32
  %296 = load i32, i32* %1, align 4
  %297 = call i32 (i32, i8*, ...) @ok(i32 %295, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %296)
  %298 = load i32, i32* %5, align 4
  %299 = icmp eq i32 %298, 16
  %300 = zext i1 %299 to i32
  %301 = load i32, i32* %5, align 4
  %302 = call i32 (i32, i8*, ...) @ok(i32 %300, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %301)
  %303 = load i32*, i32** %3, align 8
  %304 = getelementptr inbounds [192 x i64], [192 x i64]* %7, i64 0, i64 0
  %305 = call i32 @IWICFormatConverter_CopyPixels(i32* %303, i32* null, i32 32, i32 1536, i64* %304)
  store i32 %305, i32* %1, align 4
  %306 = load i32, i32* %1, align 4
  %307 = load i32, i32* @S_OK, align 4
  %308 = icmp eq i32 %306, %307
  %309 = zext i1 %308 to i32
  %310 = load i32, i32* %1, align 4
  %311 = call i32 (i32, i8*, ...) @ok(i32 %309, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %310)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %312

312:                                              ; preds = %325, %253
  %313 = load i32, i32* %6, align 4
  %314 = icmp slt i32 %313, 64
  br i1 %314, label %315, label %328

315:                                              ; preds = %312
  %316 = load i32, i32* %6, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [192 x i64], [192 x i64]* %7, i64 0, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %315
  %322 = load i32, i32* %5, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %5, align 4
  br label %324

324:                                              ; preds = %321, %315
  br label %325

325:                                              ; preds = %324
  %326 = load i32, i32* %6, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %6, align 4
  br label %312

328:                                              ; preds = %312
  %329 = load i32, i32* %5, align 4
  %330 = icmp ne i32 %329, 0
  %331 = zext i1 %330 to i32
  %332 = call i32 (i32, i8*, ...) @ok(i32 %331, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %333 = load i32*, i32** %3, align 8
  %334 = call i32 @IWICFormatConverter_Release(i32* %333)
  %335 = load i32, i32* @factory, align 4
  %336 = call i32 @IWICImagingFactory_CreateFormatConverter(i32 %335, i32** %3)
  store i32 %336, i32* %1, align 4
  %337 = load i32, i32* %1, align 4
  %338 = load i32, i32* @S_OK, align 4
  %339 = icmp eq i32 %337, %338
  %340 = zext i1 %339 to i32
  %341 = load i32, i32* %1, align 4
  %342 = call i32 (i32, i8*, ...) @ok(i32 %340, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %341)
  %343 = load i32*, i32** %3, align 8
  %344 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 0
  %346 = load i32, i32* @WICBitmapDitherTypeNone, align 4
  %347 = load i32*, i32** %4, align 8
  %348 = load i32, i32* @WICBitmapPaletteTypeMedianCut, align 4
  %349 = call i32 @IWICFormatConverter_Initialize(i32* %343, i32* %345, i32* @GUID_WICPixelFormat8bppIndexed, i32 %346, i32* %347, double 0.000000e+00, i32 %348)
  store i32 %349, i32* %1, align 4
  %350 = load i32, i32* %1, align 4
  %351 = load i32, i32* @S_OK, align 4
  %352 = icmp eq i32 %350, %351
  %353 = zext i1 %352 to i32
  %354 = load i32, i32* %1, align 4
  %355 = call i32 (i32, i8*, ...) @ok(i32 %353, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %354)
  %356 = load i32*, i32** %3, align 8
  %357 = load i32*, i32** %4, align 8
  %358 = call i32 @IWICFormatConverter_CopyPalette(i32* %356, i32* %357)
  store i32 %358, i32* %1, align 4
  %359 = load i32, i32* %1, align 4
  %360 = load i32, i32* @S_OK, align 4
  %361 = icmp eq i32 %359, %360
  %362 = zext i1 %361 to i32
  %363 = load i32, i32* %1, align 4
  %364 = call i32 (i32, i8*, ...) @ok(i32 %362, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %363)
  store i32 -559038737, i32* %5, align 4
  %365 = load i32*, i32** %4, align 8
  %366 = call i32 @IWICPalette_GetColorCount(i32* %365, i32* %5)
  store i32 %366, i32* %1, align 4
  %367 = load i32, i32* %1, align 4
  %368 = load i32, i32* @S_OK, align 4
  %369 = icmp eq i32 %367, %368
  %370 = zext i1 %369 to i32
  %371 = load i32, i32* %1, align 4
  %372 = call i32 (i32, i8*, ...) @ok(i32 %370, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %371)
  %373 = load i32, i32* %5, align 4
  %374 = icmp eq i32 %373, 16
  %375 = zext i1 %374 to i32
  %376 = load i32, i32* %5, align 4
  %377 = call i32 (i32, i8*, ...) @ok(i32 %375, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %376)
  %378 = load i32*, i32** %3, align 8
  %379 = getelementptr inbounds [192 x i64], [192 x i64]* %7, i64 0, i64 0
  %380 = call i32 @IWICFormatConverter_CopyPixels(i32* %378, i32* null, i32 32, i32 1536, i64* %379)
  store i32 %380, i32* %1, align 4
  %381 = load i32, i32* %1, align 4
  %382 = load i32, i32* @S_OK, align 4
  %383 = icmp eq i32 %381, %382
  %384 = zext i1 %383 to i32
  %385 = load i32, i32* %1, align 4
  %386 = call i32 (i32, i8*, ...) @ok(i32 %384, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %385)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %387

387:                                              ; preds = %400, %328
  %388 = load i32, i32* %6, align 4
  %389 = icmp slt i32 %388, 64
  br i1 %389, label %390, label %403

390:                                              ; preds = %387
  %391 = load i32, i32* %6, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [192 x i64], [192 x i64]* %7, i64 0, i64 %392
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %390
  %397 = load i32, i32* %5, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %5, align 4
  br label %399

399:                                              ; preds = %396, %390
  br label %400

400:                                              ; preds = %399
  %401 = load i32, i32* %6, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %6, align 4
  br label %387

403:                                              ; preds = %387
  %404 = load i32, i32* %5, align 4
  %405 = icmp ne i32 %404, 0
  %406 = zext i1 %405 to i32
  %407 = call i32 (i32, i8*, ...) @ok(i32 %406, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %408 = load i32*, i32** %3, align 8
  %409 = call i32 @IWICFormatConverter_Release(i32* %408)
  %410 = load i32, i32* @factory, align 4
  %411 = call i32 @IWICImagingFactory_CreateFormatConverter(i32 %410, i32** %3)
  store i32 %411, i32* %1, align 4
  %412 = load i32, i32* %1, align 4
  %413 = load i32, i32* @S_OK, align 4
  %414 = icmp eq i32 %412, %413
  %415 = zext i1 %414 to i32
  %416 = load i32, i32* %1, align 4
  %417 = call i32 (i32, i8*, ...) @ok(i32 %415, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %416)
  %418 = load i32*, i32** %3, align 8
  %419 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 0
  %421 = load i32, i32* @WICBitmapDitherTypeNone, align 4
  %422 = load i32, i32* @WICBitmapPaletteTypeMedianCut, align 4
  %423 = call i32 @IWICFormatConverter_Initialize(i32* %418, i32* %420, i32* @GUID_WICPixelFormat8bppIndexed, i32 %421, i32* null, double 0.000000e+00, i32 %422)
  store i32 %423, i32* %1, align 4
  %424 = load i32, i32* %1, align 4
  %425 = load i32, i32* @S_OK, align 4
  %426 = icmp eq i32 %424, %425
  br i1 %426, label %434, label %427

427:                                              ; preds = %403
  %428 = load i32, i32* %1, align 4
  %429 = load i32, i32* @E_INVALIDARG, align 4
  %430 = icmp eq i32 %428, %429
  %431 = zext i1 %430 to i32
  %432 = call i64 @broken(i32 %431)
  %433 = icmp ne i64 %432, 0
  br label %434

434:                                              ; preds = %427, %403
  %435 = phi i1 [ true, %403 ], [ %433, %427 ]
  %436 = zext i1 %435 to i32
  %437 = load i32, i32* %1, align 4
  %438 = call i32 (i32, i8*, ...) @ok(i32 %436, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %437)
  %439 = load i32, i32* %1, align 4
  %440 = load i32, i32* @S_OK, align 4
  %441 = icmp eq i32 %439, %440
  br i1 %441, label %442, label %495

442:                                              ; preds = %434
  %443 = load i32*, i32** %3, align 8
  %444 = load i32*, i32** %4, align 8
  %445 = call i32 @IWICFormatConverter_CopyPalette(i32* %443, i32* %444)
  store i32 %445, i32* %1, align 4
  %446 = load i32, i32* %1, align 4
  %447 = load i32, i32* @S_OK, align 4
  %448 = icmp eq i32 %446, %447
  %449 = zext i1 %448 to i32
  %450 = load i32, i32* %1, align 4
  %451 = call i32 (i32, i8*, ...) @ok(i32 %449, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %450)
  store i32 -559038737, i32* %5, align 4
  %452 = load i32*, i32** %4, align 8
  %453 = call i32 @IWICPalette_GetColorCount(i32* %452, i32* %5)
  store i32 %453, i32* %1, align 4
  %454 = load i32, i32* %1, align 4
  %455 = load i32, i32* @S_OK, align 4
  %456 = icmp eq i32 %454, %455
  %457 = zext i1 %456 to i32
  %458 = load i32, i32* %1, align 4
  %459 = call i32 (i32, i8*, ...) @ok(i32 %457, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %458)
  %460 = load i32, i32* %5, align 4
  %461 = icmp eq i32 %460, 8
  %462 = zext i1 %461 to i32
  %463 = load i32, i32* %5, align 4
  %464 = call i32 (i32, i8*, ...) @ok(i32 %462, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %463)
  %465 = load i32*, i32** %3, align 8
  %466 = getelementptr inbounds [192 x i64], [192 x i64]* %7, i64 0, i64 0
  %467 = call i32 @IWICFormatConverter_CopyPixels(i32* %465, i32* null, i32 32, i32 1536, i64* %466)
  store i32 %467, i32* %1, align 4
  %468 = load i32, i32* %1, align 4
  %469 = load i32, i32* @S_OK, align 4
  %470 = icmp eq i32 %468, %469
  %471 = zext i1 %470 to i32
  %472 = load i32, i32* %1, align 4
  %473 = call i32 (i32, i8*, ...) @ok(i32 %471, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %472)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %474

474:                                              ; preds = %487, %442
  %475 = load i32, i32* %6, align 4
  %476 = icmp slt i32 %475, 64
  br i1 %476, label %477, label %490

477:                                              ; preds = %474
  %478 = load i32, i32* %6, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [192 x i64], [192 x i64]* %7, i64 0, i64 %479
  %481 = load i64, i64* %480, align 8
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %486

483:                                              ; preds = %477
  %484 = load i32, i32* %5, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %5, align 4
  br label %486

486:                                              ; preds = %483, %477
  br label %487

487:                                              ; preds = %486
  %488 = load i32, i32* %6, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %6, align 4
  br label %474

490:                                              ; preds = %474
  %491 = load i32, i32* %5, align 4
  %492 = icmp ne i32 %491, 0
  %493 = zext i1 %492 to i32
  %494 = call i32 (i32, i8*, ...) @ok(i32 %493, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %495

495:                                              ; preds = %490, %434
  %496 = load i32*, i32** %3, align 8
  %497 = call i32 @IWICFormatConverter_Release(i32* %496)
  %498 = load i32*, i32** %4, align 8
  %499 = call i32 @IWICPalette_Release(i32* %498)
  %500 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %501 = call i32 @DeleteTestBitmap(%struct.TYPE_4__* %500)
  ret void
}

declare dso_local i32 @CreateTestBitmap(i32*, %struct.TYPE_4__**) #1

declare dso_local i32 @IWICImagingFactory_CreatePalette(i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IWICPalette_GetColorCount(i32*, i32*) #1

declare dso_local i32 @IWICImagingFactory_CreateFormatConverter(i32, i32**) #1

declare dso_local i32 @IWICFormatConverter_Initialize(i32*, i32*, i32*, i32, i32*, double, i32) #1

declare dso_local i32 @IWICFormatConverter_CopyPalette(i32*, i32*) #1

declare dso_local i32 @IWICFormatConverter_CopyPixels(i32*, i32*, i32, i32, i64*) #1

declare dso_local i32 @IWICFormatConverter_Release(i32*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @IWICPalette_Release(i32*) #1

declare dso_local i32 @DeleteTestBitmap(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

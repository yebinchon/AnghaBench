; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_histogram.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_histogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HistogramFormatARGB = common dso_local global i32 0, align 4
@HistogramFormatPARGB = common dso_local global i32 0, align 4
@HistogramFormatRGB = common dso_local global i32 0, align 4
@HistogramFormatGray = common dso_local global i32 0, align 4
@HistogramFormatB = common dso_local global i32 0, align 4
@HistogramFormatG = common dso_local global i32 0, align 4
@HistogramFormatR = common dso_local global i32 0, align 4
@HistogramFormatA = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@PixelFormat24bppRGB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Got red (0xff) %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Got green (0xff) %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Got blue (0xff) %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Got red (0x01) %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Got green (0x3f) %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Got blue (0x20) %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Got alpha (0xff) %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_histogram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_histogram() #0 {
  %1 = alloca [256 x i64], align 16
  %2 = alloca [256 x i64], align 16
  %3 = alloca [256 x i64], align 16
  %4 = alloca [256 x i64], align 16
  %5 = alloca [8 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %14 = load i32, i32* @HistogramFormatARGB, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @HistogramFormatPARGB, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @HistogramFormatRGB, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @HistogramFormatGray, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @HistogramFormatB, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  %24 = load i32, i32* @HistogramFormatG, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  %26 = load i32, i32* @HistogramFormatR, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %25, i64 1
  %28 = load i32, i32* @HistogramFormatA, align 4
  store i32 %28, i32* %27, align 4
  store i64 8, i64* %6, align 8
  store i64 16, i64* %7, align 8
  %29 = load i32, i32* @HistogramFormatARGB, align 4
  %30 = call i64 @pGdipBitmapGetHistogramSize(i32 %29, i64* null)
  store i64 %30, i64* %11, align 8
  %31 = load i32, i32* @InvalidParameter, align 4
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @expect(i32 %31, i64 %32)
  %34 = call i64 @pGdipBitmapGetHistogramSize(i32 255, i64* null)
  store i64 %34, i64* %11, align 8
  %35 = load i32, i32* @InvalidParameter, align 4
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @expect(i32 %35, i64 %36)
  store i64 123, i64* %8, align 8
  %38 = call i64 @pGdipBitmapGetHistogramSize(i32 10, i64* %8)
  store i64 %38, i64* %11, align 8
  %39 = load i32, i32* @Ok, align 4
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @expect(i32 %39, i64 %40)
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @expect(i32 256, i64 %42)
  store i64 0, i64* %9, align 8
  br label %44

44:                                               ; preds = %59, %0
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %47 = call i64 @ARRAY_SIZE(i32* %46)
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  store i64 0, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @pGdipBitmapGetHistogramSize(i32 %52, i64* %8)
  store i64 %53, i64* %11, align 8
  %54 = load i32, i32* @Ok, align 4
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @expect(i32 %54, i64 %55)
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @expect(i32 256, i64 %57)
  br label %59

59:                                               ; preds = %49
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %9, align 8
  br label %44

62:                                               ; preds = %44
  store i32* null, i32** %12, align 8
  %63 = load i32, i32* @PixelFormat24bppRGB, align 4
  %64 = call i64 @GdipCreateBitmapFromScan0(i64 8, i64 16, i32 0, i32 %63, i32* null, i32** %12)
  store i64 %64, i64* %11, align 8
  %65 = load i32, i32* @Ok, align 4
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @expect(i32 %65, i64 %66)
  store i64 0, i64* %10, align 8
  br label %68

68:                                               ; preds = %90, %62
  %69 = load i64, i64* %10, align 8
  %70 = icmp ult i64 %69, 8
  br i1 %70, label %71, label %93

71:                                               ; preds = %68
  %72 = load i32*, i32** %12, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @GdipBitmapSetPixel(i32* %72, i64 %73, i32 0, i32 -65536)
  %75 = load i32*, i32** %12, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @GdipBitmapSetPixel(i32* %75, i64 %76, i32 1, i32 -16711936)
  %78 = load i32*, i32** %12, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @GdipBitmapSetPixel(i32* %78, i64 %79, i32 2, i32 -16776961)
  %81 = load i32*, i32** %12, align 8
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @GdipBitmapSetPixel(i32* %81, i64 %82, i32 3, i32 -16711680)
  %84 = load i32*, i32** %12, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @GdipBitmapSetPixel(i32* %84, i64 %85, i32 4, i32 -16761088)
  %87 = load i32*, i32** %12, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @GdipBitmapSetPixel(i32* %87, i64 %88, i32 5, i32 -16777184)
  br label %90

90:                                               ; preds = %71
  %91 = load i64, i64* %10, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %10, align 8
  br label %68

93:                                               ; preds = %68
  %94 = load i32, i32* @HistogramFormatRGB, align 4
  %95 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 0
  %96 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %97 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %98 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0
  %99 = call i64 @pGdipBitmapGetHistogram(i32* null, i32 %94, i32 256, i64* %95, i64* %96, i64* %97, i64* %98)
  store i64 %99, i64* %11, align 8
  %100 = load i32, i32* @InvalidParameter, align 4
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @expect(i32 %100, i64 %101)
  %103 = load i32*, i32** %12, align 8
  %104 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 0
  %105 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %106 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %107 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0
  %108 = call i64 @pGdipBitmapGetHistogram(i32* %103, i32 123, i32 256, i64* %104, i64* %105, i64* %106, i64* %107)
  store i64 %108, i64* %11, align 8
  %109 = load i32, i32* @InvalidParameter, align 4
  %110 = load i64, i64* %11, align 8
  %111 = call i32 @expect(i32 %109, i64 %110)
  %112 = load i32*, i32** %12, align 8
  %113 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 0
  %114 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %115 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %116 = call i64 @pGdipBitmapGetHistogram(i32* %112, i32 123, i32 256, i64* %113, i64* %114, i64* %115, i64* null)
  store i64 %116, i64* %11, align 8
  %117 = load i32, i32* @InvalidParameter, align 4
  %118 = load i64, i64* %11, align 8
  %119 = call i32 @expect(i32 %117, i64 %118)
  %120 = load i32*, i32** %12, align 8
  %121 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 0
  %122 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %123 = call i64 @pGdipBitmapGetHistogram(i32* %120, i32 123, i32 256, i64* %121, i64* %122, i64* null, i64* null)
  store i64 %123, i64* %11, align 8
  %124 = load i32, i32* @InvalidParameter, align 4
  %125 = load i64, i64* %11, align 8
  %126 = call i32 @expect(i32 %124, i64 %125)
  %127 = load i32*, i32** %12, align 8
  %128 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 0
  %129 = call i64 @pGdipBitmapGetHistogram(i32* %127, i32 123, i32 256, i64* %128, i64* null, i64* null, i64* null)
  store i64 %129, i64* %11, align 8
  %130 = load i32, i32* @InvalidParameter, align 4
  %131 = load i64, i64* %11, align 8
  %132 = call i32 @expect(i32 %130, i64 %131)
  %133 = load i32*, i32** %12, align 8
  %134 = load i32, i32* @HistogramFormatRGB, align 4
  %135 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 0
  %136 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %137 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %138 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0
  %139 = call i64 @pGdipBitmapGetHistogram(i32* %133, i32 %134, i32 256, i64* %135, i64* %136, i64* %137, i64* %138)
  store i64 %139, i64* %11, align 8
  %140 = load i32, i32* @InvalidParameter, align 4
  %141 = load i64, i64* %11, align 8
  %142 = call i32 @expect(i32 %140, i64 %141)
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* @HistogramFormatRGB, align 4
  %145 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 0
  %146 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %147 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %148 = call i64 @pGdipBitmapGetHistogram(i32* %143, i32 %144, i32 100, i64* %145, i64* %146, i64* %147, i64* null)
  store i64 %148, i64* %11, align 8
  %149 = load i32, i32* @InvalidParameter, align 4
  %150 = load i64, i64* %11, align 8
  %151 = call i32 @expect(i32 %149, i64 %150)
  %152 = load i32*, i32** %12, align 8
  %153 = load i32, i32* @HistogramFormatRGB, align 4
  %154 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 0
  %155 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %156 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %157 = call i64 @pGdipBitmapGetHistogram(i32* %152, i32 %153, i32 257, i64* %154, i64* %155, i64* %156, i64* null)
  store i64 %157, i64* %11, align 8
  %158 = load i32, i32* @InvalidParameter, align 4
  %159 = load i64, i64* %11, align 8
  %160 = call i32 @expect(i32 %158, i64 %159)
  %161 = load i32*, i32** %12, align 8
  %162 = load i32, i32* @HistogramFormatRGB, align 4
  %163 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 0
  %164 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %165 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %166 = call i64 @pGdipBitmapGetHistogram(i32* %161, i32 %162, i32 256, i64* %163, i64* %164, i64* %165, i64* null)
  store i64 %166, i64* %11, align 8
  %167 = load i32, i32* @Ok, align 4
  %168 = load i64, i64* %11, align 8
  %169 = call i32 @expect(i32 %167, i64 %168)
  %170 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 255
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %171, 8
  %173 = zext i1 %172 to i32
  %174 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 255
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @ok(i32 %173, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %175)
  %177 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 255
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %178, 8
  %180 = zext i1 %179 to i32
  %181 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 255
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @ok(i32 %180, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %182)
  %184 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 255
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 8
  %187 = zext i1 %186 to i32
  %188 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 255
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @ok(i32 %187, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %189)
  %191 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %192, 8
  %194 = zext i1 %193 to i32
  %195 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 1
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @ok(i32 %194, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %196)
  %198 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 63
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %199, 8
  %201 = zext i1 %200 to i32
  %202 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 63
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @ok(i32 %201, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %203)
  %205 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 32
  %206 = load i64, i64* %205, align 16
  %207 = icmp eq i64 %206, 8
  %208 = zext i1 %207 to i32
  %209 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 32
  %210 = load i64, i64* %209, align 16
  %211 = call i32 @ok(i32 %208, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %210)
  %212 = load i32*, i32** %12, align 8
  %213 = load i32, i32* @HistogramFormatARGB, align 4
  %214 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 0
  %215 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %216 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %217 = call i64 @pGdipBitmapGetHistogram(i32* %212, i32 %213, i32 256, i64* %214, i64* %215, i64* %216, i64* null)
  store i64 %217, i64* %11, align 8
  %218 = load i32, i32* @InvalidParameter, align 4
  %219 = load i64, i64* %11, align 8
  %220 = call i32 @expect(i32 %218, i64 %219)
  %221 = load i32*, i32** %12, align 8
  %222 = load i32, i32* @HistogramFormatARGB, align 4
  %223 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 0
  %224 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %225 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %226 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0
  %227 = call i64 @pGdipBitmapGetHistogram(i32* %221, i32 %222, i32 256, i64* %223, i64* %224, i64* %225, i64* %226)
  store i64 %227, i64* %11, align 8
  %228 = load i32, i32* @Ok, align 4
  %229 = load i64, i64* %11, align 8
  %230 = call i32 @expect(i32 %228, i64 %229)
  %231 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 255
  %232 = load i64, i64* %231, align 8
  %233 = icmp eq i64 %232, 8
  %234 = zext i1 %233 to i32
  %235 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 255
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @ok(i32 %234, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %236)
  %238 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 255
  %239 = load i64, i64* %238, align 8
  %240 = icmp eq i64 %239, 8
  %241 = zext i1 %240 to i32
  %242 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 255
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @ok(i32 %241, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %243)
  %245 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 255
  %246 = load i64, i64* %245, align 8
  %247 = icmp eq i64 %246, 8
  %248 = zext i1 %247 to i32
  %249 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 255
  %250 = load i64, i64* %249, align 8
  %251 = call i32 @ok(i32 %248, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %250)
  %252 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp eq i64 %253, 8
  %255 = zext i1 %254 to i32
  %256 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 1
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @ok(i32 %255, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %257)
  %259 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 63
  %260 = load i64, i64* %259, align 8
  %261 = icmp eq i64 %260, 8
  %262 = zext i1 %261 to i32
  %263 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 63
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @ok(i32 %262, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %264)
  %266 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 32
  %267 = load i64, i64* %266, align 16
  %268 = icmp eq i64 %267, 8
  %269 = zext i1 %268 to i32
  %270 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 32
  %271 = load i64, i64* %270, align 16
  %272 = call i32 @ok(i32 %269, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %271)
  %273 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 255
  %274 = load i64, i64* %273, align 8
  %275 = icmp eq i64 %274, 128
  %276 = zext i1 %275 to i32
  %277 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 255
  %278 = load i64, i64* %277, align 8
  %279 = call i32 @ok(i32 %276, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %278)
  %280 = load i32*, i32** %12, align 8
  %281 = load i32, i32* @HistogramFormatGray, align 4
  %282 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 0
  %283 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %284 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %285 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0
  %286 = call i64 @pGdipBitmapGetHistogram(i32* %280, i32 %281, i32 256, i64* %282, i64* %283, i64* %284, i64* %285)
  store i64 %286, i64* %11, align 8
  %287 = load i32, i32* @InvalidParameter, align 4
  %288 = load i64, i64* %11, align 8
  %289 = call i32 @expect(i32 %287, i64 %288)
  %290 = load i32*, i32** %12, align 8
  %291 = load i32, i32* @HistogramFormatGray, align 4
  %292 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 0
  %293 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %294 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %295 = call i64 @pGdipBitmapGetHistogram(i32* %290, i32 %291, i32 256, i64* %292, i64* %293, i64* %294, i64* null)
  store i64 %295, i64* %11, align 8
  %296 = load i32, i32* @InvalidParameter, align 4
  %297 = load i64, i64* %11, align 8
  %298 = call i32 @expect(i32 %296, i64 %297)
  %299 = load i32*, i32** %12, align 8
  %300 = load i32, i32* @HistogramFormatGray, align 4
  %301 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 0
  %302 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %303 = call i64 @pGdipBitmapGetHistogram(i32* %299, i32 %300, i32 256, i64* %301, i64* %302, i64* null, i64* null)
  store i64 %303, i64* %11, align 8
  %304 = load i32, i32* @InvalidParameter, align 4
  %305 = load i64, i64* %11, align 8
  %306 = call i32 @expect(i32 %304, i64 %305)
  %307 = load i32*, i32** %12, align 8
  %308 = load i32, i32* @HistogramFormatGray, align 4
  %309 = getelementptr inbounds [256 x i64], [256 x i64]* %1, i64 0, i64 0
  %310 = call i64 @pGdipBitmapGetHistogram(i32* %307, i32 %308, i32 256, i64* %309, i64* null, i64* null, i64* null)
  store i64 %310, i64* %11, align 8
  %311 = load i32, i32* @Ok, align 4
  %312 = load i64, i64* %11, align 8
  %313 = call i32 @expect(i32 %311, i64 %312)
  %314 = load i32*, i32** %12, align 8
  %315 = call i32 @GdipDisposeImage(i32* %314)
  ret void
}

declare dso_local i64 @pGdipBitmapGetHistogramSize(i32, i64*) #1

declare dso_local i32 @expect(i32, i64) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @GdipCreateBitmapFromScan0(i64, i64, i32, i32, i32*, i32**) #1

declare dso_local i32 @GdipBitmapSetPixel(i32*, i64, i32, i32) #1

declare dso_local i64 @pGdipBitmapGetHistogram(i32*, i32, i32, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

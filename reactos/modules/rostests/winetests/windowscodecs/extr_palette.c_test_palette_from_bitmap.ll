; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_palette.c_test_palette_from_bitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_palette.c_test_palette_from_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@factory = common dso_local global i32 0, align 4
@GUID_WICPixelFormat24bppRGB = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"CreateBitmapFromMemory error %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"CreatePalette error %#x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"expected E_INVALIDARG, got %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"InitializeFromBitmap error %#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"GetColorCount error %#x\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"expected 2, got %u\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"GetType error %#x\0A\00", align 1
@WICBitmapPaletteTypeCustom = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"expected WICBitmapPaletteTypeCustom, got %#x\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"expected 16, got %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"GetColors error %#x\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"expected %u, got %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"expected !0, got %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"expected 0, got %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_palette_from_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_palette_from_bitmap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [257 x i32], align 16
  %12 = call i32* @init_bitmap(i32* %6, i32* %7, i32* %8)
  store i32* %12, i32** %2, align 8
  %13 = load i32, i32* @factory, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @IWICImagingFactory_CreateBitmapFromMemory(i32 %13, i32 %14, i32 %15, i32* @GUID_WICPixelFormat24bppRGB, i32 %16, i32 %19, i32* %20, i32** %3)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @S_OK, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %1, align 4
  %27 = call i32 (i32, i8*, i32, ...) @ok(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @factory, align 4
  %29 = call i32 @IWICImagingFactory_CreatePalette(i32 %28, i32** %4)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @S_OK, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %1, align 4
  %35 = call i32 (i32, i8*, i32, ...) @ok(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i32 @IWICPalette_InitializeFromBitmap(i32* %36, i32* %37, i32 0, i32 %38)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @E_INVALIDARG, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %1, align 4
  %45 = call i32 (i32, i8*, i32, ...) @ok(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @IWICPalette_InitializeFromBitmap(i32* %46, i32* %47, i32 1, i32 %48)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* @E_INVALIDARG, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %1, align 4
  %55 = call i32 (i32, i8*, i32, ...) @ok(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i32 @IWICPalette_InitializeFromBitmap(i32* %56, i32* %57, i32 257, i32 %58)
  store i32 %59, i32* %1, align 4
  %60 = load i32, i32* %1, align 4
  %61 = load i32, i32* @E_INVALIDARG, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %1, align 4
  %65 = call i32 (i32, i8*, i32, ...) @ok(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @IWICPalette_InitializeFromBitmap(i32* %66, i32* null, i32 16, i32 %67)
  store i32 %68, i32* %1, align 4
  %69 = load i32, i32* %1, align 4
  %70 = load i32, i32* @E_INVALIDARG, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %1, align 4
  %74 = call i32 (i32, i8*, i32, ...) @ok(i32 %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* @FALSE, align 4
  %78 = call i32 @IWICPalette_InitializeFromBitmap(i32* %75, i32* %76, i32 2, i32 %77)
  store i32 %78, i32* %1, align 4
  %79 = load i32, i32* %1, align 4
  %80 = load i32, i32* @S_OK, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %1, align 4
  %84 = call i32 (i32, i8*, i32, ...) @ok(i32 %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  store i32 0, i32* %9, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @IWICPalette_GetColorCount(i32* %85, i32* %9)
  store i32 %86, i32* %1, align 4
  %87 = load i32, i32* %1, align 4
  %88 = load i32, i32* @S_OK, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %1, align 4
  %92 = call i32 (i32, i8*, i32, ...) @ok(i32 %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, 2
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (i32, i8*, i32, ...) @ok(i32 %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i32*, i32** %4, align 8
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* @TRUE, align 4
  %101 = call i32 @IWICPalette_InitializeFromBitmap(i32* %98, i32* %99, i32 2, i32 %100)
  store i32 %101, i32* %1, align 4
  %102 = load i32, i32* %1, align 4
  %103 = load i32, i32* @S_OK, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %1, align 4
  %107 = call i32 (i32, i8*, i32, ...) @ok(i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  store i32 0, i32* %9, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @IWICPalette_GetColorCount(i32* %108, i32* %9)
  store i32 %109, i32* %1, align 4
  %110 = load i32, i32* %1, align 4
  %111 = load i32, i32* @S_OK, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %1, align 4
  %115 = call i32 (i32, i8*, i32, ...) @ok(i32 %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %9, align 4
  %117 = icmp eq i32 %116, 2
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %9, align 4
  %120 = call i32 (i32, i8*, i32, ...) @ok(i32 %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  %121 = load i32*, i32** %4, align 8
  %122 = load i32*, i32** %3, align 8
  %123 = load i32, i32* @FALSE, align 4
  %124 = call i32 @IWICPalette_InitializeFromBitmap(i32* %121, i32* %122, i32 16, i32 %123)
  store i32 %124, i32* %1, align 4
  %125 = load i32, i32* %1, align 4
  %126 = load i32, i32* @S_OK, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %1, align 4
  %130 = call i32 (i32, i8*, i32, ...) @ok(i32 %128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  store i32 -1, i32* %5, align 4
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @IWICPalette_GetType(i32* %131, i32* %5)
  store i32 %132, i32* %1, align 4
  %133 = load i32, i32* %1, align 4
  %134 = load i32, i32* @S_OK, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %1, align 4
  %138 = call i32 (i32, i8*, i32, ...) @ok(i32 %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @WICBitmapPaletteTypeCustom, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %5, align 4
  %144 = call i32 (i32, i8*, i32, ...) @ok(i32 %142, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %143)
  store i32 0, i32* %9, align 4
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 @IWICPalette_GetColorCount(i32* %145, i32* %9)
  store i32 %146, i32* %1, align 4
  %147 = load i32, i32* %1, align 4
  %148 = load i32, i32* @S_OK, align 4
  %149 = icmp eq i32 %147, %148
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %1, align 4
  %152 = call i32 (i32, i8*, i32, ...) @ok(i32 %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %9, align 4
  %154 = icmp eq i32 %153, 16
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %9, align 4
  %157 = call i32 (i32, i8*, i32, ...) @ok(i32 %155, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %156)
  %158 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 0
  %159 = call i32 @memset(i32* %158, i32 0, i32 1028)
  %160 = load i32*, i32** %4, align 8
  %161 = load i32, i32* %9, align 4
  %162 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 0
  %163 = call i32 @IWICPalette_GetColors(i32* %160, i32 %161, i32* %162, i32* %10)
  store i32 %163, i32* %1, align 4
  %164 = load i32, i32* %1, align 4
  %165 = load i32, i32* @S_OK, align 4
  %166 = icmp eq i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* %1, align 4
  %169 = call i32 (i32, i8*, i32, ...) @ok(i32 %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %10, align 4
  %176 = call i32 (i32, i8*, i32, ...) @ok(i32 %173, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %174, i32 %175)
  %177 = load i32, i32* %9, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %9, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i32, i8*, i32, ...) @ok(i32 %183, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %188)
  %190 = load i32*, i32** %4, align 8
  %191 = load i32*, i32** %3, align 8
  %192 = load i32, i32* @TRUE, align 4
  %193 = call i32 @IWICPalette_InitializeFromBitmap(i32* %190, i32* %191, i32 16, i32 %192)
  store i32 %193, i32* %1, align 4
  %194 = load i32, i32* %1, align 4
  %195 = load i32, i32* @S_OK, align 4
  %196 = icmp eq i32 %194, %195
  %197 = zext i1 %196 to i32
  %198 = load i32, i32* %1, align 4
  %199 = call i32 (i32, i8*, i32, ...) @ok(i32 %197, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %198)
  store i32 -1, i32* %5, align 4
  %200 = load i32*, i32** %4, align 8
  %201 = call i32 @IWICPalette_GetType(i32* %200, i32* %5)
  store i32 %201, i32* %1, align 4
  %202 = load i32, i32* %1, align 4
  %203 = load i32, i32* @S_OK, align 4
  %204 = icmp eq i32 %202, %203
  %205 = zext i1 %204 to i32
  %206 = load i32, i32* %1, align 4
  %207 = call i32 (i32, i8*, i32, ...) @ok(i32 %205, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @WICBitmapPaletteTypeCustom, align 4
  %210 = icmp eq i32 %208, %209
  %211 = zext i1 %210 to i32
  %212 = load i32, i32* %5, align 4
  %213 = call i32 (i32, i8*, i32, ...) @ok(i32 %211, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %212)
  store i32 0, i32* %9, align 4
  %214 = load i32*, i32** %4, align 8
  %215 = call i32 @IWICPalette_GetColorCount(i32* %214, i32* %9)
  store i32 %215, i32* %1, align 4
  %216 = load i32, i32* %1, align 4
  %217 = load i32, i32* @S_OK, align 4
  %218 = icmp eq i32 %216, %217
  %219 = zext i1 %218 to i32
  %220 = load i32, i32* %1, align 4
  %221 = call i32 (i32, i8*, i32, ...) @ok(i32 %219, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %220)
  %222 = load i32, i32* %9, align 4
  %223 = icmp eq i32 %222, 16
  %224 = zext i1 %223 to i32
  %225 = load i32, i32* %9, align 4
  %226 = call i32 (i32, i8*, i32, ...) @ok(i32 %224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %225)
  %227 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 0
  %228 = call i32 @memset(i32* %227, i32 255, i32 1028)
  %229 = load i32*, i32** %4, align 8
  %230 = load i32, i32* %9, align 4
  %231 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 0
  %232 = call i32 @IWICPalette_GetColors(i32* %229, i32 %230, i32* %231, i32* %10)
  store i32 %232, i32* %1, align 4
  %233 = load i32, i32* %1, align 4
  %234 = load i32, i32* @S_OK, align 4
  %235 = icmp eq i32 %233, %234
  %236 = zext i1 %235 to i32
  %237 = load i32, i32* %1, align 4
  %238 = call i32 (i32, i8*, i32, ...) @ok(i32 %236, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* %9, align 4
  %241 = icmp eq i32 %239, %240
  %242 = zext i1 %241 to i32
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* %10, align 4
  %245 = call i32 (i32, i8*, i32, ...) @ok(i32 %242, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %243, i32 %244)
  %246 = load i32, i32* %9, align 4
  %247 = sub nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = icmp eq i32 %250, 0
  %252 = zext i1 %251 to i32
  %253 = load i32, i32* %9, align 4
  %254 = sub nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = call i32 (i32, i8*, i32, ...) @ok(i32 %252, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %257)
  %259 = load i32*, i32** %4, align 8
  %260 = call i32 @IWICPalette_Release(i32* %259)
  %261 = load i32*, i32** %3, align 8
  %262 = call i32 @IWICBitmap_Release(i32* %261)
  %263 = call i32 (...) @GetProcessHeap()
  %264 = load i32*, i32** %2, align 8
  %265 = call i32 @HeapFree(i32 %263, i32 0, i32* %264)
  ret void
}

declare dso_local i32* @init_bitmap(i32*, i32*, i32*) #1

declare dso_local i32 @IWICImagingFactory_CreateBitmapFromMemory(i32, i32, i32, i32*, i32, i32, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @IWICImagingFactory_CreatePalette(i32, i32**) #1

declare dso_local i32 @IWICPalette_InitializeFromBitmap(i32*, i32*, i32, i32) #1

declare dso_local i32 @IWICPalette_GetColorCount(i32*, i32*) #1

declare dso_local i32 @IWICPalette_GetType(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @IWICPalette_GetColors(i32*, i32, i32*, i32*) #1

declare dso_local i32 @IWICPalette_Release(i32*) #1

declare dso_local i32 @IWICBitmap_Release(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

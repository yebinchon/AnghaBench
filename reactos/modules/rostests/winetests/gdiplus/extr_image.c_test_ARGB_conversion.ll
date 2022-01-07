; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_ARGB_conversion.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_ARGB_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32 }

@__const.test_ARGB_conversion.argb = private unnamed_addr constant [8 x i32] [i32 17, i32 34, i32 51, i32 128, i32 255, i32 255, i32 255, i32 0], align 16
@__const.test_ARGB_conversion.pargb = private unnamed_addr constant [8 x i32] [i32 9, i32 17, i32 26, i32 128, i32 0, i32 0, i32 0, i32 0], align 16
@__const.test_ARGB_conversion.rgb32_xp = private unnamed_addr constant [8 x i32] [i32 17, i32 34, i32 51, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@__const.test_ARGB_conversion.rgb24 = private unnamed_addr constant [6 x i32] [i32 17, i32 34, i32 51, i32 255, i32 255, i32 255], align 16
@PixelFormat32bppARGB = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@ImageLockModeRead = common dso_local global i32 0, align 4
@PixelFormat32bppPARGB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"expected 2, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"expected 1, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"expected 8, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"expected PixelFormat32bppPARGB, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"bits don't match\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"format %#x, bits %02x,%02x,%02x,%02x %02x,%02x,%02x,%02x\0A\00", align 1
@PixelFormat32bppRGB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"expected PixelFormat32bppRGB, got %d\0A\00", align 1
@PixelFormat24bppRGB = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"expected PixelFormat24bppRGB, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ARGB_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ARGB_conversion() #0 {
  %1 = alloca [8 x i32], align 16
  %2 = alloca [8 x i32], align 16
  %3 = alloca [8 x i32], align 16
  %4 = alloca [6 x i32], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast [8 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([8 x i32]* @__const.test_ARGB_conversion.argb to i8*), i64 32, i1 false)
  %11 = bitcast [8 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([8 x i32]* @__const.test_ARGB_conversion.pargb to i8*), i64 32, i1 false)
  %12 = bitcast [8 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([8 x i32]* @__const.test_ARGB_conversion.rgb32_xp to i8*), i64 32, i1 false)
  %13 = bitcast [6 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([6 x i32]* @__const.test_ARGB_conversion.rgb24 to i8*), i64 24, i1 false)
  %14 = load i32, i32* @PixelFormat32bppARGB, align 4
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %16 = call i32 @GdipCreateBitmapFromScan0(i32 2, i32 1, i32 8, i32 %14, i32* %15, i32** %6)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @Ok, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @expect(i32 %17, i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @ImageLockModeRead, align 4
  %22 = load i32, i32* @PixelFormat32bppPARGB, align 4
  %23 = call i32 @GdipBitmapLockBits(i32* %20, i32* null, i32 %21, i32 %22, %struct.TYPE_4__* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @Ok, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @expect(i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 2
  %30 = zext i1 %29 to i32
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 8
  %44 = zext i1 %43 to i32
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @PixelFormat32bppPARGB, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %59 = call i32 @memcmp(i32* %57, i32* %58, i32 32)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %96, label %67

67:                                               ; preds = %0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %5, align 8
  %70 = load i32, i32* @PixelFormat32bppPARGB, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 5
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 6
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 7
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @trace(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %70, i32 %73, i32 %76, i32 %79, i32 %82, i32 %85, i32 %88, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %67, %0
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @GdipBitmapUnlockBits(i32* %97, %struct.TYPE_4__* %7)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* @Ok, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @expect(i32 %99, i32 %100)
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* @ImageLockModeRead, align 4
  %104 = load i32, i32* @PixelFormat32bppRGB, align 4
  %105 = call i32 @GdipBitmapLockBits(i32* %102, i32* null, i32 %103, i32 %104, %struct.TYPE_4__* %7)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* @Ok, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @expect(i32 %106, i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 2
  %112 = zext i1 %111 to i32
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 1
  %119 = zext i1 %118 to i32
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 8
  %126 = zext i1 %125 to i32
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @PixelFormat32bppRGB, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %141 = call i32 @memcmp(i32* %139, i32* %140, i32 32)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %96
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %147 = call i32 @memcmp(i32* %145, i32* %146, i32 32)
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  br label %150

150:                                              ; preds = %143, %96
  %151 = phi i1 [ true, %96 ], [ %149, %143 ]
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %186, label %157

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  store i32* %159, i32** %5, align 8
  %160 = load i32, i32* @PixelFormat32bppRGB, align 4
  %161 = load i32*, i32** %5, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %5, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %5, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %5, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %5, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 4
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %5, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 5
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %5, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 6
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %5, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 7
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @trace(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %160, i32 %163, i32 %166, i32 %169, i32 %172, i32 %175, i32 %178, i32 %181, i32 %184)
  br label %186

186:                                              ; preds = %157, %150
  %187 = load i32*, i32** %6, align 8
  %188 = call i32 @GdipBitmapUnlockBits(i32* %187, %struct.TYPE_4__* %7)
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* @Ok, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @expect(i32 %189, i32 %190)
  %192 = load i32*, i32** %6, align 8
  %193 = load i32, i32* @ImageLockModeRead, align 4
  %194 = load i32, i32* @PixelFormat24bppRGB, align 4
  %195 = call i32 @GdipBitmapLockBits(i32* %192, i32* null, i32 %193, i32 %194, %struct.TYPE_4__* %7)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* @Ok, align 4
  %197 = load i32, i32* %8, align 4
  %198 = call i32 @expect(i32 %196, i32 %197)
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 2
  %202 = zext i1 %201 to i32
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %204)
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 1
  %209 = zext i1 %208 to i32
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %211)
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %214, 8
  %216 = zext i1 %215 to i32
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = call i32 (i32, i8*, ...) @ok(i32 %216, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %218)
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @PixelFormat24bppRGB, align 4
  %223 = icmp eq i32 %221, %222
  %224 = zext i1 %223 to i32
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = call i32 (i32, i8*, ...) @ok(i32 %224, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %226)
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %231 = call i32 @memcmp(i32* %229, i32* %230, i32 24)
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i32
  store i32 %234, i32* %9, align 4
  %235 = load i32, i32* %9, align 4
  %236 = call i32 (i32, i8*, ...) @ok(i32 %235, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %237 = load i32, i32* %9, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %268, label %239

239:                                              ; preds = %186
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  store i32* %241, i32** %5, align 8
  %242 = load i32, i32* @PixelFormat24bppRGB, align 4
  %243 = load i32*, i32** %5, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %5, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** %5, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 2
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** %5, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 3
  %254 = load i32, i32* %253, align 4
  %255 = load i32*, i32** %5, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 4
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %5, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 5
  %260 = load i32, i32* %259, align 4
  %261 = load i32*, i32** %5, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 6
  %263 = load i32, i32* %262, align 4
  %264 = load i32*, i32** %5, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 7
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @trace(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %242, i32 %245, i32 %248, i32 %251, i32 %254, i32 %257, i32 %260, i32 %263, i32 %266)
  br label %268

268:                                              ; preds = %239, %186
  %269 = load i32*, i32** %6, align 8
  %270 = call i32 @GdipBitmapUnlockBits(i32* %269, %struct.TYPE_4__* %7)
  store i32 %270, i32* %8, align 4
  %271 = load i32, i32* @Ok, align 4
  %272 = load i32, i32* %8, align 4
  %273 = call i32 @expect(i32 %271, i32 %272)
  %274 = load i32*, i32** %6, align 8
  %275 = call i32 @GdipDisposeImage(i32* %274)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #2

declare dso_local i32 @expect(i32, i32) #2

declare dso_local i32 @GdipBitmapLockBits(i32*, i32*, i32, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @trace(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @GdipBitmapUnlockBits(i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @GdipDisposeImage(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

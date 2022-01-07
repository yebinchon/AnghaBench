; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_DC_bitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_DC_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"CreateDC rets %p\0A\00", align 1
@BITSPIXEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"CreateCompatibleDC rets %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"expected ret2 > 0, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"expected ret == %d, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"expected ret == 0, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"expected descr.nSize == 0, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"expected desc.nSize == sizeof(descr), got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"CreateBitmap returns %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"SelectObject returned NULL\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"GetPixel returned %08x, expected 00ffffff\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"GetPixel returned %08x, expected 00000000\0A\00", align 1
@CLR_INVALID = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"GetPixel returned %08x, expected ffffffff\0A\00", align 1
@.str.12 = private unnamed_addr constant [64 x i8] c"SelectObject of a bitmap with 2 bits/pixel should return  NULL\0A\00", align 1
@.str.13 = private unnamed_addr constant [74 x i8] c"GetPixel of a bitmap with 16 bits/pixel returned %08x, expected 00ffffff\0A\00", align 1
@.str.14 = private unnamed_addr constant [83 x i8] c"GetPixel of a bitmap with 16 bits/pixel returned returned %08x, expected 00000000\0A\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c"GetPixel of a bitmap with 32 bits/pixel returned %08x, expected 00ffffff\0A\00", align 1
@.str.16 = private unnamed_addr constant [83 x i8] c"GetPixel of a bitmap with 32 bits/pixel returned returned %08x, expected 00000000\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DC_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DC_bitmap() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [64 x i32], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %24, %0
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 64
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 16777215
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 %22
  store i32 %20, i32* %23, align 4
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %12

27:                                               ; preds = %12
  %28 = call i32* @GetDC(i32 0)
  store i32* %28, i32** %2, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %32)
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @BITSPIXEL, align 4
  %36 = call i32 @GetDeviceCaps(i32* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = call i32* @CreateCompatibleDC(i32* %37)
  store i32* %38, i32** %3, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @DescribePixelFormat(i32* %44, i32 0, i32 4, %struct.TYPE_4__* null)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp sgt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %11, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @DescribePixelFormat(i32* %51, i32 1, i32 4, %struct.TYPE_4__* null)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @DescribePixelFormat(i32* %60, i32 65536, i32 4, %struct.TYPE_4__* null)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %67)
  %69 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 4)
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @DescribePixelFormat(i32* %70, i32 0, i32 4, %struct.TYPE_4__* %1)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  %84 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 4)
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @DescribePixelFormat(i32* %85, i32 1, i32 4, %struct.TYPE_4__* %1)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp eq i64 %96, 4
  %98 = zext i1 %97 to i32
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  %102 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 4)
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @DescribePixelFormat(i32* %103, i32 65536, i32 4, %struct.TYPE_4__* %1)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %10, align 4
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %118 = call i32* @CreateBitmap(i32 32, i32 32, i32 1, i32 1, i32* %117)
  store i32* %118, i32** %5, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = icmp ne i32* %119, null
  %121 = zext i1 %120 to i32
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32* %122)
  %124 = load i32*, i32** %3, align 8
  %125 = load i32*, i32** %5, align 8
  %126 = call i32* @SelectObject(i32* %124, i32* %125)
  store i32* %126, i32** %6, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = icmp ne i32* %127, null
  %129 = zext i1 %128 to i32
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @GetPixel(i32* %131, i32 0, i32 0)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp eq i32 %133, 16777215
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %7, align 4
  %137 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %136)
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @GetPixel(i32* %138, i32 1, i32 1)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp eq i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %7, align 4
  %144 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 %143)
  %145 = load i32*, i32** %3, align 8
  %146 = call i32 @GetPixel(i32* %145, i32 100, i32 1)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @CLR_INVALID, align 4
  %149 = icmp eq i32 %147, %148
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 %151)
  %153 = load i32*, i32** %3, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = call i32* @SelectObject(i32* %153, i32* %154)
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @DeleteObject(i32* %156)
  %158 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %159 = call i32* @CreateBitmap(i32 16, i32 16, i32 1, i32 2, i32* %158)
  store i32* %159, i32** %5, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = icmp ne i32* %160, null
  %162 = zext i1 %161 to i32
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32* %163)
  %165 = load i32*, i32** %3, align 8
  %166 = load i32*, i32** %5, align 8
  %167 = call i32* @SelectObject(i32* %165, i32* %166)
  store i32* %167, i32** %6, align 8
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 2
  br i1 %169, label %170, label %176

170:                                              ; preds = %27
  %171 = load i32*, i32** %6, align 8
  %172 = icmp ne i32* %171, null
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.12, i64 0, i64 0))
  br label %176

176:                                              ; preds = %170, %27
  %177 = load i32*, i32** %6, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i32*, i32** %3, align 8
  %181 = load i32*, i32** %6, align 8
  %182 = call i32* @SelectObject(i32* %180, i32* %181)
  br label %183

183:                                              ; preds = %179, %176
  %184 = load i32*, i32** %5, align 8
  %185 = call i32 @DeleteObject(i32* %184)
  %186 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %187 = call i32* @CreateBitmap(i32 6, i32 6, i32 1, i32 16, i32* %186)
  store i32* %187, i32** %5, align 8
  %188 = load i32*, i32** %5, align 8
  %189 = icmp ne i32* %188, null
  %190 = zext i1 %189 to i32
  %191 = load i32*, i32** %5, align 8
  %192 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32* %191)
  %193 = load i32*, i32** %3, align 8
  %194 = load i32*, i32** %5, align 8
  %195 = call i32* @SelectObject(i32* %193, i32* %194)
  store i32* %195, i32** %6, align 8
  %196 = load i32, i32* %9, align 4
  %197 = icmp eq i32 %196, 16
  br i1 %197, label %198, label %217

198:                                              ; preds = %183
  %199 = load i32*, i32** %6, align 8
  %200 = icmp ne i32* %199, null
  %201 = zext i1 %200 to i32
  %202 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %203 = load i32*, i32** %3, align 8
  %204 = call i32 @GetPixel(i32* %203, i32 0, i32 0)
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = icmp eq i32 %205, 16777215
  %207 = zext i1 %206 to i32
  %208 = load i32, i32* %7, align 4
  %209 = call i32 (i32, i8*, ...) @ok(i32 %207, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.13, i64 0, i64 0), i32 %208)
  %210 = load i32*, i32** %3, align 8
  %211 = call i32 @GetPixel(i32* %210, i32 1, i32 1)
  store i32 %211, i32* %7, align 4
  %212 = load i32, i32* %7, align 4
  %213 = icmp eq i32 %212, 0
  %214 = zext i1 %213 to i32
  %215 = load i32, i32* %7, align 4
  %216 = call i32 (i32, i8*, ...) @ok(i32 %214, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.14, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %198, %183
  %218 = load i32*, i32** %6, align 8
  %219 = icmp ne i32* %218, null
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load i32*, i32** %3, align 8
  %222 = load i32*, i32** %6, align 8
  %223 = call i32* @SelectObject(i32* %221, i32* %222)
  br label %224

224:                                              ; preds = %220, %217
  %225 = load i32*, i32** %5, align 8
  %226 = call i32 @DeleteObject(i32* %225)
  %227 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %228 = call i32* @CreateBitmap(i32 4, i32 4, i32 1, i32 32, i32* %227)
  store i32* %228, i32** %5, align 8
  %229 = load i32*, i32** %5, align 8
  %230 = icmp ne i32* %229, null
  %231 = zext i1 %230 to i32
  %232 = load i32*, i32** %5, align 8
  %233 = call i32 (i32, i8*, ...) @ok(i32 %231, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32* %232)
  %234 = load i32*, i32** %3, align 8
  %235 = load i32*, i32** %5, align 8
  %236 = call i32* @SelectObject(i32* %234, i32* %235)
  store i32* %236, i32** %6, align 8
  %237 = load i32, i32* %9, align 4
  %238 = icmp eq i32 %237, 32
  br i1 %238, label %239, label %258

239:                                              ; preds = %224
  %240 = load i32*, i32** %6, align 8
  %241 = icmp ne i32* %240, null
  %242 = zext i1 %241 to i32
  %243 = call i32 (i32, i8*, ...) @ok(i32 %242, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %244 = load i32*, i32** %3, align 8
  %245 = call i32 @GetPixel(i32* %244, i32 0, i32 0)
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %7, align 4
  %247 = icmp eq i32 %246, 16777215
  %248 = zext i1 %247 to i32
  %249 = load i32, i32* %7, align 4
  %250 = call i32 (i32, i8*, ...) @ok(i32 %248, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i64 0, i64 0), i32 %249)
  %251 = load i32*, i32** %3, align 8
  %252 = call i32 @GetPixel(i32* %251, i32 1, i32 1)
  store i32 %252, i32* %7, align 4
  %253 = load i32, i32* %7, align 4
  %254 = icmp eq i32 %253, 0
  %255 = zext i1 %254 to i32
  %256 = load i32, i32* %7, align 4
  %257 = call i32 (i32, i8*, ...) @ok(i32 %255, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.16, i64 0, i64 0), i32 %256)
  br label %258

258:                                              ; preds = %239, %224
  %259 = load i32*, i32** %6, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %261, label %265

261:                                              ; preds = %258
  %262 = load i32*, i32** %3, align 8
  %263 = load i32*, i32** %6, align 8
  %264 = call i32* @SelectObject(i32* %262, i32* %263)
  br label %265

265:                                              ; preds = %261, %258
  %266 = load i32*, i32** %5, align 8
  %267 = call i32 @DeleteObject(i32* %266)
  %268 = load i32*, i32** %2, align 8
  %269 = call i32 @ReleaseDC(i32 0, i32* %268)
  ret void
}

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetDeviceCaps(i32*, i32) #1

declare dso_local i32* @CreateCompatibleDC(i32*) #1

declare dso_local i32 @DescribePixelFormat(i32*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32* @CreateBitmap(i32, i32, i32, i32, i32*) #1

declare dso_local i32* @SelectObject(i32*, i32*) #1

declare dso_local i32 @GetPixel(i32*, i32, i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

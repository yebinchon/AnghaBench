; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_test_createdibitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_test_createdibitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64, i8* }

@BITSPIXEL = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i8* null, align 8
@CBM_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"CreateDIBitmap should fail\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"CreateDIBitmap failed\0A\00", align 1
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Reading a 32 bit pixel from a DDB returned %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_createdibitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_createdibitmap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = call i32 @GetDC(i32 0)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @BITSPIXEL, align 4
  %13 = call i32 @GetDeviceCaps(i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = call i32 @memset(%struct.TYPE_10__* %3, i32 0, i32 72)
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store i32 72, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  store i32 10, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  store i32 10, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 3
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  store i32 32, i32* %19, align 8
  %20 = load i8*, i8** @BI_RGB, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 6
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @CBM_INIT, align 4
  %24 = call i32* @CreateDIBitmap(i32 %22, %struct.TYPE_10__* null, i32 %23, i32* null, %struct.TYPE_10__* null, i32 0)
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %1, align 4
  %30 = call i32* @CreateDIBitmap(i32 %29, %struct.TYPE_10__* null, i32 0, i32* null, %struct.TYPE_10__* null, i32 0)
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = icmp eq i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %1, align 4
  %36 = call i32* @CreateDIBitmap(i32 %35, %struct.TYPE_10__* %3, i32 0, i32* null, %struct.TYPE_10__* null, i32 0)
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @test_bitmap_info(i32* %41, i32 %42, %struct.TYPE_10__* %3)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @DeleteObject(i32* %44)
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  store i32 16, i32* %46, align 8
  %47 = load i32, i32* %1, align 4
  %48 = call i32* @CreateDIBitmap(i32 %47, %struct.TYPE_10__* %3, i32 0, i32* null, %struct.TYPE_10__* null, i32 0)
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = icmp ne i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @test_bitmap_info(i32* %53, i32 %54, %struct.TYPE_10__* %3)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @DeleteObject(i32* %56)
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  store i32 1, i32* %58, align 8
  %59 = load i32, i32* %1, align 4
  %60 = call i32* @CreateDIBitmap(i32 %59, %struct.TYPE_10__* %3, i32 0, i32* null, %struct.TYPE_10__* null, i32 0)
  store i32* %60, i32** %5, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = icmp ne i32* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @test_bitmap_info(i32* %65, i32 %66, %struct.TYPE_10__* %3)
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @DeleteObject(i32* %68)
  %70 = load i32, i32* %1, align 4
  %71 = call i32 @CreateCompatibleDC(i32 %70)
  store i32 %71, i32* %2, align 4
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  store i32 32, i32* %72, align 8
  %73 = load i32, i32* %2, align 4
  %74 = call i32* @CreateDIBitmap(i32 %73, %struct.TYPE_10__* %3, i32 0, i32* null, %struct.TYPE_10__* null, i32 0)
  store i32* %74, i32** %5, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = icmp ne i32* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @test_bitmap_info(i32* %79, i32 1, %struct.TYPE_10__* %3)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @DeleteObject(i32* %81)
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  store i32 16, i32* %83, align 8
  %84 = load i32, i32* %2, align 4
  %85 = call i32* @CreateDIBitmap(i32 %84, %struct.TYPE_10__* %3, i32 0, i32* null, %struct.TYPE_10__* null, i32 0)
  store i32* %85, i32** %5, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = icmp ne i32* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @test_bitmap_info(i32* %90, i32 1, %struct.TYPE_10__* %3)
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @DeleteObject(i32* %92)
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  store i32 1, i32* %94, align 8
  %95 = load i32, i32* %2, align 4
  %96 = call i32* @CreateDIBitmap(i32 %95, %struct.TYPE_10__* %3, i32 0, i32* null, %struct.TYPE_10__* null, i32 0)
  store i32* %96, i32** %5, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = icmp ne i32* %97, null
  %99 = zext i1 %98 to i32
  %100 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @test_bitmap_info(i32* %101, i32 1, %struct.TYPE_10__* %3)
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @DeleteObject(i32* %103)
  %105 = load i32, i32* %1, align 4
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32* @CreateCompatibleBitmap(i32 %105, i32 %107, i32 %109)
  store i32* %110, i32** %6, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @test_bitmap_info(i32* %111, i32 %112, %struct.TYPE_10__* %3)
  %114 = load i32, i32* %2, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = call i32* @SelectObject(i32 %114, i32* %115)
  store i32* %116, i32** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  store i32 32, i32* %117, align 8
  %118 = load i32, i32* %2, align 4
  %119 = call i32* @CreateDIBitmap(i32 %118, %struct.TYPE_10__* %3, i32 0, i32* null, %struct.TYPE_10__* null, i32 0)
  store i32* %119, i32** %5, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = icmp ne i32* %120, null
  %122 = zext i1 %121 to i32
  %123 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @test_bitmap_info(i32* %124, i32 %125, %struct.TYPE_10__* %3)
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 @DeleteObject(i32* %127)
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  store i32 16, i32* %129, align 8
  %130 = load i32, i32* %2, align 4
  %131 = call i32* @CreateDIBitmap(i32 %130, %struct.TYPE_10__* %3, i32 0, i32* null, %struct.TYPE_10__* null, i32 0)
  store i32* %131, i32** %5, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = icmp ne i32* %132, null
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @test_bitmap_info(i32* %136, i32 %137, %struct.TYPE_10__* %3)
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @DeleteObject(i32* %139)
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  store i32 1, i32* %141, align 8
  %142 = load i32, i32* %2, align 4
  %143 = call i32* @CreateDIBitmap(i32 %142, %struct.TYPE_10__* %3, i32 0, i32* null, %struct.TYPE_10__* null, i32 0)
  store i32* %143, i32** %5, align 8
  %144 = load i32*, i32** %5, align 8
  %145 = icmp ne i32* %144, null
  %146 = zext i1 %145 to i32
  %147 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @test_bitmap_info(i32* %148, i32 %149, %struct.TYPE_10__* %3)
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @DeleteObject(i32* %151)
  %153 = load i32, i32* %2, align 4
  %154 = load i32*, i32** %7, align 8
  %155 = call i32* @SelectObject(i32 %153, i32* %154)
  %156 = load i32*, i32** %6, align 8
  %157 = call i32 @DeleteObject(i32* %156)
  %158 = load i32, i32* %2, align 4
  %159 = call i32 @DeleteDC(i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  store i32 32, i32* %160, align 8
  %161 = call i32* @CreateDIBitmap(i32 0, %struct.TYPE_10__* %3, i32 0, i32* null, %struct.TYPE_10__* null, i32 0)
  store i32* %161, i32** %5, align 8
  %162 = load i32*, i32** %5, align 8
  %163 = icmp ne i32* %162, null
  %164 = zext i1 %163 to i32
  %165 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 @test_bitmap_info(i32* %166, i32 1, %struct.TYPE_10__* %3)
  %168 = load i32*, i32** %5, align 8
  %169 = call i32 @DeleteObject(i32* %168)
  store i32 -1, i32* %9, align 4
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  store i32 1, i32* %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  store i32 1, i32* %171, align 4
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  store i32 1, i32* %172, align 8
  %173 = call i32 @memset(%struct.TYPE_10__* %4, i32 0, i32 72)
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  store i32 40, i32* %175, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  store i32 1, i32* %177, align 4
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 2
  store i32 1, i32* %179, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 3
  store i32 1, i32* %181, align 4
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 4
  store i32 24, i32* %183, align 8
  %184 = load i8*, i8** @BI_RGB, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 6
  store i8* %184, i8** %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 5
  store i64 0, i64* %188, align 8
  %189 = load i32, i32* %1, align 4
  %190 = load i32, i32* @CBM_INIT, align 4
  %191 = load i32, i32* @DIB_RGB_COLORS, align 4
  %192 = call i32* @CreateDIBitmap(i32 %189, %struct.TYPE_10__* %3, i32 %190, i32* %9, %struct.TYPE_10__* %4, i32 %191)
  store i32* %192, i32** %5, align 8
  %193 = load i32*, i32** %5, align 8
  %194 = icmp ne i32* %193, null
  %195 = zext i1 %194 to i32
  %196 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 -559038737, i32* %9, align 4
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 4
  store i32 32, i32* %198, align 8
  %199 = load i32, i32* %1, align 4
  %200 = load i32*, i32** %5, align 8
  %201 = load i32, i32* @DIB_RGB_COLORS, align 4
  %202 = call i32 @GetDIBits(i32 %199, i32* %200, i32 0, i32 1, i32* %9, %struct.TYPE_10__* %4, i32 %201)
  %203 = load i32, i32* %9, align 4
  %204 = icmp eq i32 %203, 16777215
  %205 = zext i1 %204 to i32
  %206 = load i32, i32* %9, align 4
  %207 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %206)
  %208 = load i32*, i32** %5, align 8
  %209 = call i32 @DeleteObject(i32* %208)
  %210 = load i32, i32* %1, align 4
  %211 = call i32 @ReleaseDC(i32 0, i32 %210)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32* @CreateDIBitmap(i32, %struct.TYPE_10__*, i32, i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @test_bitmap_info(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32* @CreateCompatibleBitmap(i32, i32, i32) #1

declare dso_local i32* @SelectObject(i32, i32*) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @GetDIBits(i32, i32*, i32, i32, i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

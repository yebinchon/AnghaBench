; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_test_dib_info.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_test_dib_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i8*, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i8*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"GetObject returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"wrong bm.bmType %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"wrong bm.bmWidth %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"wrong bm.bmHeight %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"wrong bm.bmWidthBytes %d != %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"wrong bm.bmPlanes %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"bm.bmBitsPixel %d != %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"wrong bm.bmBits %p != %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%d != %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"wrong size %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%d != 0\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"%u != %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%u != 0\0A\00", align 1
@BI_BITFIELDS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"%p != %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.TYPE_16__*)* @test_dib_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dib_info(i32 %0, i8* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca [2 x %struct.TYPE_15__], align 16
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca [2 x %struct.TYPE_15__], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @GetObjectW(i32 %15, i32 96, %struct.TYPE_15__* %7)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp eq i64 %18, 96
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %11, align 4
  %22 = call i32 (i32, i8*, i32, ...) @ok(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32, i8*, i32, ...) @ok(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  %36 = zext i1 %35 to i32
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, i32, ...) @ok(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @abs(i32 %44) #3
  %46 = icmp eq i32 %41, %45
  %47 = zext i1 %46 to i32
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, i32, ...) @ok(i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @get_dib_stride(i32 %52, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @get_bitmap_stride(i32 %57, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %3
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 (i32, i8*, i32, ...) @ok(i32 %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %72, i32 %73)
  br label %85

75:                                               ; preds = %3
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 (i32, i8*, i32, ...) @ok(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %75, %65
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %87, %90
  %92 = zext i1 %91 to i32
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, i32, ...) @ok(i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %97, %100
  %102 = zext i1 %101 to i32
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, i32, ...) @ok(i32 %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %104, i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 6
  %110 = load i8*, i8** %109, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = icmp eq i8* %110, %111
  %113 = zext i1 %112 to i32
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 6
  %115 = load i8*, i8** %114, align 8
  %116 = ptrtoint i8* %115 to i32
  %117 = load i8*, i8** %5, align 8
  %118 = call i32 (i32, i8*, i32, ...) @ok(i32 %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %116, i8* %117)
  %119 = call i32 (...) @GetProcessHeap()
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = mul nsw i32 %121, %123
  %125 = add nsw i32 %124, 4096
  %126 = call %struct.TYPE_15__* @HeapAlloc(i32 %119, i32 0, i32 %125)
  store %struct.TYPE_15__* %126, %struct.TYPE_15__** %14, align 8
  %127 = call i32 @SetLastError(i32 -559038737)
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @GetBitmapBits(i32 %128, i32 0, %struct.TYPE_15__* null)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %12, align 4
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = mul nsw i32 %131, %133
  %135 = icmp eq i32 %130, %134
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %12, align 4
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %138, %140
  %142 = call i32 (i32, i8*, i32, ...) @ok(i32 %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %137, i32 %141)
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %145, %147
  %149 = add nsw i32 %148, 4096
  %150 = call i32 @memset(%struct.TYPE_15__* %143, i32 170, i32 %149)
  %151 = load i32, i32* %4, align 4
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = mul nsw i32 %153, %155
  %157 = add nsw i32 %156, 4096
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %159 = call i32 @GetBitmapBits(i32 %151, i32 %157, %struct.TYPE_15__* %158)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %12, align 4
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = mul nsw i32 %161, %163
  %165 = icmp eq i32 %160, %164
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %12, align 4
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = mul nsw i32 %168, %170
  %172 = call i32 (i32, i8*, i32, ...) @ok(i32 %166, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %167, i32 %171)
  %173 = call i32 (...) @GetProcessHeap()
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %175 = call i32 @HeapFree(i32 %173, i32 0, %struct.TYPE_15__* %174)
  %176 = call i32 @memset(%struct.TYPE_15__* %9, i32 170, i32 96)
  %177 = load i32, i32* %4, align 4
  %178 = getelementptr inbounds [2 x %struct.TYPE_15__], [2 x %struct.TYPE_15__]* %8, i64 0, i64 0
  %179 = call i32 @GetObjectW(i32 %177, i32 192, %struct.TYPE_15__* %178)
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp eq i64 %181, 96
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %11, align 4
  %185 = call i32 (i32, i8*, i32, ...) @ok(i32 %183, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %184)
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %187, %190
  %192 = zext i1 %191 to i32
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i32, i8*, i32, ...) @ok(i32 %192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %194)
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @abs(i32 %200) #3
  %202 = icmp eq i32 %197, %201
  %203 = zext i1 %202 to i32
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 (i32, i8*, i32, ...) @ok(i32 %203, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %205)
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 6
  %208 = load i8*, i8** %207, align 8
  %209 = load i8*, i8** %5, align 8
  %210 = icmp eq i8* %208, %209
  %211 = zext i1 %210 to i32
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 6
  %213 = load i8*, i8** %212, align 8
  %214 = ptrtoint i8* %213 to i32
  %215 = load i8*, i8** %5, align 8
  %216 = call i32 (i32, i8*, i32, ...) @ok(i32 %211, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %214, i8* %215)
  %217 = load i32, i32* %4, align 4
  %218 = call i32 @GetObjectW(i32 %217, i32 48, %struct.TYPE_15__* %7)
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %11, align 4
  %220 = icmp eq i32 %219, 0
  %221 = zext i1 %220 to i32
  %222 = load i32, i32* %11, align 4
  %223 = call i32 (i32, i8*, i32, ...) @ok(i32 %221, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* %4, align 4
  %225 = call i32 @GetObjectW(i32 %224, i32 0, %struct.TYPE_15__* %7)
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* %11, align 4
  %227 = icmp eq i32 %226, 0
  %228 = zext i1 %227 to i32
  %229 = load i32, i32* %11, align 4
  %230 = call i32 (i32, i8*, i32, ...) @ok(i32 %228, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* %4, align 4
  %232 = call i32 @GetObjectW(i32 %231, i32 1, %struct.TYPE_15__* %7)
  store i32 %232, i32* %11, align 4
  %233 = load i32, i32* %11, align 4
  %234 = icmp eq i32 %233, 0
  %235 = zext i1 %234 to i32
  %236 = load i32, i32* %11, align 4
  %237 = call i32 (i32, i8*, i32, ...) @ok(i32 %235, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %236)
  %238 = load i32, i32* %4, align 4
  %239 = call i32 @GetObjectW(i32 %238, i32 0, %struct.TYPE_15__* null)
  store i32 %239, i32* %11, align 4
  %240 = load i32, i32* %11, align 4
  %241 = sext i32 %240 to i64
  %242 = icmp eq i64 %241, 96
  %243 = zext i1 %242 to i32
  %244 = load i32, i32* %11, align 4
  %245 = call i32 (i32, i8*, i32, ...) @ok(i32 %243, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %244)
  %246 = load i32, i32* %4, align 4
  %247 = getelementptr inbounds [2 x %struct.TYPE_15__], [2 x %struct.TYPE_15__]* %10, i64 0, i64 0
  %248 = call i32 @GetObjectW(i32 %246, i32 192, %struct.TYPE_15__* %247)
  store i32 %248, i32* %11, align 4
  %249 = load i32, i32* %11, align 4
  %250 = sext i32 %249 to i64
  %251 = icmp eq i64 %250, 96
  %252 = zext i1 %251 to i32
  %253 = load i32, i32* %11, align 4
  %254 = call i32 (i32, i8*, i32, ...) @ok(i32 %252, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %253)
  %255 = call i32 @memset(%struct.TYPE_15__* %9, i32 170, i32 96)
  %256 = load i32, i32* %4, align 4
  %257 = call i32 @GetObjectW(i32 %256, i32 96, %struct.TYPE_15__* %9)
  store i32 %257, i32* %11, align 4
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = icmp eq i64 %259, 96
  %261 = zext i1 %260 to i32
  %262 = load i32, i32* %11, align 4
  %263 = call i32 (i32, i8*, i32, ...) @ok(i32 %261, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %262)
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 7
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  %266 = load i8*, i8** %265, align 8
  %267 = load i8*, i8** %5, align 8
  %268 = icmp eq i8* %266, %267
  %269 = zext i1 %268 to i32
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 7
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = ptrtoint i8* %272 to i32
  %274 = load i8*, i8** %5, align 8
  %275 = call i32 (i32, i8*, i32, ...) @ok(i32 %269, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %273, i8* %274)
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 7
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* %12, align 4
  %280 = icmp ne i32 %278, %279
  br i1 %280, label %281, label %305

281:                                              ; preds = %85
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 7
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 7
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = mul nsw i32 %287, %290
  %292 = icmp eq i32 %284, %291
  %293 = zext i1 %292 to i32
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 7
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 7
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = mul nsw i32 %299, %302
  %304 = call i32 (i32, i8*, i32, ...) @ok(i32 %293, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %296, i32 %303)
  br label %305

305:                                              ; preds = %281, %85
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = icmp eq i32 %308, 0
  %310 = zext i1 %309 to i32
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = call i32 (i32, i8*, i32, ...) @ok(i32 %310, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %313)
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 0
  store i32 0, i32* %316, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 8
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 8
  %322 = load i32, i32* %321, align 4
  %323 = icmp eq i32 %319, %322
  %324 = zext i1 %323 to i32
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 8
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 8
  %330 = load i32, i32* %329, align 4
  %331 = call i32 (i32, i8*, i32, ...) @ok(i32 %324, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %327, i32 %330)
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = icmp eq i32 %334, %337
  %339 = zext i1 %338 to i32
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (i32, i8*, i32, ...) @ok(i32 %339, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %342, i32 %345)
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 4
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @abs(i32 %352) #3
  %354 = icmp eq i32 %349, %353
  %355 = zext i1 %354 to i32
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @abs(i32 %361) #3
  %363 = call i32 (i32, i8*, i32, ...) @ok(i32 %355, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %358, i32 %362)
  %364 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = icmp eq i32 %366, %369
  %371 = zext i1 %370 to i32
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = call i32 (i32, i8*, i32, ...) @ok(i32 %371, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %374, i32 %377)
  %379 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 4
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 4
  %385 = icmp eq i32 %381, %384
  %386 = zext i1 %385 to i32
  %387 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %388 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %387, i32 0, i32 4
  %389 = load i32, i32* %388, align 8
  %390 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 4
  %393 = call i32 (i32, i8*, i32, ...) @ok(i32 %386, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %389, i32 %392)
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %395 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %394, i32 0, i32 7
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %398 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %397, i32 0, i32 7
  %399 = load i32, i32* %398, align 4
  %400 = icmp eq i32 %396, %399
  br i1 %400, label %417, label %401

401:                                              ; preds = %305
  %402 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %403 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 4
  %405 = icmp eq i32 %404, 32
  br i1 %405, label %406, label %415

406:                                              ; preds = %401
  %407 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 7
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* @BI_BITFIELDS, align 4
  %411 = icmp eq i32 %409, %410
  %412 = zext i1 %411 to i32
  %413 = call i64 @broken(i32 %412)
  %414 = icmp ne i64 %413, 0
  br label %415

415:                                              ; preds = %406, %401
  %416 = phi i1 [ false, %401 ], [ %414, %406 ]
  br label %417

417:                                              ; preds = %415, %305
  %418 = phi i1 [ true, %305 ], [ %416, %415 ]
  %419 = zext i1 %418 to i32
  %420 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %421 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %420, i32 0, i32 7
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %423, i32 0, i32 7
  %425 = load i32, i32* %424, align 4
  %426 = call i32 (i32, i8*, i32, ...) @ok(i32 %419, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %422, i32 %425)
  %427 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %428 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %431 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %430, i32 0, i32 3
  %432 = load i32, i32* %431, align 4
  %433 = icmp eq i32 %429, %432
  %434 = zext i1 %433 to i32
  %435 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %436 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %439 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %438, i32 0, i32 3
  %440 = load i32, i32* %439, align 4
  %441 = call i32 (i32, i8*, i32, ...) @ok(i32 %434, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %437, i32 %440)
  %442 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %443 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %442, i32 0, i32 6
  %444 = load i32, i32* %443, align 8
  %445 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %446 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %445, i32 0, i32 6
  %447 = load i32, i32* %446, align 4
  %448 = icmp eq i32 %444, %447
  %449 = zext i1 %448 to i32
  %450 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %451 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %450, i32 0, i32 6
  %452 = load i32, i32* %451, align 8
  %453 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %454 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %453, i32 0, i32 6
  %455 = load i32, i32* %454, align 4
  %456 = call i32 (i32, i8*, i32, ...) @ok(i32 %449, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %452, i32 %455)
  %457 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %458 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %457, i32 0, i32 5
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %461 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %460, i32 0, i32 5
  %462 = load i32, i32* %461, align 4
  %463 = icmp eq i32 %459, %462
  %464 = zext i1 %463 to i32
  %465 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %466 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %465, i32 0, i32 5
  %467 = load i32, i32* %466, align 4
  %468 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %469 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %468, i32 0, i32 5
  %470 = load i32, i32* %469, align 4
  %471 = call i32 (i32, i8*, i32, ...) @ok(i32 %464, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %467, i32 %470)
  %472 = call i32 @memset(%struct.TYPE_15__* %9, i32 170, i32 96)
  %473 = load i32, i32* %4, align 4
  %474 = call i32 @GetObjectW(i32 %473, i32 92, %struct.TYPE_15__* %9)
  store i32 %474, i32* %11, align 4
  %475 = load i32, i32* %11, align 4
  %476 = sext i32 %475 to i64
  %477 = icmp eq i64 %476, 24
  %478 = zext i1 %477 to i32
  %479 = load i32, i32* %11, align 4
  %480 = call i32 (i32, i8*, i32, ...) @ok(i32 %478, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %479)
  %481 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 7
  %482 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %481, i32 0, i32 3
  %483 = load i32, i32* %482, align 8
  %484 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %485 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 4
  %487 = icmp eq i32 %483, %486
  %488 = zext i1 %487 to i32
  %489 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %490 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %493 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 4
  %495 = call i32 (i32, i8*, i32, ...) @ok(i32 %488, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %491, i32 %494)
  %496 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 7
  %497 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %496, i32 0, i32 2
  %498 = load i32, i32* %497, align 4
  %499 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %500 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %499, i32 0, i32 4
  %501 = load i32, i32* %500, align 4
  %502 = call i32 @abs(i32 %501) #3
  %503 = icmp eq i32 %498, %502
  %504 = zext i1 %503 to i32
  %505 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %506 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %505, i32 0, i32 2
  %507 = load i32, i32* %506, align 8
  %508 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %509 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %508, i32 0, i32 4
  %510 = load i32, i32* %509, align 4
  %511 = call i32 @abs(i32 %510) #3
  %512 = call i32 (i32, i8*, i32, ...) @ok(i32 %504, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %507, i32 %511)
  %513 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 7
  %514 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %513, i32 0, i32 0
  %515 = load i8*, i8** %514, align 8
  %516 = load i8*, i8** %5, align 8
  %517 = icmp eq i8* %515, %516
  %518 = zext i1 %517 to i32
  %519 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 7
  %520 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %519, i32 0, i32 0
  %521 = load i8*, i8** %520, align 8
  %522 = ptrtoint i8* %521 to i32
  %523 = load i8*, i8** %5, align 8
  %524 = call i32 (i32, i8*, i32, ...) @ok(i32 %518, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %522, i8* %523)
  %525 = load i32, i32* %4, align 4
  %526 = call i32 @GetObjectW(i32 %525, i32 0, %struct.TYPE_15__* %9)
  store i32 %526, i32* %11, align 4
  %527 = load i32, i32* %11, align 4
  %528 = icmp eq i32 %527, 0
  %529 = zext i1 %528 to i32
  %530 = load i32, i32* %11, align 4
  %531 = call i32 (i32, i8*, i32, ...) @ok(i32 %529, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %530)
  %532 = load i32, i32* %4, align 4
  %533 = call i32 @GetObjectW(i32 %532, i32 1, %struct.TYPE_15__* %9)
  store i32 %533, i32* %11, align 4
  %534 = load i32, i32* %11, align 4
  %535 = icmp eq i32 %534, 0
  %536 = zext i1 %535 to i32
  %537 = load i32, i32* %11, align 4
  %538 = call i32 (i32, i8*, i32, ...) @ok(i32 %536, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %537)
  ret void
}

declare dso_local i32 @GetObjectW(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @get_dib_stride(i32, i32) #1

declare dso_local i32 @get_bitmap_stride(i32, i32) #1

declare dso_local %struct.TYPE_15__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetBitmapBits(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

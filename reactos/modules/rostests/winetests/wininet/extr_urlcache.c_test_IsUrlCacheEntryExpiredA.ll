; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_urlcache.c_test_IsUrlCacheEntryExpiredA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_urlcache.c_test_IsUrlCacheEntryExpiredA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@test_IsUrlCacheEntryExpiredA.uncached_url = internal constant [52 x i8] c"What's the airspeed velocity of an unladen swallow?\00", align 16
@ie10_cache = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"IsUrlCacheEntryExpiredA returned %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"expected time to be unchanged, got (%u,%u)\0A\00", align 1
@test_url = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"expected FALSE\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"expected time (0,0), got (%u,%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"GetUrlCacheEntryInfo should have failed\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"expected ERROR_INSUFFICIENT_BUFFER, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"GetUrlCacheEntryInfo failed: %d\0A\00", align 1
@CACHE_ENTRY_EXPTIME_FC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"SetUrlCacheEntryInfo failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"expected TRUE\0A\00", align 1
@CACHE_ENTRY_MODTIME_FC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"expected time (%u,%u), got (%u,%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IsUrlCacheEntryExpiredA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IsUrlCacheEntryExpiredA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_15__, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__, align 4
  %6 = call i32 @IsUrlCacheEntryExpiredA(i8* null, i32 0, %struct.TYPE_15__* null)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @ie10_cache, align 4
  %9 = icmp ne i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %1, align 4
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  store i32 -559038737, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  store i32 -1163005939, i32* %14, align 4
  %15 = call i32 @IsUrlCacheEntryExpiredA(i8* null, i32 0, %struct.TYPE_15__* %2)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @ie10_cache, align 4
  %18 = icmp ne i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %1, align 4
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, -559038737
  br i1 %24, label %25, label %29

25:                                               ; preds = %0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, -1163005939
  br label %29

29:                                               ; preds = %25, %0
  %30 = phi i1 [ false, %0 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %35)
  %37 = load i8*, i8** @test_url, align 8
  %38 = call i32 @IsUrlCacheEntryExpiredA(i8* %37, i32 0, %struct.TYPE_15__* null)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @ie10_cache, align 4
  %41 = icmp ne i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %1, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  store i32 -559038737, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  store i32 -1163005939, i32* %46, align 4
  %47 = load i8*, i8** @test_url, align 8
  %48 = call i32 @IsUrlCacheEntryExpiredA(i8* %47, i32 0, %struct.TYPE_15__* %2)
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %1, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %29
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %57, %29
  %63 = phi i1 [ false, %29 ], [ %61, %57 ]
  %64 = zext i1 %63 to i32
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  store i32 -559038737, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  store i32 -1163005939, i32* %71, align 4
  %72 = load i8*, i8** @test_url, align 8
  %73 = call i32 @IsUrlCacheEntryExpiredA(i8* %72, i32 -1, %struct.TYPE_15__* %2)
  store i32 %73, i32* %1, align 4
  %74 = load i32, i32* %1, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %62
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br label %87

87:                                               ; preds = %82, %62
  %88 = phi i1 [ false, %62 ], [ %86, %82 ]
  %89 = zext i1 %88 to i32
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %93)
  %95 = load i8*, i8** @test_url, align 8
  %96 = call i32 @GetUrlCacheEntryInfoA(i8* %95, %struct.TYPE_14__* null, i32* %3)
  store i32 %96, i32* %1, align 4
  %97 = load i32, i32* %1, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %102 = call i32 (...) @GetLastError()
  %103 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 (...) @GetLastError()
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  %108 = call i32 (...) @GetProcessHeap()
  %109 = load i32, i32* %3, align 4
  %110 = call %struct.TYPE_14__* @HeapAlloc(i32 %108, i32 0, i32 %109)
  store %struct.TYPE_14__* %110, %struct.TYPE_14__** %4, align 8
  %111 = load i8*, i8** @test_url, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %113 = call i32 @GetUrlCacheEntryInfoA(i8* %111, %struct.TYPE_14__* %112, i32* %3)
  store i32 %113, i32* %1, align 4
  %114 = load i32, i32* %1, align 4
  %115 = call i32 (...) @GetLastError()
  %116 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %115)
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = call i32 @GetSystemTimeAsFileTime(%struct.TYPE_11__* %118)
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %133, 1705032704
  store i32 %134, i32* %132, align 4
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 4
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 4
  %147 = load i8*, i8** @test_url, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %149 = load i32, i32* @CACHE_ENTRY_EXPTIME_FC, align 4
  %150 = call i32 @SetUrlCacheEntryInfoA(i8* %147, %struct.TYPE_14__* %148, i32 %149)
  store i32 %150, i32* %1, align 4
  %151 = load i32, i32* %1, align 4
  %152 = call i32 (...) @GetLastError()
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  store i32 -559038737, i32* %154, align 4
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  store i32 -1163005939, i32* %155, align 4
  %156 = load i8*, i8** @test_url, align 8
  %157 = call i32 @IsUrlCacheEntryExpiredA(i8* %156, i32 0, %struct.TYPE_15__* %2)
  store i32 %157, i32* %1, align 4
  %158 = load i32, i32* %1, align 4
  %159 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %87
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  %167 = xor i1 %166, true
  br label %168

168:                                              ; preds = %163, %87
  %169 = phi i1 [ false, %87 ], [ %167, %163 ]
  %170 = zext i1 %169 to i32
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %172, i32 %174)
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, -884901888
  store i32 %178, i32* %176, align 4
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 4
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  store i32 %187, i32* %190, align 4
  %191 = load i8*, i8** @test_url, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %193 = load i32, i32* @CACHE_ENTRY_EXPTIME_FC, align 4
  %194 = call i32 @SetUrlCacheEntryInfoA(i8* %191, %struct.TYPE_14__* %192, i32 %193)
  store i32 %194, i32* %1, align 4
  %195 = load i32, i32* %1, align 4
  %196 = call i32 (...) @GetLastError()
  %197 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %196)
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  store i32 -559038737, i32* %198, align 4
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  store i32 -1163005939, i32* %199, align 4
  %200 = load i8*, i8** @test_url, align 8
  %201 = call i32 @IsUrlCacheEntryExpiredA(i8* %200, i32 0, %struct.TYPE_15__* %2)
  store i32 %201, i32* %1, align 4
  %202 = load i32, i32* %1, align 4
  %203 = icmp ne i32 %202, 0
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i32
  %206 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %168
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  br label %215

215:                                              ; preds = %210, %168
  %216 = phi i1 [ false, %168 ], [ %214, %210 ]
  %217 = zext i1 %216 to i32
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %219, i32 %221)
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = call i32 @GetSystemTimeAsFileTime(%struct.TYPE_11__* %224)
  %226 = load i8*, i8** @test_url, align 8
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %228 = load i32, i32* @CACHE_ENTRY_MODTIME_FC, align 4
  %229 = call i32 @SetUrlCacheEntryInfoA(i8* %226, %struct.TYPE_14__* %227, i32 %228)
  store i32 %229, i32* %1, align 4
  %230 = load i32, i32* %1, align 4
  %231 = call i32 (...) @GetLastError()
  %232 = call i32 (i32, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %231)
  %233 = load i8*, i8** @test_url, align 8
  %234 = call i32 @IsUrlCacheEntryExpiredA(i8* %233, i32 0, %struct.TYPE_15__* %2)
  store i32 %234, i32* %1, align 4
  %235 = load i32, i32* %1, align 4
  %236 = icmp ne i32 %235, 0
  %237 = xor i1 %236, true
  %238 = zext i1 %237 to i32
  %239 = call i32 (i32, i8*, ...) @ok(i32 %238, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %241, %245
  br i1 %246, label %247, label %255

247:                                              ; preds = %215
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %249, %253
  br label %255

255:                                              ; preds = %247, %215
  %256 = phi i1 [ false, %215 ], [ %254, %247 ]
  %257 = zext i1 %256 to i32
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32 (i32, i8*, ...) @ok(i32 %257, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %261, i32 %265, i32 %267, i32 %269)
  %271 = call i32 (...) @GetProcessHeap()
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %273 = call i32 @HeapFree(i32 %271, i32 0, %struct.TYPE_14__* %272)
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  store i32 -559038737, i32* %274, align 4
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  store i32 -1163005939, i32* %275, align 4
  %276 = call i32 @IsUrlCacheEntryExpiredA(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @test_IsUrlCacheEntryExpiredA.uncached_url, i64 0, i64 0), i32 0, %struct.TYPE_15__* %2)
  store i32 %276, i32* %1, align 4
  %277 = load i32, i32* %1, align 4
  %278 = load i32, i32* @ie10_cache, align 4
  %279 = icmp ne i32 %277, %278
  %280 = zext i1 %279 to i32
  %281 = load i32, i32* %1, align 4
  %282 = call i32 (i32, i8*, ...) @ok(i32 %280, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %281)
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %291, label %286

286:                                              ; preds = %255
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %288, 0
  %290 = xor i1 %289, true
  br label %291

291:                                              ; preds = %286, %255
  %292 = phi i1 [ false, %255 ], [ %290, %286 ]
  %293 = zext i1 %292 to i32
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = call i32 (i32, i8*, ...) @ok(i32 %293, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %295, i32 %297)
  ret void
}

declare dso_local i32 @IsUrlCacheEntryExpiredA(i8*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetUrlCacheEntryInfoA(i8*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local %struct.TYPE_14__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @GetSystemTimeAsFileTime(%struct.TYPE_11__*) #1

declare dso_local i32 @SetUrlCacheEntryInfoA(i8*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

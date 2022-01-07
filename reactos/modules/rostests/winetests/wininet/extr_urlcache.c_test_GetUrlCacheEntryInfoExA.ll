; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_urlcache.c_test_GetUrlCacheEntryInfoExA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_urlcache.c_test_GetUrlCacheEntryInfoExA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [71 x i8] c"GetUrlCacheEntryInfoEx with NULL URL and NULL args should have failed\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [120 x i8] c"GetUrlCacheEntryInfoEx with NULL URL and NULL args should have set last error to ERROR_INVALID_PARAMETER instead of %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"GetUrlCacheEntryInfoEx with zero-length buffer should fail\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [89 x i8] c"GetUrlCacheEntryInfoEx should have set last error to ERROR_FILE_NOT_FOUND instead of %d\0A\00", align 1
@test_url = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [60 x i8] c"GetUrlCacheEntryInfoEx with NULL args failed with error %d\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [94 x i8] c"GetUrlCacheEntryInfoEx should have set last error to ERROR_INSUFFICIENT_BUFFER instead of %d\0A\00", align 1
@ie10_cache = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"GetUrlCacheEntryInfoEx returned %x\0A\00", align 1
@test_urlW = common dso_local global i32 0, align 4
@old_ie = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [46 x i8] c"GetUrlCacheEntryInfoExW failed with error %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"GetUrlCacheEntryInfoEx failed with error %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"GetUrlCacheEntryInfoEx\00", align 1
@CACHE_ENTRY_ATTRIBUTE_FC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"SetUrlCacheEntryInfoA failed with error %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"GetUrlCacheEntryInfoEx should have failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"expected ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetUrlCacheEntryInfoExA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetUrlCacheEntryInfoExA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = call i32 @SetLastError(i32 -559038737)
  %6 = call i32 @GetUrlCacheEntryInfoExA(i8* null, %struct.TYPE_7__* null, i32* null, i32* null, i32* null, i32* null, i32 0)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (...) @GetLastError()
  %13 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 (...) @GetLastError()
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32 4, i32* %2, align 4
  %18 = call i32 @SetLastError(i32 -559038737)
  %19 = call i32 @GetUrlCacheEntryInfoExA(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_7__* null, i32* %2, i32* null, i32* null, i32* null, i32 0)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %25 = call i32 (...) @GetLastError()
  %26 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = load i8*, i8** @test_url, align 8
  %32 = call i32 @GetUrlCacheEntryInfoExA(i8* %31, %struct.TYPE_7__* null, i32* null, i32* null, i32* null, i32* null, i32 0)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  store i32 0, i32* %2, align 4
  %36 = call i32 @SetLastError(i32 -559038737)
  %37 = load i8*, i8** @test_url, align 8
  %38 = call i32 @GetUrlCacheEntryInfoExA(i8* %37, %struct.TYPE_7__* null, i32* %2, i32* null, i32* null, i32* null, i32 0)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %44 = call i32 (...) @GetLastError()
  %45 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 (...) @GetLastError()
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  %50 = call i32 (...) @GetProcessHeap()
  %51 = load i32, i32* %2, align 4
  %52 = call %struct.TYPE_7__* @HeapAlloc(i32 %50, i32 0, i32 %51)
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %4, align 8
  %53 = call i32 @SetLastError(i32 -559038737)
  %54 = load i8*, i8** @test_url, align 8
  %55 = call i32 @GetUrlCacheEntryInfoExA(i8* %54, %struct.TYPE_7__* null, i32* null, i32* null, i32* null, i32* null, i32 512)
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @ie10_cache, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %1, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %1, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %0
  %65 = call i32 (...) @GetLastError()
  %66 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 (...) @GetLastError()
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %64, %0
  %72 = load i32, i32* @test_urlW, align 4
  %73 = call i32 @GetUrlCacheEntryInfoExW(i32 %72, i32* null, i32* null, i32* null, i32* null, i32* null, i32 512)
  store i32 %73, i32* %1, align 4
  %74 = load i32, i32* %1, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %71
  %77 = load i64, i64* @old_ie, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %1, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i1 [ false, %76 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = call i64 @broken(i32 %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %83, %71
  %89 = phi i1 [ true, %71 ], [ %87, %83 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 (...) @GetLastError()
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %91)
  %93 = load i8*, i8** @test_url, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = call i32 @GetUrlCacheEntryInfoExA(i8* %93, %struct.TYPE_7__* %94, i32* %2, i32* null, i32* null, i32* null, i32 0)
  store i32 %95, i32* %1, align 4
  %96 = load i32, i32* %1, align 4
  %97 = call i32 (...) @GetLastError()
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %1, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %88
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = call i32 @check_cache_entry_infoA(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_7__* %102)
  br label %104

104:                                              ; preds = %101, %88
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, 268435456
  store i32 %108, i32* %106, align 4
  %109 = load i8*, i8** @test_url, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = load i32, i32* @CACHE_ENTRY_ATTRIBUTE_FC, align 4
  %112 = call i32 @SetUrlCacheEntryInfoA(i8* %109, %struct.TYPE_7__* %110, i32 %111)
  store i32 %112, i32* %1, align 4
  %113 = load i32, i32* %1, align 4
  %114 = call i32 (...) @GetLastError()
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %114)
  %116 = call i32 @SetLastError(i32 -559038737)
  %117 = load i8*, i8** @test_url, align 8
  %118 = call i32 @GetUrlCacheEntryInfoExA(i8* %117, %struct.TYPE_7__* null, i32* null, i32* null, i32* null, i32* null, i32 512)
  store i32 %118, i32* %1, align 4
  %119 = load i32, i32* %1, align 4
  %120 = call i32 (...) @GetLastError()
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %120)
  store i32 100000, i32* %2, align 4
  %122 = call i32 @SetLastError(i32 -559038737)
  %123 = load i8*, i8** @test_url, align 8
  %124 = call i32 @GetUrlCacheEntryInfoExA(i8* %123, %struct.TYPE_7__* null, i32* %2, i32* null, i32* null, i32* null, i32 0)
  store i32 %124, i32* %1, align 4
  %125 = load i32, i32* %1, align 4
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %130 = call i32 (...) @GetLastError()
  %131 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 (...) @GetLastError()
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.6, i64 0, i64 0), i32 %134)
  %136 = call i32 (...) @GetProcessHeap()
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %138 = call i32 @HeapFree(i32 %136, i32 0, %struct.TYPE_7__* %137)
  %139 = call i32 @SetLastError(i32 -559038737)
  %140 = load i8*, i8** @test_url, align 8
  %141 = call i32 @GetUrlCacheEntryInfoExA(i8* %140, %struct.TYPE_7__* null, i32* null, i32* null, i32* %3, i32* null, i32 0)
  store i32 %141, i32* %1, align 4
  %142 = load i32, i32* %1, align 4
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %147 = call i32 (...) @GetLastError()
  %148 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %149 = icmp eq i32 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 (...) @GetLastError()
  %152 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 %151)
  %153 = call i32 @SetLastError(i32 -559038737)
  %154 = load i8*, i8** @test_url, align 8
  %155 = call i32 @GetUrlCacheEntryInfoExA(i8* %154, %struct.TYPE_7__* null, i32* %2, i32* null, i32* %3, i32* null, i32 0)
  store i32 %155, i32* %1, align 4
  %156 = load i32, i32* %1, align 4
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %161 = call i32 (...) @GetLastError()
  %162 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %163 = icmp eq i32 %161, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 (...) @GetLastError()
  %166 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 %165)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetUrlCacheEntryInfoExA(i8*, %struct.TYPE_7__*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local %struct.TYPE_7__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @GetUrlCacheEntryInfoExW(i32, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @check_cache_entry_infoA(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @SetUrlCacheEntryInfoA(i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

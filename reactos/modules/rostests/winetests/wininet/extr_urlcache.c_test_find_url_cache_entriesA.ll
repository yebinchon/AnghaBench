; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_urlcache.c_test_find_url_cache_entriesA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_urlcache.c_test_find_url_cache_entriesA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"FindFirstUrlCacheEntry should have failed\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [94 x i8] c"FindFirstUrlCacheEntry should have set last error to ERROR_INSUFFICIENT_BUFFER instead of %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"FindFirstUrlCacheEntry failed with error %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@test_url = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"FindNextUrlCacheEntry failed with error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Committed url cache entry not found during enumeration\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"FindCloseUrlCache failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_find_url_cache_entriesA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_find_url_cache_entriesA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = call i32 @SetLastError(i32 -559038737)
  %9 = call i32* @FindFirstUrlCacheEntryA(i32* null, %struct.TYPE_8__* null, i32* %4)
  store i32* %9, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = icmp ne i32* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %15 = call i64 (...) @GetLastError()
  %16 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 (...) @GetLastError()
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = call i32 (...) @GetProcessHeap()
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 1
  %25 = trunc i64 %24 to i32
  %26 = call %struct.TYPE_8__* @HeapAlloc(i32 %21, i32 0, i32 %25)
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %6, align 8
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = call i32* @FindFirstUrlCacheEntryA(i32* null, %struct.TYPE_8__* %28, i32* %4)
  store i32* %29, i32** %2, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 (...) @GetLastError()
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %74, %0
  %36 = load i32, i32* @TRUE, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %35
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @test_url, align 4
  %43 = call i32 @strcmp(i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %1, align 4
  br label %75

48:                                               ; preds = %38
  %49 = call i32 @SetLastError(i32 -559038737)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %4, align 4
  %51 = load i32*, i32** %2, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = call i32 @FindNextUrlCacheEntryA(i32* %51, %struct.TYPE_8__* %52, i32* %4)
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* %1, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %48
  %57 = call i64 (...) @GetLastError()
  %58 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = call i32 (...) @GetProcessHeap()
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call %struct.TYPE_8__* @HeapReAlloc(i32 %61, i32 0, %struct.TYPE_8__* %62, i32 %63)
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %6, align 8
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %5, align 4
  %66 = load i32*, i32** %2, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = call i32 @FindNextUrlCacheEntryA(i32* %66, %struct.TYPE_8__* %67, i32* %4)
  store i32 %68, i32* %1, align 4
  br label %69

69:                                               ; preds = %60, %56
  br label %70

70:                                               ; preds = %69, %48
  %71 = load i32, i32* %1, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  br label %75

74:                                               ; preds = %70
  br label %35

75:                                               ; preds = %73, %45, %35
  %76 = load i32, i32* %1, align 4
  %77 = call i64 (...) @GetLastError()
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* %3, align 4
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @FindCloseUrlCache(i32* %81)
  store i32 %82, i32* %1, align 4
  %83 = load i32, i32* %1, align 4
  %84 = call i64 (...) @GetLastError()
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %84)
  %86 = call i32 (...) @GetProcessHeap()
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = call i32 @HeapFree(i32 %86, i32 0, %struct.TYPE_8__* %87)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @FindFirstUrlCacheEntryA(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local %struct.TYPE_8__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @FindNextUrlCacheEntryA(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local %struct.TYPE_8__* @HeapReAlloc(i32, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @FindCloseUrlCache(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

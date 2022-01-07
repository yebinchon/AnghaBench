; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_InternetOpenUrlA_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_InternetOpenUrlA_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_URL = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"DeleteUrlCacheEntry returned %x, GetLastError() = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Winetest\00", align 1
@INTERNET_FLAG_NO_CACHE_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"InternetOpen failed, error %u\0A\00", align 1
@ICU_BROWSER_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"InternetCanonicalizeUrl failed, error %u\0A\00", align 1
@INTERNET_FLAG_RELOAD = common dso_local global i32 0, align 4
@INTERNET_FLAG_TRANSFER_BINARY = common dso_local global i32 0, align 4
@ERROR_INTERNET_NAME_NOT_RESOLVED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"InternetOpenUrl failed, error %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"InternetReadFile failed, error %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"read 0x%08x bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"INTERNET_FLAG_NO_CACHE_WRITE flag doesn't work\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InternetOpenUrlA_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InternetOpenUrlA_test() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @TEST_URL, align 4
  %9 = call i32 @DeleteUrlCacheEntryA(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %0
  %13 = call i32 (...) @GetLastError()
  %14 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %15 = icmp eq i32 %13, %14
  br label %16

16:                                               ; preds = %12, %0
  %17 = phi i1 [ true, %0 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* @INTERNET_FLAG_NO_CACHE_WRITE, align 4
  %23 = call i64 @InternetOpenA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null, i32* null, i32 %22)
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 (...) @GetLastError()
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  store i32 1024, i32* %4, align 4
  %29 = load i32, i32* @TEST_URL, align 4
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %31 = load i32, i32* @ICU_BROWSER_MODE, align 4
  %32 = call i32 @InternetCanonicalizeUrlA(i32 %29, i8* %30, i32* %4, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = call i32 @SetLastError(i32 0)
  %37 = load i64, i64* %1, align 8
  %38 = load i32, i32* @TEST_URL, align 4
  %39 = load i32, i32* @INTERNET_FLAG_RELOAD, align 4
  %40 = load i32, i32* @INTERNET_FLAG_NO_CACHE_WRITE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @INTERNET_FLAG_TRANSFER_BINARY, align 4
  %43 = or i32 %41, %42
  %44 = call i64 @InternetOpenUrlA(i64 %37, i32 %38, i32 0, i32 0, i32 %43, i32 0)
  store i64 %44, i64* %2, align 8
  %45 = call i32 (...) @GetLastError()
  %46 = load i32, i32* @ERROR_INTERNET_NAME_NOT_RESOLVED, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %16
  br label %97

49:                                               ; preds = %16
  %50 = load i64, i64* %2, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 (...) @GetLastError()
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load i64, i64* %2, align 8
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %57 = call i32 @InternetReadFile(i64 %55, i8* %56, i32 1024, i32* %5)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (...) @GetLastError()
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %74, %49
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i64, i64* %2, align 8
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %70 = call i32 @InternetReadFile(i64 %68, i8* %69, i32 1024, i32* %5)
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %67, %64
  %73 = phi i1 [ false, %64 ], [ %71, %67 ]
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %64

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = load i64, i64* %2, align 8
  %82 = call i32 @InternetCloseHandle(i64 %81)
  %83 = load i64, i64* %1, align 8
  %84 = call i32 @InternetCloseHandle(i64 %83)
  %85 = load i32, i32* @TEST_URL, align 4
  %86 = call i32 @DeleteUrlCacheEntryA(i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %78
  %90 = call i32 (...) @GetLastError()
  %91 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %92 = icmp eq i32 %90, %91
  br label %93

93:                                               ; preds = %89, %78
  %94 = phi i1 [ false, %78 ], [ %92, %89 ]
  %95 = zext i1 %94 to i32
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %48
  ret void
}

declare dso_local i32 @DeleteUrlCacheEntryA(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @InternetOpenA(i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @InternetCanonicalizeUrlA(i32, i8*, i32*, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @InternetOpenUrlA(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @InternetReadFile(i64, i8*, i32, i32*) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @InternetCloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

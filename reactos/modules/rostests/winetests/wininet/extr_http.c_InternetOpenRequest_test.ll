; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_InternetOpenRequest_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_InternetOpenRequest_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InternetOpenRequest_test.types = internal global [3 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@InternetOpenRequest_test.slash = internal constant [2 x i8] c"/\00", align 1
@InternetOpenRequest_test.any = internal constant [2 x i8] c"*\00", align 1
@InternetOpenRequest_test.empty = internal constant [1 x i8] zeroinitializer, align 1
@InternetOpenRequest_test.typesW = internal global [3 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @InternetOpenRequest_test.any, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @InternetOpenRequest_test.empty, i32 0, i32 0), i8* null], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"Wine Regression Test\00", align 1
@INTERNET_OPEN_TYPE_PRECONFIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Unable to open Internet session\0A\00", align 1
@INTERNET_DEFAULT_HTTP_PORT = common dso_local global i32 0, align 4
@INTERNET_SERVICE_HTTP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"InternetConnectA should have failed\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [103 x i8] c"InternetConnectA with NULL server named should have failed with ERROR_INVALID_PARAMETER instead of %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [104 x i8] c"InternetConnectA with blank server named should have failed with ERROR_INVALID_PARAMETER instead of %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"test.winehq.org\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"Unable to connect to http://test.winehq.org with error %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@INTERNET_FLAG_NO_CACHE_WRITE = common dso_local global i32 0, align 4
@ERROR_INTERNET_NAME_NOT_RESOLVED = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [36 x i8] c"Network unreachable, skipping test\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Failed to open request handle err %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"HttpSendRequest failed: %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Close request handle failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Close connect handle failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Close session handle failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InternetOpenRequest_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InternetOpenRequest_test() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @INTERNET_OPEN_TYPE_PRECONFIG, align 4
  %6 = call i32* @InternetOpenA(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %5, i32* null, i32* null, i32 0)
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %11 = load i32*, i32** %1, align 8
  %12 = load i32, i32* @INTERNET_DEFAULT_HTTP_PORT, align 4
  %13 = load i32, i32* @INTERNET_SERVICE_HTTP, align 4
  %14 = call i32* @InternetConnectA(i32* %11, i8* null, i32 %12, i32* null, i32* null, i32 %13, i32 0, i32 0)
  store i32* %14, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %19 = call i64 (...) @GetLastError()
  %20 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 (...) @GetLastError()
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i64 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = load i32, i32* @INTERNET_DEFAULT_HTTP_PORT, align 4
  %27 = load i32, i32* @INTERNET_SERVICE_HTTP, align 4
  %28 = call i32* @InternetConnectA(i32* %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32* null, i32* null, i32 %27, i32 0, i32 0)
  store i32* %28, i32** %2, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = icmp eq i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %33 = call i64 (...) @GetLastError()
  %34 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 (...) @GetLastError()
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.6, i64 0, i64 0), i64 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = load i32, i32* @INTERNET_DEFAULT_HTTP_PORT, align 4
  %41 = load i32, i32* @INTERNET_SERVICE_HTTP, align 4
  %42 = call i32* @InternetConnectA(i32* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %40, i32* null, i32* null, i32 %41, i32 0, i32 0)
  store i32* %42, i32** %2, align 8
  %43 = load i32*, i32** %2, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i64 (...) @GetLastError()
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i64 %46)
  %48 = load i32*, i32** %2, align 8
  %49 = load i32, i32* @INTERNET_FLAG_NO_CACHE_WRITE, align 4
  %50 = call i32* @HttpOpenRequestA(i32* %48, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32* null, i32* null, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @InternetOpenRequest_test.types, i64 0, i64 0), i32 %49, i32 0)
  store i32* %50, i32** %3, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %0
  %54 = call i64 (...) @GetLastError()
  %55 = load i64, i64* @ERROR_INTERNET_NAME_NOT_RESOLVED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  br label %89

59:                                               ; preds = %53, %0
  %60 = load i32*, i32** %3, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i64 (...) @GetLastError()
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i64 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @HttpSendRequestW(i32* %65, i32* null, i32 0, i32* null, i32 0)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i64 (...) @GetLastError()
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i64 %68)
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @InternetCloseHandle(i32* %70)
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %73 = load i32*, i32** %2, align 8
  %74 = load i32, i32* @INTERNET_FLAG_NO_CACHE_WRITE, align 4
  %75 = call i32* @HttpOpenRequestW(i32* %73, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @InternetOpenRequest_test.slash, i64 0, i64 0), i32* null, i32* null, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @InternetOpenRequest_test.typesW, i64 0, i64 0), i32 %74, i32 0)
  store i32* %75, i32** %3, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = icmp ne i32* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i64 (...) @GetLastError()
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i64 %79)
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @HttpSendRequestA(i32* %81, i32* null, i32 0, i32* null, i32 0)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i64 (...) @GetLastError()
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i64 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @InternetCloseHandle(i32* %86)
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %89

89:                                               ; preds = %59, %57
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @InternetCloseHandle(i32* %90)
  %92 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %93 = load i32*, i32** %1, align 8
  %94 = call i32 @InternetCloseHandle(i32* %93)
  %95 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i32* @InternetOpenA(i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @InternetConnectA(i32*, i8*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @HttpOpenRequestA(i32*, i32*, i8*, i32*, i32*, i8**, i32, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @HttpSendRequestW(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @InternetCloseHandle(i32*) #1

declare dso_local i32* @HttpOpenRequestW(i32*, i32*, i8*, i32*, i32*, i8**, i32, i32) #1

declare dso_local i32 @HttpSendRequestA(i32*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

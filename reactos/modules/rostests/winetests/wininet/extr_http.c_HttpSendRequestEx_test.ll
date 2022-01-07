; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_HttpSendRequestEx_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_HttpSendRequestEx_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32, i8*, i32, i32, i64, i64, %struct.TYPE_3__* }

@HttpSendRequestEx_test.szPostData = internal global [10 x i8] c"mode=Test\00", align 1
@HttpSendRequestEx_test.szContentType = internal constant [48 x i8] c"Content-Type: application/x-www-form-urlencoded\00", align 16
@.str = private unnamed_addr constant [21 x i8] c"Wine Regression Test\00", align 1
@INTERNET_OPEN_TYPE_PRECONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to open Internet session\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"test.winehq.org\00", align 1
@INTERNET_DEFAULT_HTTP_PORT = common dso_local global i32 0, align 4
@INTERNET_SERVICE_HTTP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Unable to connect to http://test.winehq.org\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"/tests/post.php\00", align 1
@INTERNET_FLAG_NO_CACHE_WRITE = common dso_local global i32 0, align 4
@ERROR_INTERNET_NAME_NOT_RESOLVED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"Network unreachable, skipping test\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Failed to open request handle err %u\0A\00", align 1
@INTERNET_REQFLAG_NO_HEADERS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"HttpSendRequestEx Failed with error %u\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"expected ERROR_SUCCESS, got %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"InternetWriteFile failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"HttpEndRequest Failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Unable to read response\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Read %u bytes instead of 13\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"mode => Test\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Got string %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Close request handle failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Close connect handle failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Close session handle failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @HttpSendRequestEx_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HttpSendRequestEx_test() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [256 x i64], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @INTERNET_OPEN_TYPE_PRECONFIG, align 4
  %12 = call i32* @InternetOpenA(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %11, i32* null, i32* null, i32 0)
  store i32* %12, i32** %1, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* @INTERNET_DEFAULT_HTTP_PORT, align 4
  %19 = load i32, i32* @INTERNET_SERVICE_HTTP, align 4
  %20 = call i32* @InternetConnectA(i32* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %18, i32* null, i32* null, i32 %19, i32 0, i32 0)
  store i32* %20, i32** %2, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @INTERNET_FLAG_NO_CACHE_WRITE, align 4
  %27 = call i32* @HttpOpenRequestA(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null, i32* null, i32 %26, i32 0)
  store i32* %27, i32** %3, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %0
  %31 = call i64 (...) @GetLastError()
  %32 = load i64, i64* @ERROR_INTERNET_NAME_NOT_RESOLVED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %123

36:                                               ; preds = %30, %0
  %37 = load i32*, i32** %3, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i64 (...) @GetLastError()
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i64 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @INTERNET_REQFLAG_NO_HEADERS, align 4
  %44 = call i32 @test_request_flags(i32* %42, i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 64, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 9
  store %struct.TYPE_3__* inttoptr (i64 233495723 to %struct.TYPE_3__*), %struct.TYPE_3__** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @HttpSendRequestEx_test.szContentType, i64 0, i64 0), i8** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32 47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  store i32 47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @HttpSendRequestEx_test.szPostData, i64 0, i64 0), i8** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 5
  store i32 3, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 6
  store i32 9, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 8
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 7
  store i64 0, i64* %54, align 8
  %55 = call i32 @SetLastError(i32 -559038737)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @HttpSendRequestExA(i32* %56, %struct.TYPE_3__* %4, i32* null, i32 0, i32 0)
  store i32 %57, i32* %10, align 4
  %58 = call i64 (...) @GetLastError()
  store i64 %58, i64* %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i64, i64* %7, align 8
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @ERROR_SUCCESS, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %7, align 8
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* @INTERNET_REQFLAG_NO_HEADERS, align 4
  %70 = call i32 @test_request_flags(i32* %68, i32 %69)
  store i32 3, i32* %9, align 4
  br label %71

71:                                               ; preds = %84, %36
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [10 x i8], [10 x i8]* @HttpSendRequestEx_test.szPostData, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [10 x i8], [10 x i8]* @HttpSendRequestEx_test.szPostData, i64 0, i64 %80
  %82 = call i32 @InternetWriteFile(i32* %78, i8* %81, i32 1, i64* %5)
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %71

87:                                               ; preds = %71
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* @INTERNET_REQFLAG_NO_HEADERS, align 4
  %90 = call i32 @test_request_flags(i32* %88, i32 %89)
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @HttpEndRequestA(i32* %91, i32* null, i32 0, i32 0)
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @test_request_flags(i32* %94, i32 0)
  %96 = load i32*, i32** %3, align 8
  %97 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 0
  %98 = call i32 @InternetReadFile(i32* %96, i64* %97, i32 255, i64* %6)
  %99 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %100 = load i64, i64* %6, align 8
  %101 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 %100
  store i64 0, i64* %101, align 8
  %102 = load i64, i64* %6, align 8
  %103 = icmp eq i64 %102, 13
  %104 = zext i1 %103 to i32
  %105 = load i64, i64* %6, align 8
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i64 %105)
  %107 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 0
  %108 = load i64, i64* %6, align 8
  %109 = call i64 @strncmp(i64* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i64 %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %87
  %112 = call i32 (...) @proxy_active()
  %113 = call i64 @broken(i32 %112)
  %114 = icmp ne i64 %113, 0
  br label %115

115:                                              ; preds = %111, %87
  %116 = phi i1 [ true, %87 ], [ %114, %111 ]
  %117 = zext i1 %116 to i32
  %118 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 0
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i64* %118)
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @InternetCloseHandle(i32* %120)
  %122 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  br label %123

123:                                              ; preds = %115, %34
  %124 = load i32*, i32** %2, align 8
  %125 = call i32 @InternetCloseHandle(i32* %124)
  %126 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  %127 = load i32*, i32** %1, align 8
  %128 = call i32 @InternetCloseHandle(i32* %127)
  %129 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  ret void
}

declare dso_local i32* @InternetOpenA(i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @InternetConnectA(i32*, i8*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32* @HttpOpenRequestA(i32*, i8*, i8*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @test_request_flags(i32*, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @HttpSendRequestExA(i32*, %struct.TYPE_3__*, i32*, i32, i32) #1

declare dso_local i32 @InternetWriteFile(i32*, i8*, i32, i64*) #1

declare dso_local i32 @HttpEndRequestA(i32*, i32*, i32, i32) #1

declare dso_local i32 @InternetReadFile(i32*, i64*, i32, i64*) #1

declare dso_local i64 @strncmp(i64*, i8*, i64) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @proxy_active(...) #1

declare dso_local i32 @InternetCloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

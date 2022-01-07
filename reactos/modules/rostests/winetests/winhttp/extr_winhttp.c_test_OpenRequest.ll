; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_test_OpenRequest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_test_OpenRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_useragent = common dso_local global i32 0, align 4
@WINHTTP_ACCESS_TYPE_DEFAULT_PROXY = common dso_local global i32 0, align 4
@WINHTTP_NO_PROXY_NAME = common dso_local global i32 0, align 4
@WINHTTP_NO_PROXY_BYPASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WinHttpOpen failed to open session.\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@INTERNET_DEFAULT_HTTP_PORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"WinHttpConnect succeeded in opening connection to NULL server argument.\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"Expected ERROR_INVALID_PARAMETER, got %u.\0A\00", align 1
@test_winehq = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [56 x i8] c"WinHttpConnect failed to open a connection, error: %u.\0A\00", align 1
@WSAEINVAL = common dso_local global i64 0, align 8
@WINHTTP_NO_REFERER = common dso_local global i32 0, align 4
@WINHTTP_DEFAULT_ACCEPT_TYPES = common dso_local global i32 0, align 4
@ERROR_WINHTTP_NAME_NOT_RESOLVED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Network unreachable, skipping.\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"WinHttpOpenrequest failed to open a request, error: %u.\0A\00", align 1
@WINHTTP_NO_ADDITIONAL_HEADERS = common dso_local global i32 0, align 4
@ERROR_WINHTTP_CANNOT_CONNECT = common dso_local global i64 0, align 8
@ERROR_WINHTTP_TIMEOUT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"Connection failed, skipping.\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"WinHttpSendRequest failed: %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"WinHttpCloseHandle failed on closing request, got %u.\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [58 x i8] c"WinHttpCloseHandle failed on closing connection, got %d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"WinHttpCloseHandle failed on closing session, got %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_OpenRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_OpenRequest() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = call i32 @SetLastError(i32 -559038737)
  %7 = load i32, i32* @test_useragent, align 4
  %8 = load i32, i32* @WINHTTP_ACCESS_TYPE_DEFAULT_PROXY, align 4
  %9 = load i32, i32* @WINHTTP_NO_PROXY_NAME, align 4
  %10 = load i32, i32* @WINHTTP_NO_PROXY_BYPASS, align 4
  %11 = call i32* @WinHttpOpen(i32 %7, i32 %8, i32 %9, i32 %10, i32 0)
  store i32* %11, i32** %2, align 8
  %12 = call i64 (...) @GetLastError()
  store i64 %12, i64* %5, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %5, align 8
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = call i32 @SetLastError(i32 -559038737)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @INTERNET_DEFAULT_HTTP_PORT, align 4
  %26 = call i32* @WinHttpConnect(i32* %24, i32* null, i32 %25, i32 0)
  store i32* %26, i32** %4, align 8
  %27 = call i64 (...) @GetLastError()
  store i64 %27, i64* %5, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp eq i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %5, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %36)
  %38 = call i32 @SetLastError(i32 -559038737)
  %39 = load i32*, i32** %2, align 8
  %40 = load i32*, i32** @test_winehq, align 8
  %41 = load i32, i32* @INTERNET_DEFAULT_HTTP_PORT, align 4
  %42 = call i32* @WinHttpConnect(i32* %39, i32* %40, i32 %41, i32 0)
  store i32* %42, i32** %4, align 8
  %43 = call i64 (...) @GetLastError()
  store i64 %43, i64* %5, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = icmp ne i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %5, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i64 %47)
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @ERROR_SUCCESS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %0
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @WSAEINVAL, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @broken(i32 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %52, %0
  %60 = phi i1 [ true, %0 ], [ %58, %52 ]
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %5, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  %64 = call i32 @SetLastError(i32 -559038737)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* @WINHTTP_NO_REFERER, align 4
  %67 = load i32, i32* @WINHTTP_DEFAULT_ACCEPT_TYPES, align 4
  %68 = call i32* @WinHttpOpenRequest(i32* %65, i32* null, i32* null, i32* null, i32 %66, i32 %67, i32 0)
  store i32* %68, i32** %3, align 8
  %69 = call i64 (...) @GetLastError()
  store i64 %69, i64* %5, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @ERROR_WINHTTP_NAME_NOT_RESOLVED, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %132

78:                                               ; preds = %72, %59
  %79 = load i32*, i32** %3, align 8
  %80 = icmp ne i32* %79, null
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %5, align 8
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i64 %82)
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* @ERROR_SUCCESS, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i64, i64* %5, align 8
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  %90 = call i32 @SetLastError(i32 -559038737)
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* @WINHTTP_NO_ADDITIONAL_HEADERS, align 4
  %93 = call i64 @WinHttpSendRequest(i32* %91, i32 %92, i32 0, i32* null, i32 0, i32 0, i32 0)
  store i64 %93, i64* %1, align 8
  %94 = call i64 (...) @GetLastError()
  store i64 %94, i64* %5, align 8
  %95 = load i64, i64* %1, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %78
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* @ERROR_WINHTTP_CANNOT_CONNECT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %5, align 8
  %103 = load i64, i64* @ERROR_WINHTTP_TIMEOUT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101, %97
  %106 = call i32 @skip(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %132

107:                                              ; preds = %101, %78
  %108 = load i64, i64* %1, align 8
  %109 = trunc i64 %108 to i32
  %110 = load i64, i64* %5, align 8
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i64 %110)
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* @ERROR_SUCCESS, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i64, i64* %5, align 8
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %116)
  %118 = call i32 @SetLastError(i32 -559038737)
  %119 = load i32*, i32** %3, align 8
  %120 = call i64 @WinHttpCloseHandle(i32* %119)
  store i64 %120, i64* %1, align 8
  %121 = call i64 (...) @GetLastError()
  store i64 %121, i64* %5, align 8
  %122 = load i64, i64* %1, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i64, i64* %5, align 8
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i64 %124)
  %126 = load i64, i64* %5, align 8
  %127 = load i64, i64* @ERROR_SUCCESS, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i64, i64* %5, align 8
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %130)
  br label %132

132:                                              ; preds = %107, %105, %76
  %133 = load i32*, i32** %4, align 8
  %134 = call i64 @WinHttpCloseHandle(i32* %133)
  store i64 %134, i64* %1, align 8
  %135 = load i64, i64* %1, align 8
  %136 = load i64, i64* @TRUE, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = load i64, i64* %1, align 8
  %140 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i64 %139)
  %141 = load i32*, i32** %2, align 8
  %142 = call i64 @WinHttpCloseHandle(i32* %141)
  store i64 %142, i64* %1, align 8
  %143 = load i64, i64* %1, align 8
  %144 = load i64, i64* @TRUE, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i64, i64* %1, align 8
  %148 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0), i64 %147)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @WinHttpOpen(i32, i32, i32, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @WinHttpConnect(i32*, i32*, i32, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32* @WinHttpOpenRequest(i32*, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @WinHttpSendRequest(i32*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @WinHttpCloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_test_user_agent_header.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_test_user_agent_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Gizmo5\00", align 1
@INTERNET_OPEN_TYPE_PRECONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"InternetOpen failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"test.winehq.org\00", align 1
@INTERNET_SERVICE_HTTP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"InternetConnect failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"/tests/hello.html\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"HTTP/1.0\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"HttpOpenRequest failed\0A\00", align 1
@HTTP_QUERY_USER_AGENT = common dso_local global i32 0, align 4
@HTTP_QUERY_FLAG_REQUEST_HEADERS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"HttpQueryInfo succeeded\0A\00", align 1
@ERROR_HTTP_HEADER_NOT_FOUND = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [46 x i8] c"expected ERROR_HTTP_HEADER_NOT_FOUND, got %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"User-Agent: Gizmo Project\0D\0A\00", align 1
@HTTP_ADDREQ_FLAG_ADD_IF_NEW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"HttpAddRequestHeaders succeeded\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"HttpQueryInfo failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@HTTP_QUERY_ACCEPT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [62 x i8] c"Accept: audio/*, image/*, text/*\0D\0AUser-Agent: Gizmo Project\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"HttpAddRequestHeaders failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"HttpQueryInfo failed: %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"audio/*, image/*, text/*\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"got '%s' expected 'audio/*, image/*, text/*'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_user_agent_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_user_agent_header() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = load i32, i32* @INTERNET_OPEN_TYPE_PRECONFIG, align 4
  %9 = call i32* @InternetOpenA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8, i32* null, i32* null, i32 0)
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** %1, align 8
  %15 = load i32, i32* @INTERNET_SERVICE_HTTP, align 4
  %16 = call i32* @InternetConnectA(i32* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 80, i32* null, i32* null, i32 %15, i32 0, i32 0)
  store i32* %16, i32** %2, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = call i32* @HttpOpenRequestA(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* null, i32* null, i32 0, i32 0)
  store i32* %22, i32** %3, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  store i64 64, i64* %4, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @HTTP_QUERY_USER_AGENT, align 4
  %29 = load i32, i32* @HTTP_QUERY_FLAG_REQUEST_HEADERS, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %32 = call i32 @HttpQueryInfoA(i32* %27, i32 %30, i8* %31, i64* %4, i32* null)
  store i32 %32, i32* %7, align 4
  %33 = call i8* (...) @GetLastError()
  %34 = ptrtoint i8* %33 to i64
  store i64 %34, i64* %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @ERROR_HTTP_HEADER_NOT_FOUND, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %5, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i64 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @HTTP_ADDREQ_FLAG_ADD_IF_NEW, align 4
  %48 = call i32 @HttpAddRequestHeadersA(i32* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 -1, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  store i64 64, i64* %4, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @HTTP_QUERY_USER_AGENT, align 4
  %53 = load i32, i32* @HTTP_QUERY_FLAG_REQUEST_HEADERS, align 4
  %54 = or i32 %52, %53
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %56 = call i32 @HttpQueryInfoA(i32* %51, i32 %54, i8* %55, i64* %4, i32* null)
  store i32 %56, i32* %7, align 4
  %57 = call i8* (...) @GetLastError()
  %58 = ptrtoint i8* %57 to i64
  store i64 %58, i64* %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @InternetCloseHandle(i32* %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32* @HttpOpenRequestA(i32* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* null, i32* null, i32 0, i32 0)
  store i32* %64, i32** %3, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = icmp ne i32* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  store i64 64, i64* %4, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* @HTTP_QUERY_ACCEPT, align 4
  %71 = load i32, i32* @HTTP_QUERY_FLAG_REQUEST_HEADERS, align 4
  %72 = or i32 %70, %71
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %74 = call i32 @HttpQueryInfoA(i32* %69, i32 %72, i8* %73, i64* %4, i32* null)
  store i32 %74, i32* %7, align 4
  %75 = call i8* (...) @GetLastError()
  %76 = ptrtoint i8* %75 to i64
  store i64 %76, i64* %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @ERROR_HTTP_HEADER_NOT_FOUND, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %5, align 8
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i64 %86)
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* @HTTP_ADDREQ_FLAG_ADD_IF_NEW, align 4
  %90 = call i32 @HttpAddRequestHeadersA(i32* %88, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i64 0, i64 0), i32 -1, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %93, align 16
  store i64 64, i64* %4, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = load i32, i32* @HTTP_QUERY_ACCEPT, align 4
  %96 = load i32, i32* @HTTP_QUERY_FLAG_REQUEST_HEADERS, align 4
  %97 = or i32 %95, %96
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %99 = call i32 @HttpQueryInfoA(i32* %94, i32 %97, i8* %98, i64* %4, i32* null)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i8* (...) @GetLastError()
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i8* %101)
  %103 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i8* %108)
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @InternetCloseHandle(i32* %110)
  %112 = load i32*, i32** %2, align 8
  %113 = call i32 @InternetCloseHandle(i32* %112)
  %114 = load i32*, i32** %1, align 8
  %115 = call i32 @InternetCloseHandle(i32* %114)
  ret void
}

declare dso_local i32* @InternetOpenA(i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @InternetConnectA(i32*, i8*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32* @HttpOpenRequestA(i32*, i8*, i8*, i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @HttpQueryInfoA(i32*, i32, i8*, i64*, i32*) #1

declare dso_local i8* @GetLastError(...) #1

declare dso_local i32 @HttpAddRequestHeadersA(i32*, i8*, i32, i32) #1

declare dso_local i32 @InternetCloseHandle(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_test_accept_encoding.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_test_accept_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"winetest\00", align 1
@INTERNET_OPEN_TYPE_DIRECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"InternetOpen failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@INTERNET_SERVICE_HTTP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"InternetConnect failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"/echo_request\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"HTTP/1.0\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"HttpOpenRequest failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Accept-Encoding: gzip\0D\0A\00", align 1
@HTTP_ADDREQ_FLAG_REPLACE = common dso_local global i32 0, align 4
@HTTP_ADDREQ_FLAG_ADD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"HttpAddRequestHeaders failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"HttpSendRequestA failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Accept-Encoding: gzip\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Accept-Encoding header not found in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_accept_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_accept_encoding(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [1000 x i8], align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @INTERNET_OPEN_TYPE_DIRECT, align 4
  %9 = call i32* @InternetOpenA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %8, i32* null, i32* null, i32 0)
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @INTERNET_SERVICE_HTTP, align 4
  %17 = call i32* @InternetConnectA(i32* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %15, i32* null, i32* null, i32 %16, i32 0, i32 0)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @HttpOpenRequestA(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* null, i32* null, i32 0, i32 0)
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @HTTP_ADDREQ_FLAG_REPLACE, align 4
  %30 = load i32, i32* @HTTP_ADDREQ_FLAG_ADD, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @HttpAddRequestHeadersA(i32* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 -1, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @HttpSendRequestA(i32* %35, i8* null, i32 0, i32* null, i32 0)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @test_status_code(i32* %39, i32 200)
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %43 = call i32 @receive_simple_request(i32* %41, i8* %42, i32 1000)
  %44 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %45 = call i32* @strstr(i8* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i8* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @InternetCloseHandle(i32* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32* @HttpOpenRequestA(i32* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* null, i32* null, i32 0, i32 0)
  store i32* %53, i32** %5, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @HttpSendRequestA(i32* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 -1, i32* null, i32 0)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @test_status_code(i32* %62, i32 200)
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %66 = call i32 @receive_simple_request(i32* %64, i8* %65, i32 1000)
  %67 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %68 = call i32* @strstr(i8* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %69 = icmp ne i32* %68, null
  %70 = zext i1 %69 to i32
  %71 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i8* %71)
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @InternetCloseHandle(i32* %73)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @InternetCloseHandle(i32* %75)
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @InternetCloseHandle(i32* %77)
  ret void
}

declare dso_local i32* @InternetOpenA(i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @InternetConnectA(i32*, i8*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32* @HttpOpenRequestA(i32*, i8*, i8*, i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @HttpAddRequestHeadersA(i32*, i8*, i32, i32) #1

declare dso_local i32 @HttpSendRequestA(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @test_status_code(i32*, i32) #1

declare dso_local i32 @receive_simple_request(i32*, i8*, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @InternetCloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

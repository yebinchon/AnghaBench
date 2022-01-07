; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_test_basic_auth_credentials_reuse.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_test_basic_auth_credentials_reuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"winetest\00", align 1
@INTERNET_OPEN_TYPE_DIRECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"InternetOpenA failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@INTERNET_SERVICE_HTTP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"InternetConnectA failed %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"/upload.txt\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"HttpOpenRequestA failed %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"HttpSendRequestA failed %u\0A\00", align 1
@HTTP_QUERY_STATUS_CODE = common dso_local global i32 0, align 4
@HTTP_QUERY_FLAG_NUMBER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"HttpQueryInfoA failed %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"/upload2.txt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_basic_auth_credentials_reuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_basic_auth_credentials_reuse(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @INTERNET_OPEN_TYPE_DIRECT, align 4
  %10 = call i32* @InternetOpenA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %9, i32* null, i32* null, i32 0)
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @INTERNET_SERVICE_HTTP, align 4
  %18 = call i32* @InternetConnectA(i32* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %17, i32 0, i32 0)
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 (...) @GetLastError()
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @HttpOpenRequestA(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* null, i32* null, i32* null, i32 0, i32 0)
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @HttpSendRequestA(i32* %31, i32* null, i32 0, i32* null, i32 0)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %34)
  store i32 -559038737, i32* %6, align 4
  store i32 4, i32* %7, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @HTTP_QUERY_STATUS_CODE, align 4
  %38 = load i32, i32* @HTTP_QUERY_FLAG_NUMBER, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @HttpQueryInfoA(i32* %36, i32 %39, i32* %6, i32* %7, i32* null)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (...) @GetLastError()
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 200
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @InternetCloseHandle(i32* %49)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @InternetCloseHandle(i32* %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @InternetCloseHandle(i32* %53)
  %55 = load i32, i32* @INTERNET_OPEN_TYPE_DIRECT, align 4
  %56 = call i32* @InternetOpenA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %55, i32* null, i32* null, i32 0)
  store i32* %56, i32** %3, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = icmp ne i32* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @INTERNET_SERVICE_HTTP, align 4
  %64 = call i32* @InternetConnectA(i32* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %62, i8* null, i8* null, i32 %63, i32 0, i32 0)
  store i32* %64, i32** %4, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = icmp ne i32* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 (...) @GetLastError()
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32* @HttpOpenRequestA(i32* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32* null, i32* null, i32* null, i32 0, i32 0)
  store i32* %71, i32** %5, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 (...) @GetLastError()
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %75)
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @HttpSendRequestA(i32* %77, i32* null, i32 0, i32* null, i32 0)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (...) @GetLastError()
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %80)
  store i32 -559038737, i32* %6, align 4
  store i32 4, i32* %7, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* @HTTP_QUERY_STATUS_CODE, align 4
  %84 = load i32, i32* @HTTP_QUERY_FLAG_NUMBER, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @HttpQueryInfoA(i32* %82, i32 %85, i32* %6, i32* %7, i32* null)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 (...) @GetLastError()
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = icmp eq i32 %90, 200
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %6, align 4
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @InternetCloseHandle(i32* %95)
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @InternetCloseHandle(i32* %97)
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @InternetCloseHandle(i32* %99)
  ret void
}

declare dso_local i32* @InternetOpenA(i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @InternetConnectA(i32*, i8*, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @HttpOpenRequestA(i32*, i8*, i8*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @HttpSendRequestA(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @HttpQueryInfoA(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @InternetCloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

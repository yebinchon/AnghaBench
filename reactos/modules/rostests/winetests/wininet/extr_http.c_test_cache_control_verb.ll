; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_test_cache_control_verb.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_test_cache_control_verb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"winetest\00", align 1
@INTERNET_OPEN_TYPE_DIRECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"InternetOpen failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@INTERNET_SERVICE_HTTP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"InternetConnect failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"RPC_OUT_DATA\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"/test_cache_control_verb\00", align 1
@INTERNET_FLAG_NO_CACHE_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"HttpOpenRequest failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"HttpSendRequest failed %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_cache_control_verb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cache_control_verb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @INTERNET_OPEN_TYPE_DIRECT, align 4
  %8 = call i32* @InternetOpenA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %7, i32* null, i32* null, i32 0)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @INTERNET_SERVICE_HTTP, align 4
  %16 = call i32* @InternetConnectA(i32* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32* null, i32* null, i32 %15, i32 0, i32 0)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @INTERNET_FLAG_NO_CACHE_WRITE, align 4
  %23 = call i32* @HttpOpenRequestA(i32* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null, i32* null, i32 %22, i32 0)
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @HttpSendRequestA(i32* %28, i32* null, i32 0, i32* null, i32 0)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (...) @GetLastError()
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @test_status_code(i32* %33, i32 200)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @InternetCloseHandle(i32* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @INTERNET_FLAG_NO_CACHE_WRITE, align 4
  %39 = call i32* @HttpOpenRequestA(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null, i32* null, i32 %38, i32 0)
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = icmp ne i32* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @HttpSendRequestA(i32* %44, i32* null, i32 0, i32* null, i32 0)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (...) @GetLastError()
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @test_status_code(i32* %49, i32 200)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @InternetCloseHandle(i32* %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @INTERNET_FLAG_NO_CACHE_WRITE, align 4
  %55 = call i32* @HttpOpenRequestA(i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null, i32* null, i32 %54, i32 0)
  store i32* %55, i32** %5, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = icmp ne i32* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @HttpSendRequestA(i32* %60, i32* null, i32 0, i32* null, i32 0)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (...) @GetLastError()
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @test_status_code(i32* %65, i32 200)
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @InternetCloseHandle(i32* %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* @INTERNET_FLAG_NO_CACHE_WRITE, align 4
  %71 = call i32* @HttpOpenRequestA(i32* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null, i32* null, i32 %70, i32 0)
  store i32* %71, i32** %5, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @HttpSendRequestA(i32* %76, i32* null, i32 0, i32* null, i32 0)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (...) @GetLastError()
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @test_status_code(i32* %81, i32 200)
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @InternetCloseHandle(i32* %83)
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @InternetCloseHandle(i32* %85)
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @InternetCloseHandle(i32* %87)
  ret void
}

declare dso_local i32* @InternetOpenA(i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @InternetConnectA(i32*, i8*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32* @HttpOpenRequestA(i32*, i8*, i8*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @HttpSendRequestA(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @test_status_code(i32*, i32) #1

declare dso_local i32 @InternetCloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

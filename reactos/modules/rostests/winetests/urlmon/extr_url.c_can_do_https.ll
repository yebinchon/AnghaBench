; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_can_do_https.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_can_do_https.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"winetest\00", align 1
@INTERNET_OPEN_TYPE_PRECONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"InternetOpen failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"test.winehq.org\00", align 1
@INTERNET_DEFAULT_HTTPS_PORT = common dso_local global i32 0, align 4
@INTERNET_SERVICE_HTTP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"InternetConnect failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"/tests/hello.html\00", align 1
@INTERNET_FLAG_SECURE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"HttpOpenRequest failed\0A\00", align 1
@ERROR_INTERNET_CANNOT_CONNECT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"request failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @can_do_https to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @can_do_https() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @INTERNET_OPEN_TYPE_PRECONFIG, align 4
  %6 = call i32* @InternetOpenA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %5, i32* null, i32* null, i32 0)
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32*, i32** %1, align 8
  %12 = load i32, i32* @INTERNET_DEFAULT_HTTPS_PORT, align 4
  %13 = load i32, i32* @INTERNET_SERVICE_HTTP, align 4
  %14 = call i32* @InternetConnectA(i32* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %12, i32* null, i32* null, i32 %13, i32 0, i32 0)
  store i32* %14, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @INTERNET_FLAG_SECURE, align 4
  %21 = call i32* @HttpOpenRequestA(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null, i32* null, i32 %20, i32 0)
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @HttpSendRequestA(i32* %26, i32* null, i32 0, i32* null, i32 0)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %0
  %31 = call i64 (...) @GetLastError()
  %32 = load i64, i64* @ERROR_INTERNET_CANNOT_CONNECT, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @broken(i32 %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %30, %0
  %38 = phi i1 [ true, %0 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 (...) @GetLastError()
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i64 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @InternetCloseHandle(i32* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @InternetCloseHandle(i32* %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @InternetCloseHandle(i32* %46)
  %48 = load i64, i64* %4, align 8
  ret i64 %48
}

declare dso_local i32* @InternetOpenA(i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @InternetConnectA(i32*, i8*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32* @HttpOpenRequestA(i32*, i8*, i8*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @HttpSendRequestA(i32*, i32*, i32, i32*, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @InternetCloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

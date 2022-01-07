; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_test_empty_headers_param.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_test_empty_headers_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_empty_headers_param.empty = internal constant [1 x i32] zeroinitializer, align 4
@test_useragent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to open session %u\0A\00", align 1
@test_winehq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to open a connection %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to open a request %u\0A\00", align 1
@ERROR_WINHTTP_CANNOT_CONNECT = common dso_local global i64 0, align 8
@ERROR_WINHTTP_TIMEOUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"connection failed, skipping\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to send request %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_empty_headers_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_empty_headers_param() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @test_useragent, align 4
  %7 = call i32* @WinHttpOpen(i32 %6, i32 0, i32* null, i32* null, i32 0)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i64 (...) @GetLastError()
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* @test_winehq, align 4
  %15 = call i32* @WinHttpConnect(i32* %13, i32 %14, i32 80, i32 0)
  store i32* %15, i32** %2, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i64 (...) @GetLastError()
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32* @WinHttpOpenRequest(i32* %21, i32* null, i32* null, i32* null, i32* null, i32* null, i32 0)
  store i32* %22, i32** %3, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i64 (...) @GetLastError()
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @WinHttpSendRequest(i32* %28, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @test_empty_headers_param.empty, i64 0, i64 0), i32 0, i32* null, i32 0, i32 0, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = call i64 (...) @GetLastError()
  store i64 %30, i64* %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %0
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @ERROR_WINHTTP_CANNOT_CONNECT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @ERROR_WINHTTP_TIMEOUT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %33
  %42 = call i32 @skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %47

43:                                               ; preds = %37, %0
  %44 = load i32, i32* %5, align 4
  %45 = call i64 (...) @GetLastError()
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %45)
  br label %47

47:                                               ; preds = %43, %41
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @WinHttpCloseHandle(i32* %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @WinHttpCloseHandle(i32* %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @WinHttpCloseHandle(i32* %52)
  ret void
}

declare dso_local i32* @WinHttpOpen(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @WinHttpConnect(i32*, i32, i32, i32) #1

declare dso_local i32* @WinHttpOpenRequest(i32*, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @WinHttpSendRequest(i32*, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @WinHttpCloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

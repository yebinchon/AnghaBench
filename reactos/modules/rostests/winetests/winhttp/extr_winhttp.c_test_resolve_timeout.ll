; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_test_resolve_timeout.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_test_resolve_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_resolve_timeout.nxdomain = internal constant [20 x i8] c"nxdomain.winehq.org\00", align 16
@test_useragent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to open session %u\0A\00", align 1
@WINHTTP_OPTION_RESOLVE_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to set resolve timeout %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to open a connection %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to open a request %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"nxdomain returned success. Broken ISP redirects?\0A\00", align 1
@ERROR_WINHTTP_NAME_NOT_RESOLVED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [49 x i8] c"expected ERROR_WINHTTP_NAME_NOT_RESOLVED got %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"Skipping host resolution tests, host resolution preformed by proxy\0A\00", align 1
@test_winehq = common dso_local global i8* null, align 8
@ERROR_WINHTTP_CANNOT_CONNECT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"connection failed, skipping\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"failed to send request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_resolve_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_resolve_timeout() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @proxy_active()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %56, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @test_useragent, align 4
  %10 = call i32* @WinHttpOpen(i32 %9, i32 0, i32* null, i32* null, i32 0)
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i64 (...) @GetLastError()
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %14)
  store i32 10000, i32* %4, align 4
  %16 = load i32*, i32** %1, align 8
  %17 = load i32, i32* @WINHTTP_OPTION_RESOLVE_TIMEOUT, align 4
  %18 = call i32 @WinHttpSetOption(i32* %16, i32 %17, i32* %4, i32 4)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32* @WinHttpConnect(i32* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @test_resolve_timeout.nxdomain, i64 0, i64 0), i32 0, i32 0)
  store i32* %23, i32** %2, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 (...) @GetLastError()
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32* @WinHttpOpenRequest(i32* %29, i32* null, i32* null, i32* null, i32* null, i32* null, i32 0)
  store i32* %30, i32** %3, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i64 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %34)
  %36 = call i32 @SetLastError(i32 -559038737)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @WinHttpSendRequest(i32* %37, i32* null, i32 0, i32* null, i32 0, i32 0, i32 0)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %8
  %42 = call i32 @skip(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %100

43:                                               ; preds = %8
  %44 = call i64 (...) @GetLastError()
  %45 = load i64, i64* @ERROR_WINHTTP_NAME_NOT_RESOLVED, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 (...) @GetLastError()
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i64 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @WinHttpCloseHandle(i32* %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @WinHttpCloseHandle(i32* %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @WinHttpCloseHandle(i32* %54)
  br label %58

56:                                               ; preds = %0
  %57 = call i32 @skip(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %43
  %59 = load i32, i32* @test_useragent, align 4
  %60 = call i32* @WinHttpOpen(i32 %59, i32 0, i32* null, i32* null, i32 0)
  store i32* %60, i32** %1, align 8
  %61 = load i32*, i32** %1, align 8
  %62 = icmp ne i32* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i64 (...) @GetLastError()
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %64)
  store i32 10000, i32* %4, align 4
  %66 = load i32*, i32** %1, align 8
  %67 = load i32, i32* @WINHTTP_OPTION_RESOLVE_TIMEOUT, align 4
  %68 = call i32 @WinHttpSetOption(i32* %66, i32 %67, i32* %4, i32 4)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i64 (...) @GetLastError()
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = load i8*, i8** @test_winehq, align 8
  %74 = call i32* @WinHttpConnect(i32* %72, i8* %73, i32 0, i32 0)
  store i32* %74, i32** %2, align 8
  %75 = load i32*, i32** %2, align 8
  %76 = icmp ne i32* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i64 (...) @GetLastError()
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %78)
  %80 = load i32*, i32** %2, align 8
  %81 = call i32* @WinHttpOpenRequest(i32* %80, i32* null, i32* null, i32* null, i32* null, i32* null, i32 0)
  store i32* %81, i32** %3, align 8
  %82 = load i32*, i32** %3, align 8
  %83 = icmp ne i32* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i64 (...) @GetLastError()
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @WinHttpSendRequest(i32* %87, i32* null, i32 0, i32* null, i32 0, i32 0, i32 0)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %58
  %92 = call i64 (...) @GetLastError()
  %93 = load i64, i64* @ERROR_WINHTTP_CANNOT_CONNECT, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = call i32 @skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %100

97:                                               ; preds = %91, %58
  %98 = load i32, i32* %5, align 4
  %99 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %95, %41
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @WinHttpCloseHandle(i32* %101)
  %103 = load i32*, i32** %2, align 8
  %104 = call i32 @WinHttpCloseHandle(i32* %103)
  %105 = load i32*, i32** %1, align 8
  %106 = call i32 @WinHttpCloseHandle(i32* %105)
  ret void
}

declare dso_local i32 @proxy_active(...) #1

declare dso_local i32* @WinHttpOpen(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @WinHttpSetOption(i32*, i32, i32*, i32) #1

declare dso_local i32* @WinHttpConnect(i32*, i8*, i32, i32) #1

declare dso_local i32* @WinHttpOpenRequest(i32*, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @WinHttpSendRequest(i32*, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @WinHttpCloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

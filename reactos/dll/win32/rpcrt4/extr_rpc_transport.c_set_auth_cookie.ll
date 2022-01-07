; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_set_auth_cookie.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_set_auth_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i8*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i64, i32, i64 }

@set_auth_cookie.httpW = internal global [5 x i8] c"http\00", align 1
@set_auth_cookie.httpsW = internal global [6 x i8] c"https\00", align 1
@RPC_S_OK = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@RPC_S_SERVER_UNAVAILABLE = common dso_local global i32 0, align 4
@RPC_S_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*)* @set_auth_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_auth_cookie(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @RPC_S_OK, align 4
  store i32 %13, i32* %3, align 4
  br label %79

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 112, i32* %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = call i64 @is_secure(%struct.TYPE_7__* %16)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @set_auth_cookie.httpsW, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @set_auth_cookie.httpW, i64 0, i64 0)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 13
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 12
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 11
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 10
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 9
  store i32* null, i32** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 8
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 7
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = call i32 @InternetCreateUrlW(%struct.TYPE_6__* %6, i32 0, i8* null, i32* %7)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %14
  %40 = call i64 (...) @GetLastError()
  %41 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @RPC_S_SERVER_UNAVAILABLE, align 4
  store i32 %44, i32* %3, align 4
  br label %79

45:                                               ; preds = %39, %14
  %46 = call i32 (...) @GetProcessHeap()
  %47 = load i32, i32* %7, align 4
  %48 = call i8* @HeapAlloc(i32 %46, i32 0, i32 %47)
  store i8* %48, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @RPC_S_OUT_OF_MEMORY, align 4
  store i32 %51, i32* %3, align 4
  br label %79

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = udiv i64 %54, 1
  %56 = sub i64 %55, 1
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %7, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @InternetCreateUrlW(%struct.TYPE_6__* %6, i32 0, i8* %58, i32* %7)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = call i32 (...) @GetProcessHeap()
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @HeapFree(i32 %62, i32 0, i8* %63)
  %65 = load i32, i32* @RPC_S_SERVER_UNAVAILABLE, align 4
  store i32 %65, i32* %3, align 4
  br label %79

66:                                               ; preds = %52
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @InternetSetCookieW(i8* %67, i32* null, i8* %68)
  store i32 %69, i32* %9, align 4
  %70 = call i32 (...) @GetProcessHeap()
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @HeapFree(i32 %70, i32 0, i8* %71)
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* @RPC_S_SERVER_UNAVAILABLE, align 4
  store i32 %76, i32* %3, align 4
  br label %79

77:                                               ; preds = %66
  %78 = load i32, i32* @RPC_S_OK, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %75, %61, %50, %43, %12
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @is_secure(%struct.TYPE_7__*) #1

declare dso_local i32 @InternetCreateUrlW(%struct.TYPE_6__*, i32, i8*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @InternetSetCookieW(i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

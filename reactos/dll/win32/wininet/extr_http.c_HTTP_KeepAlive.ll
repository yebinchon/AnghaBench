; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_KeepAlive.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_KeepAlive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@HTTP_QUERY_VERSION = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@g_szHttp1_1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HTTP_QUERY_PROXY_CONNECTION = common dso_local global i32 0, align 4
@HTTP_QUERY_CONNECTION = common dso_local global i32 0, align 4
@szKeepAlive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @HTTP_KeepAlive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTTP_KeepAlive(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [10 x i32], align 16
  %4 = alloca [20 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 40, i32* %5, align 4
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @HTTP_QUERY_VERSION, align 4
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  %11 = call i64 @HTTP_HttpQueryInfoW(i32* %8, i32 %9, i32* %10, i32* %5, i32* null)
  %12 = load i64, i64* @ERROR_SUCCESS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  %16 = load i32, i32* @g_szHttp1_1, align 4
  %17 = call i32 @strcmpiW(i32* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %19, %14, %1
  store i32 80, i32* %5, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @HTTP_QUERY_PROXY_CONNECTION, align 4
  %24 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %25 = call i64 @HTTP_HttpQueryInfoW(i32* %22, i32 %23, i32* %24, i32* %5, i32* null)
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @HTTP_QUERY_CONNECTION, align 4
  %31 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %32 = call i64 @HTTP_HttpQueryInfoW(i32* %29, i32 %30, i32* %31, i32* %5, i32* null)
  %33 = load i64, i64* @ERROR_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %28, %21
  %36 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %37 = load i32, i32* @szKeepAlive, align 4
  %38 = call i32 @strcmpiW(i32* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %35, %28
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i64 @HTTP_HttpQueryInfoW(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @strcmpiW(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

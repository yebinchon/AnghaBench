; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_query_http_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_query_http_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HTTP_QUERY_RAW_HEADERS_CRLF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @query_http_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_http_info(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @HTTP_QUERY_RAW_HEADERS_CRLF, align 4
  %10 = call i32 @IWinInetHttpInfo_QueryInfo(i32* %8, i32 %9, i8* null, i64* %6, i32* null, i32* null)
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %50

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = call i8* @heap_alloc(i64 %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %50

20:                                               ; preds = %14
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @HTTP_QUERY_RAW_HEADERS_CRLF, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @IWinInetHttpInfo_QueryInfo(i32* %21, i32 %22, i8* %23, i64* %6, i32* null, i32* null)
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @heap_free(i8* %28)
  br label %50

30:                                               ; preds = %20
  %31 = load i8*, i8** %7, align 8
  %32 = call i8* @strchrW(i8* %31, i8 signext 13)
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  store i8* %43, i8** %5, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @process_response_headers(i32* %44, i8* %45)
  br label %47

47:                                               ; preds = %41, %35, %30
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @heap_free(i8* %48)
  br label %50

50:                                               ; preds = %47, %27, %19, %13
  ret void
}

declare dso_local i32 @IWinInetHttpInfo_QueryInfo(i32*, i32, i8*, i64*, i32*, i32*) #1

declare dso_local i8* @heap_alloc(i64) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i32 @process_response_headers(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

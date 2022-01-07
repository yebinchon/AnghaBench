; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_test_bogus_accept_types_array.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_test_bogus_accept_types_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_bogus_accept_types_array.types = internal global [7 x i8*] [i8* inttoptr (i64 6240 to i8*), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* inttoptr (i64 4294967295 to i8*), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [4 x i8] c"*/*\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"MERONG(0.9/;p)\00", align 1
@INTERNET_OPEN_TYPE_DIRECT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"www.winehq.org\00", align 1
@INTERNET_SERVICE_HTTP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"/post/post_action.php\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"HTTP/1.0\00", align 1
@INTERNET_FLAG_FORMS_SUBMIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"HttpOpenRequest failed: %u\0A\00", align 1
@HTTP_QUERY_ACCEPT = common dso_local global i32 0, align 4
@HTTP_QUERY_FLAG_REQUEST_HEADERS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"HttpQueryInfo succeeded\0A\00", align 1
@ERROR_HTTP_HEADER_NOT_FOUND = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [46 x i8] c"expected ERROR_HTTP_HEADER_NOT_FOUND, got %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c", */*, %p, , , */*\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"*/*, %p, */*\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"got '%s' expected ''\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_bogus_accept_types_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bogus_accept_types_array() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  %8 = load i32, i32* @INTERNET_OPEN_TYPE_DIRECT, align 4
  %9 = call i32* @InternetOpenA(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* @INTERNET_SERVICE_HTTP, align 4
  %12 = call i32* @InternetConnectA(i32* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 80, i32* null, i32* null, i32 %11, i32 0, i32 0)
  store i32* %12, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @INTERNET_FLAG_FORMS_SUBMIT, align 4
  %15 = call i32* @HttpOpenRequestA(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @test_bogus_accept_types_array.types, i64 0, i64 0), i32 %14, i32 0)
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i8* (...) @GetLastError()
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %19)
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %21, align 16
  store i64 32, i64* %4, align 8
  %22 = call i32 @SetLastError(i32 -559038737)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @HTTP_QUERY_ACCEPT, align 4
  %25 = load i32, i32* @HTTP_QUERY_FLAG_REQUEST_HEADERS, align 4
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %28 = call i32 @HttpQueryInfoA(i32* %23, i32 %26, i8* %27, i64* %4, i32* null)
  store i32 %28, i32* %7, align 4
  %29 = call i8* (...) @GetLastError()
  %30 = ptrtoint i8* %29 to i64
  store i64 %30, i64* %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %0
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @broken(i32 %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %33, %0
  %38 = phi i1 [ true, %0 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @ERROR_HTTP_HEADER_NOT_FOUND, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %5, align 8
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %43, %37
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @broken(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @broken(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %66, %58, %50
  %72 = phi i1 [ true, %58 ], [ true, %50 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @InternetCloseHandle(i32* %76)
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @InternetCloseHandle(i32* %78)
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @InternetCloseHandle(i32* %80)
  ret void
}

declare dso_local i32* @InternetOpenA(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32* @InternetConnectA(i32*, i8*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32* @HttpOpenRequestA(i32*, i8*, i8*, i8*, i8*, i8**, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @GetLastError(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @HttpQueryInfoA(i32*, i32, i8*, i64*, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @InternetCloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

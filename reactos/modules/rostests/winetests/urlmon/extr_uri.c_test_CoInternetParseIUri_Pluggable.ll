; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_CoInternetParseIUri_Pluggable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_CoInternetParseIUri_Pluggable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parse_urlW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Error: Expected CreateUri to succeed, but got 0x%08x.\0A\00", align 1
@ParseUrl = common dso_local global i32 0, align 4
@PARSE_CANONICALIZE = common dso_local global i32 0, align 4
@parse_action = common dso_local global i32 0, align 4
@URL_UNESCAPE = common dso_local global i32 0, align 4
@URL_ESCAPE_UNSAFE = common dso_local global i32 0, align 4
@parse_flags = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"Error: CoInternetParseIUri returned 0x%08x, expected 0x%08x.\0A\00", align 1
@parse_resultW = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Error: Expected %d, but got %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Error: Expected %s, but got %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CoInternetParseIUri_Pluggable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CoInternetParseIUri_Pluggable() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [200 x i32], align 16
  %4 = alloca i64, align 8
  store i32* null, i32** %2, align 8
  %5 = load i32, i32* @parse_urlW, align 4
  %6 = call i64 @pCreateUri(i32 %5, i32 0, i32 0, i32** %2)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = call i64 @SUCCEEDED(i64 %7)
  %9 = trunc i64 %8 to i32
  %10 = load i64, i64* %1, align 8
  %11 = call i32 (i32, i8*, i64, ...) @ok(i32 %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i64, i64* %1, align 8
  %13 = call i64 @SUCCEEDED(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %0
  %16 = load i32, i32* @ParseUrl, align 4
  %17 = call i32 @SET_EXPECT(i32 %16)
  %18 = load i32, i32* @PARSE_CANONICALIZE, align 4
  store i32 %18, i32* @parse_action, align 4
  %19 = load i32, i32* @URL_UNESCAPE, align 4
  %20 = load i32, i32* @URL_ESCAPE_UNSAFE, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* @parse_flags, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @parse_action, align 4
  %24 = load i32, i32* @parse_flags, align 4
  %25 = getelementptr inbounds [200 x i32], [200 x i32]* %3, i64 0, i64 0
  %26 = call i64 @pCoInternetParseIUri(i32* %22, i32 %23, i32 %24, i32* %25, i32 200, i64* %4, i32 0)
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %1, align 8
  %32 = load i64, i64* @S_OK, align 8
  %33 = call i32 (i32, i8*, i64, ...) @ok(i32 %30, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %31, i64 %32)
  %34 = load i32, i32* @ParseUrl, align 4
  %35 = call i32 @CHECK_CALLED(i32 %34)
  %36 = load i64, i64* %1, align 8
  %37 = call i64 @SUCCEEDED(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %15
  %40 = load i64, i64* %4, align 8
  %41 = load i32*, i32** @parse_resultW, align 8
  %42 = call i64 @lstrlenW(i32* %41)
  %43 = icmp eq i64 %40, %42
  %44 = zext i1 %43 to i32
  %45 = load i32*, i32** @parse_resultW, align 8
  %46 = call i64 @lstrlenW(i32* %45)
  %47 = load i64, i64* %4, align 8
  %48 = call i32 (i32, i8*, i64, ...) @ok(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %46, i64 %47)
  %49 = getelementptr inbounds [200 x i32], [200 x i32]* %3, i64 0, i64 0
  %50 = load i32*, i32** @parse_resultW, align 8
  %51 = call i32 @lstrcmpW(i32* %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load i32*, i32** @parse_resultW, align 8
  %56 = call i64 @wine_dbgstr_w(i32* %55)
  %57 = getelementptr inbounds [200 x i32], [200 x i32]* %3, i64 0, i64 0
  %58 = call i64 @wine_dbgstr_w(i32* %57)
  %59 = call i32 (i32, i8*, i64, ...) @ok(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %56, i64 %58)
  br label %60

60:                                               ; preds = %39, %15
  br label %61

61:                                               ; preds = %60, %0
  %62 = load i32*, i32** %2, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @IUri_Release(i32* %65)
  br label %67

67:                                               ; preds = %64, %61
  ret void
}

declare dso_local i64 @pCreateUri(i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @pCoInternetParseIUri(i32*, i32, i32, i32*, i32, i64*, i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i64 @lstrlenW(i32*) #1

declare dso_local i32 @lstrcmpW(i32*, i32*) #1

declare dso_local i64 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @IUri_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

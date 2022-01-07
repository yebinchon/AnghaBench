; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_test_end_browser_session.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_test_end_browser_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"http://www.example.com/test_end\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"A=B\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"InternetSetCookie failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"InternetGetCookie failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"len = 0\0A\00", align 1
@INTERNET_OPTION_END_BROWSER_SESSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [67 x i8] c"InternetSetOption(INTERNET_OPTION_END_BROWSER_SESSION) failed: %u\0A\00", align 1
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"InternetGetCookie returned %x (%u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"len = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_end_browser_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_end_browser_session() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @InternetSetCookieA(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @TRUE, align 4
  %6 = icmp eq i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 (i32, i8*, ...) @ok(i32 %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i64 1024, i64* %1, align 8
  %9 = call i32 @InternetGetCookieA(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i64* %1)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @TRUE, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i64, i64* %1, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %19 = load i32, i32* @INTERNET_OPTION_END_BROWSER_SESSION, align 4
  %20 = call i32 @InternetSetOptionA(i32* null, i32 %19, i32* null, i32 0)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i64 (...) @GetLastError()
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i64 %22)
  store i64 1024, i64* %1, align 8
  %24 = call i32 @InternetGetCookieA(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i64* %1)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %0
  %28 = call i64 (...) @GetLastError()
  %29 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %27, %0
  %32 = phi i1 [ false, %0 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %2, align 4
  %35 = call i64 (...) @GetLastError()
  %36 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %34, i64 %35)
  %37 = load i64, i64* %1, align 8
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %1, align 8
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i64 %41)
  ret void
}

declare dso_local i32 @InternetSetCookieA(i8*, i32*, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @InternetGetCookieA(i8*, i32*, i32*, i64*) #1

declare dso_local i32 @InternetSetOptionA(i32*, i32, i32*, i32) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

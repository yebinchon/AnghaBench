; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_test_cookie_attrs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_test_cookie_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"wininet.dll\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"DeleteWpadCacheForNetworks\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Skipping cookie attributes tests. Too old IE.\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"http://cookie.attrs.com/bar\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"A=data; httponly\00", align 1
@ERROR_INVALID_OPERATION = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"InternetSetCookie returned: %x (%u)\0A\00", align 1
@COOKIE_STATE_REJECT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"InternetSetCookieEx returned: %x (%u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"http://cookie.attrs.com/\00", align 1
@INTERNET_COOKIE_HTTPONLY = common dso_local global i32 0, align 4
@ERROR_NO_MORE_ITEMS = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [39 x i8] c"InternetGetCookieEx returned: %x (%u)\0A\00", align 1
@COOKIE_STATE_ACCEPT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"InternetSetCookieEx failed: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"InternetGetCookie returned: %x (%u)\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"InternetGetCookieEx failed: %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"A=data\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"data = %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"A=test\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_cookie_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cookie_attrs() #0 {
  %1 = alloca [100 x i8], align 16
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @GetProcAddress(i32 %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 @win_skip(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %144

10:                                               ; preds = %0
  %11 = call i32 @InternetSetCookieA(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = call i8* (...) @GetLastError()
  %16 = load i8*, i8** @ERROR_INVALID_OPERATION, align 8
  %17 = icmp eq i8* %15, %16
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ false, %10 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %4, align 4
  %22 = call i8* (...) @GetLastError()
  %23 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %21, i8* %22)
  %24 = call i32 @SetLastError(i32 -559038737)
  %25 = call i64 @InternetSetCookieExA(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0)
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @COOKIE_STATE_REJECT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = call i8* (...) @GetLastError()
  %31 = load i8*, i8** @ERROR_INVALID_OPERATION, align 8
  %32 = icmp eq i8* %30, %31
  br label %33

33:                                               ; preds = %29, %18
  %34 = phi i1 [ false, %18 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %4, align 4
  %37 = call i8* (...) @GetLastError()
  %38 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %36, i8* %37)
  store i64 100, i64* %2, align 8
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %40 = load i32, i32* @INTERNET_COOKIE_HTTPONLY, align 4
  %41 = call i32 @InternetGetCookieExA(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32* null, i8* %39, i64* %2, i32 %40, i32* null)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %33
  %45 = call i8* (...) @GetLastError()
  %46 = load i8*, i8** @ERROR_NO_MORE_ITEMS, align 8
  %47 = icmp eq i8* %45, %46
  br label %48

48:                                               ; preds = %44, %33
  %49 = phi i1 [ false, %33 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %4, align 4
  %52 = call i8* (...) @GetLastError()
  %53 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %51, i8* %52)
  %54 = load i32, i32* @INTERNET_COOKIE_HTTPONLY, align 4
  %55 = call i64 @InternetSetCookieExA(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %54, i32 0)
  store i64 %55, i64* %3, align 8
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* @COOKIE_STATE_ACCEPT, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i8* (...) @GetLastError()
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %60)
  store i64 100, i64* %2, align 8
  %62 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %63 = call i32 @InternetGetCookieA(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32* null, i8* %62, i64* %2)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %48
  %67 = call i8* (...) @GetLastError()
  %68 = load i8*, i8** @ERROR_NO_MORE_ITEMS, align 8
  %69 = icmp eq i8* %67, %68
  br label %70

70:                                               ; preds = %66, %48
  %71 = phi i1 [ false, %48 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %4, align 4
  %74 = call i8* (...) @GetLastError()
  %75 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %73, i8* %74)
  store i64 100, i64* %2, align 8
  %76 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %77 = call i32 @InternetGetCookieExA(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32* null, i8* %76, i64* %2, i32 0, i32* null)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %70
  %81 = call i8* (...) @GetLastError()
  %82 = load i8*, i8** @ERROR_NO_MORE_ITEMS, align 8
  %83 = icmp eq i8* %81, %82
  br label %84

84:                                               ; preds = %80, %70
  %85 = phi i1 [ false, %70 ], [ %83, %80 ]
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %4, align 4
  %88 = call i8* (...) @GetLastError()
  %89 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %87, i8* %88)
  store i64 100, i64* %2, align 8
  %90 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %91 = load i32, i32* @INTERNET_COOKIE_HTTPONLY, align 4
  %92 = call i32 @InternetGetCookieExA(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32* null, i8* %90, i64* %2, i32 %91, i32* null)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i8* (...) @GetLastError()
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* %94)
  %96 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %97 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %101)
  %103 = call i32 @InternetSetCookieA(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %84
  %107 = call i8* (...) @GetLastError()
  %108 = load i8*, i8** @ERROR_INVALID_OPERATION, align 8
  %109 = icmp eq i8* %107, %108
  br label %110

110:                                              ; preds = %106, %84
  %111 = phi i1 [ false, %84 ], [ %109, %106 ]
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %4, align 4
  %114 = call i8* (...) @GetLastError()
  %115 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %113, i8* %114)
  %116 = call i32 @SetLastError(i32 -559038737)
  %117 = call i64 @InternetSetCookieExA(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 0, i32 0)
  store i64 %117, i64* %3, align 8
  %118 = load i64, i64* %3, align 8
  %119 = load i64, i64* @COOKIE_STATE_REJECT, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %110
  %122 = call i8* (...) @GetLastError()
  %123 = load i8*, i8** @ERROR_INVALID_OPERATION, align 8
  %124 = icmp eq i8* %122, %123
  br label %125

125:                                              ; preds = %121, %110
  %126 = phi i1 [ false, %110 ], [ %124, %121 ]
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %4, align 4
  %129 = call i8* (...) @GetLastError()
  %130 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %128, i8* %129)
  store i64 100, i64* %2, align 8
  %131 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %132 = load i32, i32* @INTERNET_COOKIE_HTTPONLY, align 4
  %133 = call i32 @InternetGetCookieExA(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32* null, i8* %131, i64* %2, i32 %132, i32* null)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i8* (...) @GetLastError()
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* %135)
  %137 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %138 = call i32 @strcmp(i8* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %143 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %125, %8
  ret void
}

declare dso_local i32 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @InternetSetCookieA(i8*, i32*, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @GetLastError(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @InternetSetCookieExA(i8*, i32*, i8*, i32, i32) #1

declare dso_local i32 @InternetGetCookieExA(i8*, i32*, i8*, i64*, i32, i32*) #1

declare dso_local i32 @InternetGetCookieA(i8*, i32*, i8*, i64*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

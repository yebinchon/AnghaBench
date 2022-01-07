; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_ftp.c_test_connect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_ftp.c_test_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"ftp.winehq.org\00", align 1
@INTERNET_DEFAULT_FTP_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@INTERNET_SERVICE_FTP = common dso_local global i32 0, align 4
@INTERNET_FLAG_PASSIVE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"ERROR_SUCCESS, got %d\0A\00", align 1
@ERROR_INTERNET_LOGIN_FAILURE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"Expected ERROR_INTERNET_LOGIN_FAILURE, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"IEUser@\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Expected InternetConnect to fail\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"Expected ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"InternetConnect failed : %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_connect(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = call i32 @SetLastError(i32 -559038737)
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @INTERNET_DEFAULT_FTP_PORT, align 4
  %7 = load i32, i32* @INTERNET_SERVICE_FTP, align 4
  %8 = load i32, i32* @INTERNET_FLAG_PASSIVE, align 4
  %9 = call i32* @InternetConnectA(i32* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* null, i32 %7, i32 %8, i32 0)
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = call i64 (...) @GetLastError()
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 (...) @GetLastError()
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @InternetCloseHandle(i32* %19)
  br label %28

21:                                               ; preds = %1
  %22 = call i64 (...) @GetLastError()
  %23 = load i64, i64* @ERROR_INTERNET_LOGIN_FAILURE, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 (...) @GetLastError()
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %21, %12
  %29 = call i32 @SetLastError(i32 -559038737)
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @INTERNET_DEFAULT_FTP_PORT, align 4
  %32 = load i32, i32* @INTERNET_SERVICE_FTP, align 4
  %33 = load i32, i32* @INTERNET_FLAG_PASSIVE, align 4
  %34 = call i32* @InternetConnectA(i32* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %31, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %32, i32 %33, i32 0)
  store i32* %34, i32** %3, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = icmp eq i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %39 = call i64 (...) @GetLastError()
  %40 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 (...) @GetLastError()
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %43)
  %45 = call i32 @SetLastError(i32 -559038737)
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @INTERNET_DEFAULT_FTP_PORT, align 4
  %48 = load i32, i32* @INTERNET_SERVICE_FTP, align 4
  %49 = load i32, i32* @INTERNET_FLAG_PASSIVE, align 4
  %50 = call i32* @InternetConnectA(i32* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %48, i32 %49, i32 0)
  store i32* %50, i32** %3, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = icmp ne i32* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %56 = call i64 (...) @GetLastError()
  %57 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 (...) @GetLastError()
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %60)
  %62 = call i32 @SetLastError(i32 -559038737)
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* @INTERNET_DEFAULT_FTP_PORT, align 4
  %65 = load i32, i32* @INTERNET_SERVICE_FTP, align 4
  %66 = load i32, i32* @INTERNET_FLAG_PASSIVE, align 4
  %67 = call i32* @InternetConnectA(i32* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %64, i8* null, i8* null, i32 %65, i32 %66, i32 0)
  store i32* %67, i32** %3, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %81, label %70

70:                                               ; preds = %28
  %71 = call i64 (...) @GetLastError()
  %72 = load i64, i64* @ERROR_INTERNET_LOGIN_FAILURE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = call i32 @SetLastError(i32 -559038737)
  %76 = load i32*, i32** %2, align 8
  %77 = load i32, i32* @INTERNET_DEFAULT_FTP_PORT, align 4
  %78 = load i32, i32* @INTERNET_SERVICE_FTP, align 4
  %79 = load i32, i32* @INTERNET_FLAG_PASSIVE, align 4
  %80 = call i32* @InternetConnectA(i32* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %78, i32 %79, i32 0)
  store i32* %80, i32** %3, align 8
  br label %81

81:                                               ; preds = %74, %70, %28
  %82 = load i32*, i32** %3, align 8
  %83 = icmp ne i32* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i64 (...) @GetLastError()
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i64 %85)
  %87 = call i64 (...) @GetLastError()
  %88 = load i64, i64* @ERROR_SUCCESS, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i64 (...) @GetLastError()
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %91)
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @InternetCloseHandle(i32* %93)
  %95 = call i32 @SetLastError(i32 -559038737)
  %96 = load i32*, i32** %2, align 8
  %97 = load i32, i32* @INTERNET_DEFAULT_FTP_PORT, align 4
  %98 = load i32, i32* @INTERNET_SERVICE_FTP, align 4
  %99 = load i32, i32* @INTERNET_FLAG_PASSIVE, align 4
  %100 = call i32* @InternetConnectA(i32* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %97, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* null, i32 %98, i32 %99, i32 0)
  store i32* %100, i32** %3, align 8
  %101 = load i32*, i32** %3, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %81
  %104 = call i64 (...) @GetLastError()
  %105 = load i64, i64* @ERROR_INTERNET_LOGIN_FAILURE, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i64 (...) @GetLastError()
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %108)
  br label %119

110:                                              ; preds = %81
  %111 = call i64 (...) @GetLastError()
  %112 = load i64, i64* @ERROR_SUCCESS, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i64 (...) @GetLastError()
  %116 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 %115)
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @InternetCloseHandle(i32* %117)
  br label %119

119:                                              ; preds = %110, %103
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @InternetConnectA(i32*, i8*, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @InternetCloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

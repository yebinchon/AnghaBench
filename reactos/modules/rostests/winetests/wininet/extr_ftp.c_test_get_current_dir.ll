; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_ftp.c_test_get_current_dir.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_ftp.c_test_get_current_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@FTP_TRANSFER_TYPE_ASCII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"CWD pub/\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Failed to change directories in test_get_current_dir(HINTERNET hFtp).\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Expected FtpGetCurrentDirectoryA to fail\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"Expected ERROR_INVALID_HANDLE, got: %d\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Expected ERROR_INVALID_PARAMETER, got: %d\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [45 x i8] c"Expected ERROR_INSUFFICIENT_BUFFER, got: %d\0A\00", align 1
@ERROR_INTERNET_INCORRECT_HANDLE_TYPE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [56 x i8] c"Expected ERROR_INTERNET_INCORRECT_HANDLE_TYPE, got: %d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [42 x i8] c"Expected FtpGetCurrentDirectoryA to pass\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"/pub\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Expected returned value \22%s\22 to match \22/pub\22\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [33 x i8] c"Expected ERROR_SUCCESS, got: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Expected returned value \22%s\22 to not match \22/pub\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @test_get_current_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_current_dir(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i64, i64* @FALSE, align 8
  %17 = load i32, i32* @FTP_TRANSFER_TYPE_ASCII, align 4
  %18 = call i64 @pFtpCommandA(i32* %15, i64 %16, i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32* null)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @FALSE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @skip(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %162

24:                                               ; preds = %2
  %25 = call i32 @SetLastError(i32 -559038737)
  %26 = call i64 @FtpGetCurrentDirectoryA(i32* null, i8* null, i32* null)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @FALSE, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i8* (...) @GetLastError()
  %33 = load i8*, i8** @ERROR_INVALID_HANDLE, align 8
  %34 = icmp eq i8* %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i8* (...) @GetLastError()
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  %38 = call i32 @SetLastError(i32 -559038737)
  %39 = load i32*, i32** %3, align 8
  %40 = call i64 @FtpGetCurrentDirectoryA(i32* %39, i8* null, i32* null)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @FALSE, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i8* (...) @GetLastError()
  %47 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %48 = icmp eq i8* %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i8* (...) @GetLastError()
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  %52 = call i32 @SetLastError(i32 -559038737)
  %53 = call i64 @FtpGetCurrentDirectoryA(i32* null, i8* %14, i32* %6)
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @FALSE, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %59 = call i8* (...) @GetLastError()
  %60 = load i8*, i8** @ERROR_INVALID_HANDLE, align 8
  %61 = icmp eq i8* %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i8* (...) @GetLastError()
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  %65 = call i32 @SetLastError(i32 -559038737)
  %66 = load i32*, i32** %3, align 8
  %67 = call i64 @FtpGetCurrentDirectoryA(i32* %66, i8* %14, i32* null)
  store i64 %67, i64* %5, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @FALSE, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %73 = call i8* (...) @GetLastError()
  %74 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %75 = icmp eq i8* %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i8* (...) @GetLastError()
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %77)
  %79 = call i32 @SetLastError(i32 -559038737)
  %80 = load i32*, i32** %3, align 8
  %81 = call i64 @FtpGetCurrentDirectoryA(i32* %80, i8* null, i32* %6)
  store i64 %81, i64* %5, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @FALSE, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i8* (...) @GetLastError()
  %88 = load i8*, i8** @ERROR_INSUFFICIENT_BUFFER, align 8
  %89 = icmp eq i8* %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i8* (...) @GetLastError()
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %91)
  %93 = call i32 @SetLastError(i32 -559038737)
  %94 = load i32*, i32** %4, align 8
  %95 = call i64 @FtpGetCurrentDirectoryA(i32* %94, i8* %14, i32* %6)
  store i64 %95, i64* %5, align 8
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* @FALSE, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %101 = call i8* (...) @GetLastError()
  %102 = load i8*, i8** @ERROR_INTERNET_INCORRECT_HANDLE_TYPE, align 8
  %103 = icmp eq i8* %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i8* (...) @GetLastError()
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i8* %105)
  %107 = call i32 @SetLastError(i32 -559038737)
  %108 = load i32*, i32** %3, align 8
  %109 = call i64 @FtpGetCurrentDirectoryA(i32* %108, i8* %14, i32* %6)
  store i64 %109, i64* %5, align 8
  %110 = load i64, i64* %5, align 8
  %111 = load i64, i64* @TRUE, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %115 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* %14)
  %120 = call i8* (...) @GetLastError()
  %121 = load i8*, i8** @ERROR_SUCCESS, align 8
  %122 = icmp eq i8* %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i8* (...) @GetLastError()
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %124)
  %126 = call i32 @SetLastError(i32 -559038737)
  store i32 4, i32* %6, align 4
  %127 = getelementptr inbounds i8, i8* %14, i64 4
  store i8 97, i8* %127, align 4
  %128 = load i32*, i32** %3, align 8
  %129 = call i64 @FtpGetCurrentDirectoryA(i32* %128, i8* %14, i32* %6)
  store i64 %129, i64* %5, align 8
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* @FALSE, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %135 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %136 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i8* %14)
  %137 = call i8* (...) @GetLastError()
  %138 = load i8*, i8** @ERROR_INSUFFICIENT_BUFFER, align 8
  %139 = icmp eq i8* %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i8* (...) @GetLastError()
  %142 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %141)
  %143 = call i32 @SetLastError(i32 -559038737)
  store i32 5, i32* %6, align 4
  %144 = load i32*, i32** %3, align 8
  %145 = call i64 @FtpGetCurrentDirectoryA(i32* %144, i8* %14, i32* %6)
  store i64 %145, i64* %5, align 8
  %146 = load i64, i64* %5, align 8
  %147 = load i64, i64* @TRUE, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %151 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* %14)
  %156 = call i8* (...) @GetLastError()
  %157 = load i8*, i8** @ERROR_SUCCESS, align 8
  %158 = icmp eq i8* %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i8* (...) @GetLastError()
  %161 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %160)
  store i32 0, i32* %9, align 4
  br label %162

162:                                              ; preds = %24, %22
  %163 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i32, i32* %9, align 4
  switch i32 %164, label %166 [
    i32 0, label %165
    i32 1, label %165
  ]

165:                                              ; preds = %162, %162
  ret void

166:                                              ; preds = %162
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pFtpCommandA(i32*, i64, i32, i8*, i32, i32*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @FtpGetCurrentDirectoryA(i32*, i8*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i8* @GetLastError(...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

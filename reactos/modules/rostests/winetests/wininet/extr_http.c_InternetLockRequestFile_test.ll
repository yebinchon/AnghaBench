; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_InternetLockRequestFile_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_InternetLockRequestFile_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"test.winehq.org\00", align 1
@INTERNET_DEFAULT_HTTP_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"/tests/hello.html\00", align 1
@INTERNET_OPTION_DATAFILE_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"InternetQueryOptionA(INTERNET_OPTION_DATAFILE_NAME) succeeded\0A\00", align 1
@ERROR_INTERNET_ITEM_NOT_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"GetLastError()=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"size = %d\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"InternetLockRequestFile returned: %x(%u)\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"HttpSendRequest failed: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"InternetQueryOptionA(INTERNET_OPTION_DATAFILE_NAME) failed: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"lock == NULL\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"lock != lock2\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"InternetUnlockRequestFile failed: %u\0A\00", align 1
@ERROR_SHARING_VIOLATION = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"Deleting file returned %x(%u)\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Close request handle failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InternetLockRequestFile_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InternetLockRequestFile_test() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = load i32, i32* @INTERNET_DEFAULT_HTTP_PORT, align 4
  %13 = call i32 @open_simple_request(%struct.TYPE_3__* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %14 = trunc i64 %9 to i32
  store i32 %14, i32* %6, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @INTERNET_OPTION_DATAFILE_NAME, align 4
  %18 = call i32 @InternetQueryOptionA(i32 %16, i32 %17, i8* %11, i32* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 (...) @GetLastError()
  %25 = load i32, i32* @ERROR_INTERNET_ITEM_NOT_FOUND, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  store i32* null, i32** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @InternetLockRequestFile(i32 %37, i32** %4)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %0
  %42 = call i32 (...) @GetLastError()
  %43 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %44 = icmp eq i32 %42, %43
  br label %45

45:                                               ; preds = %41, %0
  %46 = phi i1 [ false, %0 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %7, align 4
  %49 = call i32 (...) @GetLastError()
  %50 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %48, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @HttpSendRequestA(i32 %52, i32* null, i32 0, i32* null, i32 0)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (...) @GetLastError()
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %55)
  %57 = trunc i64 %9 to i32
  store i32 %57, i32* %6, align 4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @INTERNET_OPTION_DATAFILE_NAME, align 4
  %61 = call i32 @InternetQueryOptionA(i32 %59, i32 %60, i8* %11, i32* %6)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (...) @GetLastError()
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @InternetLockRequestFile(i32 %66, i32** %4)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 (...) @GetLastError()
  %71 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32*, i32** %4, align 8
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @InternetLockRequestFile(i32 %77, i32** %5)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 (...) @GetLastError()
  %82 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = icmp eq i32* %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @InternetUnlockRequestFile(i32* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (...) @GetLastError()
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %91)
  %93 = call i32 @DeleteFileA(i8* %11)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %45
  %97 = call i32 (...) @GetLastError()
  %98 = load i32, i32* @ERROR_SHARING_VIOLATION, align 4
  %99 = icmp eq i32 %97, %98
  br label %100

100:                                              ; preds = %96, %45
  %101 = phi i1 [ false, %45 ], [ %99, %96 ]
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (...) @GetLastError()
  %105 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %103, i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @InternetCloseHandle(i32 %107)
  %109 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %110 = call i32 @DeleteFileA(i8* %11)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %100
  %114 = call i32 (...) @GetLastError()
  %115 = load i32, i32* @ERROR_SHARING_VIOLATION, align 4
  %116 = icmp eq i32 %114, %115
  br label %117

117:                                              ; preds = %113, %100
  %118 = phi i1 [ false, %100 ], [ %116, %113 ]
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %7, align 4
  %121 = call i32 (...) @GetLastError()
  %122 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @InternetUnlockRequestFile(i32* %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 (...) @GetLastError()
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %126)
  %128 = call i32 @DeleteFileA(i8* %11)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 (...) @GetLastError()
  %132 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %133)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open_simple_request(%struct.TYPE_3__*, i8*, i32, i32*, i8*) #2

declare dso_local i32 @InternetQueryOptionA(i32, i32, i8*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @InternetLockRequestFile(i32, i32**) #2

declare dso_local i32 @HttpSendRequestA(i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @InternetUnlockRequestFile(i32*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @InternetCloseHandle(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

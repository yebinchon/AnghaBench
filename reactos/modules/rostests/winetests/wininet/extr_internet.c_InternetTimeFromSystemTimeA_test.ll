; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_InternetTimeFromSystemTimeA_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_InternetTimeFromSystemTimeA_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@InternetTimeFromSystemTimeA_test.time = internal constant %struct.TYPE_3__ { i32 2005, i32 1, i32 5, i32 7, i32 12, i32 6, i32 35, i32 0 }, align 4
@INTERNET_RFC1123_BUFSIZE = common dso_local global i32 0, align 4
@InternetTimeFromSystemTimeA_test.expect = internal constant [30 x i8] c"Fri, 07 Jan 2005 12:06:35 GMT\00", align 16
@INTERNET_RFC1123_FORMAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"InternetTimeFromSystemTimeA failed (%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"InternetTimeFromSystemTimeA should have returned FALSE\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [79 x i8] c"InternetTimeFromSystemTimeA failed with ERROR_INVALID_PARAMETER instead of %u\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [81 x i8] c"InternetTimeFromSystemTimeA failed with ERROR_INSUFFICIENT_BUFFER instead of %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InternetTimeFromSystemTimeA_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InternetTimeFromSystemTimeA_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @INTERNET_RFC1123_BUFSIZE, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = load i64, i64* @INTERNET_RFC1123_FORMAT, align 8
  %10 = trunc i64 %6 to i32
  %11 = call i32 @pInternetTimeFromSystemTimeA(%struct.TYPE_3__* @InternetTimeFromSystemTimeA_test.time, i64 %9, i8* %8, i32 %10)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i64 (...) @GetLastError()
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = call i32 @memcmp(i8* %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @InternetTimeFromSystemTimeA_test.expect, i64 0, i64 0), i32 30)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 (...) @GetLastError()
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = call i32 @SetLastError(i32 -559038737)
  %22 = load i64, i64* @INTERNET_RFC1123_FORMAT, align 8
  %23 = trunc i64 %6 to i32
  %24 = call i32 @pInternetTimeFromSystemTimeA(%struct.TYPE_3__* null, i64 %22, i8* %8, i32 %23)
  store i32 %24, i32* %1, align 4
  %25 = call i64 (...) @GetLastError()
  store i64 %25, i64* %4, align 8
  %26 = load i32, i32* %1, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %4, align 8
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  %37 = call i32 @SetLastError(i32 -559038737)
  %38 = load i64, i64* @INTERNET_RFC1123_FORMAT, align 8
  %39 = trunc i64 %6 to i32
  %40 = call i32 @pInternetTimeFromSystemTimeA(%struct.TYPE_3__* @InternetTimeFromSystemTimeA_test.time, i64 %38, i8* null, i32 %39)
  store i32 %40, i32* %1, align 4
  %41 = call i64 (...) @GetLastError()
  store i64 %41, i64* %4, align 8
  %42 = load i32, i32* %1, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %4, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  %53 = call i32 @SetLastError(i32 -559038737)
  %54 = load i64, i64* @INTERNET_RFC1123_FORMAT, align 8
  %55 = add nsw i64 %54, 1
  %56 = trunc i64 %6 to i32
  %57 = call i32 @pInternetTimeFromSystemTimeA(%struct.TYPE_3__* @InternetTimeFromSystemTimeA_test.time, i64 %55, i8* %8, i32 %56)
  store i32 %57, i32* %1, align 4
  %58 = call i64 (...) @GetLastError()
  store i64 %58, i64* %4, align 8
  %59 = load i32, i32* %1, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %4, align 8
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i64 %68)
  %70 = call i32 @SetLastError(i32 -559038737)
  %71 = load i64, i64* @INTERNET_RFC1123_FORMAT, align 8
  %72 = call i32 @pInternetTimeFromSystemTimeA(%struct.TYPE_3__* @InternetTimeFromSystemTimeA_test.time, i64 %71, i8* %8, i32 0)
  store i32 %72, i32* %1, align 4
  %73 = call i64 (...) @GetLastError()
  store i64 %73, i64* %4, align 8
  %74 = load i32, i32* %1, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %4, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i64 %83)
  %85 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %85)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pInternetTimeFromSystemTimeA(%struct.TYPE_3__*, i64, i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @SetLastError(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

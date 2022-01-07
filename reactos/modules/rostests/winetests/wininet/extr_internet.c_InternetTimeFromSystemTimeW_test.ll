; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_InternetTimeFromSystemTimeW_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_InternetTimeFromSystemTimeW_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@InternetTimeFromSystemTimeW_test.time = internal constant %struct.TYPE_3__ { i32 2005, i32 1, i32 5, i32 7, i32 12, i32 6, i32 35, i32 0 }, align 4
@INTERNET_RFC1123_BUFSIZE = common dso_local global i32 0, align 4
@InternetTimeFromSystemTimeW_test.expect = internal constant [30 x float] [float 7.000000e+01, float 1.140000e+02, float 1.050000e+02, float 4.400000e+01, float 3.200000e+01, float 4.800000e+01, float 5.500000e+01, float 3.200000e+01, float 7.400000e+01, float 9.700000e+01, float 1.100000e+02, float 3.200000e+01, float 5.000000e+01, float 4.800000e+01, float 4.800000e+01, float 5.300000e+01, float 3.200000e+01, float 4.900000e+01, float 5.000000e+01, float 5.800000e+01, float 4.800000e+01, float 5.400000e+01, float 5.800000e+01, float 5.100000e+01, float 5.300000e+01, float 3.200000e+01, float 7.100000e+01, float 7.700000e+01, float 8.400000e+01, float 0.000000e+00], align 16
@INTERNET_RFC1123_FORMAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"InternetTimeFromSystemTimeW failed (%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"InternetTimeFromSystemTimeW should have returned FALSE\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [79 x i8] c"InternetTimeFromSystemTimeW failed with ERROR_INVALID_PARAMETER instead of %u\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [81 x i8] c"InternetTimeFromSystemTimeW failed with ERROR_INSUFFICIENT_BUFFER instead of %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InternetTimeFromSystemTimeW_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InternetTimeFromSystemTimeW_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @INTERNET_RFC1123_BUFSIZE, align 4
  %6 = add nsw i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca float, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i64, i64* @INTERNET_RFC1123_FORMAT, align 8
  %11 = mul nuw i64 4, %7
  %12 = trunc i64 %11 to i32
  %13 = call i32 @pInternetTimeFromSystemTimeW(%struct.TYPE_3__* @InternetTimeFromSystemTimeW_test.time, i64 %10, float* %9, i32 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i64 (...) @GetLastError()
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = call i32 @memcmp(float* %9, float* getelementptr inbounds ([30 x float], [30 x float]* @InternetTimeFromSystemTimeW_test.expect, i64 0, i64 0), i32 120)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 (...) @GetLastError()
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = call i32 @SetLastError(i32 -559038737)
  %24 = load i64, i64* @INTERNET_RFC1123_FORMAT, align 8
  %25 = mul nuw i64 4, %7
  %26 = trunc i64 %25 to i32
  %27 = call i32 @pInternetTimeFromSystemTimeW(%struct.TYPE_3__* null, i64 %24, float* %9, i32 %26)
  store i32 %27, i32* %1, align 4
  %28 = call i64 (...) @GetLastError()
  store i64 %28, i64* %4, align 8
  %29 = load i32, i32* %1, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %4, align 8
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = call i32 @SetLastError(i32 -559038737)
  %41 = load i64, i64* @INTERNET_RFC1123_FORMAT, align 8
  %42 = mul nuw i64 4, %7
  %43 = trunc i64 %42 to i32
  %44 = call i32 @pInternetTimeFromSystemTimeW(%struct.TYPE_3__* @InternetTimeFromSystemTimeW_test.time, i64 %41, float* null, i32 %43)
  store i32 %44, i32* %1, align 4
  %45 = call i64 (...) @GetLastError()
  store i64 %45, i64* %4, align 8
  %46 = load i32, i32* %1, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %4, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i64 %55)
  %57 = call i32 @SetLastError(i32 -559038737)
  %58 = load i64, i64* @INTERNET_RFC1123_FORMAT, align 8
  %59 = add nsw i64 %58, 1
  %60 = mul nuw i64 4, %7
  %61 = trunc i64 %60 to i32
  %62 = call i32 @pInternetTimeFromSystemTimeW(%struct.TYPE_3__* @InternetTimeFromSystemTimeW_test.time, i64 %59, float* %9, i32 %61)
  store i32 %62, i32* %1, align 4
  %63 = call i64 (...) @GetLastError()
  store i64 %63, i64* %4, align 8
  %64 = load i32, i32* %1, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %4, align 8
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  %75 = call i32 @SetLastError(i32 -559038737)
  %76 = load i64, i64* @INTERNET_RFC1123_FORMAT, align 8
  %77 = mul nuw i64 4, %7
  %78 = udiv i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i32 @pInternetTimeFromSystemTimeW(%struct.TYPE_3__* @InternetTimeFromSystemTimeW_test.time, i64 %76, float* %9, i32 %79)
  store i32 %80, i32* %1, align 4
  %81 = call i64 (...) @GetLastError()
  store i64 %81, i64* %4, align 8
  %82 = load i32, i32* %1, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %4, align 8
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i64 %91)
  %93 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %93)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pInternetTimeFromSystemTimeW(%struct.TYPE_3__*, i64, float*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @memcmp(float*, float*, i32) #2

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

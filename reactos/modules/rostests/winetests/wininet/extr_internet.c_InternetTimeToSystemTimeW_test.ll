; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_InternetTimeToSystemTimeW_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_InternetTimeToSystemTimeW_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@InternetTimeToSystemTimeW_test.expect = internal constant %struct.TYPE_5__ { i32 2005, i32 1, i32 5, i32 7, i32 12, i32 6, i32 35, i32 0 }, align 4
@InternetTimeToSystemTimeW_test.string = internal constant [30 x float] [float 7.000000e+01, float 1.140000e+02, float 1.050000e+02, float 4.400000e+01, float 3.200000e+01, float 4.800000e+01, float 5.500000e+01, float 3.200000e+01, float 7.400000e+01, float 9.700000e+01, float 1.100000e+02, float 3.200000e+01, float 5.000000e+01, float 4.800000e+01, float 4.800000e+01, float 5.300000e+01, float 3.200000e+01, float 4.900000e+01, float 5.000000e+01, float 5.800000e+01, float 4.800000e+01, float 5.400000e+01, float 5.800000e+01, float 5.100000e+01, float 5.300000e+01, float 3.200000e+01, float 7.100000e+01, float 7.700000e+01, float 8.400000e+01, float 0.000000e+00], align 16
@InternetTimeToSystemTimeW_test.string2 = internal constant [25 x float] [float 3.200000e+01, float 1.020000e+02, float 1.140000e+02, float 1.050000e+02, float 3.200000e+01, float 5.500000e+01, float 3.200000e+01, float 1.060000e+02, float 9.700000e+01, float 1.100000e+02, float 3.200000e+01, float 5.000000e+01, float 4.800000e+01, float 4.800000e+01, float 5.300000e+01, float 3.200000e+01, float 4.900000e+01, float 5.000000e+01, float 3.200000e+01, float 4.800000e+01, float 5.400000e+01, float 3.200000e+01, float 5.100000e+01, float 5.300000e+01, float 0.000000e+00], align 16
@InternetTimeToSystemTimeW_test.string3 = internal constant [3 x float] [float 7.000000e+01, float 1.140000e+02, float 0.000000e+00], align 4
@.str = private unnamed_addr constant [42 x i8] c"InternetTimeToSystemTimeW succeeded (%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"InternetTimeToSystemTimeW failed (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InternetTimeToSystemTimeW_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InternetTimeToSystemTimeW_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = call i32 @pInternetTimeToSystemTimeW(float* null, %struct.TYPE_5__* null, i32 0)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 (...) @GetLastError()
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 @pInternetTimeToSystemTimeW(float* null, %struct.TYPE_5__* %2, i32 0)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 (...) @GetLastError()
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 @pInternetTimeToSystemTimeW(float* getelementptr inbounds ([30 x float], [30 x float]* @InternetTimeToSystemTimeW_test.string, i64 0, i64 0), %struct.TYPE_5__* null, i32 0)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 (...) @GetLastError()
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @pInternetTimeToSystemTimeW(float* getelementptr inbounds ([30 x float], [30 x float]* @InternetTimeToSystemTimeW_test.string, i64 0, i64 0), %struct.TYPE_5__* %2, i32 0)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 (...) @GetLastError()
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = call i32 @pInternetTimeToSystemTimeW(float* getelementptr inbounds ([30 x float], [30 x float]* @InternetTimeToSystemTimeW_test.string, i64 0, i64 0), %struct.TYPE_5__* %2, i32 0)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 (...) @GetLastError()
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = call i32 @memcmp(%struct.TYPE_5__* %2, %struct.TYPE_5__* @InternetTimeToSystemTimeW_test.expect, i32 32)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 (...) @GetLastError()
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = call i32 @pInternetTimeToSystemTimeW(float* getelementptr inbounds ([25 x float], [25 x float]* @InternetTimeToSystemTimeW_test.string2, i64 0, i64 0), %struct.TYPE_5__* %2, i32 0)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = call i32 (...) @GetLastError()
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = call i32 @memcmp(%struct.TYPE_5__* %2, %struct.TYPE_5__* @InternetTimeToSystemTimeW_test.expect, i32 32)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 (...) @GetLastError()
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = call i32 @pInternetTimeToSystemTimeW(float* getelementptr inbounds ([3 x float], [3 x float]* @InternetTimeToSystemTimeW_test.string3, i64 0, i64 0), %struct.TYPE_5__* %2, i32 0)
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %1, align 4
  %50 = call i32 (...) @GetLastError()
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  ret void
}

declare dso_local i32 @pInternetTimeToSystemTimeW(float*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @memcmp(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

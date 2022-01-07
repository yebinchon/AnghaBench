; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_InternetTimeToSystemTimeA_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_InternetTimeToSystemTimeA_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@InternetTimeToSystemTimeA_test.expect = internal constant %struct.TYPE_5__ { i32 2005, i32 1, i32 5, i32 7, i32 12, i32 6, i32 35, i32 0 }, align 4
@InternetTimeToSystemTimeA_test.string = internal constant [30 x i8] c"Fri, 07 Jan 2005 12:06:35 GMT\00", align 16
@InternetTimeToSystemTimeA_test.string2 = internal constant [25 x i8] c" fri 7 jan 2005 12 06 35\00", align 16
@.str = private unnamed_addr constant [39 x i8] c"InternetTimeToSystemTimeA failed (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InternetTimeToSystemTimeA_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InternetTimeToSystemTimeA_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = call i32 @pInternetTimeToSystemTimeA(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @InternetTimeToSystemTimeA_test.string, i64 0, i64 0), %struct.TYPE_5__* %2, i32 0)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call i32 (...) @GetLastError()
  %6 = call i32 @ok(i32 %4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i32 @memcmp(%struct.TYPE_5__* %2, %struct.TYPE_5__* @InternetTimeToSystemTimeA_test.expect, i32 32)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 (...) @GetLastError()
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 @pInternetTimeToSystemTimeA(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @InternetTimeToSystemTimeA_test.string2, i64 0, i64 0), %struct.TYPE_5__* %2, i32 0)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 (...) @GetLastError()
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 @memcmp(%struct.TYPE_5__* %2, %struct.TYPE_5__* @InternetTimeToSystemTimeA_test.expect, i32 32)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 (...) @GetLastError()
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21)
  ret void
}

declare dso_local i32 @pInternetTimeToSystemTimeA(i8*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @memcmp(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

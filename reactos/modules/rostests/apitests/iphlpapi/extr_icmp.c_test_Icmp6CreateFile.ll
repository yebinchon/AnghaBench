; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/iphlpapi/extr_icmp.c_test_Icmp6CreateFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/iphlpapi/extr_icmp.c_test_Icmp6CreateFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"IPv6 is not available.\0A\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Icmp6CreateFile failed unexpectedly: %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Icmp6CreateFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Icmp6CreateFile() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @SetLastError(i32 -559038737)
  %3 = call i64 (...) @Icmp6CreateFile()
  store i64 %3, i64* %1, align 8
  %4 = call i64 (...) @GetLastError()
  %5 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @skip(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %22

9:                                                ; preds = %0
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 (...) @GetLastError()
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load i64, i64* %1, align 8
  %21 = call i32 @IcmpCloseHandle(i64 %20)
  br label %22

22:                                               ; preds = %7, %19, %9
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @Icmp6CreateFile(...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IcmpCloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

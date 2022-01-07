; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_cred.c_test_CredDeleteA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_cred.c_test_CredDeleteA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_TARGET_NAME = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [75 x i8] c"CredDeleteA should have failed with ERROR_INVALID_PARAMETER instead of %d\0A\00", align 1
@CRED_TYPE_GENERIC = common dso_local global i32 0, align 4
@ERROR_INVALID_FLAGS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [98 x i8] c"CredDeleteA should have failed with ERROR_INVALID_FLAGS or ERROR_INVALID_PARAMETER instead of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CredDeleteA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CredDeleteA() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @SetLastError(i32 -559038737)
  %3 = load i32, i32* @TEST_TARGET_NAME, align 4
  %4 = call i64 @pCredDeleteA(i32 %3, i32 -1, i32 0)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = call i64 (...) @GetLastError()
  %9 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %10 = icmp eq i64 %8, %9
  br label %11

11:                                               ; preds = %7, %0
  %12 = phi i1 [ false, %0 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i64 (...) @GetLastError()
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = call i32 @SetLastError(i32 -559038737)
  %17 = load i32, i32* @TEST_TARGET_NAME, align 4
  %18 = load i32, i32* @CRED_TYPE_GENERIC, align 4
  %19 = call i64 @pCredDeleteA(i32 %17, i32 %18, i32 -559038737)
  store i64 %19, i64* %1, align 8
  %20 = load i64, i64* %1, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %11
  %23 = call i64 (...) @GetLastError()
  %24 = load i64, i64* @ERROR_INVALID_FLAGS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = call i64 (...) @GetLastError()
  %28 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ true, %22 ], [ %29, %26 ]
  br label %32

32:                                               ; preds = %30, %11
  %33 = phi i1 [ false, %11 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 (...) @GetLastError()
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @pCredDeleteA(i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_cred.c_test_CredReadA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_cred.c_test_CredReadA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_TARGET_NAME = common dso_local global i32* null, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"CredReadA should have failed with ERROR_INVALID_PARAMETER instead of %d\0A\00", align 1
@CRED_TYPE_GENERIC = common dso_local global i32 0, align 4
@ERROR_INVALID_FLAGS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [96 x i8] c"CredReadA should have failed with ERROR_INVALID_FLAGS or ERROR_INVALID_PARAMETER instead of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CredReadA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CredReadA() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @SetLastError(i32 -559038737)
  %4 = load i32*, i32** @TEST_TARGET_NAME, align 8
  %5 = call i64 @pCredReadA(i32* %4, i32 -1, i32 0, i32* %2)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = call i64 (...) @GetLastError()
  %10 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %11 = icmp eq i64 %9, %10
  br label %12

12:                                               ; preds = %8, %0
  %13 = phi i1 [ false, %0 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i64 (...) @GetLastError()
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = call i32 @SetLastError(i32 -559038737)
  %18 = load i32*, i32** @TEST_TARGET_NAME, align 8
  %19 = load i32, i32* @CRED_TYPE_GENERIC, align 4
  %20 = call i64 @pCredReadA(i32* %18, i32 %19, i32 -559038737, i32* %2)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %12
  %24 = call i64 (...) @GetLastError()
  %25 = load i64, i64* @ERROR_INVALID_FLAGS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = call i64 (...) @GetLastError()
  %29 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ true, %23 ], [ %30, %27 ]
  br label %33

33:                                               ; preds = %31, %12
  %34 = phi i1 [ false, %12 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 (...) @GetLastError()
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = call i32 @SetLastError(i32 -559038737)
  %39 = load i32, i32* @CRED_TYPE_GENERIC, align 4
  %40 = call i64 @pCredReadA(i32* null, i32 %39, i32 0, i32* %2)
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %33
  %44 = call i64 (...) @GetLastError()
  %45 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %43, %33
  %48 = phi i1 [ false, %33 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = call i64 (...) @GetLastError()
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %50)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @pCredReadA(i32*, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

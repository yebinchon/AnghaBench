; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_DeletePort.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_DeletePort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@empty = common dso_local global i32* null, align 8
@ERROR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [88 x i8] c"returned %d with %d (expected '0' with ERROR_NOT_SUPPORTED or ERROR_INVALID_PARAMETER)\0A\00", align 1
@does_not_exist = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DeletePort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DeletePort() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @SetLastError(i32 -559038737)
  %3 = call i64 @DeletePortA(i32* null, i32 0, i32* null)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = call i64 (...) @GetLastError()
  %6 = call i64 @is_spooler_deactivated(i64 %4, i64 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %58

9:                                                ; preds = %0
  %10 = call i32 @SetLastError(i32 -559038737)
  %11 = load i32*, i32** @empty, align 8
  %12 = call i64 @DeletePortA(i32* null, i32 0, i32* %11)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = call i64 (...) @GetLastError()
  %15 = call i64 @is_access_denied(i64 %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %58

18:                                               ; preds = %9
  %19 = load i64, i64* %1, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = call i64 (...) @GetLastError()
  %23 = load i64, i64* @ERROR_NOT_SUPPORTED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = call i64 (...) @GetLastError()
  %27 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ true, %21 ], [ %28, %25 ]
  br label %31

31:                                               ; preds = %29, %18
  %32 = phi i1 [ false, %18 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %1, align 8
  %35 = call i64 (...) @GetLastError()
  %36 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %35)
  %37 = call i32 @SetLastError(i32 -559038737)
  %38 = load i32*, i32** @does_not_exist, align 8
  %39 = call i64 @DeletePortA(i32* null, i32 0, i32* %38)
  store i64 %39, i64* %1, align 8
  %40 = load i64, i64* %1, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %31
  %43 = call i64 (...) @GetLastError()
  %44 = load i64, i64* @ERROR_NOT_SUPPORTED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = call i64 (...) @GetLastError()
  %48 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %49 = icmp eq i64 %47, %48
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i1 [ true, %42 ], [ %49, %46 ]
  br label %52

52:                                               ; preds = %50, %31
  %53 = phi i1 [ false, %31 ], [ %51, %50 ]
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %1, align 8
  %56 = call i64 (...) @GetLastError()
  %57 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %56)
  br label %58

58:                                               ; preds = %52, %17, %8
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @DeletePortA(i32*, i32, i32*) #1

declare dso_local i64 @is_spooler_deactivated(i64, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @is_access_denied(i64, i64) #1

declare dso_local i32 @ok(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

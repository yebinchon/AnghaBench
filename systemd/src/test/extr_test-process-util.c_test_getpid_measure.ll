; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-process-util.c_test_getpid_measure.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-process-util.c_test_getpid_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@MEASURE_ITERATIONS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c" glibc getpid(): %lf \C2\B5s each\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"getpid_cached(): %lf \C2\B5s each\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getpid_measure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getpid_measure() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %5 = call i64 @now(i32 %4)
  store i64 %5, i64* %2, align 8
  store i64 0, i64* %1, align 8
  br label %6

6:                                                ; preds = %12, %0
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @MEASURE_ITERATIONS, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = call i32 (...) @getpid()
  br label %12

12:                                               ; preds = %10
  %13 = load i64, i64* %1, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %1, align 8
  br label %6

15:                                               ; preds = %6
  %16 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %17 = call i64 @now(i32 %16)
  %18 = load i64, i64* %2, align 8
  %19 = sub nsw i64 %17, %18
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = sitofp i64 %20 to double
  %22 = load i64, i64* @MEASURE_ITERATIONS, align 8
  %23 = uitofp i64 %22 to double
  %24 = fdiv double %21, %23
  %25 = call i32 @log_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), double %24)
  %26 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %27 = call i64 @now(i32 %26)
  store i64 %27, i64* %2, align 8
  store i64 0, i64* %1, align 8
  br label %28

28:                                               ; preds = %34, %15
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* @MEASURE_ITERATIONS, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = call i32 (...) @getpid_cached()
  br label %34

34:                                               ; preds = %32
  %35 = load i64, i64* %1, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %1, align 8
  br label %28

37:                                               ; preds = %28
  %38 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %39 = call i64 @now(i32 %38)
  %40 = load i64, i64* %2, align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = sitofp i64 %42 to double
  %44 = load i64, i64* @MEASURE_ITERATIONS, align 8
  %45 = uitofp i64 %44 to double
  %46 = fdiv double %43, %45
  %47 = call i32 @log_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), double %46)
  ret void
}

declare dso_local i64 @now(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @log_info(i8*, double) #1

declare dso_local i32 @getpid_cached(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

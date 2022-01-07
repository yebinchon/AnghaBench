; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-barrier.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-barrier.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"slow tests are disabled\00", align 1
@EPERM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot detect virtualization\00", align 1
@VIRTUALIZATION_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"This test requires a baremetal machine\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @LOG_INFO, align 4
  %8 = call i32 @test_setup_logging(i32 %7)
  %9 = call i32 (...) @slow_tests_enabled()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @log_tests_skipped(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %3, align 4
  br label %47

13:                                               ; preds = %2
  %14 = call i32 (...) @detect_virtualization()
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  %18 = load i32, i32* @EACCES, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i64 @IN_SET(i32 %15, i32 %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = call i32 @log_tests_skipped(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %23, i32* %3, align 4
  br label %47

24:                                               ; preds = %13
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @VIRTUALIZATION_NONE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @log_tests_skipped(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %24
  %31 = call i32 (...) @test_barrier_sync()
  %32 = call i32 (...) @test_barrier_wait_next()
  %33 = call i32 (...) @test_barrier_wait_next_twice()
  %34 = call i32 (...) @test_barrier_wait_next_twice_sync()
  %35 = call i32 (...) @test_barrier_wait_next_twice_local()
  %36 = call i32 (...) @test_barrier_wait_next_twice_local_sync()
  %37 = call i32 (...) @test_barrier_sync_next()
  %38 = call i32 (...) @test_barrier_sync_next_local()
  %39 = call i32 (...) @test_barrier_sync_next_local_abort()
  %40 = call i32 (...) @test_barrier_wait_abortion()
  %41 = call i32 (...) @test_barrier_wait_abortion_unmatched()
  %42 = call i32 (...) @test_barrier_wait_abortion_local()
  %43 = call i32 (...) @test_barrier_wait_abortion_local_unmatched()
  %44 = call i32 (...) @test_barrier_exit()
  %45 = call i32 (...) @test_barrier_no_exit()
  %46 = call i32 (...) @test_barrier_pending_exit()
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %30, %28, %22, %11
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @test_setup_logging(i32) #1

declare dso_local i32 @slow_tests_enabled(...) #1

declare dso_local i32 @log_tests_skipped(i8*) #1

declare dso_local i32 @detect_virtualization(...) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @test_barrier_sync(...) #1

declare dso_local i32 @test_barrier_wait_next(...) #1

declare dso_local i32 @test_barrier_wait_next_twice(...) #1

declare dso_local i32 @test_barrier_wait_next_twice_sync(...) #1

declare dso_local i32 @test_barrier_wait_next_twice_local(...) #1

declare dso_local i32 @test_barrier_wait_next_twice_local_sync(...) #1

declare dso_local i32 @test_barrier_sync_next(...) #1

declare dso_local i32 @test_barrier_sync_next_local(...) #1

declare dso_local i32 @test_barrier_sync_next_local_abort(...) #1

declare dso_local i32 @test_barrier_wait_abortion(...) #1

declare dso_local i32 @test_barrier_wait_abortion_unmatched(...) #1

declare dso_local i32 @test_barrier_wait_abortion_local(...) #1

declare dso_local i32 @test_barrier_wait_abortion_local_unmatched(...) #1

declare dso_local i32 @test_barrier_exit(...) #1

declare dso_local i32 @test_barrier_no_exit(...) #1

declare dso_local i32 @test_barrier_pending_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

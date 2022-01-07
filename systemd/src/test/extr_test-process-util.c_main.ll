; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-process-util.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-process-util.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @LOG_DEBUG, align 4
  %8 = call i32 @test_setup_logging(i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @save_argc_argv(i32 %9, i8** %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @parse_pid(i8* %17, i32* %6)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @test_get_process_comm(i32 %19)
  br label %26

21:                                               ; preds = %2
  %22 = call i32 @test_get_process_comm(i32 1)
  %23 = call i32 @TEST_REQ_RUNNING_SYSTEMD(i32 %22)
  %24 = call i32 (...) @getpid()
  %25 = call i32 @test_get_process_comm(i32 %24)
  br label %26

26:                                               ; preds = %21, %14
  %27 = call i32 (...) @test_get_process_comm_escape()
  %28 = call i32 (...) @test_pid_is_unwaited()
  %29 = call i32 (...) @test_pid_is_alive()
  %30 = call i32 (...) @test_personality()
  %31 = call i32 (...) @test_get_process_cmdline_harder()
  %32 = call i32 (...) @test_rename_process()
  %33 = call i32 (...) @test_getpid_cached()
  %34 = call i32 (...) @test_getpid_measure()
  %35 = call i32 (...) @test_safe_fork()
  %36 = call i32 (...) @test_pid_to_ptr()
  %37 = call i32 (...) @test_ioprio_class_from_to_string()
  ret i32 0
}

declare dso_local i32 @test_setup_logging(i32) #1

declare dso_local i32 @save_argc_argv(i32, i8**) #1

declare dso_local i32 @parse_pid(i8*, i32*) #1

declare dso_local i32 @test_get_process_comm(i32) #1

declare dso_local i32 @TEST_REQ_RUNNING_SYSTEMD(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @test_get_process_comm_escape(...) #1

declare dso_local i32 @test_pid_is_unwaited(...) #1

declare dso_local i32 @test_pid_is_alive(...) #1

declare dso_local i32 @test_personality(...) #1

declare dso_local i32 @test_get_process_cmdline_harder(...) #1

declare dso_local i32 @test_rename_process(...) #1

declare dso_local i32 @test_getpid_cached(...) #1

declare dso_local i32 @test_getpid_measure(...) #1

declare dso_local i32 @test_safe_fork(...) #1

declare dso_local i32 @test_pid_to_ptr(...) #1

declare dso_local i32 @test_ioprio_class_from_to_string(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

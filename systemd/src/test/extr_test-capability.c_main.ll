; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-capability.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-capability.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"have ambient caps: %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"not running as root\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"setup failed\00", align 1
@test_have_effective_cap = common dso_local global i32 0, align 4
@test_set_ambient_caps = common dso_local global i32 0, align 4

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
  %9 = call i32 (...) @test_ensure_cap_64bit()
  %10 = call i32 (...) @test_last_cap_file()
  %11 = call i32 (...) @test_last_cap_probe()
  %12 = call i32 (...) @ambient_capabilities_supported()
  %13 = call i32 @yes_no(i32 %12)
  %14 = call i32 @log_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i64 (...) @getuid()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @log_tests_skipped(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %2
  %20 = call i64 @setup_tests(i32* %6)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @log_tests_skipped(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %23, i32* %3, align 4
  br label %36

24:                                               ; preds = %19
  %25 = call i32 (...) @show_capabilities()
  %26 = call i32 (...) @test_drop_privileges()
  %27 = call i32 (...) @test_update_inherited_set()
  %28 = load i32, i32* @test_have_effective_cap, align 4
  %29 = call i32 @fork_test(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @test_set_ambient_caps, align 4
  %34 = call i32 @fork_test(i32 %33)
  br label %35

35:                                               ; preds = %32, %24
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %22, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @test_setup_logging(i32) #1

declare dso_local i32 @test_ensure_cap_64bit(...) #1

declare dso_local i32 @test_last_cap_file(...) #1

declare dso_local i32 @test_last_cap_probe(...) #1

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @yes_no(i32) #1

declare dso_local i32 @ambient_capabilities_supported(...) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @log_tests_skipped(i8*) #1

declare dso_local i64 @setup_tests(i32*) #1

declare dso_local i32 @show_capabilities(...) #1

declare dso_local i32 @test_drop_privileges(...) #1

declare dso_local i32 @test_update_inherited_set(...) #1

declare dso_local i32 @fork_test(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

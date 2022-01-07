; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-util.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-util.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @LOG_DEBUG, align 4
  %3 = call i32 @test_setup_logging(i32 %2)
  %4 = call i32 (...) @test_path_decode_unit()
  %5 = call i32 (...) @test_path_get_unit()
  %6 = call i32 (...) @test_path_get_user_unit()
  %7 = call i32 (...) @test_path_get_session()
  %8 = call i32 (...) @test_path_get_owner_uid()
  %9 = call i32 (...) @test_path_get_slice()
  %10 = call i32 (...) @test_path_get_user_slice()
  %11 = call i32 (...) @test_get_paths()
  %12 = call i32 @TEST_REQ_RUNNING_SYSTEMD(i32 %11)
  %13 = call i32 (...) @test_proc()
  %14 = call i32 (...) @test_escape()
  %15 = call i32 @TEST_REQ_RUNNING_SYSTEMD(i32 %14)
  %16 = call i32 (...) @test_controller_is_valid()
  %17 = call i32 (...) @test_slice_to_path()
  %18 = call i32 (...) @test_shift_path()
  %19 = call i32 (...) @test_mask_supported()
  %20 = call i32 @TEST_REQ_RUNNING_SYSTEMD(i32 %19)
  %21 = call i32 (...) @test_is_cgroup_fs()
  %22 = call i32 @TEST_REQ_RUNNING_SYSTEMD(i32 %21)
  %23 = call i32 (...) @test_fd_is_cgroup_fs()
  %24 = call i32 @TEST_REQ_RUNNING_SYSTEMD(i32 %23)
  %25 = call i32 (...) @test_cg_tests()
  %26 = call i32 (...) @test_cg_get_keyed_attribute()
  ret i32 0
}

declare dso_local i32 @test_setup_logging(i32) #1

declare dso_local i32 @test_path_decode_unit(...) #1

declare dso_local i32 @test_path_get_unit(...) #1

declare dso_local i32 @test_path_get_user_unit(...) #1

declare dso_local i32 @test_path_get_session(...) #1

declare dso_local i32 @test_path_get_owner_uid(...) #1

declare dso_local i32 @test_path_get_slice(...) #1

declare dso_local i32 @test_path_get_user_slice(...) #1

declare dso_local i32 @TEST_REQ_RUNNING_SYSTEMD(i32) #1

declare dso_local i32 @test_get_paths(...) #1

declare dso_local i32 @test_proc(...) #1

declare dso_local i32 @test_escape(...) #1

declare dso_local i32 @test_controller_is_valid(...) #1

declare dso_local i32 @test_slice_to_path(...) #1

declare dso_local i32 @test_shift_path(...) #1

declare dso_local i32 @test_mask_supported(...) #1

declare dso_local i32 @test_is_cgroup_fs(...) #1

declare dso_local i32 @test_fd_is_cgroup_fs(...) #1

declare dso_local i32 @test_cg_tests(...) #1

declare dso_local i32 @test_cg_get_keyed_attribute(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

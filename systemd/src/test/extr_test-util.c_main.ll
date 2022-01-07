; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-util.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-util.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* @LOG_INFO, align 4
  %7 = call i32 @test_setup_logging(i32 %6)
  %8 = call i32 (...) @test_align_power2()
  %9 = call i32 (...) @test_max()
  %10 = call i32 (...) @test_container_of()
  %11 = call i32 (...) @test_div_round_up()
  %12 = call i32 (...) @test_u64log2()
  %13 = call i32 (...) @test_protect_errno()
  %14 = call i32 (...) @test_unprotect_errno()
  %15 = call i32 (...) @test_in_set()
  %16 = call i32 (...) @test_log2i()
  %17 = call i32 (...) @test_eqzero()
  %18 = call i32 (...) @test_raw_clone()
  %19 = call i32 (...) @test_physical_memory()
  %20 = call i32 (...) @test_physical_memory_scale()
  %21 = call i32 (...) @test_system_tasks_max()
  %22 = call i32 (...) @test_system_tasks_max_scale()
  ret i32 0
}

declare dso_local i32 @test_setup_logging(i32) #1

declare dso_local i32 @test_align_power2(...) #1

declare dso_local i32 @test_max(...) #1

declare dso_local i32 @test_container_of(...) #1

declare dso_local i32 @test_div_round_up(...) #1

declare dso_local i32 @test_u64log2(...) #1

declare dso_local i32 @test_protect_errno(...) #1

declare dso_local i32 @test_unprotect_errno(...) #1

declare dso_local i32 @test_in_set(...) #1

declare dso_local i32 @test_log2i(...) #1

declare dso_local i32 @test_eqzero(...) #1

declare dso_local i32 @test_raw_clone(...) #1

declare dso_local i32 @test_physical_memory(...) #1

declare dso_local i32 @test_physical_memory_scale(...) #1

declare dso_local i32 @test_system_tasks_max(...) #1

declare dso_local i32 @test_system_tasks_max_scale(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

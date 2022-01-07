; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-path-lookup.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-path-lookup.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_DEBUG = common dso_local global i32 0, align 4
@UNIT_FILE_SYSTEM = common dso_local global i32 0, align 4
@UNIT_FILE_USER = common dso_local global i32 0, align 4
@UNIT_FILE_GLOBAL = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* @LOG_DEBUG, align 4
  %7 = call i32 @test_setup_logging(i32 %6)
  %8 = load i32, i32* @UNIT_FILE_SYSTEM, align 4
  %9 = call i32 @test_paths(i32 %8)
  %10 = load i32, i32* @UNIT_FILE_USER, align 4
  %11 = call i32 @test_paths(i32 %10)
  %12 = load i32, i32* @UNIT_FILE_GLOBAL, align 4
  %13 = call i32 @test_paths(i32 %12)
  %14 = call i32 (...) @test_user_and_global_paths()
  %15 = load i32, i32* @UNIT_FILE_SYSTEM, align 4
  %16 = call i32 @print_generator_binary_paths(i32 %15)
  %17 = load i32, i32* @UNIT_FILE_USER, align 4
  %18 = call i32 @print_generator_binary_paths(i32 %17)
  %19 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %19
}

declare dso_local i32 @test_setup_logging(i32) #1

declare dso_local i32 @test_paths(i32) #1

declare dso_local i32 @test_user_and_global_paths(...) #1

declare dso_local i32 @print_generator_binary_paths(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

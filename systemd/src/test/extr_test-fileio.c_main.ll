; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-fileio.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-fileio.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_DEBUG = common dso_local global i32 0, align 4

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
  %8 = call i32 (...) @test_parse_env_file()
  %9 = call i32 (...) @test_parse_multiline_env_file()
  %10 = call i32 (...) @test_merge_env_file()
  %11 = call i32 (...) @test_merge_env_file_invalid()
  %12 = call i32 (...) @test_executable_is_script()
  %13 = call i32 (...) @test_status_field()
  %14 = call i32 (...) @test_capeff()
  %15 = call i32 (...) @test_write_string_stream()
  %16 = call i32 (...) @test_write_string_file()
  %17 = call i32 (...) @test_write_string_file_no_create()
  %18 = call i32 (...) @test_write_string_file_verify()
  %19 = call i32 (...) @test_load_env_file_pairs()
  %20 = call i32 (...) @test_search_and_fopen()
  %21 = call i32 (...) @test_search_and_fopen_nulstr()
  %22 = call i32 (...) @test_writing_tmpfile()
  %23 = call i32 (...) @test_tempfn()
  %24 = call i32 (...) @test_fgetc()
  %25 = call i32 (...) @test_read_line()
  %26 = call i32 (...) @test_read_line2()
  %27 = call i32 (...) @test_read_line3()
  %28 = call i32 (...) @test_read_line4()
  %29 = call i32 (...) @test_read_nul_string()
  ret i32 0
}

declare dso_local i32 @test_setup_logging(i32) #1

declare dso_local i32 @test_parse_env_file(...) #1

declare dso_local i32 @test_parse_multiline_env_file(...) #1

declare dso_local i32 @test_merge_env_file(...) #1

declare dso_local i32 @test_merge_env_file_invalid(...) #1

declare dso_local i32 @test_executable_is_script(...) #1

declare dso_local i32 @test_status_field(...) #1

declare dso_local i32 @test_capeff(...) #1

declare dso_local i32 @test_write_string_stream(...) #1

declare dso_local i32 @test_write_string_file(...) #1

declare dso_local i32 @test_write_string_file_no_create(...) #1

declare dso_local i32 @test_write_string_file_verify(...) #1

declare dso_local i32 @test_load_env_file_pairs(...) #1

declare dso_local i32 @test_search_and_fopen(...) #1

declare dso_local i32 @test_search_and_fopen_nulstr(...) #1

declare dso_local i32 @test_writing_tmpfile(...) #1

declare dso_local i32 @test_tempfn(...) #1

declare dso_local i32 @test_fgetc(...) #1

declare dso_local i32 @test_read_line(...) #1

declare dso_local i32 @test_read_line2(...) #1

declare dso_local i32 @test_read_line3(...) #1

declare dso_local i32 @test_read_line4(...) #1

declare dso_local i32 @test_read_nul_string(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

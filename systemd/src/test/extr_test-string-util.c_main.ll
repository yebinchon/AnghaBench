; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-string-util.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-string-util.c_main.c"
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
  %8 = call i32 (...) @test_free_and_strndup()
  %9 = call i32 (...) @test_ascii_strcasecmp_n()
  %10 = call i32 (...) @test_ascii_strcasecmp_nn()
  %11 = call i32 (...) @test_cellescape()
  %12 = call i32 (...) @test_streq_ptr()
  %13 = call i32 (...) @test_strstrip()
  %14 = call i32 (...) @test_strextend()
  %15 = call i32 (...) @test_strextend_with_separator()
  %16 = call i32 (...) @test_strrep()
  %17 = call i32 (...) @test_string_has_cc()
  %18 = call i32 (...) @test_ascii_strlower()
  %19 = call i32 (...) @test_strshorten()
  %20 = call i32 (...) @test_strjoina()
  %21 = call i32 (...) @test_strcmp_ptr()
  %22 = call i32 (...) @test_foreach_word()
  %23 = call i32 (...) @test_foreach_word_quoted()
  %24 = call i32 (...) @test_endswith()
  %25 = call i32 (...) @test_endswith_no_case()
  %26 = call i32 (...) @test_delete_chars()
  %27 = call i32 (...) @test_delete_trailing_chars()
  %28 = call i32 (...) @test_delete_trailing_slashes()
  %29 = call i32 (...) @test_skip_leading_chars()
  %30 = call i32 (...) @test_in_charset()
  %31 = call i32 (...) @test_split_pair()
  %32 = call i32 (...) @test_first_word()
  %33 = call i32 (...) @test_strlen_ptr()
  %34 = call i32 (...) @test_memory_startswith()
  %35 = call i32 (...) @test_memory_startswith_no_case()
  ret i32 0
}

declare dso_local i32 @test_setup_logging(i32) #1

declare dso_local i32 @test_free_and_strndup(...) #1

declare dso_local i32 @test_ascii_strcasecmp_n(...) #1

declare dso_local i32 @test_ascii_strcasecmp_nn(...) #1

declare dso_local i32 @test_cellescape(...) #1

declare dso_local i32 @test_streq_ptr(...) #1

declare dso_local i32 @test_strstrip(...) #1

declare dso_local i32 @test_strextend(...) #1

declare dso_local i32 @test_strextend_with_separator(...) #1

declare dso_local i32 @test_strrep(...) #1

declare dso_local i32 @test_string_has_cc(...) #1

declare dso_local i32 @test_ascii_strlower(...) #1

declare dso_local i32 @test_strshorten(...) #1

declare dso_local i32 @test_strjoina(...) #1

declare dso_local i32 @test_strcmp_ptr(...) #1

declare dso_local i32 @test_foreach_word(...) #1

declare dso_local i32 @test_foreach_word_quoted(...) #1

declare dso_local i32 @test_endswith(...) #1

declare dso_local i32 @test_endswith_no_case(...) #1

declare dso_local i32 @test_delete_chars(...) #1

declare dso_local i32 @test_delete_trailing_chars(...) #1

declare dso_local i32 @test_delete_trailing_slashes(...) #1

declare dso_local i32 @test_skip_leading_chars(...) #1

declare dso_local i32 @test_in_charset(...) #1

declare dso_local i32 @test_split_pair(...) #1

declare dso_local i32 @test_first_word(...) #1

declare dso_local i32 @test_strlen_ptr(...) #1

declare dso_local i32 @test_memory_startswith(...) #1

declare dso_local i32 @test_memory_startswith_no_case(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

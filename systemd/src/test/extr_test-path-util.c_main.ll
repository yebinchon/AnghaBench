; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-path-util.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-path-util.c_main.c"
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
  %8 = call i32 (...) @test_print_paths()
  %9 = call i32 (...) @test_path()
  %10 = call i32 (...) @test_path_equal_root()
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @test_find_binary(i8* %13)
  %15 = call i32 (...) @test_prefixes()
  %16 = call i32 (...) @test_path_join()
  %17 = call i32 (...) @test_fsck_exists()
  %18 = call i32 (...) @test_make_relative()
  %19 = call i32 (...) @test_strv_resolve()
  %20 = call i32 (...) @test_path_startswith()
  %21 = call i32 (...) @test_prefix_root()
  %22 = call i32 (...) @test_file_in_same_dir()
  %23 = call i32 (...) @test_last_path_component()
  %24 = call i32 (...) @test_path_extract_filename()
  %25 = call i32 (...) @test_filename_is_valid()
  %26 = call i32 (...) @test_hidden_or_backup_file()
  %27 = call i32 (...) @test_skip_dev_prefix()
  %28 = call i32 (...) @test_empty_or_root()
  %29 = call i32 (...) @test_path_startswith_set()
  %30 = call i32 (...) @test_path_startswith_strv()
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @test_systemd_installation_has_version(i8* %33)
  ret i32 0
}

declare dso_local i32 @test_setup_logging(i32) #1

declare dso_local i32 @test_print_paths(...) #1

declare dso_local i32 @test_path(...) #1

declare dso_local i32 @test_path_equal_root(...) #1

declare dso_local i32 @test_find_binary(i8*) #1

declare dso_local i32 @test_prefixes(...) #1

declare dso_local i32 @test_path_join(...) #1

declare dso_local i32 @test_fsck_exists(...) #1

declare dso_local i32 @test_make_relative(...) #1

declare dso_local i32 @test_strv_resolve(...) #1

declare dso_local i32 @test_path_startswith(...) #1

declare dso_local i32 @test_prefix_root(...) #1

declare dso_local i32 @test_file_in_same_dir(...) #1

declare dso_local i32 @test_last_path_component(...) #1

declare dso_local i32 @test_path_extract_filename(...) #1

declare dso_local i32 @test_filename_is_valid(...) #1

declare dso_local i32 @test_hidden_or_backup_file(...) #1

declare dso_local i32 @test_skip_dev_prefix(...) #1

declare dso_local i32 @test_empty_or_root(...) #1

declare dso_local i32 @test_path_startswith_set(...) #1

declare dso_local i32 @test_path_startswith_strv(...) #1

declare dso_local i32 @test_systemd_installation_has_version(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

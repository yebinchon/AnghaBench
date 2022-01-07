; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-conf-parser.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-conf-parser.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_file = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @log_parse_environment()
  %8 = call i32 (...) @log_open()
  %9 = call i32 (...) @test_config_parse_path()
  %10 = call i32 (...) @test_config_parse_log_level()
  %11 = call i32 (...) @test_config_parse_log_facility()
  %12 = call i32 (...) @test_config_parse_iec_size()
  %13 = call i32 (...) @test_config_parse_si_size()
  %14 = call i32 (...) @test_config_parse_int()
  %15 = call i32 (...) @test_config_parse_unsigned()
  %16 = call i32 (...) @test_config_parse_strv()
  %17 = call i32 (...) @test_config_parse_mode()
  %18 = call i32 (...) @test_config_parse_sec()
  %19 = call i32 (...) @test_config_parse_nsec()
  %20 = call i32 (...) @test_config_parse_iec_uint64()
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %34, %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** @config_file, align 8
  %24 = call i32 @ELEMENTSOF(i32* %23)
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** @config_file, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @test_config_parse(i32 %27, i32 %32)
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %21

37:                                               ; preds = %21
  ret i32 0
}

declare dso_local i32 @log_parse_environment(...) #1

declare dso_local i32 @log_open(...) #1

declare dso_local i32 @test_config_parse_path(...) #1

declare dso_local i32 @test_config_parse_log_level(...) #1

declare dso_local i32 @test_config_parse_log_facility(...) #1

declare dso_local i32 @test_config_parse_iec_size(...) #1

declare dso_local i32 @test_config_parse_si_size(...) #1

declare dso_local i32 @test_config_parse_int(...) #1

declare dso_local i32 @test_config_parse_unsigned(...) #1

declare dso_local i32 @test_config_parse_strv(...) #1

declare dso_local i32 @test_config_parse_mode(...) #1

declare dso_local i32 @test_config_parse_sec(...) #1

declare dso_local i32 @test_config_parse_nsec(...) #1

declare dso_local i32 @test_config_parse_iec_uint64(...) #1

declare dso_local i32 @ELEMENTSOF(i32*) #1

declare dso_local i32 @test_config_parse(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

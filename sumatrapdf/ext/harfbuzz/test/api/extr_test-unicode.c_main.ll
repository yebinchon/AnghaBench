; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-unicode.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-unicode.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_unicode_properties_nil = common dso_local global i32 0, align 4
@test_unicode_properties_empty = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@test_unicode_properties = common dso_local global i32 0, align 4
@test_unicode_normalization = common dso_local global i32 0, align 4
@script_roundtrip_default = common dso_local global i64 0, align 8
@test_unicode_script_roundtrip = common dso_local global i32 0, align 4
@test_unicode_chainup = common dso_local global i32 0, align 4
@test_unicode_setters = common dso_local global i32 0, align 4
@data_fixture = common dso_local global i32 0, align 4
@test_unicode_subclassing_nil = common dso_local global i32 0, align 4
@test_unicode_subclassing_default = common dso_local global i32 0, align 4
@test_unicode_subclassing_deep = common dso_local global i32 0, align 4
@script_roundtrip_glib = common dso_local global i64 0, align 8
@script_roundtrip_icu = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 @hb_test_init(i32* %4, i8*** %5)
  %7 = load i32, i32* @test_unicode_properties_nil, align 4
  %8 = call i32 @hb_test_add(i32 %7)
  %9 = load i32, i32* @test_unicode_properties_empty, align 4
  %10 = call i32 @hb_test_add(i32 %9)
  %11 = call i32 (...) @hb_unicode_funcs_get_default()
  %12 = load i32, i32* @test_unicode_properties, align 4
  %13 = call i32 @hb_test_add_data_flavor(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 (...) @hb_unicode_funcs_get_default()
  %15 = load i32, i32* @test_unicode_normalization, align 4
  %16 = call i32 @hb_test_add_data_flavor(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i64, i64* @script_roundtrip_default, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @test_unicode_script_roundtrip, align 4
  %20 = call i32 @hb_test_add_data_flavor(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @test_unicode_chainup, align 4
  %22 = call i32 @hb_test_add(i32 %21)
  %23 = load i32, i32* @test_unicode_setters, align 4
  %24 = call i32 @hb_test_add(i32 %23)
  %25 = load i32, i32* @data_fixture, align 4
  %26 = load i32, i32* @test_unicode_subclassing_nil, align 4
  %27 = call i32 @hb_test_add_fixture(i32 %25, i32* null, i32 %26)
  %28 = load i32, i32* @data_fixture, align 4
  %29 = load i32, i32* @test_unicode_subclassing_default, align 4
  %30 = call i32 @hb_test_add_fixture(i32 %28, i32* null, i32 %29)
  %31 = load i32, i32* @data_fixture, align 4
  %32 = load i32, i32* @test_unicode_subclassing_deep, align 4
  %33 = call i32 @hb_test_add_fixture(i32 %31, i32* null, i32 %32)
  %34 = call i32 (...) @hb_test_run()
  ret i32 %34
}

declare dso_local i32 @hb_test_init(i32*, i8***) #1

declare dso_local i32 @hb_test_add(i32) #1

declare dso_local i32 @hb_test_add_data_flavor(i32, i8*, i32) #1

declare dso_local i32 @hb_unicode_funcs_get_default(...) #1

declare dso_local i32 @hb_test_add_fixture(i32, i32*, i32) #1

declare dso_local i32 @hb_test_run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

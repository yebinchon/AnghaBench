; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-common.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-common.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_types_int = common dso_local global i32 0, align 4
@test_types_direction = common dso_local global i32 0, align 4
@test_types_tag = common dso_local global i32 0, align 4
@test_types_script = common dso_local global i32 0, align 4
@test_types_language = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 @hb_test_init(i32* %4, i8*** %5)
  %7 = load i32, i32* @test_types_int, align 4
  %8 = call i32 @hb_test_add(i32 %7)
  %9 = load i32, i32* @test_types_direction, align 4
  %10 = call i32 @hb_test_add(i32 %9)
  %11 = load i32, i32* @test_types_tag, align 4
  %12 = call i32 @hb_test_add(i32 %11)
  %13 = load i32, i32* @test_types_script, align 4
  %14 = call i32 @hb_test_add(i32 %13)
  %15 = load i32, i32* @test_types_language, align 4
  %16 = call i32 @hb_test_add(i32 %15)
  %17 = call i32 (...) @hb_test_run()
  ret i32 %17
}

declare dso_local i32 @hb_test_init(i32*, i8***) #1

declare dso_local i32 @hb_test_add(i32) #1

declare dso_local i32 @hb_test_run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

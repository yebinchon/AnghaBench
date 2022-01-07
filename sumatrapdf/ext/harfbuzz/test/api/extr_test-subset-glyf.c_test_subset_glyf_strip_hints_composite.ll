; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-subset-glyf.c_test_subset_glyf_strip_hints_composite.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-subset-glyf.c_test_subset_glyf_strip_hints_composite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"fonts/Roboto-Regular.components.ttf\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"fonts/Roboto-Regular.components.1fc.nohints.ttf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_subset_glyf_strip_hints_composite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_subset_glyf_strip_hints_composite() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = call i32* @hb_subset_test_open_font(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %1, align 8
  %7 = call i32* @hb_subset_test_open_font(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32* %7, i32** %2, align 8
  %8 = call i32* (...) @hb_set_create()
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @hb_set_add(i32* %9, i32 508)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @hb_subset_test_create_input(i32* %11)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @hb_subset_input_set_drop_hints(i32* %13, i32 1)
  %15 = load i32*, i32** %1, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @hb_subset_test_create_subset(i32* %15, i32* %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @hb_set_destroy(i32* %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @HB_TAG(i8 signext 103, i8 signext 108, i8 signext 121, i8 signext 102)
  %23 = call i32 @hb_subset_test_check(i32* %20, i32* %21, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @HB_TAG(i8 signext 108, i8 signext 111, i8 signext 99, i8 signext 97)
  %27 = call i32 @hb_subset_test_check(i32* %24, i32* %25, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @check_maxp_num_glyphs(i32* %28, i32 4, i32 0)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @hb_face_destroy(i32* %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @hb_face_destroy(i32* %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @hb_face_destroy(i32* %34)
  ret void
}

declare dso_local i32* @hb_subset_test_open_font(i8*) #1

declare dso_local i32* @hb_set_create(...) #1

declare dso_local i32 @hb_set_add(i32*, i32) #1

declare dso_local i32* @hb_subset_test_create_input(i32*) #1

declare dso_local i32 @hb_subset_input_set_drop_hints(i32*, i32) #1

declare dso_local i32* @hb_subset_test_create_subset(i32*, i32*) #1

declare dso_local i32 @hb_set_destroy(i32*) #1

declare dso_local i32 @hb_subset_test_check(i32*, i32*, i32) #1

declare dso_local i32 @HB_TAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @check_maxp_num_glyphs(i32*, i32, i32) #1

declare dso_local i32 @hb_face_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

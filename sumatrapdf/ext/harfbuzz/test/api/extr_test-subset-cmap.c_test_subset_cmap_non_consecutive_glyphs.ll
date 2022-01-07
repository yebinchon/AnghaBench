; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-subset-cmap.c_test_subset_cmap_non_consecutive_glyphs.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-subset-cmap.c_test_subset_cmap_non_consecutive_glyphs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"fonts/Roboto-Regular.D7,D8,D9,DA,DE.ttf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_subset_cmap_non_consecutive_glyphs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_subset_cmap_non_consecutive_glyphs() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* @hb_subset_test_open_font(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %1, align 8
  %5 = call i32* (...) @hb_set_create()
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @hb_set_add(i32* %6, i32 215)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @hb_set_add(i32* %8, i32 216)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @hb_set_add(i32* %10, i32 217)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @hb_set_add(i32* %12, i32 218)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @hb_set_add(i32* %14, i32 222)
  %16 = load i32*, i32** %1, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @hb_subset_test_create_input(i32* %17)
  %19 = call i32* @hb_subset_test_create_subset(i32* %16, i32 %18)
  store i32* %19, i32** %3, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @hb_set_destroy(i32* %20)
  %22 = load i32*, i32** %1, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @HB_TAG(i8 signext 99, i8 signext 109, i8 signext 97, i8 signext 112)
  %25 = call i32 @hb_subset_test_check(i32* %22, i32* %23, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @hb_face_destroy(i32* %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @hb_face_destroy(i32* %28)
  ret void
}

declare dso_local i32* @hb_subset_test_open_font(i8*) #1

declare dso_local i32* @hb_set_create(...) #1

declare dso_local i32 @hb_set_add(i32*, i32) #1

declare dso_local i32* @hb_subset_test_create_subset(i32*, i32) #1

declare dso_local i32 @hb_subset_test_create_input(i32*) #1

declare dso_local i32 @hb_set_destroy(i32*) #1

declare dso_local i32 @hb_subset_test_check(i32*, i32*, i32) #1

declare dso_local i32 @HB_TAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @hb_face_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

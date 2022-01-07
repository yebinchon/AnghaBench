; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-subset-hmtx.c_test_subset_invalid_hmtx.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-subset-hmtx.c_test_subset_invalid_hmtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"fonts/crash-e4e0bb1458a91b692eba492c907ae1f94e635480\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_subset_invalid_hmtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_subset_invalid_hmtx() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32* @hb_subset_test_open_font(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** %1, align 8
  %6 = call i32* (...) @hb_subset_input_create_or_fail()
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32* @hb_subset_input_unicode_set(i32* %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @hb_set_add(i32* %9, i8 signext 97)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @hb_set_add(i32* %11, i8 signext 98)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @hb_set_add(i32* %13, i8 signext 99)
  %15 = load i32*, i32** %1, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i32* @hb_subset(i32* %15, i32* %16)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = ptrtoint i32* %18 to i32
  %20 = call i32 @g_assert(i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32* (...) @hb_face_get_empty()
  %23 = icmp eq i32* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @g_assert(i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @hb_subset_input_destroy(i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @hb_face_destroy(i32* %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @hb_face_destroy(i32* %30)
  ret void
}

declare dso_local i32* @hb_subset_test_open_font(i8*) #1

declare dso_local i32* @hb_subset_input_create_or_fail(...) #1

declare dso_local i32* @hb_subset_input_unicode_set(i32*) #1

declare dso_local i32 @hb_set_add(i32*, i8 signext) #1

declare dso_local i32* @hb_subset(i32*, i32*) #1

declare dso_local i32 @g_assert(i32) #1

declare dso_local i32* @hb_face_get_empty(...) #1

declare dso_local i32 @hb_subset_input_destroy(i32*) #1

declare dso_local i32 @hb_face_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-subset-vmtx.c_test_subset_vmtx_noop.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-subset-vmtx.c_test_subset_vmtx_noop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"fonts/Mplus1p-Regular.660E,6975,73E0,5EA6,8F38,6E05.ttf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_subset_vmtx_noop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_subset_vmtx_noop() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* @hb_subset_test_open_font(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %1, align 8
  %5 = call i32* (...) @hb_set_create()
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @hb_set_add(i32* %6, i32 26126)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @hb_set_add(i32* %8, i32 26997)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @hb_set_add(i32* %10, i32 29664)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @hb_set_add(i32* %12, i32 24230)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @hb_set_add(i32* %14, i32 36664)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @hb_set_add(i32* %16, i32 28165)
  %18 = load i32*, i32** %1, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @hb_subset_test_create_input(i32* %19)
  %21 = call i32* @hb_subset_test_create_subset(i32* %18, i32 %20)
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @hb_set_destroy(i32* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @check_num_vmetrics(i32* %24, i32 1)
  %26 = load i32*, i32** %1, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @HB_TAG(i8 signext 118, i8 signext 109, i8 signext 116, i8 signext 120)
  %29 = call i32 @hb_subset_test_check(i32* %26, i32* %27, i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @hb_face_destroy(i32* %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @hb_face_destroy(i32* %32)
  ret void
}

declare dso_local i32* @hb_subset_test_open_font(i8*) #1

declare dso_local i32* @hb_set_create(...) #1

declare dso_local i32 @hb_set_add(i32*, i32) #1

declare dso_local i32* @hb_subset_test_create_subset(i32*, i32) #1

declare dso_local i32 @hb_subset_test_create_input(i32*) #1

declare dso_local i32 @hb_set_destroy(i32*) #1

declare dso_local i32 @check_num_vmetrics(i32*, i32) #1

declare dso_local i32 @hb_subset_test_check(i32*, i32*, i32) #1

declare dso_local i32 @HB_TAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @hb_face_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

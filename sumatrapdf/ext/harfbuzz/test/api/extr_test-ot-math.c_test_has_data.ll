; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-ot-math.c_test_has_data.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-ot-math.c_test_has_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"fonts/MathTestFontNone.otf\00", align 1
@hb_face = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"fonts/MathTestFontEmpty.otf\00", align 1
@hb_font = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_has_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_has_data() #0 {
  %1 = call i32 (...) @initFreeType()
  %2 = call i32 @openFont(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @hb_face, align 4
  %4 = call i32 @hb_ot_math_has_data(i32 %3)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @g_assert(i32 %7)
  %9 = call i32 (...) @closeFont()
  %10 = call i32 @openFont(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @hb_face, align 4
  %12 = call i32 @hb_ot_math_has_data(i32 %11)
  %13 = call i32 @g_assert(i32 %12)
  %14 = call i32 (...) @closeFont()
  %15 = call i32 (...) @hb_face_get_empty()
  store i32 %15, i32* @hb_face, align 4
  %16 = load i32, i32* @hb_face, align 4
  %17 = call i32 @hb_font_create(i32 %16)
  store i32 %17, i32* @hb_font, align 4
  %18 = load i32, i32* @hb_face, align 4
  %19 = call i32 @hb_ot_math_has_data(i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @g_assert(i32 %22)
  %24 = call i32 (...) @hb_font_get_empty()
  store i32 %24, i32* @hb_font, align 4
  %25 = load i32, i32* @hb_font, align 4
  %26 = call i32 @hb_font_get_face(i32 %25)
  store i32 %26, i32* @hb_face, align 4
  %27 = load i32, i32* @hb_face, align 4
  %28 = call i32 @hb_ot_math_has_data(i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @g_assert(i32 %31)
  %33 = call i32 (...) @cleanupFreeType()
  ret void
}

declare dso_local i32 @initFreeType(...) #1

declare dso_local i32 @openFont(i8*) #1

declare dso_local i32 @g_assert(i32) #1

declare dso_local i32 @hb_ot_math_has_data(i32) #1

declare dso_local i32 @closeFont(...) #1

declare dso_local i32 @hb_face_get_empty(...) #1

declare dso_local i32 @hb_font_create(i32) #1

declare dso_local i32 @hb_font_get_empty(...) #1

declare dso_local i32 @hb_font_get_face(i32) #1

declare dso_local i32 @cleanupFreeType(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

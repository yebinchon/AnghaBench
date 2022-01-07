; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-ot-math.c_test_is_glyph_extended_shape.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-ot-math.c_test_is_glyph_extended_shape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"fonts/MathTestFontEmpty.otf\00", align 1
@hb_font = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@hb_face = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"fonts/MathTestFontPartial1.otf\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"fonts/MathTestFontFull.otf\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_is_glyph_extended_shape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_is_glyph_extended_shape() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @initFreeType()
  %3 = call i32 @openFont(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @hb_font, align 4
  %5 = call i32 @hb_font_get_glyph_from_name(i32 %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32* %1)
  %6 = call i32 @g_assert(i32 %5)
  %7 = load i32, i32* @hb_face, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @hb_ot_math_is_glyph_extended_shape(i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @g_assert(i32 %12)
  %14 = call i32 (...) @closeFont()
  %15 = call i32 @openFont(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i32, i32* @hb_font, align 4
  %17 = call i32 @hb_font_get_glyph_from_name(i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32* %1)
  %18 = call i32 @g_assert(i32 %17)
  %19 = load i32, i32* @hb_face, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @hb_ot_math_is_glyph_extended_shape(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @g_assert(i32 %24)
  %26 = call i32 (...) @closeFont()
  %27 = call i32 @openFont(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32, i32* @hb_font, align 4
  %29 = call i32 @hb_font_get_glyph_from_name(i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 -1, i32* %1)
  %30 = call i32 @g_assert(i32 %29)
  %31 = load i32, i32* @hb_face, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @hb_ot_math_is_glyph_extended_shape(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @g_assert(i32 %36)
  %38 = load i32, i32* @hb_font, align 4
  %39 = call i32 @hb_font_get_glyph_from_name(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 -1, i32* %1)
  %40 = call i32 @g_assert(i32 %39)
  %41 = load i32, i32* @hb_face, align 4
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @hb_ot_math_is_glyph_extended_shape(i32 %41, i32 %42)
  %44 = call i32 @g_assert(i32 %43)
  %45 = call i32 (...) @closeFont()
  %46 = call i32 (...) @cleanupFreeType()
  ret void
}

declare dso_local i32 @initFreeType(...) #1

declare dso_local i32 @openFont(i8*) #1

declare dso_local i32 @g_assert(i32) #1

declare dso_local i32 @hb_font_get_glyph_from_name(i32, i8*, i32, i32*) #1

declare dso_local i32 @hb_ot_math_is_glyph_extended_shape(i32, i32) #1

declare dso_local i32 @closeFont(...) #1

declare dso_local i32 @cleanupFreeType(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

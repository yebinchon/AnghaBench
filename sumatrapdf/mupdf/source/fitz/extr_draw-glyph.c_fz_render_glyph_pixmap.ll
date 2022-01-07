; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-glyph.c_fz_render_glyph_pixmap.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-glyph.c_fz_render_glyph_pixmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_GLYPH_SIZE = common dso_local global float 0.000000e+00, align 4
@fz_infinite_irect = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"assert: uninitialized font structure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fz_render_glyph_pixmap(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call float @fz_subpixel_adjust(i32* %20, i32* %21, i32* %17, i8* %15, i8* %16)
  store float %22, float* %18, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @fz_font_ft_face(i32* %23, i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %19, align 4
  %30 = load float, float* %18, align 4
  %31 = load float, float* @MAX_GLYPH_SIZE, align 4
  %32 = fcmp ole float %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  store i32* @fz_infinite_irect, i32** %12, align 8
  br label %39

34:                                               ; preds = %6
  %35 = load i32, i32* %19, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32* null, i32** %7, align 8
  br label %68

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32* @fz_render_ft_glyph_pixmap(i32* %43, i32* %44, i32 %45, i32 %46, i32 %47)
  store i32* %48, i32** %14, align 8
  br label %66

49:                                               ; preds = %39
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i64 @fz_font_t3_procs(i32* %50, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32* @fz_render_t3_glyph_pixmap(i32* %55, i32* %56, i32 %57, i32 %58, i32* null, i32* %59, i32 %60)
  store i32* %61, i32** %14, align 8
  br label %65

62:                                               ; preds = %49
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @fz_warn(i32* %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %14, align 8
  br label %65

65:                                               ; preds = %62, %54
  br label %66

66:                                               ; preds = %65, %42
  %67 = load i32*, i32** %14, align 8
  store i32* %67, i32** %7, align 8
  br label %68

68:                                               ; preds = %66, %37
  %69 = load i32*, i32** %7, align 8
  ret i32* %69
}

declare dso_local float @fz_subpixel_adjust(i32*, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @fz_font_ft_face(i32*, i32*) #1

declare dso_local i32* @fz_render_ft_glyph_pixmap(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @fz_font_t3_procs(i32*, i32*) #1

declare dso_local i32* @fz_render_t3_glyph_pixmap(i32*, i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

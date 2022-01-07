; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-glyph.c_fz_render_stroked_glyph.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-glyph.c_fz_render_stroked_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fz_render_stroked_glyph(i32* %0, i32* %1, i32 %2, i32* %3, i32 %4, %struct.TYPE_4__* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i64 @fz_font_ft_face(i32* %21, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32* null, i32** %9, align 8
  br label %51

31:                                               ; preds = %25
  %32 = load i32*, i32** %10, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = call i32 @fz_subpixel_adjust(i32* %32, i32* %33, i32* %18, i8* %19, i8* %20)
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %41 = load i32, i32* %17, align 4
  %42 = call i32* @fz_render_ft_stroked_glyph(i32* %35, i32* %36, i32 %37, i32 %38, i32 %39, %struct.TYPE_4__* %40, i32 %41)
  store i32* %42, i32** %9, align 8
  br label %51

43:                                               ; preds = %8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = load i32*, i32** %16, align 8
  %49 = load i32, i32* %17, align 4
  %50 = call i32* @fz_render_glyph(i32* %44, i32* %45, i32 %46, i32* %47, i32* null, i32* %48, i32 1, i32 %49)
  store i32* %50, i32** %9, align 8
  br label %51

51:                                               ; preds = %43, %31, %30
  %52 = load i32*, i32** %9, align 8
  ret i32* %52
}

declare dso_local i64 @fz_font_ft_face(i32*, i32*) #1

declare dso_local i32 @fz_subpixel_adjust(i32*, i32*, i32*, i8*, i8*) #1

declare dso_local i32* @fz_render_ft_stroked_glyph(i32*, i32*, i32, i32, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32* @fz_render_glyph(i32*, i32*, i32, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

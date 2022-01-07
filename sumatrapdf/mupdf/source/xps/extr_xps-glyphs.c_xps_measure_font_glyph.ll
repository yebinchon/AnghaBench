; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-glyphs.c_xps_measure_font_glyph.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-glyphs.c_xps_measure_font_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float, float }
%struct.TYPE_7__ = type { float, i64 }

@FT_LOAD_NO_SCALE = common dso_local global i32 0, align 4
@FT_LOAD_IGNORE_TRANSFORM = common dso_local global i32 0, align 4
@FZ_LOCK_FREETYPE = common dso_local global i32 0, align 4
@FT_LOAD_VERTICAL_LAYOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xps_measure_font_glyph(i32* %0, i32* %1, i32* %2, i32 %3, %struct.TYPE_6__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %10, align 8
  %15 = load i32, i32* @FT_LOAD_NO_SCALE, align 4
  %16 = load i32, i32* @FT_LOAD_IGNORE_TRANSFORM, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call %struct.TYPE_7__* @fz_font_ft_face(i32* %18, i32* %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %23 = call i32 @fz_lock(i32* %21, i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @FT_Get_Advance(%struct.TYPE_7__* %24, i32 %25, i32 %26, i64* %13)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @FT_LOAD_VERTICAL_LAYOUT, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @FT_Get_Advance(%struct.TYPE_7__* %28, i32 %29, i32 %32, i64* %14)
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %36 = call i32 @fz_unlock(i32* %34, i32 %35)
  %37 = load i64, i64* %13, align 8
  %38 = sitofp i64 %37 to float
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load float, float* %40, align 8
  %42 = fdiv float %38, %41
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store float %42, float* %44, align 4
  %45 = load i64, i64* %14, align 8
  %46 = sitofp i64 %45 to float
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load float, float* %48, align 8
  %50 = fdiv float %46, %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store float %50, float* %52, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sitofp i64 %55 to float
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load float, float* %58, align 8
  %60 = fdiv float %56, %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store float %60, float* %62, align 4
  ret void
}

declare dso_local %struct.TYPE_7__* @fz_font_ft_face(i32*, i32*) #1

declare dso_local i32 @fz_lock(i32*, i32) #1

declare dso_local i32 @FT_Get_Advance(%struct.TYPE_7__*, i32, i32, i64*) #1

declare dso_local i32 @fz_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_fz_adjust_ft_glyph_width.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_fz_adjust_ft_glyph_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float*, i32, float, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { float }

@FZ_LOCK_FREETYPE = common dso_local global i32 0, align 4
@FT_LOAD_NO_SCALE = common dso_local global i32 0, align 4
@FT_LOAD_NO_HINTING = common dso_local global i32 0, align 4
@FT_LOAD_IGNORE_TRANSFORM = common dso_local global i32 0, align 4
@FT_Err_Invalid_Argument = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"FT_Get_Advance(%s,%d): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_6__*, i32, i32*)* @fz_adjust_ft_glyph_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fz_adjust_ft_glyph_width(i32* %0, %struct.TYPE_6__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %97

18:                                               ; preds = %4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load float*, float** %20, align 8
  %22 = icmp ne float* %21, null
  br i1 %22, label %23, label %97

23:                                               ; preds = %18
  store float 0.000000e+00, float* %10, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %26 = call i32 @fz_lock(i32* %24, i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @FT_LOAD_NO_SCALE, align 4
  %32 = load i32, i32* @FT_LOAD_NO_HINTING, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @FT_LOAD_IGNORE_TRANSFORM, align 4
  %35 = or i32 %33, %34
  %36 = call i64 @FT_Get_Advance(i64 %29, i32 %30, i32 %35, float* %10)
  store i64 %36, i64* %9, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %39 = call i32 @fz_unlock(i32* %37, i32 %38)
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %23
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @FT_Err_Invalid_Argument, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @ft_error_string(i64 %52)
  %54 = call i32 @fz_warn(i32* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %46, %42, %23
  %56 = load float, float* %10, align 4
  %57 = fmul float %56, 1.000000e+03
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.TYPE_7__*
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load float, float* %62, align 4
  %64 = fdiv float %57, %63
  store float %64, float* %12, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %55
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load float*, float** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = load float, float* %76, align 4
  store float %77, float* %11, align 4
  br label %82

78:                                               ; preds = %55
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load float, float* %80, align 4
  store float %81, float* %11, align 4
  br label %82

82:                                               ; preds = %78, %70
  %83 = load float, float* %12, align 4
  %84 = fcmp ogt float %83, 0.000000e+00
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load float, float* %11, align 4
  %87 = fcmp ogt float %86, 0.000000e+00
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load float, float* %11, align 4
  %92 = load float, float* %12, align 4
  %93 = fdiv float %91, %92
  %94 = call i32 @fz_pre_scale(i32 %90, float %93, i32 1)
  %95 = load i32*, i32** %8, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %88, %85, %82
  br label %97

97:                                               ; preds = %96, %18, %4
  %98 = load i32*, i32** %8, align 8
  ret i32* %98
}

declare dso_local i32 @fz_lock(i32*, i32) #1

declare dso_local i64 @FT_Get_Advance(i64, i32, i32, float*) #1

declare dso_local i32 @fz_unlock(i32*, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @ft_error_string(i64) #1

declare dso_local i32 @fz_pre_scale(i32, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

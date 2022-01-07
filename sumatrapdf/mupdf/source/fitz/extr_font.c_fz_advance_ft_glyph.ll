; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_fz_advance_ft_glyph.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_fz_advance_ft_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float*, i32, float, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { float }

@FT_LOAD_NO_SCALE = common dso_local global i32 0, align 4
@FT_LOAD_NO_HINTING = common dso_local global i32 0, align 4
@FT_LOAD_IGNORE_TRANSFORM = common dso_local global i32 0, align 4
@FT_LOAD_VERTICAL_LAYOUT = common dso_local global i32 0, align 4
@FZ_LOCK_FREETYPE = common dso_local global i32 0, align 4
@FT_Err_Invalid_Argument = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"FT_Get_Advance(%s,%d): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32*, %struct.TYPE_6__*, i32, i32)* @fz_advance_ft_glyph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @fz_advance_ft_glyph(i32* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %11, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load float*, float** %20, align 8
  %22 = icmp ne float* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load float*, float** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %32, i64 %34
  %36 = load float, float* %35, align 4
  %37 = fdiv float %36, 1.000000e+03
  store float %37, float* %5, align 4
  br label %119

38:                                               ; preds = %23
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load float, float* %40, align 4
  %42 = fdiv float %41, 1.000000e+03
  store float %42, float* %5, align 4
  br label %119

43:                                               ; preds = %18
  br label %44

44:                                               ; preds = %43, %4
  %45 = load i32, i32* @FT_LOAD_NO_SCALE, align 4
  %46 = load i32, i32* @FT_LOAD_NO_HINTING, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @FT_LOAD_IGNORE_TRANSFORM, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, i32* @FT_LOAD_VERTICAL_LAYOUT, align 4
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %52, %44
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %59 = call i32 @fz_lock(i32* %57, i32 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i64 @FT_Get_Advance(i64 %62, i32 %63, i32 %64, i64* %11)
  store i64 %65, i64* %10, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %68 = call i32 @fz_unlock(i32* %66, i32 %67)
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %109

71:                                               ; preds = %56
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @FT_Err_Invalid_Argument, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %109

75:                                               ; preds = %71
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @ft_error_string(i64 %81)
  %83 = call i32 @fz_warn(i32* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80, i32 %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load float*, float** %85, align 8
  %87 = icmp ne float* %86, null
  br i1 %87, label %88, label %108

88:                                               ; preds = %75
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load float*, float** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  %101 = load float, float* %100, align 4
  %102 = fdiv float %101, 1.000000e+03
  store float %102, float* %5, align 4
  br label %119

103:                                              ; preds = %88
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load float, float* %105, align 4
  %107 = fdiv float %106, 1.000000e+03
  store float %107, float* %5, align 4
  br label %119

108:                                              ; preds = %75
  br label %109

109:                                              ; preds = %108, %71, %56
  %110 = load i64, i64* %11, align 8
  %111 = sitofp i64 %110 to float
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to %struct.TYPE_7__*
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load float, float* %116, align 4
  %118 = fdiv float %111, %117
  store float %118, float* %5, align 4
  br label %119

119:                                              ; preds = %109, %103, %94, %38, %29
  %120 = load float, float* %5, align 4
  ret float %120
}

declare dso_local i32 @fz_lock(i32*, i32) #1

declare dso_local i64 @FT_Get_Advance(i64, i32, i32, i64*) #1

declare dso_local i32 @fz_unlock(i32*, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @ft_error_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

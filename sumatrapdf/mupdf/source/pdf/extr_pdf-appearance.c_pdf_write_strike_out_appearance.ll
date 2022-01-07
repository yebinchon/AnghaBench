; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_strike_out_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_strike_out_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@QuadPoints = common dso_local global i32 0, align 4
@fz_empty_rect = common dso_local global i32 0, align 4
@LL = common dso_local global i64 0, align 8
@UL = common dso_local global i64 0, align 8
@LR = common dso_local global i64 0, align 8
@UR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%g w\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%g %g m\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%g %g l\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"S\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, i32*, i32*)* @pdf_write_strike_out_appearance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_write_strike_out_appearance(i32* %0, %struct.TYPE_10__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [4 x %struct.TYPE_11__], align 16
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = alloca float, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__, align 4
  %17 = alloca %struct.TYPE_11__, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @pdf_write_stroke_color_appearance(i32* %18, %struct.TYPE_10__* %19, i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @QuadPoints, align 4
  %27 = call i32 @PDF_NAME(i32 %26)
  %28 = call i32* @pdf_dict_get(i32* %22, i32 %25, i32 %27)
  store i32* %28, i32** %13, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 @pdf_array_len(i32* %29, i32* %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %103

34:                                               ; preds = %4
  %35 = load i32, i32* @fz_empty_rect, align 4
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %99, %34
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %102

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %9, i64 0, i64 0
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call float @extract_quad(i32* %42, %struct.TYPE_11__* %43, i32* %44, i32 %45)
  store float %46, float* %12, align 4
  %47 = load i64, i64* @LL, align 8
  %48 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %9, i64 0, i64 %47
  %49 = load i64, i64* @UL, align 8
  %50 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %9, i64 0, i64 %49
  %51 = bitcast %struct.TYPE_11__* %48 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = bitcast %struct.TYPE_11__* %50 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @lerp_point(i64 %52, i64 %54, i32 0)
  %56 = bitcast %struct.TYPE_11__* %16 to i64*
  store i64 %55, i64* %56, align 4
  %57 = bitcast %struct.TYPE_11__* %10 to i8*
  %58 = bitcast %struct.TYPE_11__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 8, i1 false)
  %59 = load i64, i64* @LR, align 8
  %60 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %9, i64 0, i64 %59
  %61 = load i64, i64* @UR, align 8
  %62 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %9, i64 0, i64 %61
  %63 = bitcast %struct.TYPE_11__* %60 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = bitcast %struct.TYPE_11__* %62 to i64*
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @lerp_point(i64 %64, i64 %66, i32 0)
  %68 = bitcast %struct.TYPE_11__* %17 to i64*
  store i64 %67, i64* %68, align 4
  %69 = bitcast %struct.TYPE_11__* %11 to i8*
  %70 = bitcast %struct.TYPE_11__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 %70, i64 8, i1 false)
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load float, float* %12, align 4
  %74 = fdiv float %73, 1.600000e+01
  %75 = fpext float %74 to double
  %76 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %71, i32* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %75)
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %77, i32* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %82)
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %84, i32* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %89)
  %91 = load i32*, i32** %5, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %91, i32* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %9, i64 0, i64 0
  %96 = load float, float* %12, align 4
  %97 = fdiv float %96, 1.600000e+01
  %98 = call i32 @union_quad(i32* %94, %struct.TYPE_11__* %95, float %97)
  br label %99

99:                                               ; preds = %41
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 8
  store i32 %101, i32* %14, align 4
  br label %37

102:                                              ; preds = %37
  br label %103

103:                                              ; preds = %102, %4
  ret void
}

declare dso_local i32 @pdf_write_stroke_color_appearance(i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local float @extract_quad(i32*, %struct.TYPE_11__*, i32*, i32) #1

declare dso_local i64 @lerp_point(i64, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fz_append_printf(i32*, i32*, i8*, ...) #1

declare dso_local i32 @union_quad(i32*, %struct.TYPE_11__*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_free_text_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_free_text_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { float, float, float, float }

@Rotate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"0 0 %g %g re\0Af\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%g %g %g RG\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%g %g %g %g re\0AS\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%g %g %g %g re\0AW\0An\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*, i32**)* @pdf_write_free_text_appearance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_write_free_text_appearance(i32* %0, %struct.TYPE_13__* %1, i32* %2, %struct.TYPE_14__* %3, %struct.TYPE_14__* %4, i32* %5, i32** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca float, align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca i8*, align 8
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_14__, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32** %6, i32*** %14, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %28 = call i8* @pdf_annot_contents(i32* %26, %struct.TYPE_13__* %27)
  store i8* %28, i8** %18, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @Rotate, align 4
  %34 = call i32 @PDF_NAME(i32 %33)
  %35 = call i32 @pdf_dict_get_int(i32* %29, i32 %32, i32 %34)
  store i32 %35, i32* %24, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %38 = call i32 @pdf_annot_quadding(i32* %36, %struct.TYPE_13__* %37)
  store i32 %38, i32* %23, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %41 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 0
  %42 = call i32 @pdf_annot_default_appearance(i32* %39, %struct.TYPE_13__* %40, i8** %15, float* %16, float* %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load float, float* %44, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load float, float* %47, align 4
  %49 = fsub float %45, %48
  store float %49, float* %19, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load float, float* %51, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  %55 = load float, float* %54, align 4
  %56 = fsub float %52, %55
  store float %56, float* %20, align 4
  %57 = load i32, i32* %24, align 4
  %58 = icmp eq i32 %57, 90
  br i1 %58, label %62, label %59

59:                                               ; preds = %7
  %60 = load i32, i32* %24, align 4
  %61 = icmp eq i32 %60, 270
  br i1 %61, label %62, label %66

62:                                               ; preds = %59, %7
  %63 = load float, float* %20, align 4
  store float %63, float* %21, align 4
  %64 = load float, float* %19, align 4
  store float %64, float* %20, align 4
  %65 = load float, float* %21, align 4
  store float %65, float* %19, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32, i32* %24, align 4
  %68 = call i32 @fz_rotate(i32 %67)
  %69 = load i32*, i32** %13, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %71 = load float, float* %19, align 4
  %72 = load float, float* %20, align 4
  %73 = call { <2 x float>, <2 x float> } @fz_make_rect(i32 0, i32 0, float %71, float %72)
  %74 = bitcast %struct.TYPE_14__* %25 to { <2 x float>, <2 x float> }*
  %75 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %74, i32 0, i32 0
  %76 = extractvalue { <2 x float>, <2 x float> } %73, 0
  store <2 x float> %76, <2 x float>* %75, align 4
  %77 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %74, i32 0, i32 1
  %78 = extractvalue { <2 x float>, <2 x float> } %73, 1
  store <2 x float> %78, <2 x float>* %77, align 4
  %79 = bitcast %struct.TYPE_14__* %70 to i8*
  %80 = bitcast %struct.TYPE_14__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 16, i1 false)
  %81 = load i32*, i32** %8, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call i64 @pdf_write_fill_color_appearance(i32* %81, %struct.TYPE_13__* %82, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %66
  %87 = load i32*, i32** %8, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = load float, float* %19, align 4
  %90 = load float, float* %20, align 4
  %91 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %87, i32* %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), float %89, float %90)
  br label %92

92:                                               ; preds = %86, %66
  %93 = load i32*, i32** %8, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = call float @pdf_write_border_appearance(i32* %93, %struct.TYPE_13__* %94, i32* %95)
  store float %96, float* %22, align 4
  %97 = load float, float* %22, align 4
  %98 = fcmp ogt float %97, 0.000000e+00
  br i1 %98, label %99, label %125

99:                                               ; preds = %92
  %100 = load i32*, i32** %8, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 0
  %103 = load float, float* %102, align 4
  %104 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 1
  %105 = load float, float* %104, align 4
  %106 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 2
  %107 = load float, float* %106, align 4
  %108 = fpext float %107 to double
  %109 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %100, i32* %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), float %103, float %105, double %108)
  %110 = load i32*, i32** %8, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = load float, float* %22, align 4
  %113 = fdiv float %112, 2.000000e+00
  %114 = load float, float* %22, align 4
  %115 = fdiv float %114, 2.000000e+00
  %116 = load float, float* %19, align 4
  %117 = load float, float* %22, align 4
  %118 = fsub float %116, %117
  %119 = fpext float %118 to double
  %120 = load float, float* %20, align 4
  %121 = load float, float* %22, align 4
  %122 = fsub float %120, %121
  %123 = fpext float %122 to double
  %124 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %110, i32* %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), float %113, float %115, double %119, double %123)
  br label %125

125:                                              ; preds = %99, %92
  %126 = load i32*, i32** %8, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = load float, float* %22, align 4
  %129 = load float, float* %22, align 4
  %130 = load float, float* %19, align 4
  %131 = load float, float* %22, align 4
  %132 = fmul float %131, 2.000000e+00
  %133 = fsub float %130, %132
  %134 = fpext float %133 to double
  %135 = load float, float* %20, align 4
  %136 = load float, float* %22, align 4
  %137 = fmul float %136, 2.000000e+00
  %138 = fsub float %135, %137
  %139 = fpext float %138 to double
  %140 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %126, i32* %127, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), float %128, float %129, double %134, double %139)
  %141 = load i32*, i32** %8, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = load i32**, i32*** %14, align 8
  %145 = load i8*, i8** %18, align 8
  %146 = load i8*, i8** %15, align 8
  %147 = load float, float* %16, align 4
  %148 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 0
  %149 = load i32, i32* %23, align 4
  %150 = load float, float* %19, align 4
  %151 = load float, float* %20, align 4
  %152 = load float, float* %22, align 4
  %153 = fmul float %152, 2.000000e+00
  %154 = call i32 @write_variable_text(i32* %141, %struct.TYPE_13__* %142, i32* %143, i32** %144, i8* %145, i8* %146, float %147, float* %148, i32 %149, float %150, float %151, float %153, float 0x3FE99999A0000000, float 0x3FF3333340000000, i32 1, i32 0, i32 0)
  ret void
}

declare dso_local i8* @pdf_annot_contents(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @pdf_dict_get_int(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_annot_quadding(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @pdf_annot_default_appearance(i32*, %struct.TYPE_13__*, i8**, float*, float*) #1

declare dso_local i32 @fz_rotate(i32) #1

declare dso_local { <2 x float>, <2 x float> } @fz_make_rect(i32, i32, float, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @pdf_write_fill_color_appearance(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @fz_append_printf(i32*, i32*, i8*, float, float, ...) #1

declare dso_local float @pdf_write_border_appearance(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @write_variable_text(i32*, %struct.TYPE_13__*, i32*, i32**, i8*, i8*, float, float*, i32, float, float, float, float, float, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

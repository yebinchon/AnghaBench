; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-shade.c_pdf_load_function_based_shading.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-shade.c_pdf_load_function_based_shading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, float*, float**, i32 }

@Domain = common dso_local global i32 0, align 4
@Matrix = common dso_local global i32 0, align 4
@FUNSEGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_7__*, i32*, i32*)* @pdf_load_function_based_shading to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_load_function_based_shading(i32* %0, i32* %1, %struct.TYPE_7__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca [2 x float], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @fz_colorspace_n(i32* %21, i32 %24)
  store i32 %25, i32* %20, align 4
  store float 0.000000e+00, float* %13, align 4
  store float 0.000000e+00, float* %12, align 4
  store float 1.000000e+00, float* %15, align 4
  store float 1.000000e+00, float* %14, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* @Domain, align 4
  %29 = call i32 @PDF_NAME(i32 %28)
  %30 = call i32* @pdf_dict_get(i32* %26, i32* %27, i32 %29)
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %5
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call float @pdf_array_get_real(i32* %34, i32* %35, i32 0)
  store float %36, float* %12, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call float @pdf_array_get_real(i32* %37, i32* %38, i32 1)
  store float %39, float* %14, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call float @pdf_array_get_real(i32* %40, i32* %41, i32 2)
  store float %42, float* %13, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call float @pdf_array_get_real(i32* %43, i32* %44, i32 3)
  store float %45, float* %15, align 4
  br label %46

46:                                               ; preds = %33, %5
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* @Matrix, align 4
  %50 = call i32 @PDF_NAME(i32 %49)
  %51 = call i32 @pdf_dict_get_matrix(i32* %47, i32* %48, i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 4
  store i32 %51, i32* %55, align 8
  %56 = load i32, i32* @FUNSEGS, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  %61 = load i32, i32* @FUNSEGS, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %61, i32* %65, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @FUNSEGS, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* @FUNSEGS, align 4
  %70 = add nsw i32 %69, 1
  %71 = mul nsw i32 %68, %70
  %72 = load i32, i32* %20, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call float* @fz_malloc(i32* %66, i32 %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  store float* %77, float** %81, align 8
  %82 = load float, float* %12, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  %87 = load float**, float*** %86, align 8
  %88 = getelementptr inbounds float*, float** %87, i64 0
  %89 = load float*, float** %88, align 8
  %90 = getelementptr inbounds float, float* %89, i64 0
  store float %82, float* %90, align 4
  %91 = load float, float* %13, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = load float**, float*** %95, align 8
  %97 = getelementptr inbounds float*, float** %96, i64 0
  %98 = load float*, float** %97, align 8
  %99 = getelementptr inbounds float, float* %98, i64 1
  store float %91, float* %99, align 4
  %100 = load float, float* %14, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load float**, float*** %104, align 8
  %106 = getelementptr inbounds float*, float** %105, i64 1
  %107 = load float*, float** %106, align 8
  %108 = getelementptr inbounds float, float* %107, i64 0
  store float %100, float* %108, align 4
  %109 = load float, float* %15, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 3
  %114 = load float**, float*** %113, align 8
  %115 = getelementptr inbounds float*, float** %114, i64 1
  %116 = load float*, float** %115, align 8
  %117 = getelementptr inbounds float, float* %116, i64 1
  store float %109, float* %117, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load float*, float** %121, align 8
  store float* %122, float** %19, align 8
  store i32 0, i32* %18, align 4
  br label %123

123:                                              ; preds = %171, %46
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* @FUNSEGS, align 4
  %126 = icmp sle i32 %124, %125
  br i1 %126, label %127, label %174

127:                                              ; preds = %123
  %128 = load float, float* %13, align 4
  %129 = load float, float* %15, align 4
  %130 = load float, float* %13, align 4
  %131 = fsub float %129, %130
  %132 = load i32, i32* %18, align 4
  %133 = sitofp i32 %132 to float
  %134 = fmul float %131, %133
  %135 = load i32, i32* @FUNSEGS, align 4
  %136 = sitofp i32 %135 to float
  %137 = fdiv float %134, %136
  %138 = fadd float %128, %137
  %139 = getelementptr inbounds [2 x float], [2 x float]* %16, i64 0, i64 1
  store float %138, float* %139, align 4
  store i32 0, i32* %17, align 4
  br label %140

140:                                              ; preds = %167, %127
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* @FUNSEGS, align 4
  %143 = icmp sle i32 %141, %142
  br i1 %143, label %144, label %170

144:                                              ; preds = %140
  %145 = load float, float* %12, align 4
  %146 = load float, float* %14, align 4
  %147 = load float, float* %12, align 4
  %148 = fsub float %146, %147
  %149 = load i32, i32* %17, align 4
  %150 = sitofp i32 %149 to float
  %151 = fmul float %148, %150
  %152 = load i32, i32* @FUNSEGS, align 4
  %153 = sitofp i32 %152 to float
  %154 = fdiv float %151, %153
  %155 = fadd float %145, %154
  %156 = getelementptr inbounds [2 x float], [2 x float]* %16, i64 0, i64 0
  store float %155, float* %156, align 4
  %157 = load i32*, i32** %6, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = getelementptr inbounds [2 x float], [2 x float]* %16, i64 0, i64 0
  %160 = load float*, float** %19, align 8
  %161 = load i32, i32* %20, align 4
  %162 = call i32 @pdf_eval_function(i32* %157, i32* %158, float* %159, i32 2, float* %160, i32 %161)
  %163 = load i32, i32* %20, align 4
  %164 = load float*, float** %19, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds float, float* %164, i64 %165
  store float* %166, float** %19, align 8
  br label %167

167:                                              ; preds = %144
  %168 = load i32, i32* %17, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %17, align 4
  br label %140

170:                                              ; preds = %140
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %18, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %18, align 4
  br label %123

174:                                              ; preds = %123
  ret void
}

declare dso_local i32 @fz_colorspace_n(i32*, i32) #1

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local float @pdf_array_get_real(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_get_matrix(i32*, i32*, i32) #1

declare dso_local float* @fz_malloc(i32*, i32) #1

declare dso_local i32 @pdf_eval_function(i32*, i32*, float*, i32, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-colorspace.c_pdf_load_cal_common.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-colorspace.c_pdf_load_cal_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WhitePoint = common dso_local global i32 0, align 4
@FZ_ERROR_SYNTAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WhitePoint must be a 3-element array\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"WhitePoint numbers must be positive\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"WhitePoint Yw must be 1.0\00", align 1
@BlackPoint = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"BlackPoint numbers must be positive\00", align 1
@Gamma = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Gamma must be greater than zero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float*, float*, float*)* @pdf_load_cal_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_load_cal_common(i32* %0, i32* %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* @WhitePoint, align 4
  %16 = call i32 @PDF_NAME(i32 %15)
  %17 = call i32* @pdf_dict_get(i32* %13, i32* %14, i32 %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @pdf_array_len(i32* %18, i32* %19)
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %25 = call i32 @fz_throw(i32* %23, i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %5
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %50, %26
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call float @pdf_array_get_real(i32* %31, i32* %32, i32 %33)
  %35 = load float*, float** %8, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %35, i64 %37
  store float %34, float* %38, align 4
  %39 = load float*, float** %8, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %39, i64 %41
  %43 = load float, float* %42, align 4
  %44 = fcmp olt float %43, 0.000000e+00
  br i1 %44, label %45, label %49

45:                                               ; preds = %30
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %48 = call i32 @fz_throw(i32* %46, i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %30
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %27

53:                                               ; preds = %27
  %54 = load float*, float** %8, align 8
  %55 = getelementptr inbounds float, float* %54, i64 1
  %56 = load float, float* %55, align 4
  %57 = fcmp une float %56, 1.000000e+00
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %61 = call i32 @fz_throw(i32* %59, i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @BlackPoint, align 4
  %66 = call i32 @PDF_NAME(i32 %65)
  %67 = call i32* @pdf_dict_get(i32* %63, i32* %64, i32 %66)
  store i32* %67, i32** %11, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @pdf_array_len(i32* %68, i32* %69)
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %72, label %100

72:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %96, %72
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 3
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load i32*, i32** %6, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call float @pdf_array_get_real(i32* %77, i32* %78, i32 %79)
  %81 = load float*, float** %9, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  store float %80, float* %84, align 4
  %85 = load float*, float** %9, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  %89 = load float, float* %88, align 4
  %90 = fcmp olt float %89, 0.000000e+00
  br i1 %90, label %91, label %95

91:                                               ; preds = %76
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %94 = call i32 @fz_throw(i32* %92, i32 %93, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %91, %76
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %73

99:                                               ; preds = %73
  br label %100

100:                                              ; preds = %99, %62
  %101 = load i32*, i32** %6, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* @Gamma, align 4
  %104 = call i32 @PDF_NAME(i32 %103)
  %105 = call i32* @pdf_dict_get(i32* %101, i32* %102, i32 %104)
  store i32* %105, i32** %11, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = call i64 @pdf_is_number(i32* %106, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %100
  %111 = load i32*, i32** %6, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = call float @pdf_to_real(i32* %111, i32* %112)
  %114 = load float*, float** %10, align 8
  %115 = getelementptr inbounds float, float* %114, i64 0
  store float %113, float* %115, align 4
  %116 = load float*, float** %10, align 8
  %117 = getelementptr inbounds float, float* %116, i64 2
  %118 = load float, float* %117, align 4
  %119 = load float*, float** %10, align 8
  %120 = getelementptr inbounds float, float* %119, i64 1
  store float %118, float* %120, align 4
  %121 = load float*, float** %10, align 8
  %122 = getelementptr inbounds float, float* %121, i64 0
  %123 = load float, float* %122, align 4
  %124 = fcmp ole float %123, 0.000000e+00
  br i1 %124, label %125, label %129

125:                                              ; preds = %110
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %128 = call i32 @fz_throw(i32* %126, i32 %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %129

129:                                              ; preds = %125, %110
  br label %164

130:                                              ; preds = %100
  %131 = load i32*, i32** %6, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = call i32 @pdf_array_len(i32* %131, i32* %132)
  %134 = icmp eq i32 %133, 3
  br i1 %134, label %135, label %163

135:                                              ; preds = %130
  store i32 0, i32* %12, align 4
  br label %136

136:                                              ; preds = %159, %135
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %137, 3
  br i1 %138, label %139, label %162

139:                                              ; preds = %136
  %140 = load i32*, i32** %6, align 8
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* %12, align 4
  %143 = call float @pdf_array_get_real(i32* %140, i32* %141, i32 %142)
  %144 = load float*, float** %10, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %144, i64 %146
  store float %143, float* %147, align 4
  %148 = load float*, float** %10, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %148, i64 %150
  %152 = load float, float* %151, align 4
  %153 = fcmp ole float %152, 0.000000e+00
  br i1 %153, label %154, label %158

154:                                              ; preds = %139
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %157 = call i32 @fz_throw(i32* %155, i32 %156, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %158

158:                                              ; preds = %154, %139
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %136

162:                                              ; preds = %136
  br label %163

163:                                              ; preds = %162, %130
  br label %164

164:                                              ; preds = %163, %129
  ret void
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local float @pdf_array_get_real(i32*, i32*, i32) #1

declare dso_local i64 @pdf_is_number(i32*, i32*) #1

declare dso_local float @pdf_to_real(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

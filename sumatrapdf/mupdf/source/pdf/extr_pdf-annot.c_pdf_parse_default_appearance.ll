; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_parse_default_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_parse_default_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Helv\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" \0A\0D\09\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Cour\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"TiRo\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Symb\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ZaDb\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"Tf\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"rg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_parse_default_appearance(i32* %0, i8* %1, i8** %2, float* %3, float* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca [100 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [3 x float], align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %17 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  store i8* %17, i8** %12, align 8
  %18 = bitcast [3 x float]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 12, i1 false)
  store i32 0, i32* %16, align 4
  %19 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load float*, float** %9, align 8
  store float 1.200000e+01, float* %20, align 4
  %21 = load float*, float** %10, align 8
  %22 = getelementptr inbounds float, float* %21, i64 2
  store float 0.000000e+00, float* %22, align 4
  %23 = load float*, float** %10, align 8
  %24 = getelementptr inbounds float, float* %23, i64 1
  store float 0.000000e+00, float* %24, align 4
  %25 = load float*, float** %10, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  store float 0.000000e+00, float* %26, align 4
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @fz_strlcpy(i8* %27, i8* %28, i32 100)
  br label %30

30:                                               ; preds = %143, %5
  %31 = call i8* @fz_strsep(i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %13, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %144

33:                                               ; preds = %30
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %143

40:                                               ; preds = %33
  %41 = load i8*, i8** %13, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 47
  br i1 %45, label %46, label %82

46:                                               ; preds = %40
  %47 = load i8*, i8** %13, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %52, align 8
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i8*, i8** %13, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %59, align 8
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i8*, i8** %13, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %66, align 8
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i8*, i8** %13, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %73, align 8
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i8*, i8** %13, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %80, align 8
  br label %81

81:                                               ; preds = %79, %74
  br label %142

82:                                               ; preds = %40
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 0
  %88 = load float, float* %87, align 4
  %89 = load float*, float** %9, align 8
  store float %88, float* %89, align 4
  store i32 0, i32* %16, align 4
  br label %141

90:                                               ; preds = %82
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 0
  %96 = load float, float* %95, align 4
  %97 = load float*, float** %10, align 8
  %98 = getelementptr inbounds float, float* %97, i64 2
  store float %96, float* %98, align 4
  %99 = load float*, float** %10, align 8
  %100 = getelementptr inbounds float, float* %99, i64 1
  store float %96, float* %100, align 4
  %101 = load float*, float** %10, align 8
  %102 = getelementptr inbounds float, float* %101, i64 0
  store float %96, float* %102, align 4
  store i32 0, i32* %16, align 4
  br label %140

103:                                              ; preds = %90
  %104 = load i8*, i8** %13, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %120, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 0
  %109 = load float, float* %108, align 4
  %110 = load float*, float** %10, align 8
  %111 = getelementptr inbounds float, float* %110, i64 0
  store float %109, float* %111, align 4
  %112 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 1
  %113 = load float, float* %112, align 4
  %114 = load float*, float** %10, align 8
  %115 = getelementptr inbounds float, float* %114, i64 1
  store float %113, float* %115, align 4
  %116 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 2
  %117 = load float, float* %116, align 4
  %118 = load float*, float** %10, align 8
  %119 = getelementptr inbounds float, float* %118, i64 2
  store float %117, float* %119, align 4
  store i32 0, i32* %16, align 4
  br label %139

120:                                              ; preds = %103
  %121 = load i32, i32* %16, align 4
  %122 = icmp slt i32 %121, 3
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i8*, i8** %13, align 8
  %125 = call float @fz_strtof(i8* %124, i8** %14)
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 %127
  store float %125, float* %128, align 4
  br label %129

129:                                              ; preds = %123, %120
  %130 = load i8*, i8** %14, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %16, align 4
  br label %138

137:                                              ; preds = %129
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %137, %134
  br label %139

139:                                              ; preds = %138, %107
  br label %140

140:                                              ; preds = %139, %94
  br label %141

141:                                              ; preds = %140, %86
  br label %142

142:                                              ; preds = %141, %81
  br label %143

143:                                              ; preds = %142, %39
  br label %30

144:                                              ; preds = %30
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fz_strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @fz_strsep(i8**, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local float @fz_strtof(i8*, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

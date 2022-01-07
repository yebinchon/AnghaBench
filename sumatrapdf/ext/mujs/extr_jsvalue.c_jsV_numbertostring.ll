; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_jsV_numbertostring.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_jsV_numbertostring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@INT_MIN = common dso_local global double 0.000000e+00, align 8
@INT_MAX = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @jsV_numbertostring(i32* %0, i8* %1, double %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store double %2, double* %7, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %9, align 8
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  store i8* %17, i8** %10, align 8
  %18 = load double, double* %7, align 8
  %19 = fcmp oeq double %18, 0.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %165

21:                                               ; preds = %3
  %22 = load double, double* %7, align 8
  %23 = call i64 @isnan(double %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %165

26:                                               ; preds = %21
  %27 = load double, double* %7, align 8
  %28 = call i64 @isinf(double %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load double, double* %7, align 8
  %32 = fcmp olt double %31, 0.000000e+00
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  store i8* %34, i8** %4, align 8
  br label %165

35:                                               ; preds = %26
  %36 = load double, double* %7, align 8
  %37 = load double, double* @INT_MIN, align 8
  %38 = fcmp oge double %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load double, double* %7, align 8
  %41 = load double, double* @INT_MAX, align 8
  %42 = fcmp ole double %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load double, double* %7, align 8
  %45 = fptosi double %44 to i32
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = sitofp i32 %46 to double
  %48 = load double, double* %7, align 8
  %49 = fcmp oeq double %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i8* @js_itoa(i8* %51, i32 %52)
  store i8* %53, i8** %4, align 8
  br label %165

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %39, %35
  %56 = load double, double* %7, align 8
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %58 = call i32 @js_grisu2(double %56, i8* %57, i32* %11)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %13, align 4
  %62 = load double, double* %7, align 8
  %63 = call i64 @signbit(double %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %9, align 8
  store i8 45, i8* %66, align 1
  br label %68

68:                                               ; preds = %65, %55
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, -5
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %13, align 4
  %73 = icmp sgt i32 %72, 21
  br i1 %73, label %74, label %103

74:                                               ; preds = %71, %68
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %10, align 8
  %77 = load i8, i8* %75, align 1
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  store i8 %77, i8* %78, align 1
  %80 = load i32, i32* %12, align 4
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %98

82:                                               ; preds = %74
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %15, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %9, align 8
  store i8 46, i8* %85, align 1
  br label %87

87:                                               ; preds = %91, %82
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %15, align 4
  %90 = icmp ne i32 %88, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i8*, i8** %10, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %10, align 8
  %94 = load i8, i8* %92, align 1
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %9, align 8
  store i8 %94, i8* %95, align 1
  br label %87

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %74
  %99 = load i8*, i8** %9, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 %100, 1
  %102 = call i32 @js_fmtexp(i8* %99, i32 %101)
  br label %163

103:                                              ; preds = %71
  %104 = load i32, i32* %13, align 4
  %105 = icmp sle i32 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %103
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %9, align 8
  store i8 48, i8* %107, align 1
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %9, align 8
  store i8 46, i8* %109, align 1
  br label %111

111:                                              ; preds = %115, %106
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  %114 = icmp slt i32 %112, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %9, align 8
  store i8 48, i8* %116, align 1
  br label %111

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %123, %118
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %12, align 4
  %122 = icmp sgt i32 %120, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i8*, i8** %10, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %10, align 8
  %126 = load i8, i8* %124, align 1
  %127 = load i8*, i8** %9, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %9, align 8
  store i8 %126, i8* %127, align 1
  br label %119

129:                                              ; preds = %119
  %130 = load i8*, i8** %9, align 8
  store i8 0, i8* %130, align 1
  br label %162

131:                                              ; preds = %103
  br label %132

132:                                              ; preds = %151, %131
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %12, align 4
  %135 = icmp sgt i32 %133, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %132
  %137 = load i8*, i8** %10, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %10, align 8
  %139 = load i8, i8* %137, align 1
  %140 = load i8*, i8** %9, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %9, align 8
  store i8 %139, i8* %140, align 1
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %13, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %136
  %146 = load i32, i32* %12, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i8*, i8** %9, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %9, align 8
  store i8 46, i8* %149, align 1
  br label %151

151:                                              ; preds = %148, %145, %136
  br label %132

152:                                              ; preds = %132
  br label %153

153:                                              ; preds = %157, %152
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %13, align 4
  %156 = icmp sgt i32 %154, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i8*, i8** %9, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %9, align 8
  store i8 48, i8* %158, align 1
  br label %153

160:                                              ; preds = %153
  %161 = load i8*, i8** %9, align 8
  store i8 0, i8* %161, align 1
  br label %162

162:                                              ; preds = %160, %129
  br label %163

163:                                              ; preds = %162, %98
  %164 = load i8*, i8** %6, align 8
  store i8* %164, i8** %4, align 8
  br label %165

165:                                              ; preds = %163, %50, %30, %25, %20
  %166 = load i8*, i8** %4, align 8
  ret i8* %166
}

declare dso_local i64 @isnan(double) #1

declare dso_local i64 @isinf(double) #1

declare dso_local i8* @js_itoa(i8*, i32) #1

declare dso_local i32 @js_grisu2(double, i8*, i32*) #1

declare dso_local i64 @signbit(double) #1

declare dso_local i32 @js_fmtexp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

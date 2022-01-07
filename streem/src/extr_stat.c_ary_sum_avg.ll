; ModuleID = '/home/carl/AnghaBench/streem/src/extr_stat.c_ary_sum_avg.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_stat.c_ary_sum_avg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"a|v\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, i32)* @ary_sum_avg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ary_sum_avg(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %16, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @strm_get_args(i32* %23, i32 %24, i32* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32** %14, i32* %13, i32* %17)
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %81

29:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %77, %29
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %30
  %35 = load i32*, i32** %14, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strm_number_p(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @STRM_NG, align 4
  store i32 %43, i32* %6, align 4
  br label %152

44:                                               ; preds = %34
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call double @strm_value_float(i32 %49)
  store double %50, double* %18, align 8
  %51 = load double, double* %15, align 8
  %52 = load double, double* %18, align 8
  %53 = fadd double %51, %52
  store double %53, double* %19, align 8
  %54 = load double, double* %15, align 8
  %55 = call i64 @fabs(double %54)
  %56 = load double, double* %18, align 8
  %57 = call i64 @fabs(double %56)
  %58 = icmp sge i64 %55, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %44
  %60 = load double, double* %15, align 8
  %61 = load double, double* %19, align 8
  %62 = fsub double %60, %61
  %63 = load double, double* %18, align 8
  %64 = fadd double %62, %63
  %65 = load double, double* %16, align 8
  %66 = fadd double %65, %64
  store double %66, double* %16, align 8
  br label %75

67:                                               ; preds = %44
  %68 = load double, double* %18, align 8
  %69 = load double, double* %19, align 8
  %70 = fsub double %68, %69
  %71 = load double, double* %15, align 8
  %72 = fadd double %70, %71
  %73 = load double, double* %16, align 8
  %74 = fadd double %73, %72
  store double %74, double* %16, align 8
  br label %75

75:                                               ; preds = %67, %59
  %76 = load double, double* %19, align 8
  store double %76, double* %15, align 8
  br label %77

77:                                               ; preds = %75
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %30

80:                                               ; preds = %30
  br label %133

81:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %129, %81
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %132

86:                                               ; preds = %82
  %87 = load i32*, i32** %7, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %17, align 4
  %94 = call i32 @convert_number(i32* %87, i32 %92, i32 %93)
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %20, align 4
  %96 = call i32 @strm_number_p(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %86
  %99 = load i32, i32* @STRM_NG, align 4
  store i32 %99, i32* %6, align 4
  br label %152

100:                                              ; preds = %86
  %101 = load i32, i32* %20, align 4
  %102 = call double @strm_value_float(i32 %101)
  store double %102, double* %21, align 8
  %103 = load double, double* %15, align 8
  %104 = load double, double* %21, align 8
  %105 = fadd double %103, %104
  store double %105, double* %22, align 8
  %106 = load double, double* %15, align 8
  %107 = call i64 @fabs(double %106)
  %108 = load double, double* %21, align 8
  %109 = call i64 @fabs(double %108)
  %110 = icmp sge i64 %107, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %100
  %112 = load double, double* %15, align 8
  %113 = load double, double* %22, align 8
  %114 = fsub double %112, %113
  %115 = load double, double* %21, align 8
  %116 = fadd double %114, %115
  %117 = load double, double* %16, align 8
  %118 = fadd double %117, %116
  store double %118, double* %16, align 8
  br label %127

119:                                              ; preds = %100
  %120 = load double, double* %21, align 8
  %121 = load double, double* %22, align 8
  %122 = fsub double %120, %121
  %123 = load double, double* %15, align 8
  %124 = fadd double %122, %123
  %125 = load double, double* %16, align 8
  %126 = fadd double %125, %124
  store double %126, double* %16, align 8
  br label %127

127:                                              ; preds = %119, %111
  %128 = load double, double* %22, align 8
  store double %128, double* %15, align 8
  br label %129

129:                                              ; preds = %127
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %82

132:                                              ; preds = %82
  br label %133

133:                                              ; preds = %132, %80
  %134 = load double, double* %16, align 8
  %135 = load double, double* %15, align 8
  %136 = fadd double %135, %134
  store double %136, double* %15, align 8
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %133
  %140 = load double, double* %15, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sitofp i32 %141 to double
  %143 = fdiv double %140, %142
  %144 = call i32 @strm_float_value(double %143)
  %145 = load i32*, i32** %10, align 8
  store i32 %144, i32* %145, align 4
  br label %150

146:                                              ; preds = %133
  %147 = load double, double* %15, align 8
  %148 = call i32 @strm_float_value(double %147)
  %149 = load i32*, i32** %10, align 8
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %146, %139
  %151 = load i32, i32* @STRM_OK, align 4
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %150, %98, %42
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32**, i32*, i32*) #1

declare dso_local i32 @strm_number_p(i32) #1

declare dso_local double @strm_value_float(i32) #1

declare dso_local i64 @fabs(double) #1

declare dso_local i32 @convert_number(i32*, i32, i32) #1

declare dso_local i32 @strm_float_value(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

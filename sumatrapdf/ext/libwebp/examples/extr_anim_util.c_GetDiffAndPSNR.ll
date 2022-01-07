; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_anim_util.c_GetDiffAndPSNR.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_anim_util.c_GetDiffAndPSNR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kNumChannels = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetDiffAndPSNR(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5, double* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store double* %6, double** %14, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @kNumChannels, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* @kNumChannels, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %16, align 4
  store double 0.000000e+00, double* %17, align 8
  store double 0.000000e+00, double* %18, align 8
  store i32 0, i32* %20, align 4
  br label %30

30:                                               ; preds = %133, %7
  %31 = load i32, i32* %20, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %136

34:                                               ; preds = %30
  store i32 0, i32* %19, align 4
  br label %35

35:                                               ; preds = %128, %34
  %36 = load i32, i32* %19, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %132

39:                                               ; preds = %35
  %40 = load i32, i32* %20, align 4
  %41 = sext i32 %40 to i64
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %41, %43
  %45 = load i32, i32* %19, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %44, %46
  store i64 %47, i64* %22, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i64, i64* %22, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %49, %51
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %23, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load i64, i64* %22, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %56, %58
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %24, align 4
  %62 = load i32, i32* %23, align 4
  %63 = load i32, i32* %24, align 4
  %64 = call i32 @Accumulate(i32 %62, i32 %63, double* %17, double* %18)
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %92, label %67

67:                                               ; preds = %39
  store i32 0, i32* %21, align 4
  br label %68

68:                                               ; preds = %88, %67
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  %73 = load i32*, i32** %8, align 8
  %74 = load i64, i64* %22, align 8
  %75 = load i32, i32* %21, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %74, %76
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i64, i64* %22, align 8
  %82 = load i32, i32* %21, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %81, %83
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @Accumulate(i32 %79, i32 %86, double* %17, double* %18)
  br label %88

88:                                               ; preds = %72
  %89 = load i32, i32* %21, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %21, align 4
  br label %68

91:                                               ; preds = %68
  br label %127

92:                                               ; preds = %39
  store i32 0, i32* %21, align 4
  br label %93

93:                                               ; preds = %123, %92
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %126

97:                                               ; preds = %93
  %98 = load i32*, i32** %8, align 8
  %99 = load i64, i64* %22, align 8
  %100 = load i32, i32* %21, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 %99, %101
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %23, align 4
  %106 = mul nsw i32 %104, %105
  %107 = sitofp i32 %106 to double
  %108 = fdiv double %107, 2.550000e+02
  %109 = fptosi double %108 to i32
  %110 = load i32*, i32** %9, align 8
  %111 = load i64, i64* %22, align 8
  %112 = load i32, i32* %21, align 4
  %113 = sext i32 %112 to i64
  %114 = add i64 %111, %113
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %24, align 4
  %118 = mul nsw i32 %116, %117
  %119 = sitofp i32 %118 to double
  %120 = fdiv double %119, 2.550000e+02
  %121 = fptosi double %120 to i32
  %122 = call i32 @Accumulate(i32 %109, i32 %121, double* %17, double* %18)
  br label %123

123:                                              ; preds = %97
  %124 = load i32, i32* %21, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %21, align 4
  br label %93

126:                                              ; preds = %93
  br label %127

127:                                              ; preds = %126, %91
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* @kNumChannels, align 4
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %19, align 4
  br label %35

132:                                              ; preds = %35
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %20, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %20, align 4
  br label %30

136:                                              ; preds = %30
  %137 = load double, double* %17, align 8
  %138 = fptosi double %137 to i32
  %139 = load i32*, i32** %13, align 8
  store i32 %138, i32* %139, align 4
  %140 = load i32*, i32** %13, align 8
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = load double*, double** %14, align 8
  store double 9.900000e+01, double* %144, align 8
  br label %158

145:                                              ; preds = %136
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %11, align 4
  %148 = mul nsw i32 %146, %147
  %149 = sitofp i32 %148 to double
  %150 = load double, double* %18, align 8
  %151 = fdiv double %150, %149
  store double %151, double* %18, align 8
  %152 = load double, double* %18, align 8
  %153 = fdiv double 6.502500e+04, %152
  %154 = fptosi double %153 to i32
  %155 = call double @log(i32 %154)
  %156 = fmul double 0x40115F2CEBF15542, %155
  %157 = load double*, double** %14, align 8
  store double %156, double* %157, align 8
  br label %158

158:                                              ; preds = %145, %143
  ret void
}

declare dso_local i32 @Accumulate(i32, i32, double*, double*) #1

declare dso_local double @log(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

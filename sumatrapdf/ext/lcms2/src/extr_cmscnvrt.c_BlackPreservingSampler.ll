; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_BlackPreservingSampler.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_BlackPreservingSampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, double, i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, double*, double*, i8*)* @BlackPreservingSampler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BlackPreservingSampler(i32 %0, double* %1, double* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x double], align 16
  %12 = alloca [4 x double], align 16
  %13 = alloca [4 x double], align 16
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %6, align 4
  store double* %1, double** %7, align 8
  store double* %2, double** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %20, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %36, %4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load double*, double** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %27, i64 %29
  %31 = load double, double* %30, align 8
  %32 = fdiv double %31, 6.553500e+04
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %34
  store double %32, double* %35, align 8
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %23

39:                                               ; preds = %23
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 3
  %45 = load double, double* %44, align 8
  %46 = call double @cmsEvalToneCurveFloat(i32 %40, i32 %43, double %45)
  %47 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 3
  store double %46, double* %47, align 8
  %48 = load double*, double** %7, align 8
  %49 = getelementptr inbounds double, double* %48, i64 0
  %50 = load double, double* %49, align 8
  %51 = fcmp oeq double %50, 0.000000e+00
  br i1 %51, label %52, label %76

52:                                               ; preds = %39
  %53 = load double*, double** %7, align 8
  %54 = getelementptr inbounds double, double* %53, i64 1
  %55 = load double, double* %54, align 8
  %56 = fcmp oeq double %55, 0.000000e+00
  br i1 %56, label %57, label %76

57:                                               ; preds = %52
  %58 = load double*, double** %7, align 8
  %59 = getelementptr inbounds double, double* %58, i64 2
  %60 = load double, double* %59, align 8
  %61 = fcmp oeq double %60, 0.000000e+00
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load double*, double** %8, align 8
  %64 = getelementptr inbounds double, double* %63, i64 2
  store double 0.000000e+00, double* %64, align 8
  %65 = load double*, double** %8, align 8
  %66 = getelementptr inbounds double, double* %65, i64 1
  store double 0.000000e+00, double* %66, align 8
  %67 = load double*, double** %8, align 8
  %68 = getelementptr inbounds double, double* %67, i64 0
  store double 0.000000e+00, double* %68, align 8
  %69 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 3
  %70 = load double, double* %69, align 8
  %71 = fmul double %70, 6.553500e+04
  %72 = call double @_cmsQuickSaturateWord(double %71)
  %73 = load double*, double** %8, align 8
  %74 = getelementptr inbounds double, double* %73, i64 3
  store double %72, double* %74, align 8
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %5, align 4
  br label %221

76:                                               ; preds = %57, %52, %39
  %77 = load i32, i32* %6, align 4
  %78 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 0
  %79 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @cmsPipelineEvalFloat(i32 %77, double* %78, double* %79, i32 %82)
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %98, %76
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 4
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 %89
  %91 = load double, double* %90, align 8
  %92 = fmul double %91, 6.553500e+04
  %93 = call double @_cmsQuickSaturateWord(double %92)
  %94 = load double*, double** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %94, i64 %96
  store double %93, double* %97, align 8
  br label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %84

101:                                              ; preds = %84
  %102 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 3
  %103 = load double, double* %102, align 8
  %104 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 3
  %105 = load double, double* %104, align 8
  %106 = fsub double %103, %105
  %107 = call double @llvm.fabs.f64(double %106)
  %108 = fcmp olt double %107, 0x3F08001800180018
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %5, align 4
  br label %221

111:                                              ; preds = %101
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load double*, double** %8, align 8
  %117 = call i32 @cmsDoTransform(i32 %112, i32 %115, double* %116, double* %18, i32 1)
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  %123 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 0
  %124 = call i32 @cmsDoTransform(i32 %118, i32 %121, double* %122, double* %123, i32 1)
  %125 = load i32, i32* %6, align 4
  %126 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 0
  %127 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  %128 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @cmsPipelineEvalReverseFloat(i32 %125, double* %126, double* %127, double* %128, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %111
  %135 = load i32, i32* @TRUE, align 4
  store i32 %135, i32* %5, align 4
  br label %221

136:                                              ; preds = %111
  %137 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 3
  %138 = load double, double* %137, align 8
  %139 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 3
  store double %138, double* %139, align 8
  %140 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  %141 = load double, double* %140, align 16
  %142 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 1
  %143 = load double, double* %142, align 8
  %144 = fadd double %141, %143
  %145 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 2
  %146 = load double, double* %145, align 16
  %147 = fadd double %144, %146
  store double %147, double* %14, align 8
  %148 = load double, double* %14, align 8
  %149 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 3
  %150 = load double, double* %149, align 8
  %151 = fadd double %148, %150
  store double %151, double* %15, align 8
  %152 = load double, double* %15, align 8
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load double, double* %154, align 8
  %156 = fcmp ogt double %152, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %136
  %158 = load double, double* %15, align 8
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load double, double* %160, align 8
  %162 = fsub double %158, %161
  %163 = load double, double* %14, align 8
  %164 = fdiv double %162, %163
  %165 = fsub double 1.000000e+00, %164
  store double %165, double* %17, align 8
  %166 = load double, double* %17, align 8
  %167 = fcmp olt double %166, 0.000000e+00
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  store double 0.000000e+00, double* %17, align 8
  br label %169

169:                                              ; preds = %168, %157
  br label %171

170:                                              ; preds = %136
  store double 1.000000e+00, double* %17, align 8
  br label %171

171:                                              ; preds = %170, %169
  %172 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  %173 = load double, double* %172, align 16
  %174 = load double, double* %17, align 8
  %175 = fmul double %173, %174
  %176 = fmul double %175, 6.553500e+04
  %177 = call double @_cmsQuickSaturateWord(double %176)
  %178 = load double*, double** %8, align 8
  %179 = getelementptr inbounds double, double* %178, i64 0
  store double %177, double* %179, align 8
  %180 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 1
  %181 = load double, double* %180, align 8
  %182 = load double, double* %17, align 8
  %183 = fmul double %181, %182
  %184 = fmul double %183, 6.553500e+04
  %185 = call double @_cmsQuickSaturateWord(double %184)
  %186 = load double*, double** %8, align 8
  %187 = getelementptr inbounds double, double* %186, i64 1
  store double %185, double* %187, align 8
  %188 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 2
  %189 = load double, double* %188, align 16
  %190 = load double, double* %17, align 8
  %191 = fmul double %189, %190
  %192 = fmul double %191, 6.553500e+04
  %193 = call double @_cmsQuickSaturateWord(double %192)
  %194 = load double*, double** %8, align 8
  %195 = getelementptr inbounds double, double* %194, i64 2
  store double %193, double* %195, align 8
  %196 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 3
  %197 = load double, double* %196, align 8
  %198 = fmul double %197, 6.553500e+04
  %199 = call double @_cmsQuickSaturateWord(double %198)
  %200 = load double*, double** %8, align 8
  %201 = getelementptr inbounds double, double* %200, i64 3
  store double %199, double* %201, align 8
  %202 = load i32, i32* %6, align 4
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load double*, double** %8, align 8
  %207 = call i32 @cmsDoTransform(i32 %202, i32 %205, double* %206, double* %19, i32 1)
  %208 = load i32, i32* %6, align 4
  %209 = call double @cmsDeltaE(i32 %208, double* %18, double* %19)
  store double %209, double* %16, align 8
  %210 = load double, double* %16, align 8
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  %213 = load double, double* %212, align 8
  %214 = fcmp ogt double %210, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %171
  %216 = load double, double* %16, align 8
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 1
  store double %216, double* %218, align 8
  br label %219

219:                                              ; preds = %215, %171
  %220 = load i32, i32* @TRUE, align 4
  store i32 %220, i32* %5, align 4
  br label %221

221:                                              ; preds = %219, %134, %109, %62
  %222 = load i32, i32* %5, align 4
  ret i32 %222
}

declare dso_local double @cmsEvalToneCurveFloat(i32, i32, double) #1

declare dso_local double @_cmsQuickSaturateWord(double) #1

declare dso_local i32 @cmsPipelineEvalFloat(i32, double*, double*, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @cmsDoTransform(i32, i32, double*, double*, i32) #1

declare dso_local i32 @cmsPipelineEvalReverseFloat(i32, double*, double*, double*, i32) #1

declare dso_local double @cmsDeltaE(i32, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

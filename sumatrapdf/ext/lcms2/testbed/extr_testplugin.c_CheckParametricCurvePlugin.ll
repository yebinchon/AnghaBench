; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckParametricCurvePlugin.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckParametricCurvePlugin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CurvePluginSample = common dso_local global i32 0, align 4
@CurvePluginSample2 = common dso_local global i32 0, align 4
@TYPE_SIN = common dso_local global i32 0, align 4
@TYPE_COS = common dso_local global i32 0, align 4
@TYPE_TAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"0.10\00", align 1
@M_PI = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"0.60\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"0.90\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckParametricCurvePlugin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca double, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store double 1.000000e+00, double* %9, align 8
  %10 = call i32* @WatchDogContext(i32* null)
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @cmsPlugin(i32* %11, i32* @CurvePluginSample)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32* @DupContext(i32* %13, i32* null)
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @cmsPlugin(i32* %15, i32* @CurvePluginSample2)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @TYPE_SIN, align 4
  %19 = call i32* @cmsBuildParametricToneCurve(i32* %17, i32 %18, double* %9)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @TYPE_COS, align 4
  %22 = call i32* @cmsBuildParametricToneCurve(i32* %20, i32 %21, double* %9)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @TYPE_TAN, align 4
  %25 = call i32* @cmsBuildParametricToneCurve(i32* %23, i32 %24, double* %9)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* @cmsReverseToneCurve(i32* %26, i32* %27)
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* @cmsReverseToneCurve(i32* %29, i32* %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @cmsEvalToneCurveFloat(i32* %32, i32* %33, float 0x3FB99999A0000000)
  %35 = load double, double* @M_PI, align 8
  %36 = fmul double 1.000000e-01, %35
  %37 = call double @sin(double %36) #3
  %38 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %34, double %37, double 1.000000e-03)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %0
  br label %201

41:                                               ; preds = %0
  %42 = load i32*, i32** %3, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @cmsEvalToneCurveFloat(i32* %42, i32* %43, float 0x3FE3333340000000)
  %45 = load double, double* @M_PI, align 8
  %46 = fmul double 6.000000e-01, %45
  %47 = call double @sin(double %46) #3
  %48 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %44, double %47, double 1.000000e-03)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  br label %201

51:                                               ; preds = %41
  %52 = load i32*, i32** %3, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @cmsEvalToneCurveFloat(i32* %52, i32* %53, float 0x3FECCCCCC0000000)
  %55 = load double, double* @M_PI, align 8
  %56 = fmul double 9.000000e-01, %55
  %57 = call double @sin(double %56) #3
  %58 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %54, double %57, double 1.000000e-03)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  br label %201

61:                                               ; preds = %51
  %62 = load i32*, i32** %3, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @cmsEvalToneCurveFloat(i32* %62, i32* %63, float 0x3FB99999A0000000)
  %65 = load double, double* @M_PI, align 8
  %66 = fmul double 1.000000e-01, %65
  %67 = call double @cos(double %66) #3
  %68 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %64, double %67, double 1.000000e-03)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  br label %201

71:                                               ; preds = %61
  %72 = load i32*, i32** %3, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @cmsEvalToneCurveFloat(i32* %72, i32* %73, float 0x3FE3333340000000)
  %75 = load double, double* @M_PI, align 8
  %76 = fmul double 6.000000e-01, %75
  %77 = call double @cos(double %76) #3
  %78 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %74, double %77, double 1.000000e-03)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %71
  br label %201

81:                                               ; preds = %71
  %82 = load i32*, i32** %3, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @cmsEvalToneCurveFloat(i32* %82, i32* %83, float 0x3FECCCCCC0000000)
  %85 = load double, double* @M_PI, align 8
  %86 = fmul double 9.000000e-01, %85
  %87 = call double @cos(double %86) #3
  %88 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %84, double %87, double 1.000000e-03)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %81
  br label %201

91:                                               ; preds = %81
  %92 = load i32*, i32** %3, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @cmsEvalToneCurveFloat(i32* %92, i32* %93, float 0x3FB99999A0000000)
  %95 = load double, double* @M_PI, align 8
  %96 = fmul double 1.000000e-01, %95
  %97 = call double @tan(double %96) #3
  %98 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %94, double %97, double 1.000000e-03)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %91
  br label %201

101:                                              ; preds = %91
  %102 = load i32*, i32** %3, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @cmsEvalToneCurveFloat(i32* %102, i32* %103, float 0x3FE3333340000000)
  %105 = load double, double* @M_PI, align 8
  %106 = fmul double 6.000000e-01, %105
  %107 = call double @tan(double %106) #3
  %108 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %104, double %107, double 1.000000e-03)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %101
  br label %201

111:                                              ; preds = %101
  %112 = load i32*, i32** %3, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @cmsEvalToneCurveFloat(i32* %112, i32* %113, float 0x3FECCCCCC0000000)
  %115 = load double, double* @M_PI, align 8
  %116 = fmul double 9.000000e-01, %115
  %117 = call double @tan(double %116) #3
  %118 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %114, double %117, double 1.000000e-03)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %111
  br label %201

121:                                              ; preds = %111
  %122 = load i32*, i32** %3, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @cmsEvalToneCurveFloat(i32* %122, i32* %123, float 0x3FB99999A0000000)
  %125 = call double @asin(double 1.000000e-01) #3
  %126 = load double, double* @M_PI, align 8
  %127 = fdiv double %125, %126
  %128 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %124, double %127, double 1.000000e-03)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %121
  br label %201

131:                                              ; preds = %121
  %132 = load i32*, i32** %3, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @cmsEvalToneCurveFloat(i32* %132, i32* %133, float 0x3FE3333340000000)
  %135 = call double @asin(double 6.000000e-01) #3
  %136 = load double, double* @M_PI, align 8
  %137 = fdiv double %135, %136
  %138 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %134, double %137, double 1.000000e-03)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %131
  br label %201

141:                                              ; preds = %131
  %142 = load i32*, i32** %3, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = call i32 @cmsEvalToneCurveFloat(i32* %142, i32* %143, float 0x3FECCCCCC0000000)
  %145 = call double @asin(double 9.000000e-01) #3
  %146 = load double, double* @M_PI, align 8
  %147 = fdiv double %145, %146
  %148 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %144, double %147, double 1.000000e-03)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %141
  br label %201

151:                                              ; preds = %141
  %152 = load i32*, i32** %3, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @cmsEvalToneCurveFloat(i32* %152, i32* %153, float 0x3FB99999A0000000)
  %155 = call double @acos(double 1.000000e-01) #3
  %156 = load double, double* @M_PI, align 8
  %157 = fdiv double %155, %156
  %158 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %154, double %157, double 1.000000e-03)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %151
  br label %201

161:                                              ; preds = %151
  %162 = load i32*, i32** %3, align 8
  %163 = load i32*, i32** %8, align 8
  %164 = call i32 @cmsEvalToneCurveFloat(i32* %162, i32* %163, float 0x3FE3333340000000)
  %165 = call double @acos(double 6.000000e-01) #3
  %166 = load double, double* @M_PI, align 8
  %167 = fdiv double %165, %166
  %168 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %164, double %167, double 1.000000e-03)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %161
  br label %201

171:                                              ; preds = %161
  %172 = load i32*, i32** %3, align 8
  %173 = load i32*, i32** %8, align 8
  %174 = call i32 @cmsEvalToneCurveFloat(i32* %172, i32* %173, float 0x3FECCCCCC0000000)
  %175 = call double @acos(double 9.000000e-01) #3
  %176 = load double, double* @M_PI, align 8
  %177 = fdiv double %175, %176
  %178 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %174, double %177, double 1.000000e-03)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %171
  br label %201

181:                                              ; preds = %171
  %182 = load i32*, i32** %3, align 8
  %183 = load i32*, i32** %4, align 8
  %184 = call i32 @cmsFreeToneCurve(i32* %182, i32* %183)
  %185 = load i32*, i32** %3, align 8
  %186 = load i32*, i32** %5, align 8
  %187 = call i32 @cmsFreeToneCurve(i32* %185, i32* %186)
  %188 = load i32*, i32** %3, align 8
  %189 = load i32*, i32** %6, align 8
  %190 = call i32 @cmsFreeToneCurve(i32* %188, i32* %189)
  %191 = load i32*, i32** %3, align 8
  %192 = load i32*, i32** %7, align 8
  %193 = call i32 @cmsFreeToneCurve(i32* %191, i32* %192)
  %194 = load i32*, i32** %3, align 8
  %195 = load i32*, i32** %8, align 8
  %196 = call i32 @cmsFreeToneCurve(i32* %194, i32* %195)
  %197 = load i32*, i32** %2, align 8
  %198 = call i32 @cmsDeleteContext(i32* %197)
  %199 = load i32*, i32** %3, align 8
  %200 = call i32 @cmsDeleteContext(i32* %199)
  store i32 1, i32* %1, align 4
  br label %226

201:                                              ; preds = %180, %170, %160, %150, %140, %130, %120, %110, %100, %90, %80, %70, %60, %50, %40
  %202 = load i32*, i32** %3, align 8
  %203 = load i32*, i32** %4, align 8
  %204 = call i32 @cmsFreeToneCurve(i32* %202, i32* %203)
  %205 = load i32*, i32** %3, align 8
  %206 = load i32*, i32** %7, align 8
  %207 = call i32 @cmsFreeToneCurve(i32* %205, i32* %206)
  %208 = load i32*, i32** %3, align 8
  %209 = load i32*, i32** %5, align 8
  %210 = call i32 @cmsFreeToneCurve(i32* %208, i32* %209)
  %211 = load i32*, i32** %3, align 8
  %212 = load i32*, i32** %8, align 8
  %213 = call i32 @cmsFreeToneCurve(i32* %211, i32* %212)
  %214 = load i32*, i32** %2, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %201
  %217 = load i32*, i32** %2, align 8
  %218 = call i32 @cmsDeleteContext(i32* %217)
  br label %219

219:                                              ; preds = %216, %201
  %220 = load i32*, i32** %3, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i32*, i32** %3, align 8
  %224 = call i32 @cmsDeleteContext(i32* %223)
  br label %225

225:                                              ; preds = %222, %219
  store i32 0, i32* %1, align 4
  br label %226

226:                                              ; preds = %225, %181
  %227 = load i32, i32* %1, align 4
  ret i32 %227
}

declare dso_local i32* @WatchDogContext(i32*) #1

declare dso_local i32 @cmsPlugin(i32*, i32*) #1

declare dso_local i32* @DupContext(i32*, i32*) #1

declare dso_local i32* @cmsBuildParametricToneCurve(i32*, i32, double*) #1

declare dso_local i32* @cmsReverseToneCurve(i32*, i32*) #1

declare dso_local i32 @IsGoodVal(i8*, i32, double, double) #1

declare dso_local i32 @cmsEvalToneCurveFloat(i32*, i32*, float) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

; Function Attrs: nounwind
declare dso_local double @tan(double) #2

; Function Attrs: nounwind
declare dso_local double @asin(double) #2

; Function Attrs: nounwind
declare dso_local double @acos(double) #2

declare dso_local i32 @cmsFreeToneCurve(i32*, i32*) #1

declare dso_local i32 @cmsDeleteContext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmssm.c_ClosestLineToLine.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmssm.c_ClosestLineToLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@MATRIX_DET_TOLERANCE = common dso_local global double 0.000000e+00, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_5__*, %struct.TYPE_5__*)* @ClosestLineToLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ClosestLineToLine(i32 %0, i32* %1, %struct.TYPE_5__* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = call i32 @_cmsVEC3minus(i32 %21, i32* %20, i32* %23, i32* %25)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call double @_cmsVEC3dot(i32 %27, i32* %29, i32* %31)
  store double %32, double* %9, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call double @_cmsVEC3dot(i32 %33, i32* %35, i32* %37)
  store double %38, double* %10, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = call double @_cmsVEC3dot(i32 %39, i32* %41, i32* %43)
  store double %44, double* %11, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call double @_cmsVEC3dot(i32 %45, i32* %47, i32* %20)
  store double %48, double* %12, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = call double @_cmsVEC3dot(i32 %49, i32* %51, i32* %20)
  store double %52, double* %13, align 8
  %53 = load double, double* %9, align 8
  %54 = load double, double* %11, align 8
  %55 = fmul double %53, %54
  %56 = load double, double* %10, align 8
  %57 = load double, double* %10, align 8
  %58 = fmul double %56, %57
  %59 = fsub double %55, %58
  store double %59, double* %14, align 8
  %60 = load double, double* %14, align 8
  store double %60, double* %19, align 8
  store double %60, double* %17, align 8
  %61 = load double, double* %14, align 8
  %62 = load double, double* @MATRIX_DET_TOLERANCE, align 8
  %63 = fcmp olt double %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %4
  store double 0.000000e+00, double* %16, align 8
  store double 1.000000e+00, double* %17, align 8
  %65 = load double, double* %13, align 8
  store double %65, double* %18, align 8
  %66 = load double, double* %11, align 8
  store double %66, double* %19, align 8
  br label %99

67:                                               ; preds = %4
  %68 = load double, double* %10, align 8
  %69 = load double, double* %13, align 8
  %70 = fmul double %68, %69
  %71 = load double, double* %11, align 8
  %72 = load double, double* %12, align 8
  %73 = fmul double %71, %72
  %74 = fsub double %70, %73
  store double %74, double* %16, align 8
  %75 = load double, double* %9, align 8
  %76 = load double, double* %13, align 8
  %77 = fmul double %75, %76
  %78 = load double, double* %10, align 8
  %79 = load double, double* %12, align 8
  %80 = fmul double %78, %79
  %81 = fsub double %77, %80
  store double %81, double* %18, align 8
  %82 = load double, double* %16, align 8
  %83 = fcmp olt double %82, 0.000000e+00
  br i1 %83, label %84, label %87

84:                                               ; preds = %67
  store double 0.000000e+00, double* %16, align 8
  %85 = load double, double* %13, align 8
  store double %85, double* %18, align 8
  %86 = load double, double* %11, align 8
  store double %86, double* %19, align 8
  br label %98

87:                                               ; preds = %67
  %88 = load double, double* %16, align 8
  %89 = load double, double* %17, align 8
  %90 = fcmp ogt double %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load double, double* %17, align 8
  store double %92, double* %16, align 8
  %93 = load double, double* %13, align 8
  %94 = load double, double* %10, align 8
  %95 = fadd double %93, %94
  store double %95, double* %18, align 8
  %96 = load double, double* %11, align 8
  store double %96, double* %19, align 8
  br label %97

97:                                               ; preds = %91, %87
  br label %98

98:                                               ; preds = %97, %84
  br label %99

99:                                               ; preds = %98, %64
  %100 = load double, double* %18, align 8
  %101 = fcmp olt double %100, 0.000000e+00
  br i1 %101, label %102, label %120

102:                                              ; preds = %99
  store double 0.000000e+00, double* %18, align 8
  %103 = load double, double* %12, align 8
  %104 = fneg double %103
  %105 = fcmp olt double %104, 0.000000e+00
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store double 0.000000e+00, double* %16, align 8
  br label %119

107:                                              ; preds = %102
  %108 = load double, double* %12, align 8
  %109 = fneg double %108
  %110 = load double, double* %9, align 8
  %111 = fcmp ogt double %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load double, double* %17, align 8
  store double %113, double* %16, align 8
  br label %118

114:                                              ; preds = %107
  %115 = load double, double* %12, align 8
  %116 = fneg double %115
  store double %116, double* %16, align 8
  %117 = load double, double* %9, align 8
  store double %117, double* %17, align 8
  br label %118

118:                                              ; preds = %114, %112
  br label %119

119:                                              ; preds = %118, %106
  br label %150

120:                                              ; preds = %99
  %121 = load double, double* %18, align 8
  %122 = load double, double* %19, align 8
  %123 = fcmp ogt double %121, %122
  br i1 %123, label %124, label %149

124:                                              ; preds = %120
  %125 = load double, double* %19, align 8
  store double %125, double* %18, align 8
  %126 = load double, double* %12, align 8
  %127 = fneg double %126
  %128 = load double, double* %10, align 8
  %129 = fadd double %127, %128
  %130 = fcmp olt double %129, 0.000000e+00
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  store double 0.000000e+00, double* %16, align 8
  br label %148

132:                                              ; preds = %124
  %133 = load double, double* %12, align 8
  %134 = fneg double %133
  %135 = load double, double* %10, align 8
  %136 = fadd double %134, %135
  %137 = load double, double* %9, align 8
  %138 = fcmp ogt double %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load double, double* %17, align 8
  store double %140, double* %16, align 8
  br label %147

141:                                              ; preds = %132
  %142 = load double, double* %12, align 8
  %143 = fneg double %142
  %144 = load double, double* %10, align 8
  %145 = fadd double %143, %144
  store double %145, double* %16, align 8
  %146 = load double, double* %9, align 8
  store double %146, double* %17, align 8
  br label %147

147:                                              ; preds = %141, %139
  br label %148

148:                                              ; preds = %147, %131
  br label %149

149:                                              ; preds = %148, %120
  br label %150

150:                                              ; preds = %149, %119
  %151 = load double, double* %16, align 8
  %152 = call double @llvm.fabs.f64(double %151)
  %153 = load double, double* @MATRIX_DET_TOLERANCE, align 8
  %154 = fcmp olt double %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %160

156:                                              ; preds = %150
  %157 = load double, double* %16, align 8
  %158 = load double, double* %17, align 8
  %159 = fdiv double %157, %158
  br label %160

160:                                              ; preds = %156, %155
  %161 = phi double [ 0.000000e+00, %155 ], [ %159, %156 ]
  store double %161, double* %15, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %164 = load double, double* %15, align 8
  %165 = call i32 @GetPointOfLine(i32* %162, %struct.TYPE_5__* %163, double %164)
  %166 = load i32, i32* @TRUE, align 4
  ret i32 %166
}

declare dso_local i32 @_cmsVEC3minus(i32, i32*, i32*, i32*) #1

declare dso_local double @_cmsVEC3dot(i32, i32*, i32*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @GetPointOfLine(i32*, %struct.TYPE_5__*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

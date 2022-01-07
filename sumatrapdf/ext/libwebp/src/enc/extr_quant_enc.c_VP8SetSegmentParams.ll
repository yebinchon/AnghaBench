; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_quant_enc.c_VP8SetSegmentParams.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_quant_enc.c_VP8SetSegmentParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_11__*, i8*, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { double, i8* }
%struct.TYPE_9__ = type { i32 }

@SNS_TO_DQ = common dso_local global i32 0, align 4
@NUM_MB_SEGMENTS = common dso_local global i32 0, align 4
@MID_ALPHA = common dso_local global i32 0, align 4
@MAX_DQ_UV = common dso_local global i32 0, align 4
@MIN_DQ_UV = common dso_local global i32 0, align 4
@MAX_ALPHA = common dso_local global i32 0, align 4
@MIN_ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VP8SetSegmentParams(%struct.TYPE_12__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store float %1, float* %4, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 10
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @SNS_TO_DQ, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 7
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %19, %24
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+02
  %28 = fdiv double %27, 1.280000e+02
  store double %28, double* %9, align 8
  %29 = load float, float* %4, align 4
  %30 = fpext float %29 to double
  %31 = fdiv double %30, 1.000000e+02
  store double %31, double* %10, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 7
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %2
  %39 = load double, double* %10, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %43, 2.550000e+02
  %45 = fptosi double %44 to i32
  %46 = call double @QualityToJPEGCompression(double %39, i32 %45)
  br label %50

47:                                               ; preds = %2
  %48 = load double, double* %10, align 8
  %49 = call double @QualityToCompression(double %48)
  br label %50

50:                                               ; preds = %47, %38
  %51 = phi double [ %46, %38 ], [ %49, %47 ]
  store double %51, double* %11, align 8
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %88, %50
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %91

56:                                               ; preds = %52
  %57 = load double, double* %9, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 9
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = fmul double %57, %65
  %67 = fsub double 1.000000e+00, %66
  store double %67, double* %12, align 8
  %68 = load double, double* %11, align 8
  %69 = load double, double* %12, align 8
  %70 = call double @pow(double %68, double %69) #3
  store double %70, double* %13, align 8
  %71 = load double, double* %13, align 8
  %72 = fsub double 1.000000e+00, %71
  %73 = fmul double 1.270000e+02, %72
  %74 = fptosi double %73 to i32
  store i32 %74, i32* %14, align 4
  %75 = load double, double* %12, align 8
  %76 = fcmp ogt double %75, 0.000000e+00
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* %14, align 4
  %80 = call i8* @clip(i32 %79, i32 0, i32 127)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 9
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i8* %80, i8** %87, align 8
  br label %88

88:                                               ; preds = %56
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %52

91:                                               ; preds = %52
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 9
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 8
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %116, %91
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @NUM_MB_SEGMENTS, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %101
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 8
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 9
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  store i8* %108, i8** %115, align 8
  br label %116

116:                                              ; preds = %105
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %101

119:                                              ; preds = %101
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @MID_ALPHA, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load i32, i32* @MAX_DQ_UV, align 4
  %126 = load i32, i32* @MIN_DQ_UV, align 4
  %127 = sub nsw i32 %125, %126
  %128 = mul nsw i32 %124, %127
  %129 = load i32, i32* @MAX_ALPHA, align 4
  %130 = load i32, i32* @MIN_ALPHA, align 4
  %131 = sub nsw i32 %129, %130
  %132 = sdiv i32 %128, %131
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 7
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = mul nsw i32 %133, %138
  %140 = sdiv i32 %139, 100
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @MIN_DQ_UV, align 4
  %143 = load i32, i32* @MAX_DQ_UV, align 4
  %144 = call i8* @clip(i32 %141, i32 %142, i32 %143)
  %145 = ptrtoint i8* %144 to i32
  store i32 %145, i32* %6, align 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 7
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = mul nsw i32 -4, %150
  %152 = sdiv i32 %151, 100
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = call i8* @clip(i32 %153, i32 -15, i32 15)
  %155 = ptrtoint i8* %154 to i32
  store i32 %155, i32* %7, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 6
  store i64 0, i64* %157, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 5
  store i64 0, i64* %159, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 4
  store i64 0, i64* %161, align 8
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* %6, align 4
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %169 = call i32 @SetupFilterStrength(%struct.TYPE_12__* %168)
  %170 = load i32, i32* %8, align 4
  %171 = icmp sgt i32 %170, 1
  br i1 %171, label %172, label %175

172:                                              ; preds = %119
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %174 = call i32 @SimplifySegments(%struct.TYPE_12__* %173)
  br label %175

175:                                              ; preds = %172, %119
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %177 = call i32 @SetupMatrices(%struct.TYPE_12__* %176)
  ret void
}

declare dso_local double @QualityToJPEGCompression(double, i32) #1

declare dso_local double @QualityToCompression(double) #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @clip(i32, i32, i32) #1

declare dso_local i32 @SetupFilterStrength(%struct.TYPE_12__*) #1

declare dso_local i32 @SimplifySegments(%struct.TYPE_12__*) #1

declare dso_local i32 @SetupMatrices(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

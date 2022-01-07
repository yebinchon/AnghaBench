; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_allBench.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_allBench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i64 }

@BASE_CLEVEL = common dso_local global i32 0, align 4
@BMK_both = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Benchmarking failed \0A\00", align 1
@ERROR_RESULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"WinnerScore: %f \0A \00", align 1
@g_optmode = common dso_local global i32 0, align 4
@WORSE_RESULT = common dso_local global i32 0, align 4
@TIMELOOP_NANOSEC = common dso_local global double 0.000000e+00, align 8
@g_clockGranularity = common dso_local global i32 0, align 4
@VARIANCE = common dso_local global double 0.000000e+00, align 8
@BETTER_RESULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i64, i32, i32, i32, %struct.TYPE_13__*, i32)* @allBench to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allBench(%struct.TYPE_13__* %0, i64 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_13__* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_13__, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca %struct.TYPE_13__, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i64 %1, i64* %25, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %14, align 8
  store i32 %6, i32* %15, align 4
  store double 3.000000e+00, double* %17, align 8
  store double 3.000000e+00, double* %18, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @BASE_CLEVEL, align 4
  %28 = load i32, i32* @BMK_both, align 4
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @BMK_benchMemInvertible(i64 %30, i32 %26, i32 %27, i32* %12, i32 %28, i32 2)
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* %20, align 4
  %33 = call i32 @BMK_isSuccessful_benchOutcome(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %7
  %36 = call i32 (i8*, ...) @DEBUGOUTPUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ERROR_RESULT, align 4
  store i32 %37, i32* %8, align 4
  br label %218

38:                                               ; preds = %7
  %39 = load i32, i32* %20, align 4
  %40 = call { i64, i64 } @BMK_extract_benchResult(i32 %39)
  %41 = bitcast %struct.TYPE_13__* %21 to { i64, i64 }*
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 0
  %43 = extractvalue { i64, i64 } %40, 0
  store i64 %43, i64* %42, align 8
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 1
  %45 = extractvalue { i64, i64 } %40, 1
  store i64 %45, i64* %44, align 8
  %46 = bitcast %struct.TYPE_13__* %16 to i8*
  %47 = bitcast %struct.TYPE_13__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = bitcast %struct.TYPE_13__* %48 to { i64, i64 }*
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %52, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call double @resultScore(i64 %54, i64 %56, i64 %50, i32 %51)
  store double %57, double* %19, align 8
  %58 = load double, double* %19, align 8
  %59 = call i32 (i8*, ...) @DEBUGOUTPUT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), double %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %61 = bitcast %struct.TYPE_13__* %60 to i8*
  %62 = bitcast %struct.TYPE_13__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 16, i1 false)
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %38
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load i32, i32* @g_optmode, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @WORSE_RESULT, align 4
  store i32 %76, i32* %8, align 4
  br label %218

77:                                               ; preds = %72, %65, %38
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sitofp i64 %83 to double
  %85 = load double, double* @TIMELOOP_NANOSEC, align 8
  %86 = fmul double %84, %85
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sitofp i32 %88 to double
  %90 = fdiv double %86, %89
  store double %90, double* %22, align 8
  %91 = load double, double* %22, align 8
  %92 = load i32, i32* @g_clockGranularity, align 4
  %93 = mul nsw i32 2, %92
  %94 = sitofp i32 %93 to double
  %95 = fadd double %91, %94
  %96 = load double, double* %22, align 8
  %97 = fdiv double %95, %96
  store double %97, double* %17, align 8
  br label %98

98:                                               ; preds = %81, %77
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sitofp i64 %104 to double
  %106 = load double, double* @TIMELOOP_NANOSEC, align 8
  %107 = fmul double %105, %106
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = sitofp i32 %109 to double
  %111 = fdiv double %107, %110
  store double %111, double* %23, align 8
  %112 = load double, double* %23, align 8
  %113 = load i32, i32* @g_clockGranularity, align 4
  %114 = mul nsw i32 2, %113
  %115 = sitofp i32 %114 to double
  %116 = fadd double %112, %115
  %117 = load double, double* %23, align 8
  %118 = fdiv double %116, %117
  store double %118, double* %18, align 8
  br label %119

119:                                              ; preds = %102, %98
  %120 = bitcast %struct.TYPE_13__* %24 to i8*
  %121 = bitcast %struct.TYPE_13__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 16, i1 false)
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = sitofp i32 %123 to double
  %125 = load double, double* %17, align 8
  %126 = fmul double %124, %125
  %127 = load double, double* @VARIANCE, align 8
  %128 = fmul double %126, %127
  %129 = fptoui double %128 to i64
  %130 = trunc i64 %129 to i32
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  store i32 %130, i32* %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = sitofp i32 %133 to double
  %135 = load double, double* %18, align 8
  %136 = fmul double %134, %135
  %137 = load double, double* @VARIANCE, align 8
  %138 = fmul double %136, %137
  %139 = fptoui double %138 to i64
  %140 = trunc i64 %139 to i32
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* %15, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %119
  %145 = load i32, i32* %13, align 4
  %146 = bitcast %struct.TYPE_13__* %24 to { i64, i64 }*
  %147 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %146, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @feasible(i64 %148, i64 %150, i32 %145)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %168

153:                                              ; preds = %144, %119
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %170, label %156

156:                                              ; preds = %153
  %157 = load double, double* %19, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = bitcast %struct.TYPE_13__* %24 to { i64, i64 }*
  %162 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %161, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call double @resultScore(i64 %163, i64 %165, i64 %159, i32 %160)
  %167 = fcmp ogt double %157, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %156, %144
  %169 = load i32, i32* @WORSE_RESULT, align 4
  store i32 %169, i32* %8, align 4
  br label %218

170:                                              ; preds = %156, %153
  %171 = load i32, i32* %15, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %194, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = bitcast %struct.TYPE_13__* %16 to { i64, i64 }*
  %178 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %177, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call double @resultScore(i64 %179, i64 %181, i64 %175, i32 %176)
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* %13, align 4
  %187 = bitcast %struct.TYPE_13__* %183 to { i64, i64 }*
  %188 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %187, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = call double @resultScore(i64 %189, i64 %191, i64 %185, i32 %186)
  %193 = fcmp ogt double %182, %192
  br i1 %193, label %214, label %194

194:                                              ; preds = %173, %170
  %195 = load i32, i32* %15, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %216

197:                                              ; preds = %194
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %199 = load i32, i32* %13, align 4
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = bitcast %struct.TYPE_13__* %198 to { i64, i64 }*
  %203 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %202, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = bitcast %struct.TYPE_13__* %16 to { i64, i64 }*
  %208 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %207, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = call i64 @compareResultLT(i64 %204, i64 %206, i64 %209, i64 %211, i32 %199, i64 %201)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %197, %173
  %215 = load i32, i32* @BETTER_RESULT, align 4
  store i32 %215, i32* %8, align 4
  br label %218

216:                                              ; preds = %197, %194
  %217 = load i32, i32* @WORSE_RESULT, align 4
  store i32 %217, i32* %8, align 4
  br label %218

218:                                              ; preds = %216, %214, %168, %75, %35
  %219 = load i32, i32* %8, align 4
  ret i32 %219
}

declare dso_local i32 @BMK_benchMemInvertible(i64, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @BMK_isSuccessful_benchOutcome(i32) #1

declare dso_local i32 @DEBUGOUTPUT(i8*, ...) #1

declare dso_local { i64, i64 } @BMK_extract_benchResult(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local double @resultScore(i64, i64, i64, i32) #1

declare dso_local i32 @feasible(i64, i64, i32) #1

declare dso_local i64 @compareResultLT(i64, i64, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

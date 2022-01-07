; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Check3DinterpolationFloatTrilinear.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Check3DinterpolationFloatTrilinear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32, double*, double*, %struct.TYPE_7__*)* }

@__const.Check3DinterpolationFloatTrilinear.FloatTable = private unnamed_addr constant [24 x double] [double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 2.500000e-01, double 0.000000e+00, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01, double 2.500000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 2.500000e-01, double 1.000000e+00, double 5.000000e-01, double 0.000000e+00, double 1.000000e+00, double 5.000000e-01, double 2.500000e-01], align 16
@CMS_LERP_FLAGS_FLOAT = common dso_local global i32 0, align 4
@CMS_LERP_FLAGS_TRILINEAR = common dso_local global i32 0, align 4
@MaxErr = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [10 x i8] c"Channel 1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Channel 2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Channel 3\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"|Err|<%lf \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @Check3DinterpolationFloatTrilinear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Check3DinterpolationFloatTrilinear() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  %6 = alloca [24 x double], align 16
  %7 = bitcast [24 x double]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([24 x double]* @__const.Check3DinterpolationFloatTrilinear.FloatTable to i8*), i64 192, i1 false)
  %8 = call i32 (...) @DbgThread()
  %9 = getelementptr inbounds [24 x double], [24 x double]* %6, i64 0, i64 0
  %10 = load i32, i32* @CMS_LERP_FLAGS_FLOAT, align 4
  %11 = load i32, i32* @CMS_LERP_FLAGS_TRILINEAR, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.TYPE_7__* @_cmsComputeInterpParams(i32 %8, i32 2, i32 3, i32 3, double* %9, i32 %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %2, align 8
  store double 0.000000e+00, double* @MaxErr, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %59, %0
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 65535
  br i1 %16, label %17, label %62

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 6.553500e+04
  %21 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2
  store double %20, double* %21, align 16
  %22 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1
  store double %20, double* %22, align 8
  %23 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  store double %20, double* %23, align 16
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (i32, double*, double*, %struct.TYPE_7__*)*, i32 (i32, double*, double*, %struct.TYPE_7__*)** %26, align 8
  %28 = call i32 (...) @DbgThread()
  %29 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  %30 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = call i32 %27(i32 %28, double* %29, double* %30, %struct.TYPE_7__* %31)
  %33 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0
  %34 = load double, double* %33, align 16
  %35 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  %36 = load double, double* %35, align 16
  %37 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %34, double %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %17
  br label %72

40:                                               ; preds = %17
  %41 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 1
  %42 = load double, double* %41, align 8
  %43 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1
  %44 = load double, double* %43, align 8
  %45 = fdiv double %44, 2.000000e+00
  %46 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double %42, double %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %72

49:                                               ; preds = %40
  %50 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 2
  %51 = load double, double* %50, align 16
  %52 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2
  %53 = load double, double* %52, align 16
  %54 = fdiv double %53, 4.000000e+00
  %55 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), double %51, double %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %72

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %14

62:                                               ; preds = %14
  %63 = load double, double* @MaxErr, align 8
  %64 = fcmp ogt double %63, 0.000000e+00
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load double, double* @MaxErr, align 8
  %67 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), double %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = call i32 (...) @DbgThread()
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = call i32 @_cmsFreeInterpParams(i32 %69, %struct.TYPE_7__* %70)
  store i32 1, i32* %1, align 4
  br label %76

72:                                               ; preds = %57, %48, %39
  %73 = call i32 (...) @DbgThread()
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %75 = call i32 @_cmsFreeInterpParams(i32 %73, %struct.TYPE_7__* %74)
  store i32 0, i32* %1, align 4
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i32, i32* %1, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_7__* @_cmsComputeInterpParams(i32, i32, i32, i32, double*, i32) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32 @IsGoodFixed15_16(i8*, double, double) #2

declare dso_local i32 @printf(i8*, double) #2

declare dso_local i32 @_cmsFreeInterpParams(i32, %struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

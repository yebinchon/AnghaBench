; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Check3DinterpolationFloatTetrahedral.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Check3DinterpolationFloatTetrahedral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32, double*, double*, %struct.TYPE_7__*)* }

@__const.Check3DinterpolationFloatTetrahedral.FloatTable = private unnamed_addr constant [24 x double] [double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 2.500000e-01, double 0.000000e+00, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01, double 2.500000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 2.500000e-01, double 1.000000e+00, double 5.000000e-01, double 0.000000e+00, double 1.000000e+00, double 5.000000e-01, double 2.500000e-01], align 16
@CMS_LERP_FLAGS_FLOAT = common dso_local global i32 0, align 4
@MaxErr = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [10 x i8] c"Channel 1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Channel 2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Channel 3\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"|Err|<%lf \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @Check3DinterpolationFloatTetrahedral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Check3DinterpolationFloatTetrahedral() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  %6 = alloca [24 x double], align 16
  %7 = bitcast [24 x double]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([24 x double]* @__const.Check3DinterpolationFloatTetrahedral.FloatTable to i8*), i64 192, i1 false)
  %8 = call i32 (...) @DbgThread()
  %9 = getelementptr inbounds [24 x double], [24 x double]* %6, i64 0, i64 0
  %10 = load i32, i32* @CMS_LERP_FLAGS_FLOAT, align 4
  %11 = call %struct.TYPE_7__* @_cmsComputeInterpParams(i32 %8, i32 2, i32 3, i32 3, double* %9, i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %2, align 8
  store double 0.000000e+00, double* @MaxErr, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %57, %0
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 65535
  br i1 %14, label %15, label %60

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %17, 6.553500e+04
  %19 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2
  store double %18, double* %19, align 16
  %20 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1
  store double %18, double* %20, align 8
  %21 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  store double %18, double* %21, align 16
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32 (i32, double*, double*, %struct.TYPE_7__*)*, i32 (i32, double*, double*, %struct.TYPE_7__*)** %24, align 8
  %26 = call i32 (...) @DbgThread()
  %27 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  %28 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = call i32 %25(i32 %26, double* %27, double* %28, %struct.TYPE_7__* %29)
  %31 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0
  %32 = load double, double* %31, align 16
  %33 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  %34 = load double, double* %33, align 16
  %35 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %32, double %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %15
  br label %70

38:                                               ; preds = %15
  %39 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 1
  %40 = load double, double* %39, align 8
  %41 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1
  %42 = load double, double* %41, align 8
  %43 = fdiv double %42, 2.000000e+00
  %44 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double %40, double %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %70

47:                                               ; preds = %38
  %48 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 2
  %49 = load double, double* %48, align 16
  %50 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2
  %51 = load double, double* %50, align 16
  %52 = fdiv double %51, 4.000000e+00
  %53 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), double %49, double %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  br label %70

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %12

60:                                               ; preds = %12
  %61 = load double, double* @MaxErr, align 8
  %62 = fcmp ogt double %61, 0.000000e+00
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load double, double* @MaxErr, align 8
  %65 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), double %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = call i32 (...) @DbgThread()
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = call i32 @_cmsFreeInterpParams(i32 %67, %struct.TYPE_7__* %68)
  store i32 1, i32* %1, align 4
  br label %74

70:                                               ; preds = %55, %46, %37
  %71 = call i32 (...) @DbgThread()
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = call i32 @_cmsFreeInterpParams(i32 %71, %struct.TYPE_7__* %72)
  store i32 0, i32* %1, align 4
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32, i32* %1, align 4
  ret i32 %75
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

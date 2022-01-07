; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_ExaustiveCheck3DinterpolationFloatTrilinear.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_ExaustiveCheck3DinterpolationFloatTrilinear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32, double*, double*, %struct.TYPE_7__*)* }

@__const.ExaustiveCheck3DinterpolationFloatTrilinear.FloatTable = private unnamed_addr constant [24 x double] [double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 2.500000e-01, double 0.000000e+00, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01, double 2.500000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 2.500000e-01, double 1.000000e+00, double 5.000000e-01, double 0.000000e+00, double 1.000000e+00, double 5.000000e-01, double 2.500000e-01], align 16
@CMS_LERP_FLAGS_FLOAT = common dso_local global i32 0, align 4
@CMS_LERP_FLAGS_TRILINEAR = common dso_local global i32 0, align 4
@MaxErr = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [10 x i8] c"Channel 1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Channel 2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Channel 3\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"|Err|<%lf \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ExaustiveCheck3DinterpolationFloatTrilinear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExaustiveCheck3DinterpolationFloatTrilinear() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca [24 x double], align 16
  %9 = bitcast [24 x double]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([24 x double]* @__const.ExaustiveCheck3DinterpolationFloatTrilinear.FloatTable to i8*), i64 192, i1 false)
  %10 = call i32 (...) @DbgThread()
  %11 = getelementptr inbounds [24 x double], [24 x double]* %8, i64 0, i64 0
  %12 = load i32, i32* @CMS_LERP_FLAGS_FLOAT, align 4
  %13 = load i32, i32* @CMS_LERP_FLAGS_TRILINEAR, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.TYPE_7__* @_cmsComputeInterpParams(i32 %10, i32 2, i32 3, i32 3, double* %11, i32 %14)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %2, align 8
  store double 0.000000e+00, double* @MaxErr, align 8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %83, %0
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 255
  br i1 %18, label %19, label %86

19:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %79, %19
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 255
  br i1 %22, label %23, label %82

23:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %75, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 255
  br i1 %26, label %27, label %78

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 2.550000e+02
  %31 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  store double %30, double* %31, align 16
  %32 = load i32, i32* %4, align 4
  %33 = sitofp i32 %32 to double
  %34 = fdiv double %33, 2.550000e+02
  %35 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 1
  store double %34, double* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, 2.550000e+02
  %39 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 2
  store double %38, double* %39, align 16
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32 (i32, double*, double*, %struct.TYPE_7__*)*, i32 (i32, double*, double*, %struct.TYPE_7__*)** %42, align 8
  %44 = call i32 (...) @DbgThread()
  %45 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  %46 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = call i32 %43(i32 %44, double* %45, double* %46, %struct.TYPE_7__* %47)
  %49 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  %50 = load double, double* %49, align 16
  %51 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  %52 = load double, double* %51, align 16
  %53 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %50, double %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %27
  br label %96

56:                                               ; preds = %27
  %57 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  %58 = load double, double* %57, align 8
  %59 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 1
  %60 = load double, double* %59, align 8
  %61 = fdiv double %60, 2.000000e+00
  %62 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double %58, double %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  br label %96

65:                                               ; preds = %56
  %66 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  %67 = load double, double* %66, align 16
  %68 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 2
  %69 = load double, double* %68, align 16
  %70 = fdiv double %69, 4.000000e+00
  %71 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), double %67, double %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  br label %96

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %24

78:                                               ; preds = %24
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %20

82:                                               ; preds = %20
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %16

86:                                               ; preds = %16
  %87 = load double, double* @MaxErr, align 8
  %88 = fcmp ogt double %87, 0.000000e+00
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load double, double* @MaxErr, align 8
  %91 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), double %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = call i32 (...) @DbgThread()
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %95 = call i32 @_cmsFreeInterpParams(i32 %93, %struct.TYPE_7__* %94)
  store i32 1, i32* %1, align 4
  br label %100

96:                                               ; preds = %73, %64, %55
  %97 = call i32 (...) @DbgThread()
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %99 = call i32 @_cmsFreeInterpParams(i32 %97, %struct.TYPE_7__* %98)
  store i32 0, i32* %1, align 4
  br label %100

100:                                              ; preds = %96, %92
  %101 = load i32, i32* %1, align 4
  ret i32 %101
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

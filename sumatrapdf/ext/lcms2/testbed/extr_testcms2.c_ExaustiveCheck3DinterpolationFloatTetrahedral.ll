; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_ExaustiveCheck3DinterpolationFloatTetrahedral.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_ExaustiveCheck3DinterpolationFloatTetrahedral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32, double*, double*, %struct.TYPE_7__*)* }

@__const.ExaustiveCheck3DinterpolationFloatTetrahedral.FloatTable = private unnamed_addr constant [24 x double] [double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 2.500000e-01, double 0.000000e+00, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01, double 2.500000e-01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 2.500000e-01, double 1.000000e+00, double 5.000000e-01, double 0.000000e+00, double 1.000000e+00, double 5.000000e-01, double 2.500000e-01], align 16
@CMS_LERP_FLAGS_FLOAT = common dso_local global i32 0, align 4
@MaxErr = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [10 x i8] c"Channel 1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Channel 2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Channel 3\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"|Err|<%lf \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ExaustiveCheck3DinterpolationFloatTetrahedral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExaustiveCheck3DinterpolationFloatTetrahedral() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca [24 x double], align 16
  %9 = bitcast [24 x double]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([24 x double]* @__const.ExaustiveCheck3DinterpolationFloatTetrahedral.FloatTable to i8*), i64 192, i1 false)
  %10 = call i32 (...) @DbgThread()
  %11 = getelementptr inbounds [24 x double], [24 x double]* %8, i64 0, i64 0
  %12 = load i32, i32* @CMS_LERP_FLAGS_FLOAT, align 4
  %13 = call %struct.TYPE_7__* @_cmsComputeInterpParams(i32 %10, i32 2, i32 3, i32 3, double* %11, i32 %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %2, align 8
  store double 0.000000e+00, double* @MaxErr, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %81, %0
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 255
  br i1 %16, label %17, label %84

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %77, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 255
  br i1 %20, label %21, label %80

21:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %73, %21
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 255
  br i1 %24, label %25, label %76

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 2.550000e+02
  %29 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  store double %28, double* %29, align 16
  %30 = load i32, i32* %4, align 4
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 2.550000e+02
  %33 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 1
  store double %32, double* %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %35, 2.550000e+02
  %37 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 2
  store double %36, double* %37, align 16
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32 (i32, double*, double*, %struct.TYPE_7__*)*, i32 (i32, double*, double*, %struct.TYPE_7__*)** %40, align 8
  %42 = call i32 (...) @DbgThread()
  %43 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  %44 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = call i32 %41(i32 %42, double* %43, double* %44, %struct.TYPE_7__* %45)
  %47 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  %48 = load double, double* %47, align 16
  %49 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  %50 = load double, double* %49, align 16
  %51 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %48, double %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %25
  br label %94

54:                                               ; preds = %25
  %55 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  %56 = load double, double* %55, align 8
  %57 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 1
  %58 = load double, double* %57, align 8
  %59 = fdiv double %58, 2.000000e+00
  %60 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double %56, double %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %94

63:                                               ; preds = %54
  %64 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  %65 = load double, double* %64, align 16
  %66 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 2
  %67 = load double, double* %66, align 16
  %68 = fdiv double %67, 4.000000e+00
  %69 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), double %65, double %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %94

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %22

76:                                               ; preds = %22
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %18

80:                                               ; preds = %18
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %14

84:                                               ; preds = %14
  %85 = load double, double* @MaxErr, align 8
  %86 = fcmp ogt double %85, 0.000000e+00
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load double, double* @MaxErr, align 8
  %89 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), double %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = call i32 (...) @DbgThread()
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %93 = call i32 @_cmsFreeInterpParams(i32 %91, %struct.TYPE_7__* %92)
  store i32 1, i32* %1, align 4
  br label %98

94:                                               ; preds = %71, %62, %53
  %95 = call i32 (...) @DbgThread()
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %97 = call i32 @_cmsFreeInterpParams(i32 %95, %struct.TYPE_7__* %96)
  store i32 0, i32* %1, align 4
  br label %98

98:                                               ; preds = %94, %90
  %99 = load i32, i32* %1, align 4
  ret i32 %99
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

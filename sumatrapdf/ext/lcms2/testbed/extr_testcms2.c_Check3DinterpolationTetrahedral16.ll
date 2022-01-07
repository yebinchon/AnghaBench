; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Check3DinterpolationTetrahedral16.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Check3DinterpolationTetrahedral16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32, i32*, i32*, %struct.TYPE_7__*)* }

@__const.Check3DinterpolationTetrahedral16.Table = private unnamed_addr constant [24 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 65535, i32 0, i32 65535, i32 0, i32 0, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 65535, i32 0, i32 65535, i32 65535, i32 65535, i32 0, i32 65535, i32 65535, i32 65535], align 16
@CMS_LERP_FLAGS_16BITS = common dso_local global i32 0, align 4
@MaxErr = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [10 x i8] c"Channel 1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Channel 2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Channel 3\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"|Err|<%lf \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @Check3DinterpolationTetrahedral16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Check3DinterpolationTetrahedral16() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca [24 x i32], align 16
  %7 = bitcast [24 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([24 x i32]* @__const.Check3DinterpolationTetrahedral16.Table to i8*), i64 96, i1 false)
  %8 = call i32 (...) @DbgThread()
  %9 = getelementptr inbounds [24 x i32], [24 x i32]* %6, i64 0, i64 0
  %10 = load i32, i32* @CMS_LERP_FLAGS_16BITS, align 4
  %11 = call %struct.TYPE_7__* @_cmsComputeInterpParams(i32 %8, i32 2, i32 3, i32 3, i32* %9, i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %2, align 8
  store double 0.000000e+00, double* @MaxErr, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %53, %0
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 65535
  br i1 %14, label %15, label %56

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32 (i32, i32*, i32*, %struct.TYPE_7__*)*, i32 (i32, i32*, i32*, %struct.TYPE_7__*)** %22, align 8
  %24 = call i32 (...) @DbgThread()
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = call i32 %23(i32 %24, i32* %25, i32* %26, %struct.TYPE_7__* %27)
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @IsGoodWord(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %15
  br label %66

36:                                               ; preds = %15
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IsGoodWord(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %66

44:                                               ; preds = %36
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @IsGoodWord(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %66

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %12

56:                                               ; preds = %12
  %57 = load double, double* @MaxErr, align 8
  %58 = fcmp ogt double %57, 0.000000e+00
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load double, double* @MaxErr, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), double %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = call i32 (...) @DbgThread()
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = call i32 @_cmsFreeInterpParams(i32 %63, %struct.TYPE_7__* %64)
  store i32 1, i32* %1, align 4
  br label %70

66:                                               ; preds = %51, %43, %35
  %67 = call i32 (...) @DbgThread()
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = call i32 @_cmsFreeInterpParams(i32 %67, %struct.TYPE_7__* %68)
  store i32 0, i32* %1, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_7__* @_cmsComputeInterpParams(i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32 @IsGoodWord(i8*, i32, i32) #2

declare dso_local i32 @printf(i8*, double) #2

declare dso_local i32 @_cmsFreeInterpParams(i32, %struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

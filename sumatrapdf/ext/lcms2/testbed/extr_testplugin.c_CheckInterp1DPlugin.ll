; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckInterp1DPlugin.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckInterp1DPlugin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.CheckInterp1DPlugin.tab = private unnamed_addr constant [11 x float] [float 0.000000e+00, float 0x3FB99999A0000000, float 0x3FC99999A0000000, float 0x3FD3333340000000, float 0x3FD99999A0000000, float 5.000000e-01, float 0x3FE3333340000000, float 0x3FE6666660000000, float 0x3FE99999A0000000, float 0x3FECCCCCC0000000, float 1.000000e+00], align 16
@.str = private unnamed_addr constant [22 x i8] c"Cannot create context\00", align 1
@InterpPluginSample = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot create context (2)\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Cannot create tone curve (1)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"0.10\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"0.13\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"0.55\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"0.9999\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Cannot create tone curve (2)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckInterp1DPlugin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [11 x float], align 16
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %6 = bitcast [11 x float]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([11 x float]* @__const.CheckInterp1DPlugin.tab to i8*), i64 44, i1 false)
  %7 = call i32* @WatchDogContext(i32* null)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @Fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %98

12:                                               ; preds = %0
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @cmsPlugin(i32* %13, i32* @InterpPluginSample)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @DupContext(i32* %15, i32* null)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = call i32 @Fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %98

21:                                               ; preds = %12
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds [11 x float], [11 x float]* %5, i64 0, i64 0
  %24 = call i32* @cmsBuildTabulatedToneCurveFloat(i32* %22, i32 11, float* %23)
  store i32* %24, i32** %2, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @Fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %98

29:                                               ; preds = %21
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @cmsEvalToneCurveFloat(i32* %30, i32* %31, float 0x3FB99999A0000000)
  %33 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %32, double 1.000000e-01, double 1.000000e-02)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %98

36:                                               ; preds = %29
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @cmsEvalToneCurveFloat(i32* %37, i32* %38, float 0x3FC0A3D700000000)
  %40 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %39, double 1.000000e-01, double 1.000000e-02)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %98

43:                                               ; preds = %36
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @cmsEvalToneCurveFloat(i32* %44, i32* %45, float 0x3FE19999A0000000)
  %47 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %46, double 5.000000e-01, double 1.000000e-02)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %98

50:                                               ; preds = %43
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @cmsEvalToneCurveFloat(i32* %51, i32* %52, float 0x3FEFFF2E40000000)
  %54 = call i32 @IsGoodVal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %53, double 9.000000e-01, double 1.000000e-02)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %98

57:                                               ; preds = %50
  %58 = load i32*, i32** %4, align 8
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @cmsFreeToneCurve(i32* %58, i32* %59)
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @cmsDeleteContext(i32* %61)
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @cmsDeleteContext(i32* %63)
  %65 = getelementptr inbounds [11 x float], [11 x float]* %5, i64 0, i64 0
  %66 = call i32* @cmsBuildTabulatedToneCurveFloat(i32* null, i32 11, float* %65)
  store i32* %66, i32** %2, align 8
  %67 = load i32*, i32** %2, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = call i32 @Fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %98

71:                                               ; preds = %57
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @cmsEvalToneCurveFloat(i32* null, i32* %72, float 0x3FB99999A0000000)
  %74 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %73, double 1.000000e-01, double 1.000000e-03)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %98

77:                                               ; preds = %71
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @cmsEvalToneCurveFloat(i32* null, i32* %78, float 0x3FC0A3D700000000)
  %80 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %79, double 1.300000e-01, double 1.000000e-03)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %98

83:                                               ; preds = %77
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @cmsEvalToneCurveFloat(i32* null, i32* %84, float 0x3FE19999A0000000)
  %86 = call i32 @IsGoodVal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %85, double 5.500000e-01, double 1.000000e-03)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %98

89:                                               ; preds = %83
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @cmsEvalToneCurveFloat(i32* null, i32* %90, float 0x3FEFFF2E40000000)
  %92 = call i32 @IsGoodVal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %91, double 9.999000e-01, double 1.000000e-03)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  br label %98

95:                                               ; preds = %89
  %96 = load i32*, i32** %2, align 8
  %97 = call i32 @cmsFreeToneCurve(i32* null, i32* %96)
  store i32 1, i32* %1, align 4
  br label %117

98:                                               ; preds = %94, %88, %82, %76, %69, %56, %49, %42, %35, %27, %19, %10
  %99 = load i32*, i32** %3, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @cmsDeleteContext(i32* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32*, i32** %4, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @cmsDeleteContext(i32* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32*, i32** %2, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 @cmsFreeToneCurve(i32* null, i32* %114)
  br label %116

116:                                              ; preds = %113, %110
  store i32 0, i32* %1, align 4
  br label %117

117:                                              ; preds = %116, %95
  %118 = load i32, i32* %1, align 4
  ret i32 %118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @WatchDogContext(i32*) #2

declare dso_local i32 @Fail(i8*) #2

declare dso_local i32 @cmsPlugin(i32*, i32*) #2

declare dso_local i32* @DupContext(i32*, i32*) #2

declare dso_local i32* @cmsBuildTabulatedToneCurveFloat(i32*, i32, float*) #2

declare dso_local i32 @IsGoodVal(i8*, i32, double, double) #2

declare dso_local i32 @cmsEvalToneCurveFloat(i32*, i32*, float) #2

declare dso_local i32 @cmsFreeToneCurve(i32*, i32*) #2

declare dso_local i32 @cmsDeleteContext(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

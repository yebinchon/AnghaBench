; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckReverseInterpolation4x3.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckReverseInterpolation4x3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.CheckReverseInterpolation4x3.Table = private unnamed_addr constant [48 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65535, i32 0, i32 0, i32 65535, i32 0, i32 65535, i32 0, i32 0, i32 65535, i32 0, i32 0, i32 65535, i32 65535, i32 0, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 65535, i32 0, i32 0, i32 65535, i32 0, i32 65535, i32 65535, i32 0, i32 65535, i32 65535, i32 65535, i32 0, i32 65535, i32 65535, i32 0, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535], align 16
@cmsAT_BEGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"4->3 feasibility\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"4->3 zero\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Reverse interpolation didn't find zero\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"4->3 find CMY\00", align 1
@FLOAT_PRECISSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckReverseInterpolation4x3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckReverseInterpolation4x3() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [4 x i64], align 16
  %5 = alloca [4 x i64], align 16
  %6 = alloca [4 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [48 x i32], align 16
  %11 = alloca i64, align 8
  %12 = bitcast [48 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([48 x i32]* @__const.CheckReverseInterpolation4x3.Table to i8*), i64 192, i1 false)
  %13 = call i32 (...) @DbgThread()
  %14 = call i32* @cmsPipelineAlloc(i32 %13, i32 4, i32 3)
  store i32* %14, i32** %2, align 8
  %15 = call i32 (...) @DbgThread()
  %16 = getelementptr inbounds [48 x i32], [48 x i32]* %10, i64 0, i64 0
  %17 = call i32* @cmsStageAllocCLut16bit(i32 %15, i32 2, i32 4, i32 3, i32* %16)
  store i32* %17, i32** %3, align 8
  %18 = call i32 (...) @DbgThread()
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @cmsAT_BEGIN, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @cmsPipelineInsertStage(i32 %18, i32* %19, i32 %20, i32* %21)
  %23 = call i32 @SubTest(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %67, %0
  %25 = load i32, i32* %9, align 4
  %26 = icmp sle i32 %25, 100
  br i1 %26, label %27, label %70

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = sitofp i32 %28 to float
  %30 = fdiv float %29, 1.000000e+02
  %31 = fptosi float %30 to i64
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  store i64 %31, i64* %32, align 16
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %34 = load i64, i64* %33, align 16
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  store i64 %34, i64* %35, align 8
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  store i64 0, i64* %36, align 16
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  store i64 12, i64* %37, align 8
  %38 = call i32 (...) @DbgThread()
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @cmsPipelineEvalFloat(i32 %38, i64* %39, i64* %40, i32* %41)
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %44 = load i64, i64* %43, align 16
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %46 = load i64, i64* %45, align 16
  %47 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %27
  br label %147

50:                                               ; preds = %27
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %52, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %147

58:                                               ; preds = %50
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  %60 = load i64, i64* %59, align 16
  %61 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2
  %62 = load i64, i64* %61, align 16
  %63 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %60, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  br label %147

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %24

70:                                               ; preds = %24
  %71 = call i32 @SubTest(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %72 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  store i64 0, i64* %72, align 16
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  store i64 0, i64* %73, align 8
  %74 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  store i64 0, i64* %74, align 16
  %75 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  store i64 0, i64* %76, align 16
  %77 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 1
  store i64 0, i64* %77, align 8
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2
  store i64 0, i64* %78, align 16
  %79 = call i32 (...) @DbgThread()
  %80 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %81 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %82 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @cmsPipelineEvalReverseFloat(i32 %79, i64* %80, i64* %81, i64* %82, i32* %83)
  %85 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %86 = load i64, i64* %85, align 16
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %70
  %89 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2
  %94 = load i64, i64* %93, align 16
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96, %92, %88, %70
  %101 = call i32 @Fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %147

102:                                              ; preds = %96
  %103 = call i32 @SubTest(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %136, %102
  %105 = load i32, i32* %9, align 4
  %106 = icmp sle i32 %105, 100
  br i1 %106, label %107, label %139

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = sitofp i32 %108 to float
  %110 = fdiv float %109, 1.000000e+02
  %111 = fptosi float %110 to i64
  store i64 %111, i64* %11, align 8
  %112 = load i64, i64* %11, align 8
  %113 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  store i64 %112, i64* %113, align 16
  %114 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  store i64 0, i64* %114, align 8
  %115 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  store i64 0, i64* %115, align 16
  %116 = call i32 (...) @DbgThread()
  %117 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %118 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %119 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  %120 = load i32*, i32** %2, align 8
  %121 = call i32 @cmsPipelineEvalReverseFloat(i32 %116, i64* %117, i64* %118, i64* %119, i32* %120)
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %124 = load i64, i64* %123, align 16
  %125 = sub nsw i64 %122, %124
  %126 = call i64 @fabsf(i64 %125)
  store i64 %126, i64* %7, align 8
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* %8, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %107
  %131 = load i64, i64* %7, align 8
  store i64 %131, i64* %8, align 8
  br label %132

132:                                              ; preds = %130, %107
  %133 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  %134 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %135 = call i32 @memcpy(i64* %133, i64* %134, i32 32)
  br label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %104

139:                                              ; preds = %104
  %140 = call i32 (...) @DbgThread()
  %141 = load i32*, i32** %2, align 8
  %142 = call i32 @cmsPipelineFree(i32 %140, i32* %141)
  %143 = load i64, i64* %8, align 8
  %144 = load i64, i64* @FLOAT_PRECISSION, align 8
  %145 = icmp sle i64 %143, %144
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %1, align 4
  br label %151

147:                                              ; preds = %100, %65, %57, %49
  %148 = call i32 (...) @DbgThread()
  %149 = load i32*, i32** %2, align 8
  %150 = call i32 @cmsPipelineFree(i32 %148, i32* %149)
  store i32 0, i32* %1, align 4
  br label %151

151:                                              ; preds = %147, %139
  %152 = load i32, i32* %1, align 4
  ret i32 %152
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @cmsPipelineAlloc(i32, i32, i32) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32* @cmsStageAllocCLut16bit(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32*) #2

declare dso_local i32 @SubTest(i8*) #2

declare dso_local i32 @cmsPipelineEvalFloat(i32, i64*, i64*, i32*) #2

declare dso_local i32 @IsGoodFixed15_16(i8*, i64, i64) #2

declare dso_local i32 @cmsPipelineEvalReverseFloat(i32, i64*, i64*, i64*, i32*) #2

declare dso_local i32 @Fail(i8*) #2

declare dso_local i64 @fabsf(i64) #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local i32 @cmsPipelineFree(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

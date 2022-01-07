; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/linkicc/extr_linkicc.c_HandleSwitches.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/linkicc/extr_linkicc.c_HandleSwitches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"a:A:BbC:c:D:d:h:H:k:K:lLn:N:O:o:r:R:T:t:V:v:xX8y:Y:\00", align 1
@EOF = common dso_local global i32 0, align 4
@xoptarg = common dso_local global i8* null, align 8
@ObserverAdaptationState = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Adaptation state should be 0..1\00", align 1
@TRUE = common dso_local global i8* null, align 8
@BlackPointCompensation = common dso_local global i8* null, align 8
@PrecalcMode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unknown precalc mode '%d'\00", align 1
@Description = common dso_local global i8* null, align 8
@InkLimit = common dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Ink limit must be 0%%..400%%\00", align 1
@KeepLinearization = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Precalc mode already specified\00", align 1
@NumOfGridPoints = common dso_local global i8* null, align 8
@cOutProf = common dso_local global i8* null, align 8
@Version = common dso_local global double 0.000000e+00, align 8
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"WARNING: lcms was not aware of this version, tag types may be wrong!\0A\00", align 1
@Intent = common dso_local global i8* null, align 8
@Verbose = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Unknown verbosity level '%d'\00", align 1
@lUse8bits = common dso_local global i8* null, align 8
@Copyright = common dso_local global i8* null, align 8
@TagResult = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [54 x i8] c"Unknown option - run without args to see valid ones.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @HandleSwitches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleSwitches(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %105, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @xgetopt(i32 %7, i8** %8, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @EOF, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %106

12:                                               ; preds = %6
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %103 [
    i32 97, label %14
    i32 65, label %14
    i32 98, label %25
    i32 66, label %25
    i32 99, label %27
    i32 67, label %27
    i32 100, label %40
    i32 68, label %40
    i32 104, label %42
    i32 72, label %42
    i32 107, label %46
    i32 75, label %46
    i32 108, label %57
    i32 76, label %57
    i32 110, label %59
    i32 78, label %59
    i32 111, label %67
    i32 79, label %67
    i32 114, label %69
    i32 82, label %69
    i32 116, label %81
    i32 84, label %81
    i32 86, label %84
    i32 118, label %84
    i32 56, label %97
    i32 121, label %99
    i32 89, label %99
    i32 120, label %101
    i32 88, label %101
  ]

14:                                               ; preds = %12, %12
  %15 = load i8*, i8** @xoptarg, align 8
  %16 = call double @atof(i8* %15)
  store double %16, double* @ObserverAdaptationState, align 8
  %17 = load double, double* @ObserverAdaptationState, align 8
  %18 = fcmp olt double %17, 0.000000e+00
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load double, double* @ObserverAdaptationState, align 8
  %21 = fcmp ogt double %20, 1.000000e+00
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %14
  %23 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  br label %105

25:                                               ; preds = %12, %12
  %26 = load i8*, i8** @TRUE, align 8
  store i8* %26, i8** @BlackPointCompensation, align 8
  br label %105

27:                                               ; preds = %12, %12
  %28 = load i8*, i8** @xoptarg, align 8
  %29 = call i8* @atoi(i8* %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* @PrecalcMode, align 4
  %31 = load i32, i32* @PrecalcMode, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @PrecalcMode, align 4
  %35 = icmp sgt i32 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %27
  %37 = load i32, i32* @PrecalcMode, align 4
  %38 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  br label %105

40:                                               ; preds = %12, %12
  %41 = load i8*, i8** @xoptarg, align 8
  store i8* %41, i8** @Description, align 8
  br label %105

42:                                               ; preds = %12, %12
  %43 = load i8*, i8** @xoptarg, align 8
  %44 = call i8* @atoi(i8* %43)
  %45 = call i32 @Help(i8* %44)
  br label %106

46:                                               ; preds = %12, %12
  %47 = load i8*, i8** @xoptarg, align 8
  %48 = call double @atof(i8* %47)
  store double %48, double* @InkLimit, align 8
  %49 = load double, double* @InkLimit, align 8
  %50 = fcmp olt double %49, 0.000000e+00
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load double, double* @InkLimit, align 8
  %53 = fcmp ogt double %52, 4.000000e+02
  br i1 %53, label %54, label %56

54:                                               ; preds = %51, %46
  %55 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %51
  br label %105

57:                                               ; preds = %12, %12
  %58 = load i8*, i8** @TRUE, align 8
  store i8* %58, i8** @KeepLinearization, align 8
  br label %105

59:                                               ; preds = %12, %12
  %60 = load i32, i32* @PrecalcMode, align 4
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i8*, i8** @xoptarg, align 8
  %66 = call i8* @atoi(i8* %65)
  store i8* %66, i8** @NumOfGridPoints, align 8
  br label %105

67:                                               ; preds = %12, %12
  %68 = load i8*, i8** @xoptarg, align 8
  store i8* %68, i8** @cOutProf, align 8
  br label %105

69:                                               ; preds = %12, %12
  %70 = load i8*, i8** @xoptarg, align 8
  %71 = call double @atof(i8* %70)
  store double %71, double* @Version, align 8
  %72 = load double, double* @Version, align 8
  %73 = fcmp olt double %72, 2.000000e+00
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load double, double* @Version, align 8
  %76 = fcmp ogt double %75, 4.300000e+00
  br i1 %76, label %77, label %80

77:                                               ; preds = %74, %69
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %74
  br label %105

81:                                               ; preds = %12, %12
  %82 = load i8*, i8** @xoptarg, align 8
  %83 = call i8* @atoi(i8* %82)
  store i8* %83, i8** @Intent, align 8
  br label %105

84:                                               ; preds = %12, %12
  %85 = load i8*, i8** @xoptarg, align 8
  %86 = call i8* @atoi(i8* %85)
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* @Verbose, align 4
  %88 = load i32, i32* @Verbose, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* @Verbose, align 4
  %92 = icmp sgt i32 %91, 3
  br i1 %92, label %93, label %96

93:                                               ; preds = %90, %84
  %94 = load i32, i32* @Verbose, align 4
  %95 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %93, %90
  br label %105

97:                                               ; preds = %12
  %98 = load i8*, i8** @TRUE, align 8
  store i8* %98, i8** @lUse8bits, align 8
  br label %105

99:                                               ; preds = %12, %12
  %100 = load i8*, i8** @xoptarg, align 8
  store i8* %100, i8** @Copyright, align 8
  br label %105

101:                                              ; preds = %12, %12
  %102 = load i8*, i8** @TRUE, align 8
  store i8* %102, i8** @TagResult, align 8
  br label %105

103:                                              ; preds = %12
  %104 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %101, %99, %97, %96, %81, %80, %67, %64, %57, %56, %40, %39, %25, %24
  br label %6

106:                                              ; preds = %42, %6
  ret void
}

declare dso_local i32 @xgetopt(i32, i8**, i8*) #1

declare dso_local double @atof(i8*) #1

declare dso_local i32 @FatalError(i8*, ...) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @Help(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_HandleSwitches.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_HandleSwitches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [61 x i8] c"aAeEbBw:W:nNvVGgh:H:i:I:o:O:P:p:t:T:c:C:l:L:M:m:K:k:S:s:D:d:\00", align 1
@EOF = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@StoreAsAlpha = common dso_local global i8* null, align 8
@BlackWhiteCompensation = common dso_local global i8* null, align 8
@xoptarg = common dso_local global i8* null, align 8
@PrecalcMode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown precalc mode '%d'\00", align 1
@ObserverAdaptationState = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Adaptation state should be 0..1\00", align 1
@EmbedProfile = common dso_local global i8* null, align 8
@GamutCheck = common dso_local global i8* null, align 8
@Verbose = common dso_local global i8* null, align 8
@lIsDeviceLink = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Device-link already specified\00", align 1
@cInpProf = common dso_local global i32* null, align 8
@cOutProf = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"input/output profiles already specified\00", align 1
@cProofing = common dso_local global i8* null, align 8
@Intent = common dso_local global i8* null, align 8
@ProofingIntent = common dso_local global i8* null, align 8
@IgnoreEmbedded = common dso_local global i8* null, align 8
@Width = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Only 8, 16 and 32 bps are supported\00", align 1
@InkLimit = common dso_local global double 0.000000e+00, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"Ink limit must be 0%%..400%%\00", align 1
@SaveEmbedded = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [52 x i8] c"Unknown option - run without args to see valid ones\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @HandleSwitches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleSwitches(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %7

7:                                                ; preds = %123, %2
  %8 = load i32, i32* %3, align 4
  %9 = load i8**, i8*** %4, align 8
  %10 = call i32 @xgetopt(i32 %8, i8** %9, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @EOF, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %124

13:                                               ; preds = %7
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %121 [
    i32 97, label %15
    i32 65, label %15
    i32 98, label %17
    i32 66, label %17
    i32 99, label %19
    i32 67, label %19
    i32 100, label %32
    i32 68, label %32
    i32 101, label %43
    i32 69, label %43
    i32 103, label %45
    i32 71, label %45
    i32 118, label %47
    i32 86, label %47
    i32 105, label %49
    i32 73, label %49
    i32 111, label %57
    i32 79, label %57
    i32 108, label %65
    i32 76, label %65
    i32 112, label %77
    i32 80, label %77
    i32 116, label %79
    i32 84, label %79
    i32 109, label %82
    i32 77, label %82
    i32 78, label %85
    i32 110, label %85
    i32 87, label %87
    i32 119, label %87
    i32 107, label %102
    i32 75, label %102
    i32 115, label %113
    i32 83, label %113
    i32 72, label %115
    i32 104, label %115
  ]

15:                                               ; preds = %13, %13
  %16 = load i8*, i8** @TRUE, align 8
  store i8* %16, i8** @StoreAsAlpha, align 8
  br label %123

17:                                               ; preds = %13, %13
  %18 = load i8*, i8** @TRUE, align 8
  store i8* %18, i8** @BlackWhiteCompensation, align 8
  br label %123

19:                                               ; preds = %13, %13
  %20 = load i8*, i8** @xoptarg, align 8
  %21 = call i8* @atoi(i8* %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* @PrecalcMode, align 4
  %23 = load i32, i32* @PrecalcMode, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @PrecalcMode, align 4
  %27 = icmp sgt i32 %26, 3
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %19
  %29 = load i32, i32* @PrecalcMode, align 4
  %30 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  br label %123

32:                                               ; preds = %13, %13
  %33 = load i8*, i8** @xoptarg, align 8
  %34 = call double @atof(i8* %33)
  store double %34, double* @ObserverAdaptationState, align 8
  %35 = load double, double* @ObserverAdaptationState, align 8
  %36 = fcmp olt double %35, 0.000000e+00
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load double, double* @ObserverAdaptationState, align 8
  %39 = fcmp ogt double %38, 1.000000e+00
  br i1 %39, label %40, label %42

40:                                               ; preds = %37, %32
  %41 = call i32 @Warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  br label %123

43:                                               ; preds = %13, %13
  %44 = load i8*, i8** @TRUE, align 8
  store i8* %44, i8** @EmbedProfile, align 8
  br label %123

45:                                               ; preds = %13, %13
  %46 = load i8*, i8** @TRUE, align 8
  store i8* %46, i8** @GamutCheck, align 8
  br label %123

47:                                               ; preds = %13, %13
  %48 = load i8*, i8** @TRUE, align 8
  store i8* %48, i8** @Verbose, align 8
  br label %123

49:                                               ; preds = %13, %13
  %50 = load i8*, i8** @lIsDeviceLink, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i8*, i8** @xoptarg, align 8
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** @cInpProf, align 8
  br label %123

57:                                               ; preds = %13, %13
  %58 = load i8*, i8** @lIsDeviceLink, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i8*, i8** @xoptarg, align 8
  %64 = bitcast i8* %63 to i32*
  store i32* %64, i32** @cOutProf, align 8
  br label %123

65:                                               ; preds = %13, %13
  %66 = load i32*, i32** @cInpProf, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32*, i32** @cOutProf, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68, %65
  %72 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  %74 = load i8*, i8** @xoptarg, align 8
  %75 = bitcast i8* %74 to i32*
  store i32* %75, i32** @cInpProf, align 8
  %76 = load i8*, i8** @TRUE, align 8
  store i8* %76, i8** @lIsDeviceLink, align 8
  br label %123

77:                                               ; preds = %13, %13
  %78 = load i8*, i8** @xoptarg, align 8
  store i8* %78, i8** @cProofing, align 8
  br label %123

79:                                               ; preds = %13, %13
  %80 = load i8*, i8** @xoptarg, align 8
  %81 = call i8* @atoi(i8* %80)
  store i8* %81, i8** @Intent, align 8
  br label %123

82:                                               ; preds = %13, %13
  %83 = load i8*, i8** @xoptarg, align 8
  %84 = call i8* @atoi(i8* %83)
  store i8* %84, i8** @ProofingIntent, align 8
  br label %123

85:                                               ; preds = %13, %13
  %86 = load i8*, i8** @TRUE, align 8
  store i8* %86, i8** @IgnoreEmbedded, align 8
  br label %123

87:                                               ; preds = %13, %13
  %88 = load i8*, i8** @xoptarg, align 8
  %89 = call i8* @atoi(i8* %88)
  %90 = ptrtoint i8* %89 to i32
  store i32 %90, i32* @Width, align 4
  %91 = load i32, i32* @Width, align 4
  %92 = icmp ne i32 %91, 8
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load i32, i32* @Width, align 4
  %95 = icmp ne i32 %94, 16
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* @Width, align 4
  %98 = icmp ne i32 %97, 32
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %96, %93, %87
  br label %123

102:                                              ; preds = %13, %13
  %103 = load i8*, i8** @xoptarg, align 8
  %104 = call double @atof(i8* %103)
  store double %104, double* @InkLimit, align 8
  %105 = load double, double* @InkLimit, align 8
  %106 = fcmp olt double %105, 0.000000e+00
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load double, double* @InkLimit, align 8
  %109 = fcmp ogt double %108, 4.000000e+02
  br i1 %109, label %110, label %112

110:                                              ; preds = %107, %102
  %111 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %107
  br label %123

113:                                              ; preds = %13, %13
  %114 = load i8*, i8** @xoptarg, align 8
  store i8* %114, i8** @SaveEmbedded, align 8
  br label %123

115:                                              ; preds = %13, %13
  %116 = load i8*, i8** @xoptarg, align 8
  %117 = call i8* @atoi(i8* %116)
  %118 = ptrtoint i8* %117 to i32
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @Help(i32 %119)
  br label %123

121:                                              ; preds = %13
  %122 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %115, %113, %112, %101, %85, %82, %79, %77, %73, %62, %54, %47, %45, %43, %42, %31, %17, %15
  br label %7

124:                                              ; preds = %7
  ret void
}

declare dso_local i32 @xgetopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @FatalError(i8*, ...) #1

declare dso_local double @atof(i8*) #1

declare dso_local i32 @Warning(i8*) #1

declare dso_local i32 @Help(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

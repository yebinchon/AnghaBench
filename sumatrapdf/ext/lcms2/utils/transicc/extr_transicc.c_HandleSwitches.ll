; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_HandleSwitches.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_HandleSwitches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"bBC:c:d:D:eEgGI:i:L:l:m:M:nNO:o:p:P:QqSsT:t:V:v:WwxX!:\00", align 1
@EOF = common dso_local global i32 0, align 4
@xoptarg = common dso_local global i8* null, align 8
@IncludePart = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@BlackPointCompensation = common dso_local global i8* null, align 8
@PrecalcMode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown precalc mode '%d'\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Adaptation states should be between 0 and 1\00", align 1
@FALSE = common dso_local global i8* null, align 8
@lIsFloat = common dso_local global i8* null, align 8
@GamutCheck = common dso_local global i8* null, align 8
@lIsDeviceLink = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"icctrans: Device-link already specified\00", align 1
@cInProf = common dso_local global i8* null, align 8
@ProofingIntent = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Unknown Proofing Intent '%d'\00", align 1
@Verbose = common dso_local global i32 0, align 4
@cOutProf = common dso_local global i8* null, align 8
@cProofing = common dso_local global i8* null, align 8
@lQuantize = common dso_local global i8* null, align 8
@lUnbounded = common dso_local global i8* null, align 8
@Intent = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Unknown verbosity level '%d'\00", align 1
@Width16 = common dso_local global i8* null, align 8
@InHexa = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"Unknown option - run without args to see valid ones.\0A\00", align 1
@xoptind = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8**)* @HandleSwitches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleSwitches(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  br label %9

9:                                                ; preds = %108, %3
  %10 = load i32, i32* %5, align 4
  %11 = load i8**, i8*** %6, align 8
  %12 = call i32 @xgetopt(i32 %10, i8** %11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @EOF, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %109

15:                                               ; preds = %9
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %106 [
    i32 33, label %17
    i32 98, label %19
    i32 66, label %19
    i32 99, label %21
    i32 67, label %21
    i32 100, label %34
    i32 68, label %34
    i32 101, label %48
    i32 69, label %48
    i32 103, label %50
    i32 71, label %50
    i32 105, label %52
    i32 73, label %52
    i32 108, label %59
    i32 76, label %59
    i32 109, label %62
    i32 77, label %62
    i32 110, label %72
    i32 78, label %72
    i32 111, label %73
    i32 79, label %73
    i32 112, label %80
    i32 80, label %80
    i32 113, label %82
    i32 81, label %82
    i32 115, label %84
    i32 83, label %84
    i32 116, label %86
    i32 84, label %86
    i32 86, label %89
    i32 118, label %89
    i32 87, label %102
    i32 119, label %102
    i32 120, label %104
    i32 88, label %104
  ]

17:                                               ; preds = %15
  %18 = load i8*, i8** @xoptarg, align 8
  store i8* %18, i8** @IncludePart, align 8
  br label %108

19:                                               ; preds = %15, %15
  %20 = load i8*, i8** @TRUE, align 8
  store i8* %20, i8** @BlackPointCompensation, align 8
  br label %108

21:                                               ; preds = %15, %15
  %22 = load i8*, i8** @xoptarg, align 8
  %23 = call i8* @atoi(i8* %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* @PrecalcMode, align 4
  %25 = load i32, i32* @PrecalcMode, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @PrecalcMode, align 4
  %29 = icmp sgt i32 %28, 3
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %21
  %31 = load i32, i32* @PrecalcMode, align 4
  %32 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %27
  br label %108

34:                                               ; preds = %15, %15
  %35 = load i8*, i8** @xoptarg, align 8
  %36 = call double @atof(i8* %35)
  store double %36, double* %8, align 8
  %37 = load double, double* %8, align 8
  %38 = fcmp olt double %37, 0.000000e+00
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load double, double* %8, align 8
  %41 = fcmp ogt double %40, 1.000000e+00
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %34
  %43 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* %4, align 4
  %46 = load double, double* %8, align 8
  %47 = call i32 @cmsSetAdaptationState(i32 %45, double %46)
  br label %108

48:                                               ; preds = %15, %15
  %49 = load i8*, i8** @FALSE, align 8
  store i8* %49, i8** @lIsFloat, align 8
  br label %108

50:                                               ; preds = %15, %15
  %51 = load i8*, i8** @TRUE, align 8
  store i8* %51, i8** @GamutCheck, align 8
  br label %108

52:                                               ; preds = %15, %15
  %53 = load i8*, i8** @lIsDeviceLink, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i8*, i8** @xoptarg, align 8
  store i8* %58, i8** @cInProf, align 8
  br label %108

59:                                               ; preds = %15, %15
  %60 = load i8*, i8** @xoptarg, align 8
  store i8* %60, i8** @cInProf, align 8
  %61 = load i8*, i8** @TRUE, align 8
  store i8* %61, i8** @lIsDeviceLink, align 8
  br label %108

62:                                               ; preds = %15, %15
  %63 = load i8*, i8** @xoptarg, align 8
  %64 = call i8* @atoi(i8* %63)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* @ProofingIntent, align 4
  %66 = load i32, i32* @ProofingIntent, align 4
  %67 = icmp sgt i32 %66, 3
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @ProofingIntent, align 4
  %70 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %62
  br label %108

72:                                               ; preds = %15, %15
  store i32 0, i32* @Verbose, align 4
  br label %108

73:                                               ; preds = %15, %15
  %74 = load i8*, i8** @lIsDeviceLink, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %73
  %79 = load i8*, i8** @xoptarg, align 8
  store i8* %79, i8** @cOutProf, align 8
  br label %108

80:                                               ; preds = %15, %15
  %81 = load i8*, i8** @xoptarg, align 8
  store i8* %81, i8** @cProofing, align 8
  br label %108

82:                                               ; preds = %15, %15
  %83 = load i8*, i8** @TRUE, align 8
  store i8* %83, i8** @lQuantize, align 8
  br label %108

84:                                               ; preds = %15, %15
  %85 = load i8*, i8** @FALSE, align 8
  store i8* %85, i8** @lUnbounded, align 8
  br label %108

86:                                               ; preds = %15, %15
  %87 = load i8*, i8** @xoptarg, align 8
  %88 = call i8* @atoi(i8* %87)
  store i8* %88, i8** @Intent, align 8
  br label %108

89:                                               ; preds = %15, %15
  %90 = load i8*, i8** @xoptarg, align 8
  %91 = call i8* @atoi(i8* %90)
  %92 = ptrtoint i8* %91 to i32
  store i32 %92, i32* @Verbose, align 4
  %93 = load i32, i32* @Verbose, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* @Verbose, align 4
  %97 = icmp sgt i32 %96, 3
  br i1 %97, label %98, label %101

98:                                               ; preds = %95, %89
  %99 = load i32, i32* @Verbose, align 4
  %100 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  br label %108

102:                                              ; preds = %15, %15
  %103 = load i8*, i8** @TRUE, align 8
  store i8* %103, i8** @Width16, align 8
  br label %108

104:                                              ; preds = %15, %15
  %105 = load i8*, i8** @TRUE, align 8
  store i8* %105, i8** @InHexa, align 8
  br label %108

106:                                              ; preds = %15
  %107 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %104, %102, %101, %86, %84, %82, %80, %78, %72, %71, %59, %57, %50, %48, %44, %33, %19, %17
  br label %9

109:                                              ; preds = %9
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @xoptind, align 4
  %112 = sub nsw i32 %110, %111
  %113 = icmp sgt i32 %112, 2
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i8*, i8** @TRUE, align 8
  store i8* %115, i8** @lIsFloat, align 8
  br label %116

116:                                              ; preds = %114, %109
  ret void
}

declare dso_local i32 @xgetopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @FatalError(i8*, ...) #1

declare dso_local double @atof(i8*) #1

declare dso_local i32 @cmsSetAdaptationState(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

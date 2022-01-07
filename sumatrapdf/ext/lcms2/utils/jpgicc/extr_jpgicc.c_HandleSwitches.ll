; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_jpgicc.c_HandleSwitches.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_jpgicc.c_HandleSwitches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [57 x i8] c"bBnNvVGgh:H:i:I:o:O:P:p:t:T:c:C:Q:q:M:m:L:l:eEs:S:!:D:d:\00", align 1
@EOF = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@BlackPointCompensation = common dso_local global i8* null, align 8
@xoptarg = common dso_local global i8* null, align 8
@ObserverAdaptationState = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Adaptation state should be 0..1\00", align 1
@Verbose = common dso_local global i8* null, align 8
@lIsDeviceLink = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Device-link already specified\00", align 1
@cInpProf = common dso_local global i32* null, align 8
@cOutProf = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"input/output profiles already specified\00", align 1
@cProofing = common dso_local global i8* null, align 8
@Intent = common dso_local global i8* null, align 8
@IgnoreEmbedded = common dso_local global i8* null, align 8
@EmbedProfile = common dso_local global i8* null, align 8
@GamutCheck = common dso_local global i8* null, align 8
@PrecalcMode = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Unknown precalc mode '%d'\00", align 1
@jpegQuality = common dso_local global i32 0, align 4
@ProofingIntent = common dso_local global i8* null, align 8
@SaveEmbedded = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"%hu,%hu,%hu\00", align 1
@Alarm = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [52 x i8] c"Unknown option - run without args to see valid ones\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @HandleSwitches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleSwitches(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %8

8:                                                ; preds = %144, %2
  %9 = load i32, i32* %3, align 4
  %10 = load i8**, i8*** %4, align 8
  %11 = call i32 @xgetopt(i32 %9, i8** %10, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @EOF, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %145

14:                                               ; preds = %8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %142 [
    i32 98, label %16
    i32 66, label %16
    i32 100, label %18
    i32 68, label %18
    i32 118, label %29
    i32 86, label %29
    i32 105, label %31
    i32 73, label %31
    i32 111, label %39
    i32 79, label %39
    i32 108, label %47
    i32 76, label %47
    i32 112, label %59
    i32 80, label %59
    i32 116, label %61
    i32 84, label %61
    i32 78, label %64
    i32 110, label %64
    i32 101, label %66
    i32 69, label %66
    i32 103, label %68
    i32 71, label %68
    i32 99, label %70
    i32 67, label %70
    i32 72, label %83
    i32 104, label %83
    i32 113, label %89
    i32 81, label %89
    i32 109, label %101
    i32 77, label %101
    i32 115, label %104
    i32 83, label %104
    i32 33, label %106
  ]

16:                                               ; preds = %14, %14
  %17 = load i8*, i8** @TRUE, align 8
  store i8* %17, i8** @BlackPointCompensation, align 8
  br label %144

18:                                               ; preds = %14, %14
  %19 = load i8*, i8** @xoptarg, align 8
  %20 = call double @atof(i8* %19)
  store double %20, double* @ObserverAdaptationState, align 8
  %21 = load double, double* @ObserverAdaptationState, align 8
  %22 = fcmp olt double %21, 0.000000e+00
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load double, double* @ObserverAdaptationState, align 8
  %25 = fcmp ogt double %24, 1.000000e+00
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %18
  %27 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  br label %144

29:                                               ; preds = %14, %14
  %30 = load i8*, i8** @TRUE, align 8
  store i8* %30, i8** @Verbose, align 8
  br label %144

31:                                               ; preds = %14, %14
  %32 = load i8*, i8** @lIsDeviceLink, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i8*, i8** @xoptarg, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** @cInpProf, align 8
  br label %144

39:                                               ; preds = %14, %14
  %40 = load i8*, i8** @lIsDeviceLink, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i8*, i8** @xoptarg, align 8
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** @cOutProf, align 8
  br label %144

47:                                               ; preds = %14, %14
  %48 = load i32*, i32** @cInpProf, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32*, i32** @cOutProf, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %47
  %54 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i8*, i8** @xoptarg, align 8
  %57 = bitcast i8* %56 to i32*
  store i32* %57, i32** @cInpProf, align 8
  %58 = load i8*, i8** @TRUE, align 8
  store i8* %58, i8** @lIsDeviceLink, align 8
  br label %144

59:                                               ; preds = %14, %14
  %60 = load i8*, i8** @xoptarg, align 8
  store i8* %60, i8** @cProofing, align 8
  br label %144

61:                                               ; preds = %14, %14
  %62 = load i8*, i8** @xoptarg, align 8
  %63 = call i8* @atoi(i8* %62)
  store i8* %63, i8** @Intent, align 8
  br label %144

64:                                               ; preds = %14, %14
  %65 = load i8*, i8** @TRUE, align 8
  store i8* %65, i8** @IgnoreEmbedded, align 8
  br label %144

66:                                               ; preds = %14, %14
  %67 = load i8*, i8** @TRUE, align 8
  store i8* %67, i8** @EmbedProfile, align 8
  br label %144

68:                                               ; preds = %14, %14
  %69 = load i8*, i8** @TRUE, align 8
  store i8* %69, i8** @GamutCheck, align 8
  br label %144

70:                                               ; preds = %14, %14
  %71 = load i8*, i8** @xoptarg, align 8
  %72 = call i8* @atoi(i8* %71)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* @PrecalcMode, align 4
  %74 = load i32, i32* @PrecalcMode, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @PrecalcMode, align 4
  %78 = icmp sgt i32 %77, 2
  br i1 %78, label %79, label %82

79:                                               ; preds = %76, %70
  %80 = load i32, i32* @PrecalcMode, align 4
  %81 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %76
  br label %144

83:                                               ; preds = %14, %14
  %84 = load i8*, i8** @xoptarg, align 8
  %85 = call i8* @atoi(i8* %84)
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @Help(i32 %87)
  br label %144

89:                                               ; preds = %14, %14
  %90 = load i8*, i8** @xoptarg, align 8
  %91 = call i8* @atoi(i8* %90)
  %92 = ptrtoint i8* %91 to i32
  store i32 %92, i32* @jpegQuality, align 4
  %93 = load i32, i32* @jpegQuality, align 4
  %94 = icmp sgt i32 %93, 100
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 100, i32* @jpegQuality, align 4
  br label %96

96:                                               ; preds = %95, %89
  %97 = load i32, i32* @jpegQuality, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 0, i32* @jpegQuality, align 4
  br label %100

100:                                              ; preds = %99, %96
  br label %144

101:                                              ; preds = %14, %14
  %102 = load i8*, i8** @xoptarg, align 8
  %103 = call i8* @atoi(i8* %102)
  store i8* %103, i8** @ProofingIntent, align 8
  br label %144

104:                                              ; preds = %14, %14
  %105 = load i8*, i8** @xoptarg, align 8
  store i8* %105, i8** @SaveEmbedded, align 8
  br label %144

106:                                              ; preds = %14
  %107 = load i8*, i8** @xoptarg, align 8
  %108 = load i32*, i32** @Alarm, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32*, i32** @Alarm, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32*, i32** @Alarm, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = call i32 @sscanf(i8* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %109, i32* %111, i32* %113)
  %115 = icmp eq i32 %114, 3
  br i1 %115, label %116, label %141

116:                                              ; preds = %106
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %137, %116
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 3
  br i1 %119, label %120, label %140

120:                                              ; preds = %117
  %121 = load i32*, i32** @Alarm, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 8
  %127 = load i32*, i32** @Alarm, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %126, %131
  %133 = load i32*, i32** @Alarm, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %132, i32* %136, align 4
  br label %137

137:                                              ; preds = %120
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %117

140:                                              ; preds = %117
  br label %141

141:                                              ; preds = %140, %106
  br label %144

142:                                              ; preds = %14
  %143 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %141, %104, %101, %100, %83, %82, %68, %66, %64, %61, %59, %55, %44, %36, %29, %28, %16
  br label %8

145:                                              ; preds = %8
  ret void
}

declare dso_local i32 @xgetopt(i32, i8**, i8*) #1

declare dso_local double @atof(i8*) #1

declare dso_local i32 @FatalError(i8*, ...) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @Help(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_EmitCIEBasedDEF.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_EmitCIEBasedDEF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@.str = private unnamed_addr constant [16 x i8] c"[ /CIEBasedDEF\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"[ /CIEBasedDEFG\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@cmsSigCurveSetElemType = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"/DecodeDEF [ \00", align 1
@cmsSigCLutElemType = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"/Table \00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"   >>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_10__*, i32, i32*)* @EmitCIEBasedDEF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EmitCIEBasedDEF(i32 %0, i32* %1, %struct.TYPE_10__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %16, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %22 = call i32 @cmsStageInputChannels(i32 %20, %struct.TYPE_9__* %21)
  switch i32 %22, label %31 [
    i32 3, label %23
    i32 4, label %27
  ]

23:                                               ; preds = %5
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @_cmsIOPrintf(i32 %24, i32* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %32

27:                                               ; preds = %5
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @_cmsIOPrintf(i32 %28, i32* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  br label %32

31:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %99

32:                                               ; preds = %27, %23
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @_cmsIOPrintf(i32 %33, i32* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %38 = call i64 @cmsStageType(i32 %36, %struct.TYPE_9__* %37)
  %39 = load i64, i64* @cmsSigCurveSetElemType, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @_cmsIOPrintf(i32 %42, i32* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %49 = call i32 @cmsStageOutputChannels(i32 %47, %struct.TYPE_9__* %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %51 = call i32 @_cmsStageGetPtrToCurveSet(%struct.TYPE_9__* %50)
  %52 = call i32 @EmitNGamma(i32 %45, i32* %46, i32 %49, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @_cmsIOPrintf(i32 %53, i32* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %16, align 8
  br label %59

59:                                               ; preds = %41, %32
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %62 = call i64 @cmsStageType(i32 %60, %struct.TYPE_9__* %61)
  %63 = load i64, i64* @cmsSigCLutElemType, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @_cmsIOPrintf(i32 %66, i32* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = load i32, i32* @FALSE, align 4
  %77 = call i32 @WriteCLUT(i32 %69, i32* %70, %struct.TYPE_9__* %71, i8* %72, i8* %73, i8* %74, i8* %75, i32 %76, i32 0)
  %78 = load i32, i32* %7, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @_cmsIOPrintf(i32 %78, i32* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %81

81:                                               ; preds = %65, %59
  %82 = load i32, i32* %7, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @EmitLab2XYZ(i32 %82, i32* %83)
  %85 = load i32, i32* %7, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @EmitWhiteBlackD50(i32 %85, i32* %86, i32* %87)
  %89 = load i32, i32* %7, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @EmitIntent(i32 %89, i32* %90, i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @_cmsIOPrintf(i32 %93, i32* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %96 = load i32, i32* %7, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @_cmsIOPrintf(i32 %96, i32* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %99

99:                                               ; preds = %81, %31
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @cmsStageInputChannels(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @_cmsIOPrintf(i32, i32*, i8*) #1

declare dso_local i64 @cmsStageType(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @EmitNGamma(i32, i32*, i32, i32) #1

declare dso_local i32 @cmsStageOutputChannels(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @_cmsStageGetPtrToCurveSet(%struct.TYPE_9__*) #1

declare dso_local i32 @WriteCLUT(i32, i32*, %struct.TYPE_9__*, i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @EmitLab2XYZ(i32, i32*) #1

declare dso_local i32 @EmitWhiteBlackD50(i32, i32*, i32*) #1

declare dso_local i32 @EmitIntent(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

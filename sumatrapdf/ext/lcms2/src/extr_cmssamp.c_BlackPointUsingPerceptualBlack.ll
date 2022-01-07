; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmssamp.c_BlackPointUsingPerceptualBlack.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmssamp.c_BlackPointUsingPerceptualBlack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double, double, double }
%struct.TYPE_9__ = type { i32, i32, i32 }

@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@LCMS_USED_AS_INPUT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*, i32)* @BlackPointUsingPerceptualBlack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BlackPointUsingPerceptualBlack(i32 %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__, align 4
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %15 = load i32, i32* @LCMS_USED_AS_INPUT, align 4
  %16 = call i32 @cmsIsIntentSupported(i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  store double 0.000000e+00, double* %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store double 0.000000e+00, double* %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store double 0.000000e+00, double* %24, align 8
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %4, align 4
  br label %69

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %30 = call i32* @CreateRoundtripXForm(i32 %27, i32 %28, i32 %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  store double 0.000000e+00, double* %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store double 0.000000e+00, double* %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store double 0.000000e+00, double* %39, align 8
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %4, align 4
  br label %69

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @cmsDoTransform(i32 %45, i32* %46, %struct.TYPE_9__* %9, %struct.TYPE_9__* %10, i32 1)
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 50
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 50, i32* %52, align 4
  br label %53

53:                                               ; preds = %51, %41
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i32 0, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @cmsDeleteTransform(i32 %56, i32* %57)
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @cmsLab2XYZ(i32 %59, i32* null, %struct.TYPE_8__* %11, %struct.TYPE_9__* %10)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = icmp ne %struct.TYPE_8__* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = bitcast %struct.TYPE_8__* %64 to i8*
  %66 = bitcast %struct.TYPE_8__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 24, i1 false)
  br label %67

67:                                               ; preds = %63, %53
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %33, %18
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @cmsIsIntentSupported(i32, i32, i32, i32) #1

declare dso_local i32* @CreateRoundtripXForm(i32, i32, i32) #1

declare dso_local i32 @cmsDoTransform(i32, i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32*) #1

declare dso_local i32 @cmsLab2XYZ(i32, i32*, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

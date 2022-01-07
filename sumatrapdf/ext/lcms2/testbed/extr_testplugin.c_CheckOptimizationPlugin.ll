; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckOptimizationPlugin.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckOptimizationPlugin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.CheckOptimizationPlugin.In = private unnamed_addr constant [4 x i32] [i32 10, i32 20, i32 30, i32 40], align 16
@OptimizationPluginSample = common dso_local global i32 0, align 4
@cmsSigGrayData = common dso_local global i32 0, align 4
@TYPE_GRAY_8 = common dso_local global i32 0, align 4
@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckOptimizationPlugin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  %7 = alloca [1 x i32*], align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = call i32 @WatchDogContext(i32* null)
  store i32 %10, i32* %2, align 4
  %11 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([4 x i32]* @__const.CheckOptimizationPlugin.In to i8*), i64 16, i1 false)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @cmsPlugin(i32 %12, i32* @OptimizationPluginSample)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @DupContext(i32 %14, i32* null)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32* @cmsBuildGamma(i32 %16, double 1.000000e+00)
  %18 = getelementptr inbounds [1 x i32*], [1 x i32*]* %7, i64 0, i64 0
  store i32* %17, i32** %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @cmsSigGrayData, align 4
  %21 = getelementptr inbounds [1 x i32*], [1 x i32*]* %7, i64 0, i64 0
  %22 = call i32 @cmsCreateLinearizationDeviceLink(i32 %19, i32 %20, i32** %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %3, align 4
  %24 = getelementptr inbounds [1 x i32*], [1 x i32*]* %7, i64 0, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @cmsFreeToneCurve(i32 %23, i32* %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @TYPE_GRAY_8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @TYPE_GRAY_8, align 4
  %32 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %33 = call i32 @cmsCreateTransform(i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 0)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @cmsCloseProfile(i32 %34, i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %41 = call i32 @cmsDoTransform(i32 %37, i32 %38, i32* %39, i32* %40, i32 4)
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @cmsDeleteTransform(i32 %42, i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @cmsDeleteContext(i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @cmsDeleteContext(i32 %47)
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %64, %0
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %56, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 0, i32* %1, align 4
  br label %68

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %49

67:                                               ; preds = %49
  store i32 1, i32* %1, align 4
  br label %68

68:                                               ; preds = %67, %62
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @WatchDogContext(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cmsPlugin(i32, i32*) #1

declare dso_local i32 @DupContext(i32, i32*) #1

declare dso_local i32* @cmsBuildGamma(i32, double) #1

declare dso_local i32 @cmsCreateLinearizationDeviceLink(i32, i32, i32**) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

declare dso_local i32 @cmsCreateTransform(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

declare dso_local i32 @cmsDoTransform(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32) #1

declare dso_local i32 @cmsDeleteContext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

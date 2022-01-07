; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckIntentPlugin.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckIntentPlugin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.CheckIntentPlugin.In = private unnamed_addr constant [4 x i32] [i32 10, i32 20, i32 30, i32 40], align 16
@IntentPluginSample = common dso_local global i32 0, align 4
@cmsSigGrayData = common dso_local global i32 0, align 4
@TYPE_GRAY_8 = common dso_local global i32 0, align 4
@INTENT_DECEPTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckIntentPlugin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = call i32 @WatchDogContext(i32* null)
  store i32 %12, i32* %2, align 4
  %13 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([4 x i32]* @__const.CheckIntentPlugin.In to i8*), i64 16, i1 false)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @cmsPlugin(i32 %14, i32* @IntentPluginSample)
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @DupContext(i32 %16, i32* null)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32* @cmsBuildGamma(i32 %18, double 3.000000e+00)
  store i32* %19, i32** %7, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32* @cmsBuildGamma(i32 %20, double 1.000000e-01)
  store i32* %21, i32** %8, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @cmsSigGrayData, align 4
  %24 = call i32 @cmsCreateLinearizationDeviceLink(i32 %22, i32 %23, i32** %7)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @cmsSigGrayData, align 4
  %27 = call i32 @cmsCreateLinearizationDeviceLink(i32 %25, i32 %26, i32** %8)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @cmsFreeToneCurve(i32 %28, i32* %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @cmsFreeToneCurve(i32 %31, i32* %32)
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @TYPE_GRAY_8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @TYPE_GRAY_8, align 4
  %39 = load i32, i32* @INTENT_DECEPTIVE, align 4
  %40 = call i32 @cmsCreateTransform(i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @cmsCloseProfile(i32 %41, i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @cmsCloseProfile(i32 %44, i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %51 = call i32 @cmsDoTransform(i32 %47, i32 %48, i32* %49, i32* %50, i32 4)
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @cmsDeleteTransform(i32 %52, i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @cmsDeleteContext(i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @cmsDeleteContext(i32 %57)
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %74, %0
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %66, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i32 0, i32* %1, align 4
  br label %78

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %59

77:                                               ; preds = %59
  store i32 1, i32* %1, align 4
  br label %78

78:                                               ; preds = %77, %72
  %79 = load i32, i32* %1, align 4
  ret i32 %79
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

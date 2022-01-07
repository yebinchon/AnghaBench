; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_mktiff8.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_mktiff8.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Creating lcmstiff8.icm...\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"lcmstiff8.icm\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@cmsAT_BEGIN = common dso_local global i32 0, align 4
@cmsSigLabData = common dso_local global i32 0, align 4
@cmsSigLinkClass = common dso_local global i32 0, align 4
@cmsSigAToB0Tag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [3 x i32*], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @remove(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @cmsOpenProfileFromFile(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = call i32* (...) @CreateLinear()
  store i32* %15, i32** %9, align 8
  %16 = call i32* (...) @CreateStep()
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  store i32* %17, i32** %18, align 16
  %19 = load i32*, i32** %10, align 8
  %20 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 1
  store i32* %19, i32** %20, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 2
  store i32* %21, i32** %22, align 16
  %23 = call i32* @cmsPipelineAlloc(i32 0, i32 3, i32 3)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @cmsAT_BEGIN, align 4
  %26 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  %27 = call i32 @cmsStageAllocToneCurves(i32 0, i32 3, i32** %26)
  %28 = call i32 @cmsPipelineInsertStage(i32* %24, i32 %25, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @cmsSigLabData, align 4
  %31 = call i32 @cmsSetColorSpace(i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @cmsSigLabData, align 4
  %34 = call i32 @cmsSetPCS(i32 %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @cmsSigLinkClass, align 4
  %37 = call i32 @cmsSetDeviceClass(i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @cmsSetProfileVersion(i32 %38, double 4.200000e+00)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @cmsSigAToB0Tag, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @cmsWriteTag(i32 %40, i32 %41, i32* %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @SetTextTags(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @cmsCloseProfile(i32 %46)
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @cmsFreeToneCurve(i32* %48)
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @cmsFreeToneCurve(i32* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @cmsPipelineFree(i32* %52)
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @remove(i8*) #1

declare dso_local i32 @cmsOpenProfileFromFile(i8*, i8*) #1

declare dso_local i32* @CreateLinear(...) #1

declare dso_local i32* @CreateStep(...) #1

declare dso_local i32* @cmsPipelineAlloc(i32, i32, i32) #1

declare dso_local i32 @cmsPipelineInsertStage(i32*, i32, i32) #1

declare dso_local i32 @cmsStageAllocToneCurves(i32, i32, i32**) #1

declare dso_local i32 @cmsSetColorSpace(i32, i32) #1

declare dso_local i32 @cmsSetPCS(i32, i32) #1

declare dso_local i32 @cmsSetDeviceClass(i32, i32) #1

declare dso_local i32 @cmsSetProfileVersion(i32, double) #1

declare dso_local i32 @cmsWriteTag(i32, i32, i32*) #1

declare dso_local i32 @SetTextTags(i32) #1

declare dso_local i32 @cmsCloseProfile(i32) #1

declare dso_local i32 @cmsFreeToneCurve(i32*) #1

declare dso_local i32 @cmsPipelineFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

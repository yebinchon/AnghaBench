; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckLinking.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckLinking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsSigCmykData = common dso_local global i32 0, align 4
@cmsSigAToB1Tag = common dso_local global i32 0, align 4
@cmsSigAToB0Tag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"lcms2link.icc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@cmsAT_BEGIN = common dso_local global i32 0, align 4
@cmsAT_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"lcms2link2.icc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckLinking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckLinking() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = call i32 (...) @DbgThread()
  %7 = load i32, i32* @cmsSigCmykData, align 4
  %8 = call i32* @cmsCreateInkLimitingDeviceLink(i32 %6, i32 %7, i32 150)
  store i32* %8, i32** %2, align 8
  %9 = call i32 (...) @DbgThread()
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @cmsSigAToB1Tag, align 4
  %12 = load i64, i64* @cmsSigAToB0Tag, align 8
  %13 = call i32 @cmsLinkTag(i32 %9, i32* %10, i32 %11, i64 %12)
  %14 = call i32 (...) @DbgThread()
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @cmsSaveProfileToFile(i32 %14, i32* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %84

19:                                               ; preds = %0
  %20 = call i32 (...) @DbgThread()
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @cmsCloseProfile(i32 %20, i32* %21)
  %23 = call i32 (...) @DbgThread()
  %24 = call i32* @cmsOpenProfileFromFile(i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %2, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %84

28:                                               ; preds = %19
  %29 = call i32 (...) @DbgThread()
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @cmsSigAToB1Tag, align 4
  %32 = call i64 @cmsReadTag(i32 %29, i32* %30, i32 %31)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %3, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %1, align 4
  br label %84

37:                                               ; preds = %28
  %38 = call i32 (...) @DbgThread()
  %39 = load i32*, i32** %3, align 8
  %40 = call i32* @cmsPipelineDup(i32 %38, i32* %39)
  store i32* %40, i32** %3, align 8
  %41 = call i32 (...) @DbgThread()
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @cmsAT_BEGIN, align 4
  %44 = call i32 @cmsPipelineUnlinkStage(i32 %41, i32* %42, i32 %43, i32** %4)
  %45 = call i32 (...) @DbgThread()
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @cmsAT_END, align 4
  %48 = call i32 @cmsPipelineUnlinkStage(i32 %45, i32* %46, i32 %47, i32** %5)
  %49 = call i32 (...) @DbgThread()
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @cmsAT_END, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @cmsPipelineInsertStage(i32 %49, i32* %50, i32 %51, i32* %52)
  %54 = call i32 (...) @DbgThread()
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @cmsAT_BEGIN, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @cmsPipelineInsertStage(i32 %54, i32* %55, i32 %56, i32* %57)
  %59 = call i32 (...) @DbgThread()
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* @cmsSigAToB1Tag, align 4
  %62 = call i64 @cmsTagLinkedTo(i32 %59, i32* %60, i32 %61)
  %63 = load i64, i64* @cmsSigAToB0Tag, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %84

66:                                               ; preds = %37
  %67 = call i32 (...) @DbgThread()
  %68 = load i32*, i32** %2, align 8
  %69 = load i64, i64* @cmsSigAToB0Tag, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @cmsWriteTag(i32 %67, i32* %68, i64 %69, i32* %70)
  %72 = call i32 (...) @DbgThread()
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @cmsPipelineFree(i32 %72, i32* %73)
  %75 = call i32 (...) @DbgThread()
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @cmsSaveProfileToFile(i32 %75, i32* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %66
  store i32 0, i32* %1, align 4
  br label %84

80:                                               ; preds = %66
  %81 = call i32 (...) @DbgThread()
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @cmsCloseProfile(i32 %81, i32* %82)
  store i32 1, i32* %1, align 4
  br label %84

84:                                               ; preds = %80, %79, %65, %36, %27, %18
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

declare dso_local i32* @cmsCreateInkLimitingDeviceLink(i32, i32, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsLinkTag(i32, i32*, i32, i64) #1

declare dso_local i32 @cmsSaveProfileToFile(i32, i32*, i8*) #1

declare dso_local i32 @cmsCloseProfile(i32, i32*) #1

declare dso_local i32* @cmsOpenProfileFromFile(i32, i8*, i8*) #1

declare dso_local i64 @cmsReadTag(i32, i32*, i32) #1

declare dso_local i32* @cmsPipelineDup(i32, i32*) #1

declare dso_local i32 @cmsPipelineUnlinkStage(i32, i32*, i32, i32**) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32*) #1

declare dso_local i64 @cmsTagLinkedTo(i32, i32*, i32) #1

declare dso_local i32 @cmsWriteTag(i32, i32*, i64, i32*) #1

declare dso_local i32 @cmsPipelineFree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

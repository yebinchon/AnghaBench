; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsio1.c__cmsReadFloatInputTag.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsio1.c__cmsReadFloatInputTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsSigLabData = common dso_local global i64 0, align 8
@cmsAT_BEGIN = common dso_local global i32 0, align 4
@cmsSigXYZData = common dso_local global i64 0, align 8
@cmsAT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32)* @_cmsReadFloatInputTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_cmsReadFloatInputTag(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @cmsReadTag(i32 %12, i32 %13, i32 %14)
  %16 = inttoptr i64 %15 to i32*
  %17 = call i32* @cmsPipelineDup(i32 %11, i32* %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @cmsGetColorSpace(i32 %18, i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @cmsGetPCS(i32 %21, i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %91

27:                                               ; preds = %3
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @cmsSigLabData, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* @cmsAT_BEGIN, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @_cmsStageNormalizeToLabFloat(i32 %35)
  %37 = call i32 @cmsPipelineInsertStage(i32 %32, i32* %33, i32 %34, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %87

40:                                               ; preds = %31
  br label %56

41:                                               ; preds = %27
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @cmsSigXYZData, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* @cmsAT_BEGIN, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @_cmsStageNormalizeToXyzFloat(i32 %49)
  %51 = call i32 @cmsPipelineInsertStage(i32 %46, i32* %47, i32 %48, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %87

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %41
  br label %56

56:                                               ; preds = %55, %40
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @cmsSigLabData, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* @cmsAT_END, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @_cmsStageNormalizeFromLabFloat(i32 %64)
  %66 = call i32 @cmsPipelineInsertStage(i32 %61, i32* %62, i32 %63, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  br label %87

69:                                               ; preds = %60
  br label %85

70:                                               ; preds = %56
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* @cmsSigXYZData, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* @cmsAT_END, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @_cmsStageNormalizeFromXyzFloat(i32 %78)
  %80 = call i32 @cmsPipelineInsertStage(i32 %75, i32* %76, i32 %77, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %74
  br label %87

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %70
  br label %85

85:                                               ; preds = %84, %69
  %86 = load i32*, i32** %8, align 8
  store i32* %86, i32** %4, align 8
  br label %91

87:                                               ; preds = %82, %68, %53, %39
  %88 = load i32, i32* %5, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @cmsPipelineFree(i32 %88, i32* %89)
  store i32* null, i32** %4, align 8
  br label %91

91:                                               ; preds = %87, %85, %26
  %92 = load i32*, i32** %4, align 8
  ret i32* %92
}

declare dso_local i32* @cmsPipelineDup(i32, i32*) #1

declare dso_local i64 @cmsReadTag(i32, i32, i32) #1

declare dso_local i64 @cmsGetColorSpace(i32, i32) #1

declare dso_local i64 @cmsGetPCS(i32, i32) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32) #1

declare dso_local i32 @_cmsStageNormalizeToLabFloat(i32) #1

declare dso_local i32 @_cmsStageNormalizeToXyzFloat(i32) #1

declare dso_local i32 @_cmsStageNormalizeFromLabFloat(i32) #1

declare dso_local i32 @_cmsStageNormalizeFromXyzFloat(i32) #1

declare dso_local i32 @cmsPipelineFree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c__cmsLinkProfiles.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c__cmsLinkProfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* (i32, i64, i64*, i32*, i32*, i32*, i64)* }

@cmsERROR_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Couldn't link '%d' profiles\00", align 1
@INTENT_ABSOLUTE_COLORIMETRIC = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@INTENT_PERCEPTUAL = common dso_local global i64 0, align 8
@INTENT_SATURATION = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@cmsERROR_UNKNOWN_EXTENSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupported intent '%d'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @_cmsLinkProfiles(i32 %0, i64 %1, i64* %2, i32* %3, i32* %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i64* %2, i64** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %7
  %21 = load i64, i64* %10, align 8
  %22 = icmp sgt i64 %21, 255
  br i1 %22, label %23, label %28

23:                                               ; preds = %20, %7
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @cmsERROR_RANGE, align 4
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @cmsSignalError(i32 %24, i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %26)
  store i32* null, i32** %8, align 8
  br label %104

28:                                               ; preds = %20
  store i64 0, i64* %16, align 8
  br label %29

29:                                               ; preds = %74, %28
  %30 = load i64, i64* %16, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %29
  %34 = load i64*, i64** %11, align 8
  %35 = load i64, i64* %16, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @INTENT_ABSOLUTE_COLORIMETRIC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i32, i32* @FALSE, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = load i64, i64* %16, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %33
  %46 = load i64*, i64** %11, align 8
  %47 = load i64, i64* %16, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @INTENT_PERCEPTUAL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load i64*, i64** %11, align 8
  %54 = load i64, i64* %16, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @INTENT_SATURATION, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %52, %45
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = load i64, i64* %16, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cmsGetEncodedICCversion(i32 %60, i32 %64)
  %66 = icmp sge i32 %65, 67108864
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i32, i32* @TRUE, align 4
  %69 = load i32*, i32** %13, align 8
  %70 = load i64, i64* %16, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %59
  br label %73

73:                                               ; preds = %72, %52
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %16, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %16, align 8
  br label %29

77:                                               ; preds = %29
  %78 = load i32, i32* %9, align 4
  %79 = load i64*, i64** %11, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = call %struct.TYPE_3__* @SearchIntent(i32 %78, i64 %81)
  store %struct.TYPE_3__* %82, %struct.TYPE_3__** %17, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %84 = icmp eq %struct.TYPE_3__* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %88 = load i64*, i64** %11, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @cmsSignalError(i32 %86, i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %90)
  store i32* null, i32** %8, align 8
  br label %104

92:                                               ; preds = %77
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32* (i32, i64, i64*, i32*, i32*, i32*, i64)*, i32* (i32, i64, i64*, i32*, i32*, i32*, i64)** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i64, i64* %10, align 8
  %98 = load i64*, i64** %11, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = load i64, i64* %15, align 8
  %103 = call i32* %95(i32 %96, i64 %97, i64* %98, i32* %99, i32* %100, i32* %101, i64 %102)
  store i32* %103, i32** %8, align 8
  br label %104

104:                                              ; preds = %92, %85, %23
  %105 = load i32*, i32** %8, align 8
  ret i32* %105
}

declare dso_local i32 @cmsSignalError(i32, i32, i8*, i64) #1

declare dso_local i32 @cmsGetEncodedICCversion(i32, i32) #1

declare dso_local %struct.TYPE_3__* @SearchIntent(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

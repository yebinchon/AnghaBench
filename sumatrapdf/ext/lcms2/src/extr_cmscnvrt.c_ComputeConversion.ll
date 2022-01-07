; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_ComputeConversion.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_ComputeConversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_14__ = type { i64, i64, i64 }

@INTENT_ABSOLUTE_COLORIMETRIC = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@MAX_ENCODEABLE_XYZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32*, i64, i64, i32, i32*, %struct.TYPE_13__*)* @ComputeConversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ComputeConversion(i32 %0, i64 %1, i32* %2, i64 %3, i64 %4, i32 %5, i32* %6, %struct.TYPE_13__* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__, align 8
  %20 = alloca %struct.TYPE_14__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_14__, align 8
  %24 = alloca %struct.TYPE_14__, align 8
  store i32 %0, i32* %10, align 4
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %17, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32*, i32** %16, align 8
  %27 = call i32 @_cmsMAT3identity(i32 %25, i32* %26)
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %30 = call i32 @_cmsVEC3init(i32 %28, %struct.TYPE_13__* %29, i32 0, i32 0, i32 0)
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @INTENT_ABSOLUTE_COLORIMETRIC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %8
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = load i64, i64* %11, align 8
  %38 = sub nsw i64 %37, 1
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @_cmsReadMediaWhitePoint(i32 %35, %struct.TYPE_14__* %19, i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load i64, i64* %11, align 8
  %45 = sub nsw i64 %44, 1
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @_cmsReadCHAD(i32 %42, i32* %21, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @_cmsReadMediaWhitePoint(i32 %49, %struct.TYPE_14__* %20, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @_cmsReadCHAD(i32 %55, i32* %22, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32*, i32** %16, align 8
  %64 = call i32 @ComputeAbsoluteIntent(i32 %61, i32 %62, %struct.TYPE_14__* %19, i32* %21, %struct.TYPE_14__* %20, i32* %22, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %34
  %67 = load i64, i64* @FALSE, align 8
  store i64 %67, i64* %9, align 8
  br label %131

68:                                               ; preds = %34
  br label %112

69:                                               ; preds = %8
  %70 = load i64, i64* %14, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %111

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = load i64, i64* %11, align 8
  %76 = sub nsw i64 %75, 1
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %13, align 8
  %80 = call i32 @cmsDetectBlackPoint(i32 %73, %struct.TYPE_14__* %23, i32 %78, i64 %79, i32 0)
  %81 = load i32, i32* %10, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @cmsDetectDestinationBlackPoint(i32 %81, %struct.TYPE_14__* %24, i32 %85, i64 %86, i32 0)
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %89, %91
  br i1 %92, label %105, label %93

93:                                               ; preds = %72
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %95, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %101, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99, %93, %72
  %106 = load i32, i32* %10, align 4
  %107 = load i32*, i32** %16, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %109 = call i32 @ComputeBlackPointCompensation(i32 %106, %struct.TYPE_14__* %23, %struct.TYPE_14__* %24, i32* %107, %struct.TYPE_13__* %108)
  br label %110

110:                                              ; preds = %105, %99
  br label %111

111:                                              ; preds = %110, %69
  br label %112

112:                                              ; preds = %111, %68
  store i32 0, i32* %18, align 4
  br label %113

113:                                              ; preds = %126, %112
  %114 = load i32, i32* %18, align 4
  %115 = icmp slt i32 %114, 3
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load i32, i32* @MAX_ENCODEABLE_XYZ, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %18, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %124, %117
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %116
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %18, align 4
  br label %113

129:                                              ; preds = %113
  %130 = load i64, i64* @TRUE, align 8
  store i64 %130, i64* %9, align 8
  br label %131

131:                                              ; preds = %129, %66
  %132 = load i64, i64* %9, align 8
  ret i64 %132
}

declare dso_local i32 @_cmsMAT3identity(i32, i32*) #1

declare dso_local i32 @_cmsVEC3init(i32, %struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @_cmsReadMediaWhitePoint(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @_cmsReadCHAD(i32, i32*, i32) #1

declare dso_local i32 @ComputeAbsoluteIntent(i32, i32, %struct.TYPE_14__*, i32*, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @cmsDetectBlackPoint(i32, %struct.TYPE_14__*, i32, i64, i32) #1

declare dso_local i32 @cmsDetectDestinationBlackPoint(i32, %struct.TYPE_14__*, i32, i64, i32) #1

declare dso_local i32 @ComputeBlackPointCompensation(i32, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

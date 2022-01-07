; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_WriteInputMatrixShaper.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_WriteInputMatrixShaper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@INTENT_RELATIVE_COLORIMETRIC = common dso_local global i32 0, align 4
@cmsSigGrayData = common dso_local global i64 0, align 8
@cmsSigRgbData = common dso_local global i64 0, align 8
@MAX_ENCODEABLE_XYZ = common dso_local global i32 0, align 4
@cmsERROR_COLORSPACE_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Profile is not suitable for CSA. Unsupported colorspace.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32*, i32*)* @WriteInputMatrixShaper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteInputMatrixShaper(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32**, align 8
  %16 = alloca %struct.TYPE_5__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @cmsGetColorSpace(i32 %19, i32 %20)
  store i64 %21, i64* %12, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %25 = call i32 @cmsDetectBlackPoint(i32 %22, i32* %14, i32 %23, i32 %24, i32 0)
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @cmsSigGrayData, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %5
  %30 = load i32*, i32** %11, align 8
  %31 = call i32** @_cmsStageGetPtrToCurveSet(i32* %30)
  store i32** %31, i32*** %15, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32**, i32*** %15, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @EmitCIEBasedA(i32 %32, i32* %33, i32* %36, i32* %14)
  store i32 %37, i32* %13, align 4
  br label %86

38:                                               ; preds = %5
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @cmsSigRgbData, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %38
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @GetPtrToMatrix(i32* %43)
  %45 = call i32 @memmove(%struct.TYPE_5__* %16, i32 %44, i32 8)
  store i32 0, i32* %17, align 4
  br label %46

46:                                               ; preds = %71, %42
  %47 = load i32, i32* %17, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %74

49:                                               ; preds = %46
  store i32 0, i32* %18, align 4
  br label %50

50:                                               ; preds = %67, %49
  %51 = load i32, i32* %18, align 4
  %52 = icmp slt i32 %51, 3
  br i1 %52, label %53, label %70

53:                                               ; preds = %50
  %54 = load i32, i32* @MAX_ENCODEABLE_XYZ, align 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %18, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %65, %54
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %53
  %68 = load i32, i32* %18, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %18, align 4
  br label %50

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %46

74:                                               ; preds = %46
  %75 = load i32, i32* %7, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = bitcast %struct.TYPE_5__* %16 to i32*
  %78 = load i32*, i32** %11, align 8
  %79 = call i32** @_cmsStageGetPtrToCurveSet(i32* %78)
  %80 = call i32 @EmitCIEBasedABC(i32 %75, i32* %76, i32* %77, i32** %79, i32* %14)
  store i32 %80, i32* %13, align 4
  br label %85

81:                                               ; preds = %38
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @cmsERROR_COLORSPACE_CHECK, align 4
  %84 = call i32 @cmsSignalError(i32 %82, i32 %83, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %88

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %29
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %81
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i64 @cmsGetColorSpace(i32, i32) #1

declare dso_local i32 @cmsDetectBlackPoint(i32, i32*, i32, i32, i32) #1

declare dso_local i32** @_cmsStageGetPtrToCurveSet(i32*) #1

declare dso_local i32 @EmitCIEBasedA(i32, i32*, i32*, i32*) #1

declare dso_local i32 @memmove(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @GetPtrToMatrix(i32*) #1

declare dso_local i32 @EmitCIEBasedABC(i32, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

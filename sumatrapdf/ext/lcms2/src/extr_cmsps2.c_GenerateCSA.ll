; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_GenerateCSA.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_GenerateCSA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@cmsSigNamedColorClass = common dso_local global i64 0, align 8
@cmsSigXYZData = common dso_local global i64 0, align 8
@cmsSigLabData = common dso_local global i64 0, align 8
@cmsERROR_COLORSPACE_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid output color space\00", align 1
@cmsSigCurveSetElemType = common dso_local global i32 0, align 4
@cmsSigMatrixElemType = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.TYPE_6__*)* @GenerateCSA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GenerateCSA(i32 %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_6__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %11, align 8
  store i32* null, i32** %13, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @cmsGetDeviceClass(i32 %17, i32 %18)
  %20 = load i64, i64* @cmsSigNamedColorClass, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @WriteNamedColorCSA(i32 %23, %struct.TYPE_6__* %24, i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %94

30:                                               ; preds = %22
  br label %82

31:                                               ; preds = %5
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @cmsGetPCS(i32 %32, i32 %33)
  store i64 %34, i64* %16, align 8
  %35 = load i64, i64* %16, align 8
  %36 = load i64, i64* @cmsSigXYZData, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load i64, i64* %16, align 8
  %40 = load i64, i64* @cmsSigLabData, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @cmsERROR_COLORSPACE_CHECK, align 4
  %45 = call i32 @cmsSignalError(i32 %43, i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %94

46:                                               ; preds = %38, %31
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32* @_cmsReadInputLUT(i32 %47, i32 %48, i32 %49)
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %94

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* @cmsSigCurveSetElemType, align 4
  %58 = load i32, i32* @cmsSigMatrixElemType, align 4
  %59 = call i64 @cmsPipelineCheckAndRetreiveStages(i32 %55, i32* %56, i32 2, i32 %57, i32 %58, i32** %15, i32** %14)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32*, i32** %14, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @WriteInputMatrixShaper(i32 %62, %struct.TYPE_6__* %63, i32 %64, i32* %65, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  br label %94

70:                                               ; preds = %61
  br label %81

71:                                               ; preds = %54
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @WriteInputLUT(i32 %72, %struct.TYPE_6__* %73, i32 %74, i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  br label %94

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %70
  br label %82

82:                                               ; preds = %81, %30
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %12, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* %7, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = call i32 @cmsPipelineFree(i32 %89, i32* %90)
  br label %92

92:                                               ; preds = %88, %82
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %6, align 4
  br label %102

94:                                               ; preds = %79, %69, %53, %42, %29
  %95 = load i32*, i32** %13, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = load i32*, i32** %13, align 8
  %100 = call i32 @cmsPipelineFree(i32 %98, i32* %99)
  br label %101

101:                                              ; preds = %97, %94
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %101, %92
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i64 @cmsGetDeviceClass(i32, i32) #1

declare dso_local i32 @WriteNamedColorCSA(i32, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @cmsGetPCS(i32, i32) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*) #1

declare dso_local i32* @_cmsReadInputLUT(i32, i32, i32) #1

declare dso_local i64 @cmsPipelineCheckAndRetreiveStages(i32, i32*, i32, i32, i32, i32**, i32**) #1

declare dso_local i32 @WriteInputMatrixShaper(i32, %struct.TYPE_6__*, i32, i32*, i32*) #1

declare dso_local i32 @WriteInputLUT(i32, %struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @cmsPipelineFree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmssamp.c_BlackPointAsDarkerColorant.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmssamp.c_BlackPointAsDarkerColorant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double, double, double }
%struct.TYPE_8__ = type { i32, i64, i64 }

@LCMS_USED_AS_INPUT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TYPE_Lab_DBL = common dso_local global i32 0, align 4
@cmsFLAGS_NOOPTIMIZE = common dso_local global i32 0, align 4
@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, %struct.TYPE_7__*, i64)* @BlackPointAsDarkerColorant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BlackPointAsDarkerColorant(i32 %0, i32* %1, i64 %2, %struct.TYPE_7__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_8__, align 8
  %19 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i32, i32* @LCMS_USED_AS_INPUT, align 4
  %24 = call i32 @cmsIsIntentSupported(i32 %20, i32* %21, i64 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  store double 0.000000e+00, double* %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store double 0.000000e+00, double* %30, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store double 0.000000e+00, double* %32, align 8
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %6, align 4
  br label %129

34:                                               ; preds = %5
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i64 @cmsFormatterForColorspaceOfProfile(i32 %35, i32* %36, i32 2, i32 %37)
  store i64 %38, i64* %16, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @cmsGetColorSpace(i32 %39, i32* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @_cmsEndPointsBySpace(i32 %42, i32* null, i32** %12, i64* %15)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %34
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  store double 0.000000e+00, double* %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store double 0.000000e+00, double* %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store double 0.000000e+00, double* %51, align 8
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %6, align 4
  br label %129

53:                                               ; preds = %34
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %16, align 8
  %56 = call i64 @T_CHANNELS(i64 %55)
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store double 0.000000e+00, double* %60, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store double 0.000000e+00, double* %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store double 0.000000e+00, double* %64, align 8
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %6, align 4
  br label %129

66:                                               ; preds = %53
  %67 = load i32, i32* %7, align 4
  %68 = call i32* @cmsCreateLab2Profile(i32 %67, i32* null)
  store i32* %68, i32** %17, align 8
  %69 = load i32*, i32** %17, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store double 0.000000e+00, double* %73, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store double 0.000000e+00, double* %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store double 0.000000e+00, double* %77, align 8
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %6, align 4
  br label %129

79:                                               ; preds = %66
  %80 = load i32, i32* %7, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i32*, i32** %17, align 8
  %84 = load i32, i32* @TYPE_Lab_DBL, align 4
  %85 = load i64, i64* %9, align 8
  %86 = load i32, i32* @cmsFLAGS_NOOPTIMIZE, align 4
  %87 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %88 = or i32 %86, %87
  %89 = call i32* @cmsCreateTransform(i32 %80, i32* %81, i64 %82, i32* %83, i32 %84, i64 %85, i32 %88)
  store i32* %89, i32** %13, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32*, i32** %17, align 8
  %92 = call i32 @cmsCloseProfile(i32 %90, i32* %91)
  %93 = load i32*, i32** %13, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %79
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  store double 0.000000e+00, double* %97, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store double 0.000000e+00, double* %99, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store double 0.000000e+00, double* %101, align 8
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %6, align 4
  br label %129

103:                                              ; preds = %79
  %104 = load i32, i32* %7, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @cmsDoTransform(i32 %104, i32* %105, i32* %106, %struct.TYPE_8__* %18, i32 1)
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i64 0, i64* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sgt i32 %111, 50
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 50, i32* %114, align 8
  br label %115

115:                                              ; preds = %113, %103
  %116 = load i32, i32* %7, align 4
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @cmsDeleteTransform(i32 %116, i32* %117)
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @cmsLab2XYZ(i32 %119, i32* null, %struct.TYPE_7__* %19, %struct.TYPE_8__* %18)
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %122 = icmp ne %struct.TYPE_7__* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %115
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %125 = bitcast %struct.TYPE_7__* %124 to i8*
  %126 = bitcast %struct.TYPE_7__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %126, i64 24, i1 false)
  br label %127

127:                                              ; preds = %123, %115
  %128 = load i32, i32* @TRUE, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %127, %95, %71, %58, %45, %26
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i32 @cmsIsIntentSupported(i32, i32*, i64, i32) #1

declare dso_local i64 @cmsFormatterForColorspaceOfProfile(i32, i32*, i32, i32) #1

declare dso_local i32 @cmsGetColorSpace(i32, i32*) #1

declare dso_local i32 @_cmsEndPointsBySpace(i32, i32*, i32**, i64*) #1

declare dso_local i64 @T_CHANNELS(i64) #1

declare dso_local i32* @cmsCreateLab2Profile(i32, i32*) #1

declare dso_local i32* @cmsCreateTransform(i32, i32*, i64, i32*, i32, i64, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32*) #1

declare dso_local i32 @cmsDoTransform(i32, i32*, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32*) #1

declare dso_local i32 @cmsLab2XYZ(i32, i32*, %struct.TYPE_7__*, %struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

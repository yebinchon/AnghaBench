; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WriteSetOfCurves.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WriteSetOfCurves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@cmsERROR_UNKNOWN_EXTENSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown curve type '%s'\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, i32*, i32, i32*)* @WriteSetOfCurves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteSetOfCurves(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__**, align 8
  %16 = alloca [5 x i8], align 1
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %11, align 8
  %19 = call i64 @cmsStageOutputChannels(i32 %17, i32* %18)
  store i64 %19, i64* %13, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call %struct.TYPE_7__** @_cmsStageGetPtrToCurveSet(i32* %20)
  store %struct.TYPE_7__** %21, %struct.TYPE_7__*** %15, align 8
  store i64 0, i64* %12, align 8
  br label %22

22:                                               ; preds = %121, %5
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %124

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %29 = load i64, i64* %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %28, i64 %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %26
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %36, i64 %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %55

43:                                               ; preds = %35
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %44, i64 %45
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43, %26
  store i32 129, i32* %14, align 4
  br label %68

55:                                               ; preds = %43, %35
  %56 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %56, i64 %57
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  store i32 129, i32* %14, align 4
  br label %67

67:                                               ; preds = %66, %55
  br label %68

68:                                               ; preds = %67, %54
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @_cmsWriteTypeBase(i32 %69, i32* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %6, align 4
  br label %126

76:                                               ; preds = %68
  %77 = load i32, i32* %14, align 4
  switch i32 %77, label %104 [
    i32 129, label %78
    i32 128, label %91
  ]

78:                                               ; preds = %76
  %79 = load i32, i32* %7, align 4
  %80 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %82, i64 %83
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = call i32 @Type_Curve_Write(i32 %79, %struct._cms_typehandler_struct* %80, i32* %81, %struct.TYPE_7__* %85, i32 1)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %78
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %6, align 4
  br label %126

90:                                               ; preds = %78
  br label %113

91:                                               ; preds = %76
  %92 = load i32, i32* %7, align 4
  %93 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %96 = load i64, i64* %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %95, i64 %96
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = call i32 @Type_ParametricCurve_Write(i32 %92, %struct._cms_typehandler_struct* %93, i32* %94, %struct.TYPE_7__* %98, i32 1)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %91
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %6, align 4
  br label %126

103:                                              ; preds = %91
  br label %113

104:                                              ; preds = %76
  %105 = getelementptr inbounds [5 x i8], [5 x i8]* %16, i64 0, i64 0
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @_cmsTagSignature2String(i8* %105, i32 %106)
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %110 = getelementptr inbounds [5 x i8], [5 x i8]* %16, i64 0, i64 0
  %111 = call i32 @cmsSignalError(i32 %108, i32 %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %110)
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %6, align 4
  br label %126

113:                                              ; preds = %103, %90
  %114 = load i32, i32* %7, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @_cmsWriteAlignment(i32 %114, i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @FALSE, align 4
  store i32 %119, i32* %6, align 4
  br label %126

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %12, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %12, align 8
  br label %22

124:                                              ; preds = %22
  %125 = load i32, i32* @TRUE, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %124, %118, %104, %101, %88, %74
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i64 @cmsStageOutputChannels(i32, i32*) #1

declare dso_local %struct.TYPE_7__** @_cmsStageGetPtrToCurveSet(i32*) #1

declare dso_local i32 @_cmsWriteTypeBase(i32, i32*, i32) #1

declare dso_local i32 @Type_Curve_Write(i32, %struct._cms_typehandler_struct*, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @Type_ParametricCurve_Write(i32, %struct._cms_typehandler_struct*, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @_cmsTagSignature2String(i8*, i32) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*, i8*) #1

declare dso_local i32 @_cmsWriteAlignment(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

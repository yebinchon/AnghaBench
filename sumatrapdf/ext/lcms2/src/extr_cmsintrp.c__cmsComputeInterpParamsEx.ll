; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsintrp.c__cmsComputeInterpParamsEx.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsintrp.c__cmsComputeInterpParamsEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64*, i64*, i64*, i8* }

@MAX_INPUT_DIMENSIONS = common dso_local global i64 0, align 8
@cmsERROR_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Too many input channels (%d channels, max=%d)\00", align 1
@cmsERROR_UNKNOWN_EXTENSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Unsupported interpolation (%d->%d channels)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @_cmsComputeInterpParamsEx(i32 %0, i64* %1, i64 %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @MAX_INPUT_DIMENSIONS, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %6
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @cmsERROR_RANGE, align 4
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @MAX_INPUT_DIMENSIONS, align 8
  %24 = call i32 @cmsSignalError(i32 %20, i32 %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %23)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %123

25:                                               ; preds = %6
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @_cmsMallocZero(i32 %26, i32 56)
  %28 = inttoptr i64 %27 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %14, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %30 = icmp eq %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %123

32:                                               ; preds = %25
  %33 = load i64, i64* %13, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  store i64 0, i64* %15, align 8
  br label %45

45:                                               ; preds = %69, %32
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %45
  %50 = load i64*, i64** %9, align 8
  %51 = load i64, i64* %15, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %15, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 %53, i64* %58, align 8
  %59 = load i64*, i64** %9, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %62, 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %15, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 %63, i64* %68, align 8
  br label %69

69:                                               ; preds = %49
  %70 = load i64, i64* %15, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %15, align 8
  br label %45

72:                                               ; preds = %45
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 5
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  store i64 %75, i64* %79, align 8
  store i64 1, i64* %15, align 8
  br label %80

80:                                               ; preds = %104, %72
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %10, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %80
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 5
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* %15, align 8
  %89 = sub i64 %88, 1
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %15, align 8
  %95 = sub i64 %93, %94
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = mul i64 %91, %97
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 5
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* %15, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  store i64 %98, i64* %103, align 8
  br label %104

104:                                              ; preds = %84
  %105 = load i64, i64* %15, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %15, align 8
  br label %80

107:                                              ; preds = %80
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %110 = call i32 @_cmsSetInterpolationRoutine(i32 %108, %struct.TYPE_5__* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %11, align 8
  %117 = call i32 @cmsSignalError(i32 %113, i32 %114, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %115, i64 %116)
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %120 = call i32 @_cmsFree(i32 %118, %struct.TYPE_5__* %119)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %123

121:                                              ; preds = %107
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %122, %struct.TYPE_5__** %7, align 8
  br label %123

123:                                              ; preds = %121, %112, %31, %19
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  ret %struct.TYPE_5__* %124
}

declare dso_local i32 @cmsSignalError(i32, i32, i8*, i64, i64) #1

declare dso_local i64 @_cmsMallocZero(i32, i32) #1

declare dso_local i32 @_cmsSetInterpolationRoutine(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @_cmsFree(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

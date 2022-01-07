; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_Emit1Gamma.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_Emit1Gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }

@.str = private unnamed_addr constant [17 x i8] c"{ %g exp } bind \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"dup \00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"length 1 sub \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"3 -1 roll \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"mul \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"floor cvi \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"exch \00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"ceiling cvi \00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"3 index \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"get \00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"4 -1 roll \00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"3 1 roll \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"sub \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"add \00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"65535 div \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c" } bind \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.TYPE_5__*)* @Emit1Gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Emit1Gamma(i32 %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %10 = icmp eq %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %146

12:                                               ; preds = %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %146

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = call i64 @cmsIsToneCurveLinear(i32 %19, %struct.TYPE_5__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %146

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = call i64 @cmsEstimateGamma(i32 %25, %struct.TYPE_5__* %26, double 1.000000e-03)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %31, i32* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %33)
  br label %146

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %36, i32* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %4, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @EmitRangeCheck(i32 %39, i32* %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %42, i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %45

45:                                               ; preds = %61, %35
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %52, i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %51
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %45

64:                                               ; preds = %45
  %65 = load i32, i32* %4, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %65, i32* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* %4, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %68, i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %71 = load i32, i32* %4, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %71, i32* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %74 = load i32, i32* %4, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %74, i32* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %77 = load i32, i32* %4, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %77, i32* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %80 = load i32, i32* %4, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %80, i32* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32, i32* %4, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %83, i32* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %86 = load i32, i32* %4, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %86, i32* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %89 = load i32, i32* %4, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %89, i32* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %92 = load i32, i32* %4, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %92, i32* %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %95 = load i32, i32* %4, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %95, i32* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %98 = load i32, i32* %4, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %98, i32* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %101 = load i32, i32* %4, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %101, i32* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %104 = load i32, i32* %4, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %104, i32* %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %107 = load i32, i32* %4, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %107, i32* %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %110 = load i32, i32* %4, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %110, i32* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %113 = load i32, i32* %4, align 4
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %113, i32* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32, i32* %4, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %116, i32* %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %119 = load i32, i32* %4, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %119, i32* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %122 = load i32, i32* %4, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %122, i32* %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %125 = load i32, i32* %4, align 4
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %125, i32* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %128 = load i32, i32* %4, align 4
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %128, i32* %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %131 = load i32, i32* %4, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %131, i32* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %134 = load i32, i32* %4, align 4
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %134, i32* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %137 = load i32, i32* %4, align 4
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %137, i32* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %140 = load i32, i32* %4, align 4
  %141 = load i32*, i32** %5, align 8
  %142 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %140, i32* %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %143 = load i32, i32* %4, align 4
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %143, i32* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  br label %146

146:                                              ; preds = %64, %30, %23, %17, %11
  ret void
}

declare dso_local i64 @cmsIsToneCurveLinear(i32, %struct.TYPE_5__*) #1

declare dso_local i64 @cmsEstimateGamma(i32, %struct.TYPE_5__*, double) #1

declare dso_local i32 @_cmsIOPrintf(i32, i32*, i8*, ...) #1

declare dso_local i32 @EmitRangeCheck(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

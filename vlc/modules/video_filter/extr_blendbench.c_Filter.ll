; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_blendbench.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_blendbench.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 (%struct.TYPE_21__*, %struct.TYPE_16__*, %struct.TYPE_17__*, i32, i32, i32)*, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_22__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { float, float }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_17__*, i32, %struct.TYPE_16__* }

@.str = private unnamed_addr constant [15 x i8] c"video blending\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Blended %d images in %f sec\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Speed is: %f images/second, %f pixels/second\00", align 1
@CLOCK_FREQ = common dso_local global float 0.000000e+00, align 4
@Y_PLANE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_21__*, i32*)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Filter(%struct.TYPE_21__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %6, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  store i32* %18, i32** %3, align 8
  br label %143

19:                                               ; preds = %2
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %21 = call %struct.TYPE_21__* @vlc_object_create(%struct.TYPE_21__* %20, i32 32)
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %7, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %23 = icmp ne %struct.TYPE_21__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @picture_Release(i32* %25)
  store i32* null, i32** %3, align 8
  br label %143

27:                                               ; preds = %19
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %45 = call i32 @module_need(%struct.TYPE_21__* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %27
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @picture_Release(i32* %53)
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %56 = call i32 @vlc_object_delete(%struct.TYPE_21__* %55)
  store i32* null, i32** %3, align 8
  br label %143

57:                                               ; preds = %27
  %58 = call float (...) @vlc_tick_now()
  store float %58, float* %8, align 4
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %80, %57
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = load i32 (%struct.TYPE_21__*, %struct.TYPE_16__*, %struct.TYPE_17__*, i32, i32, i32)*, i32 (%struct.TYPE_21__*, %struct.TYPE_16__*, %struct.TYPE_17__*, i32, i32, i32)** %67, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %68(%struct.TYPE_21__* %69, %struct.TYPE_16__* %72, %struct.TYPE_17__* %75, i32 0, i32 0, i32 %78)
  br label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %59

83:                                               ; preds = %59
  %84 = call float (...) @vlc_tick_now()
  %85 = load float, float* %8, align 4
  %86 = fsub float %84, %85
  store float %86, float* %8, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sitofp i32 %90 to float
  %92 = load float, float* %8, align 4
  %93 = call float @secf_from_vlc_tick(float %92)
  %94 = call i32 @msg_Info(%struct.TYPE_21__* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), float %91, float %93)
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sitofp i32 %98 to float
  %100 = load float, float* %8, align 4
  %101 = fdiv float %99, %100
  %102 = load float, float* @CLOCK_FREQ, align 4
  %103 = fmul float %101, %102
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sitofp i32 %106 to float
  %108 = load float, float* %8, align 4
  %109 = fdiv float %107, %108
  %110 = load float, float* @CLOCK_FREQ, align 4
  %111 = fmul float %109, %110
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %115, align 8
  %117 = load i64, i64* @Y_PLANE, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = load float, float* %119, align 4
  %121 = fmul float %111, %120
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %125, align 8
  %127 = load i64, i64* @Y_PLANE, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  %130 = load float, float* %129, align 4
  %131 = fmul float %121, %130
  %132 = call i32 @msg_Info(%struct.TYPE_21__* %95, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), float %103, float %131)
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @module_unneed(%struct.TYPE_21__* %133, i32 %136)
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %139 = call i32 @vlc_object_delete(%struct.TYPE_21__* %138)
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  %142 = load i32*, i32** %5, align 8
  store i32* %142, i32** %3, align 8
  br label %143

143:                                              ; preds = %83, %52, %24, %17
  %144 = load i32*, i32** %3, align 8
  ret i32* %144
}

declare dso_local %struct.TYPE_21__* @vlc_object_create(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @picture_Release(i32*) #1

declare dso_local i32 @module_need(%struct.TYPE_21__*, i8*, i32*, i32) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_21__*) #1

declare dso_local float @vlc_tick_now(...) #1

declare dso_local i32 @msg_Info(%struct.TYPE_21__*, i8*, float, float) #1

declare dso_local float @secf_from_vlc_tick(float) #1

declare dso_local i32 @module_unneed(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

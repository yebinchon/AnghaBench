; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_sharpen.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_sharpen.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_18__*, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }

@Y_PLANE = common dso_local global i64 0, align 8
@uint8_t = common dso_local global i32 0, align 4
@uint16_t = common dso_local global i32 0, align 4
@U_PLANE = common dso_local global i64 0, align 8
@V_PLANE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_17__*, %struct.TYPE_16__*)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @Filter(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 3, i32* %8, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %15 = load i64, i64* @Y_PLANE, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %22 = load i64, i64* @Y_PLANE, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = call %struct.TYPE_16__* @filter_NewPicture(%struct.TYPE_17__* %26)
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %6, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = icmp ne %struct.TYPE_16__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = call i32 @picture_Release(%struct.TYPE_16__* %31)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %75

33:                                               ; preds = %2
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %11, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @IS_YUV_420_10BITS(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* @uint8_t, align 4
  %45 = call i32 @SHARPEN_FRAME(i32 255, i32 %44)
  br label %49

46:                                               ; preds = %33
  %47 = load i32, i32* @uint16_t, align 4
  %48 = call i32 @SHARPEN_FRAME(i32 1023, i32 %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = load i64, i64* @U_PLANE, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i64 %53
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = load i64, i64* @U_PLANE, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i64 %58
  %60 = call i32 @plane_CopyPixels(%struct.TYPE_18__* %54, %struct.TYPE_18__* %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = load i64, i64* @V_PLANE, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i64 %64
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = load i64, i64* @V_PLANE, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i64 %69
  %71 = call i32 @plane_CopyPixels(%struct.TYPE_18__* %65, %struct.TYPE_18__* %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = call %struct.TYPE_16__* @CopyInfoAndRelease(%struct.TYPE_16__* %72, %struct.TYPE_16__* %73)
  store %struct.TYPE_16__* %74, %struct.TYPE_16__** %3, align 8
  br label %75

75:                                               ; preds = %49, %30
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %76
}

declare dso_local %struct.TYPE_16__* @filter_NewPicture(%struct.TYPE_17__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_16__*) #1

declare dso_local i32 @IS_YUV_420_10BITS(i32) #1

declare dso_local i32 @SHARPEN_FRAME(i32, i32) #1

declare dso_local i32 @plane_CopyPixels(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_16__* @CopyInfoAndRelease(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

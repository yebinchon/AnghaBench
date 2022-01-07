; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_directsound.c_VolumeSet.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_directsound.c_VolumeSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { float, i32, i64 }

@DSBVOLUME_MIN = common dso_local global i64 0, align 8
@DSBVOLUME_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"DSBVOLUME_* confused\00", align 1
@DS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"volume-save\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"directx-volume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, float)* @VolumeSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VolumeSet(%struct.TYPE_11__* %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store float %1, float* %5, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load float, float* %5, align 4
  %14 = fcmp ogt float %13, 1.000000e+00
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load float, float* %5, align 4
  %17 = load float, float* %5, align 4
  %18 = fmul float %16, %17
  %19 = load float, float* %5, align 4
  %20 = fmul float %18, %19
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %15
  %23 = phi float [ %20, %15 ], [ 1.000000e+00, %21 ]
  store float %23, float* %8, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = load float, float* %8, align 4
  %26 = call i32 @aout_GainRequest(%struct.TYPE_11__* %24, float %25)
  %27 = load float, float* %5, align 4
  %28 = call i32 @__MIN(float %27, float 1.000000e+00)
  %29 = call float @log10f(i32 %28)
  %30 = fmul float 6.000000e+03, %29
  %31 = call i64 @lroundf(float %30) #3
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* @DSBVOLUME_MIN, align 8
  %33 = load i64, i64* @DSBVOLUME_MAX, align 8
  %34 = icmp slt i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @static_assert(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @DSBVOLUME_MAX, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %22
  %41 = load i64, i64* @DSBVOLUME_MAX, align 8
  store i64 %41, i64* %9, align 8
  store i32 -1, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %22
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @DSBVOLUME_MIN, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* @DSBVOLUME_MIN, align 8
  store i64 %47, i64* %9, align 8
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  store i64 %49, i64* %52, align 8
  %53 = load float, float* %5, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store float %53, float* %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %48
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i64 @IDirectSoundBuffer_SetVolume(i32* %72, i64 %73)
  %75 = load i64, i64* @DS_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 -1, i32* %3, align 4
  br label %90

78:                                               ; preds = %68, %62, %48
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = load float, float* %5, align 4
  %81 = call i32 @aout_VolumeReport(%struct.TYPE_11__* %79, float %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = call i64 @var_InheritBool(%struct.TYPE_11__* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load float, float* %5, align 4
  %87 = call i32 @config_PutFloat(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), float %86)
  br label %88

88:                                               ; preds = %85, %78
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %77
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @aout_GainRequest(%struct.TYPE_11__*, float) #1

; Function Attrs: nounwind
declare dso_local i64 @lroundf(float) #2

declare dso_local float @log10f(i32) #1

declare dso_local i32 @__MIN(float, float) #1

declare dso_local i32 @static_assert(i32, i8*) #1

declare dso_local i64 @IDirectSoundBuffer_SetVolume(i32*, i64) #1

declare dso_local i32 @aout_VolumeReport(%struct.TYPE_11__*, float) #1

declare dso_local i64 @var_InheritBool(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @config_PutFloat(i8*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

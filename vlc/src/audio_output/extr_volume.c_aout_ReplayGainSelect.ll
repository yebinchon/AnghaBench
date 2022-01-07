; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_volume.c_aout_ReplayGainSelect.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_volume.c_aout_ReplayGainSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, float*, i64*, i64* }

@AUDIO_REPLAY_GAIN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"track\00", align 1
@AUDIO_REPLAY_GAIN_TRACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"album\00", align 1
@AUDIO_REPLAY_GAIN_ALBUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"audio-replay-gain-preamp\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"audio-replay-gain-default\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"audio-replay-gain-peak-protection\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"gain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32*, i8*, %struct.TYPE_3__*)* @aout_ReplayGainSelect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @aout_ReplayGainSelect(i32* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %10 = load i32, i32* @AUDIO_REPLAY_GAIN_MAX, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @AUDIO_REPLAY_GAIN_TRACK, align 4
  store i32 %21, i32* %7, align 4
  br label %29

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @AUDIO_REPLAY_GAIN_ALBUM, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %22
  br label %29

29:                                               ; preds = %28, %20
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @AUDIO_REPLAY_GAIN_MAX, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store float 1.000000e+00, float* %8, align 4
  br label %115

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %35
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %47, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %56, %44, %35
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %61
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load float*, float** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = load float, float* %76, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = call float @var_InheritFloat(i32* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %80 = fadd float %77, %79
  store float %80, float* %9, align 4
  br label %84

81:                                               ; preds = %61
  %82 = load i32*, i32** %4, align 8
  %83 = call float @var_InheritFloat(i32* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store float %83, float* %9, align 4
  br label %84

84:                                               ; preds = %81, %70
  %85 = load float, float* %9, align 4
  %86 = fdiv float %85, 2.000000e+01
  %87 = call float @powf(float 1.000000e+01, float %86) #4
  store float %87, float* %8, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = call i64 @var_InheritBool(i32* %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %84
  %92 = load float, float* %8, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %91
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load float*, float** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %104, i64 %106
  %108 = load float, float* %107, align 4
  %109 = fdiv float 1.000000e+00, %108
  br label %111

110:                                              ; preds = %91
  br label %111

111:                                              ; preds = %110, %101
  %112 = phi float [ %109, %101 ], [ 1.000000e+00, %110 ]
  %113 = call float @llvm.minnum.f32(float %92, float %112)
  store float %113, float* %8, align 4
  br label %114

114:                                              ; preds = %111, %84
  br label %115

115:                                              ; preds = %114, %34
  %116 = load i32*, i32** %4, align 8
  %117 = call float @var_InheritFloat(i32* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %118 = load float, float* %8, align 4
  %119 = fmul float %118, %117
  store float %119, float* %8, align 4
  %120 = load float, float* %8, align 4
  ret float %120
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local float @var_InheritFloat(i32*, i8*) #1

; Function Attrs: nounwind
declare dso_local float @powf(float, float) #2

declare dso_local i64 @var_InheritBool(i32*, i8*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.minnum.f32(float, float) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

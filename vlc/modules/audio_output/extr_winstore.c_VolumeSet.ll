; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_winstore.c_VolumeSet.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_winstore.c_VolumeSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@IID_ISimpleAudioVolume = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cannot get volume service (error 0x%lX)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot set volume (error 0x%lX)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, float)* @VolumeSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VolumeSet(%struct.TYPE_6__* %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store float %1, float* %5, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %3, align 4
  br label %67

22:                                               ; preds = %2
  store i32* null, i32** %8, align 8
  store float 1.000000e+00, float* %9, align 4
  %23 = load float, float* %5, align 4
  %24 = load float, float* %5, align 4
  %25 = fmul float %23, %24
  %26 = load float, float* %5, align 4
  %27 = fmul float %25, %26
  store float %27, float* %5, align 4
  %28 = load float, float* %5, align 4
  %29 = fcmp ogt float %28, 1.000000e+00
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load float, float* %5, align 4
  store float %31, float* %9, align 4
  store float 1.000000e+00, float* %5, align 4
  br label %32

32:                                               ; preds = %30, %22
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = load float, float* %9, align 4
  %35 = call i32 @aout_GainRequest(%struct.TYPE_6__* %33, float %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @IAudioClient_GetService(i32* %38, i32* @IID_ISimpleAudioVolume, i32** %8)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @FAILED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @msg_Err(%struct.TYPE_6__* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %59

47:                                               ; preds = %32
  %48 = load i32*, i32** %8, align 8
  %49 = load float, float* %5, align 4
  %50 = call i32 @ISimpleAudioVolume_SetMasterVolume(i32* %48, float %49, i32* null)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @FAILED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @msg_Err(%struct.TYPE_6__* %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %59

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %54, %43
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @ISimpleAudioVolume_Release(i32* %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @SUCCEEDED(i32 %62)
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 0, i32 -1
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %59, %20
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @aout_GainRequest(%struct.TYPE_6__*, float) #1

declare dso_local i32 @IAudioClient_GetService(i32*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @ISimpleAudioVolume_SetMasterVolume(i32*, float, i32*) #1

declare dso_local i32 @ISimpleAudioVolume_Release(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

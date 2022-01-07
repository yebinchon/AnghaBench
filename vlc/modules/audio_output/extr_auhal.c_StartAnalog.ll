; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_auhal.c_StartAnalog.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_auhal.c_StartAnalog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32*, i32, i32, i32 }

@noErr = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@kAudioUnitSubType_HALOutput = common dso_local global i32 0, align 4
@kAudioOutputUnitProperty_CurrentDevice = common dso_local global i32 0, align 4
@kAudioUnitScope_Global = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"cannot select audio output device, PCM output failed\00", align 1
@kAudioDevicePropertyPreferredChannelLayout = common dso_local global i32 0, align 4
@kAudioUnitScope_Output = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [89 x i8] c"device driver does not support kAudioDevicePropertyPreferredChannelLayout - using stereo\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"AudioUnitStart failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*)* @StartAnalog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StartAnalog(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %6, align 8
  %16 = load i64, i64* @noErr, align 8
  store i64 %16, i64* %7, align 8
  store i32* null, i32** %9, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @aout_FormatNbChannels(i32* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %3, align 4
  br label %143

22:                                               ; preds = %2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = load i32, i32* @kAudioUnitSubType_HALOutput, align 4
  %25 = call i32* @au_NewOutputInstance(%struct.TYPE_13__* %23, i32 %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %3, align 4
  br label %143

34:                                               ; preds = %22
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @AudioDeviceIsAHeadphone(%struct.TYPE_13__* %35, i32 %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @kAudioOutputUnitProperty_CurrentDevice, align 4
  %47 = load i32, i32* @kAudioUnitScope_Global, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  %50 = call i64 @AudioUnitSetProperty(i32* %45, i32 %46, i32 %47, i32 0, i32* %49, i32 4)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @noErr, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %34
  %55 = call i32 @ca_LogErr(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %135

56:                                               ; preds = %34
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @kAudioDevicePropertyPreferredChannelLayout, align 4
  %61 = load i32, i32* @kAudioUnitScope_Output, align 4
  %62 = call i64 @AudioUnitGetPropertyInfo(i32* %59, i32 %60, i32 %61, i32 0, i32* %8, i32* null)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @noErr, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %56
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @malloc(i32 %67)
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** %9, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %135

73:                                               ; preds = %66
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @kAudioDevicePropertyPreferredChannelLayout, align 4
  %78 = load i32, i32* @kAudioUnitScope_Output, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = call i64 @AudioUnitGetProperty(i32* %76, i32 %77, i32 %78, i32 0, i32* %79, i32* %8)
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @noErr, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %135

85:                                               ; preds = %73
  br label %88

86:                                               ; preds = %56
  %87 = call i32 @ca_LogWarn(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %85
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @au_Initialize(%struct.TYPE_13__* %89, i32* %92, i32* %93, i32* %94, i32 0, i32* %11)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @VLC_SUCCESS, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %135

100:                                              ; preds = %88
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i64 @AudioOutputUnitStart(i32* %103)
  store i64 %104, i64* %7, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* @noErr, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = call i32 @ca_LogErr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @au_Uninitialize(%struct.TYPE_13__* %110, i32* %113)
  br label %135

115:                                              ; preds = %100
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @VolumeSet(%struct.TYPE_13__* %116, i32 %119)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @MuteSet(%struct.TYPE_13__* %121, i32 %124)
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @free(i32* %126)
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %115
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %132 = call i32 @WarnConfiguration(%struct.TYPE_13__* %131)
  br label %133

133:                                              ; preds = %130, %115
  %134 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %134, i32* %3, align 4
  br label %143

135:                                              ; preds = %108, %99, %84, %72, %54
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @AudioComponentInstanceDispose(i32* %138)
  %140 = load i32*, i32** %9, align 8
  %141 = call i32 @free(i32* %140)
  %142 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %135, %133, %32, %20
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i64 @aout_FormatNbChannels(i32*) #1

declare dso_local i32* @au_NewOutputInstance(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @AudioDeviceIsAHeadphone(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @AudioUnitSetProperty(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ca_LogErr(i8*) #1

declare dso_local i64 @AudioUnitGetPropertyInfo(i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @AudioUnitGetProperty(i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ca_LogWarn(i8*) #1

declare dso_local i32 @au_Initialize(%struct.TYPE_13__*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @AudioOutputUnitStart(i32*) #1

declare dso_local i32 @au_Uninitialize(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @VolumeSet(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @MuteSet(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @WarnConfiguration(%struct.TYPE_13__*) #1

declare dso_local i32 @AudioComponentInstanceDispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

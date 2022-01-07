; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_alsa.c_Play.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_alsa.c_Play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32*, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"cannot recover playback stream: %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot write samples: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)* @Play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Play(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %7, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @aout_ChannelReorder(i64 %22, i64 %25, i64 %28, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %19, %3
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %8, align 8
  br label %40

40:                                               ; preds = %95, %36
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %96

45:                                               ; preds = %40
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @snd_pcm_writei(i32* %46, i64 %49, i64 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %45
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @snd_pcm_frames_to_bytes(i32* %57, i32 %58)
  store i64 %59, i64* %10, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, %61
  store i64 %65, i64* %63, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, %71
  store i64 %75, i64* %73, align 8
  br label %95

76:                                               ; preds = %45
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @snd_pcm_recover(i32* %77, i32 %78, i32 1)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @snd_strerror(i32 %84)
  %86 = call i32 @msg_Err(%struct.TYPE_11__* %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @DumpDeviceStatus(%struct.TYPE_11__* %87, i32* %88)
  br label %96

90:                                               ; preds = %76
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @snd_strerror(i32 %92)
  %94 = call i32 @msg_Warn(%struct.TYPE_11__* %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %90, %56
  br label %40

96:                                               ; preds = %82, %40
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = call i32 @block_Release(%struct.TYPE_10__* %97)
  %99 = load i32, i32* %6, align 4
  ret void
}

declare dso_local i32 @aout_ChannelReorder(i64, i64, i64, i32, i32) #1

declare dso_local i32 @snd_pcm_writei(i32*, i64, i64) #1

declare dso_local i64 @snd_pcm_frames_to_bytes(i32*, i32) #1

declare dso_local i32 @snd_pcm_recover(i32*, i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @snd_strerror(i32) #1

declare dso_local i32 @DumpDeviceStatus(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

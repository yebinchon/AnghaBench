; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_alsa.c_Thread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_alsa.c_Thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32* }
%struct.TYPE_12__ = type { i32, i32, i64, i8*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"cannot prepare device: %s\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot read samples: %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"cannot recover record stream: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @Thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %4, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %5, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %6, align 8
  %23 = call i32 (...) @vlc_savecancel()
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @snd_pcm_frames_to_bytes(i32* %24, i32 %27)
  %29 = ptrtoint i8* %28 to i64
  store i64 %29, i64* %7, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @snd_pcm_start(i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @snd_strerror(i32 %36)
  %38 = call i32 @msg_Err(%struct.TYPE_10__* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i8* null, i8** %2, align 8
  br label %160

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %113, %97, %96, %71, %39
  %41 = load i64, i64* %7, align 8
  %42 = call %struct.TYPE_12__* @block_Alloc(i64 %41)
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %10, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %44 = icmp eq %struct.TYPE_12__* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %159

49:                                               ; preds = %40
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @Poll(i32* %50, i32 %51)
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @snd_pcm_readi(i32* %53, i32 %56, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = call i32 (...) @vlc_tick_now()
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %108

64:                                               ; preds = %49
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %66 = call i32 @block_Release(%struct.TYPE_12__* %65)
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @EAGAIN, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %40

72:                                               ; preds = %64
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @snd_pcm_recover(i32* %73, i32 %74, i32 1)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %72
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @snd_strerror(i32 %80)
  %82 = call i32 @msg_Warn(%struct.TYPE_10__* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @snd_pcm_state(i32* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  switch i32 %85, label %98 [
    i32 129, label %86
    i32 128, label %97
  ]

86:                                               ; preds = %78
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @snd_pcm_start(i32* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @snd_strerror(i32 %93)
  %95 = call i32 @msg_Err(%struct.TYPE_10__* %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %94)
  store i8* null, i8** %2, align 8
  br label %160

96:                                               ; preds = %86
  br label %40

97:                                               ; preds = %78
  br label %40

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %72
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @snd_strerror(i32 %102)
  %104 = call i32 @msg_Err(%struct.TYPE_10__* %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @DumpDeviceStatus(%struct.TYPE_10__* %105, i32* %106)
  br label %159

108:                                              ; preds = %49
  %109 = load i32*, i32** %6, align 8
  %110 = call i64 @snd_pcm_delay(i32* %109, i32* %12)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 0, i32* %12, align 4
  br label %113

113:                                              ; preds = %112, %108
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @vlc_tick_from_samples(i32 %117, i32 %120)
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = sub nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %13, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i8* @snd_pcm_frames_to_bytes(i32* %126, i32 %127)
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @vlc_tick_from_samples(i32 %137, i32 %140)
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @es_out_SetPCR(i32 %146, i32 %149)
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %158 = call i32 @es_out_Send(i32 %153, i32 %156, %struct.TYPE_12__* %157)
  br label %40

159:                                              ; preds = %100, %48
  store i8* null, i8** %2, align 8
  br label %160

160:                                              ; preds = %159, %91, %34
  %161 = load i8*, i8** %2, align 8
  ret i8* %161
}

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i8* @snd_pcm_frames_to_bytes(i32*, i32) #1

declare dso_local i32 @snd_pcm_start(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @snd_strerror(i32) #1

declare dso_local %struct.TYPE_12__* @block_Alloc(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @Poll(i32*, i32) #1

declare dso_local i32 @snd_pcm_readi(i32*, i32, i32) #1

declare dso_local i32 @vlc_tick_now(...) #1

declare dso_local i32 @block_Release(%struct.TYPE_12__*) #1

declare dso_local i32 @snd_pcm_recover(i32*, i32, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @snd_pcm_state(i32*) #1

declare dso_local i32 @DumpDeviceStatus(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @snd_pcm_delay(i32*, i32*) #1

declare dso_local i64 @vlc_tick_from_samples(i32, i32) #1

declare dso_local i32 @es_out_SetPCR(i32, i32) #1

declare dso_local i32 @es_out_Send(i32, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

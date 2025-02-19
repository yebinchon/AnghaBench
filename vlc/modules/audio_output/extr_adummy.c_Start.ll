; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_adummy.c_Start.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_adummy.c_Start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@VLC_CODEC_SPDIFL = common dso_local global i8* null, align 8
@HAVE_FPU = common dso_local global i32 0, align 4
@VLC_CODEC_FL32 = common dso_local global i32 0, align 4
@VLC_CODEC_S16N = common dso_local global i32 0, align 4
@AUDIO_CHANNEL_TYPE_BITMAP = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @Start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Start(i32* %0, %struct.TYPE_5__* noalias %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %29 [
    i32 132, label %9
    i32 130, label %9
    i32 131, label %18
    i32 128, label %18
    i32 129, label %18
  ]

9:                                                ; preds = %2, %2
  %10 = load i8*, i8** @VLC_CODEC_SPDIFL, align 8
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i32 4, i32* %15, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i32 1, i32* %17, align 4
  br label %51

18:                                               ; preds = %2, %2, %2
  %19 = load i8*, i8** @VLC_CODEC_SPDIFL, align 8
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  store i32 768000, i32* %24, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i32 16, i32* %26, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i32 1, i32* %28, align 4
  br label %51

29:                                               ; preds = %2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = call i32 @AOUT_FMT_LINEAR(%struct.TYPE_5__* %30)
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = call i32 @aout_FormatNbChannels(%struct.TYPE_5__* %33)
  %35 = icmp sgt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* @HAVE_FPU, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @VLC_CODEC_FL32, align 4
  br label %44

42:                                               ; preds = %29
  %43 = load i32, i32* @VLC_CODEC_S16N, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @AUDIO_CHANNEL_TYPE_BITMAP, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %44, %18, %9
  %52 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %52
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @AOUT_FMT_LINEAR(%struct.TYPE_5__*) #1

declare dso_local i32 @aout_FormatNbChannels(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
